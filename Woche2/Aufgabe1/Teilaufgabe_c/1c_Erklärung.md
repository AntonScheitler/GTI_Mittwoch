# Teilaufgabe c

## Frage

Die zwei RS-Latches 𝑅𝑆1 und 𝑅𝑆2 aus Abbildung 2 unterscheiden sich in ihrem internen Auf- bau: eines besteht aus NOR-Gattern, das andere aus NAND-Gattern. Jedoch sind bei beiden Latches die Eingänge 𝑅 und 𝑆 Active-HIGH. Überlegen Sie, wie Sie dennoch eindeutig bestim- men können, aus welchem Gattertyp die rückgekoppelte Logik jeweils aufgebaut ist.

## Antwort

Für das **RS-Latch mit NAND Gattern** werden die beiden **Eingaenge (R und S) negiert** benoetigt,
man kann also anhand der **zusaetzlichen Verzoegerung** den Typ bestimmen.
Alternativ hierzu kann der Unterschied der beiden Latches anhand des illegalen Zustands erkannt werden:
Beim **NOR-RS-Latch** ist der illegale Zustand **Q=0 und !Q=0**.
Beim **NAND-RS-Latch** ist der illegale Zustand **Q=1 und !Q=1**
