library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
  port(
    btn : in  std_logic_vector(3 downto 0);
    sw : in  std_logic_vector(0 downto 0);
    o_mins, o_secs, o_wmins : out integer range 0 to 59;
    o_hours, o_whours : out integer range 0 to 23;
    alarm : out std_logic;
    state : out std_logic_vector(1 downto 0);
    clk : in  std_logic;
    reset : in  std_logic
  );
end controller;

architecture Behavioral of controller is

  component trigger_gen is
    generic(Delta : integer);
    port(
      clk   : in std_logic;
      reset : in std_logic;
      trigger : out std_logic
    );
  end component trigger_gen;

  -- pro Viertelsekunde einen Takt lang '1'
  signal fasttrigger : std_logic;
  -- fasttrigger wird zurueckgesetzt, wenn BTN2 oder BTN3 gedrueckt werden
  signal fasttimer_reset : std_logic;
  -- pro Sekunde einen Takt lang '1'
  signal sectrigger : std_logic;

  signal hours, whours     : integer range 0 to 23;
  signal secs, mins, wmins : integer range 0 to 59;

  -- fuer Flankenerkennung der Taster
  signal btn_shift : std_logic_vector(3 downto 0);
  signal btn_triggered : std_logic_vector(3 downto 0);

  type state_type is (NTIME, SET_TIME, SET_ALARM, error);
  signal current_state : state_type;

begin
  fasttimer_reset <= reset or
        btn_triggered(2) or btn_triggered(3);

  fasttimer : trigger_gen
    generic map(11)
    port map(clk, fasttimer_reset, fasttrigger);

  sectimer : trigger_gen
    generic map(13)
    port map(clk, reset, sectrigger);

  FSM : process(clk, reset)
    variable next_state : state_type;
  begin
    if reset = '1' then
      hours  <= 0;
      mins   <= 0;
      secs   <= 0;
      whours <= 0;
      wmins  <= 0;
      alarm  <= '0';
      current_state <= NTIME;
    elsif clk'event and clk = '1' then
      for i in 0 to 3 loop
        btn_shift(i) <= btn(i);
        btn_triggered(i) <= not btn_shift(i) and btn(i);
      end loop;

      -- TODO: Zaehle Uhr hoch
      if sectriger = '1' then
        secs <= secs + 1;
        if secs >= 59 then
          secs <= 0;
          mins <= mins + 1;
          if mins >= 59 then
            mins <= 0;
            hours <= hours + 1;
            if hours >= 23 then
              hours <= 0;
            end if;
          end if;
        end if;
      end if;
      -- TODO: Pruefe, ob Alarm ausgeloest werden muss
      if hours = whours and mins = wmins and sw(0) = '1' then
        alarm <= '1';
      else
        alarm <= '0';
      end if;

      case current_state is
        -- Zustand Time
        when NTIME =>
          -- TODO: Setze naechsten Zustand
          if btn_triggered(0) = '1' and btn_triggered(1) = '0' then
            next_state := SET_TIME;
          elsif btn_triggered(0) = '0' and btn_triggered(1) = '1' then
            next_state := SET_ALARM;
          end if;
        -- Zustand SetTime
        when SET_TIME =>
          -- TODO: Setze naechsten Zustand
          if btn_triggered(0) = '1' and btn_triggered(1) = '0' then
            next_state := NTIME;
          elsif btn_triggered(0) = '0' and btn_triggered(1) = '1' then
            next_state := SET_ALARM;
          end if;
          -- TODO: Setze Minute und Stunde mit BTN(2) bzw. BTN(3)
          if btn_triggered(2) = '1' then -- oder btn(2) = 1 and fasttrigger = 1,
                                         -- Um schnelleres Uhrstellen durch
                                         -- gedrückt halten zu ermöglichen
            mins <= mins + 1;
            if mins >= 59 then
              mins <= 0;
            end if;
          end if;
          -- Hours: 
          if btn_triggered(3) = '1' then
            hours <= hours + 1;
            if hours > 23 then
              hours <= 0;
            end if;
          end if;

        -- Zustand SetAlarm
        when SET_ALARM =>
          -- TODO: Setze naechsten Zustand
          if btn_triggered(0) = '1' and btn_triggered(1) = '0' then
            next_state := SET_TIME;
          elsif btn_triggered(0) = '0' and btn_triggered(1) = '1' then
            next_state := NTIME;
          end if;
          -- TODO: Setze Minute und Stunde mit BTN(2) bzw. BTN(3)
          if btn_triggered(2) = '1' then -- oder btn(2) = 1 and fasttrigger = 1,
                                         -- Um schnelleres Uhrstellen durch
                                         -- gedrückt halten zu ermöglichen
            wmins <= wmins + 1;
            if wmins >= 59 then
              wmins <= 0;
            end if;
          end if;
          -- Hours: 
          if btn_triggered(3) = '1' then
            whours <= whours + 1;
            if whours >= 23 then
              whours <= 0;
            end if;
          end if;
        -- Illegale Zustaende
        when others =>
          next_state := NTIME;
      end case;

      current_state <= next_state;
    end if;
  end process FSM;

  o_hours  <= hours;
  o_mins   <= mins;
  o_secs   <= secs;
  o_whours <= whours;
  o_wmins  <= wmins;

  with current_state select
    state <= "00" when NTIME,
             "01" when SET_TIME,
             "10" when SET_ALARM,
             "11" when others;
end architecture Behavioral;
