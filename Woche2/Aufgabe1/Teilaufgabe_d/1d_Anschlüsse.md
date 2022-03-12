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

### Latch-Verhalten bei C

In dem oben gegebenen Aufbau, ist im C oder Takt der Latches **KEINE** Edge-Detection, das RS-Latch ist einfach nur Active High. Durch Verbinden von **C<sub>1</sub>** mit **E<sub>1</sub>** oder **E<sub>1</sub>** statt **!!BTN<sub>2</sub>**, würde eine Edge-Detection eingefügt werden, bei **E<sub>2</sub>** Rising-Edge und bei E<sub>3</sub> Falling-Edge.

### Tastenkombination

Um beide Latches zurückzusetzen, muss das **BTN<sub>1</sub> Singal** gehalten und das **BTN<sub>2</sub> Signal** aktiviert werden, bis die rising-, bezeihungsweise falling-edge des **CLK Signals** die Latches zurücksetzt. 
