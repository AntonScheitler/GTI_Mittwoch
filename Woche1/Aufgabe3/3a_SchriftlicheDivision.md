# Teilaufgabe a

### Frage:

    Erläutern Sie das Verfahren der Non-Restoring-Division anhand des Beispiels 526/14.

### Antwort:

    A: 001000001110 (526)
    B: 001110 (14)

    Wortbreite n = 6 -> A 12 bit (doppelte Wortbreite), B 6 bit (einfache Wortbreite)
    (festgelegt per A < (2<sup>n</sup>)B)

    B': 001110000000 (B um 2<sup>n</sup> nach links geshiftet)
    -B':110010000000 (per Zweierkomplement)

    |     | Partialrest  | Quotient | Erläuterung   |
    | --- | ------------ | -------- | ------------- |
    | R0  | 001000001110 | ------   | R0=A          |
    |     | 010000011100 | ------   | left shift    |
    | +   | 110010000000 | ------   | R0>=0 -> -B'  |
    |     |              |          |               |
    | R1  | 000010011100 | -----1   | R1>=0 -> q0=1 |
    |     | 000100111000 | ----1-   | left shift    |
    | +   | 110010000000 | ----1-   | R1>=0 -> -B'  |
    |     |              |          |               |
    | R2  | 110110111000 | ----10   | R2<0 -> q0=0  |
    |     | 101101110000 | ---10-   | left shift    |
    | +   | 001110000000 | ---10-   | R2<0 -> +B'   |
    |     |              |          |               |
    | R3  | 111011110000 | ---100   | R3<0 -> q0=0  |
    |     | 110111100000 | --100-   | left shift    |
    | +   | 001110000000 | --100-   | R3<0 -> +B'   |
    |     |              |          |               |
    | R4  | 000101100000 | --1001   | R4>=0 -> q0=1 |
    |     | 001011000000 | -1001-   | left shift    |
    | +   | 110010000000 | -1001-   | R4>=0 -> -B'  |
    |     |              |          |               |
    | R5  | 111101000000 | -10010   | R5<0 -> q0=0  |
    |     | 111010000000 | 10010-   | left shift    |
    | +   | 001110000000 | 10010-   | R5<0 -> +B'   |
    |     |              |          |               |
    | R6  | 001000000000 | 100101   | R6>=0 -> q0=1 |

    R6 positiv, also kein Korrekturschritt nötig

    Quotient(=Q6): 100101 (=37)

Rest (=2<sup>(-6)</sup>\*R6): 001000 (=8)
