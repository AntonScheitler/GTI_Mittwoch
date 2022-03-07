# Teilaufgabe a

## Frage:

    Es handelt sich dabei um einen sogenannten Booth-Multiplizierer, der mathematisch auf dem Booth-Recoding eines der Multiplikanden basiert. Machen Sie sich mit Grundlagen des BoothRecoding (siehe zum Beispiel [1, S. 588–589]) vertraut und erklären Sie das Verfahren am Beispiel 227 ⋅ 𝐵.

## Antwort:

    227 entspricht im Zweierkomplement 011100011.
    Die Binärzahl wird auf 0111000110 erweitert.
    Immer zwei Ziffern werden zu einem "Block" zusammengefasst und in einer Ziffer nach Folgendem Schema encodiert:
    00 -> 0
    01 -> 1
    10 -> -1
    11 -> 0

    Ergebnis:
    1 0 0 -1 0 0 1 0 -1

    Mit dem Ergebnis kann nun eine reguläre schriftliche Multiplikation mit einem Leftshift nach jeder "Verundung" durchgeführt werden
