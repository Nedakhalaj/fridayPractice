# Kodkliniken - Neda khalaj

## Patient jag ansvarade för
- all of them

## Symptom
- Vad fungerade inte när du fick koden?
- first code: preview doesn't work and textfields have problem
- second code: preview crashes
-third code :toggle didn't work, and there were no preview with argument
Fourth code: works with a preview but it should add @State

## Diagnos
- Vilket arkitektoniskt fel orsakade problemet?
- first: @Environment is read only and for textfield we need to binding
-second: @Environment needs to inject and object
-third: a loop needs too be changeable not read only, and preview needs to have argument
-fourth: code works but @State needed base on the observable rules

## Behandling
- Exakt vad ändrade du för att lösa det?
- first code:I created a Bindable and binding the textfields and also I added an .environment to preview
-second code: I added an .environment in preview
-third code: I added $ to the loop and also to toggle and also the preview needed an argument
-fourth code: I Added a property wrapper @State and preview.@State is still needed to guarantee the object survives view recreation.

## Verifiering
- ...

## Lärdomar
- I have learned  a lot of things about observable macro 