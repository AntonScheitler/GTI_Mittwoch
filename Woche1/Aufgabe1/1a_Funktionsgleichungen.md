# Teilaufgabe a

## Frage:

Zeigen Sie, dass für einen Volladdierer die folgenden Gleichungen für die Summe s<sub>i</sub> und den Übertrag c<sub>i</sub> gelten, wobei c<sub>i-1</sub> den eingehenden Übertrag bezeichnet:

c<sub>i</sub> = a<sub>i</sub>b<sub>i</sub> + c<sub>i-1</sub>(a<sub>i</sub> + b<sub>i</sub>)

s<sub>i</sub> = a<sub>i</sub>b<sub>i</sub>c<sub>i-1</sub> + !c<sub>i</sub>(a<sub>i</sub> + b<sub>i</sub> + c<sub>i-1</sub>)

## Antwort

Es können Funktionstabellen erstellt werden. Von ihnen ausgehend, können nun Symmetriediagramme erstellt werden, die für das Optimieren der Funktion genutzt werden können

### Carry:

Funktionsdiagramm:

| a   | b   | c<sub>-1</sub> | =   | c   |
| --- | --- | -------------- | --- | --- |
| 0   | 0   | 0              |     | 0   |
| 0   | 0   | 1              |     | 0   |
| 0   | 1   | 0              |     | 0   |
| 0   | 1   | 1              |     | 1   |
| 1   | 0   | 0              |     | 0   |
| 1   | 0   | 1              |     | 1   |
| 1   | 1   | 0              |     | 1   |
| 1   | 1   | 1              |     | 1   |

Symmetriediagramm:

|     | !c<sub>-1</sub> | c<sub>-1</sub> | c<sub>-1</sub> | !c<sub>-1</sub> |
| --- | --------------- | -------------- | -------------- | --------------- |
| !b  | 0               | 0              | 1              | 0               |
| b   | 0               | 1              | 1              | 1               |
|     | !a              | !a             | a              | a               |

Schaltfunktion:

c<sub>-1</sub>a + c<sub>-1</sub>b + ab = ab + c<sub>-1</sub>(a + b)

### Sum:

Funktionsdiagramm:

| a   | b   | c<sub>-1</sub> | c   | =   | s   |
| --- | --- | -------------- | --- | --- | --- |
| 0   | 0   | 0              | 0   |     | 0   |
| 0   | 0   | 0              | 1   |     | -   |
| 0   | 0   | 1              | 0   |     | 1   |
| 0   | 0   | 1              | 1   |     | -   |
| 0   | 1   | 0              | 0   |     | 1   |
| 0   | 1   | 0              | 1   |     | -   |
| 0   | 1   | 1              | 0   |     | -   |
| 0   | 1   | 1              | 1   |     | 0   |
| 1   | 0   | 0              | 0   |     | 1   |
| 1   | 0   | 0              | 1   |     | -   |
| 1   | 0   | 1              | 0   |     | -   |
| 1   | 0   | 1              | 1   |     | 0   |
| 1   | 1   | 0              | 0   |     | -   |
| 1   | 1   | 0              | 1   |     | 0   |
| 1   | 1   | 1              | 0   |     | -   |
| 1   | 1   | 1              | 1   |     | 1   |

Symmetriediagramm:

|     | !c<sub>-1</sub> | c<sub>-1</sub> | c<sub>-1</sub> | !c<sub>-1</sub> |     |
| --- | --------------- | -------------- | -------------- | --------------- | --- |
| !b  | 0               | 1              | -              | 1               | !c  |
| b   | 1               | -              | -              | -               | !c  |
| b   | -               | 0              | 1              | 0               | c   |
| !b  | -               | -              | 0              | -               | c   |
|     | !a              | !a             | a              | a               |     |

Schaltfunktion:

b!c + c<sub>-1</sub>!c + a!c + abc<sub>-1</sub> = abc<sub>-1</sub> + !c(a + b + c<sub>-1</sub>)
