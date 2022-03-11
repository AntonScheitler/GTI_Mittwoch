# Teilaufgabe d

---

## Frage

Aus den Gattern 𝐺5 bis 𝐺12 in Abbildung 2 können durch geeignetes Verbinden von Kontakten der Anschlüsse **JB bis JD** zwei **RS-Latches** erzeugt werden. Überlegen Sie, welche Kontakte Sie dazu verbinden müssen, wenn Sie annehmen, dass 𝐵𝑇𝑁2 als Taktsignal verwendet werden soll.
Auf welchen Kontakten der Anschlüsse JB bis JD liegen dann die **Ausgänge 𝑄1 und 𝑄1** für das **NAND-RS-Latch** bzw. **𝑄2 und 𝑄2** für das **NOR-RS-Latch** an?
Welche Tasterkombination müssen Sie drücken, um die Latches zurückzusetzen?

## Antwort

### JB

Mithilfe von JB kann ein **RS-Latch** erzeugt werden, indem der Kontakt **LD<sub>0</sub>** mit **S<sub>1</sub>** verknüpft wird. Außerdem müssen die Kontakte **LD<sub>1</sub>** und **R<sub>1</sub>** verknüpft werden. Set und Reset können sowohl zur rising- als auch falling-edge angesteuert werden. Der **Kontakt C** aus dem **Anschluss JD** dient hierbei als Takt.
Der Ausgang **Q<sub>1</sub>** liegt am Kontakt **LD<sub>0</sub>** an, wobei der Ausgang **!Q<sub>1</sub>** am Konktakt **LD<sub>1</sub>** anliegt

### JC

Mithilfe von JC kann ein **RS-Latch** erzeugt werden, indem der Kontakt **LD<sub>2</sub>** mit **S<sub>2</sub>** verknüpft wird. Außerdem müssen die Kontakte **LD<sub>3</sub>** und **R<sub>2</sub>** verknüpft werden. Set und Reset können sowohl zur rising- als auch falling-edge angesteuert werden. Der **Kontakt C** aus dem **Anschluss JD** dient hierbei als Takt.
Der Ausgang **Q<sub>2</sub>** liegt am Kontakt **LD<sub>2</sub>** an, wobei der Ausgang **!Q<sub>2</sub>** am Kontakt **LD<sub>3</sub>** anliegt

### JD

Damit das **BTN<sub>2</sub> Signal** als Takt für den Rest der Schaltung verwendet werden kann, müssen die **Kontakte !!BTN<sub>2</sub> und C** verknüpft werden

### Tastenkombination

Um das NAND-RS-Latch zurückzusetzen, muss das **BTN<sub>1</sub> Signal** gehalten werden, bis es mit der rising-, beziehungsweise falling-edge des **CLK Signals**, das Latch zurücksetzt.
Um danach das NOR-RS-Latch zurückzusetzen, muss das **BTN<sub>0</sub> Signal** gehalten werden, und währenddessen die rising-, beziehungsweise falling-edge des **BTN<sub>2</sub> Signals** aktiviert werden. Das Zurücksetzen des NOR-RS-Latches muss zudem während des HIGH, beziehungsweise LOW Zustands des **CLK Signals** erfolgen
