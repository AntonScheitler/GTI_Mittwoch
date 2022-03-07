# Teilaufgabe e

## Frage:

    Schätzen Sie die Länge des kritischen Pfades eines 𝑛 × 𝑚-Booth-Multiplizierers mit Radix 4, 𝑛 ≤ 𝑚, durch die Anzahl der benötigten Additionen ab. Vergleichen Sie Ihr Ergebnis mit einem kombinatorischen Multiplizierer, der ausschließlich aus 𝑚-Bit-CAS und Und-Gattern aufgebaut ist.

## Antwort:

    Der Booth-Multiplizierer benötigt für eine Multiplikation insgesamt
    n/2 * (n + m) Additionen.
    Ein kombinatorischer Multiplizierer hingegen würde für eine Multiplikation
    n * m Additionen benötigen.
    Mithilfe eines Booth-Multiplizierers kann somit eine effizientere Multiplikation realisiert werden
