# Kodkliniken - Neda khalaj

## Patient jag ansvarade för
- all of them

## Symptom
- Vad fungerade inte när du fick koden?
- första koden: förhandsgranskningen fungerar inte och textfälten har problem
- andra koden: förhandsgranskningen kraschar
- tredje koden: toggle fungerade inte, och det fanns ingen förhandsgranskning med argument
- fjärde koden: fungerar med en förhandsgranskning men den borde lägga till @State

## Diagnos
- Vilket arkitektoniskt fel orsakade problemet?
- för det första: @Environment är skrivskyddat och för textfältet behöver vi bindning
- för det andra: @Environment behöver injicera och objekt
- för det tredje: en loop måste också vara ändringsbar, inte skrivskyddad, och förhandsgranskningen måste ha ett argument
- för det fjärde: koden fungerar men @State behövs baserat på de observerbara reglerna

## Behandling
- Exakt vad ändrade du för att lösa det?
- första koden: Jag skapade en Bindable och binder textfälten och jag lade även till en .environment för att förhandsgranska
- andra koden: Jag lade till en .environment i förhandsgranskningen
- tredje koden: Jag lade till $ i loopen och även för att växla och förhandsgranskningen behövde ett argument
- fjärde koden: Jag lade till en egenskapsomslutare @State och preview.@State behövs fortfarande för att garantera att objektet överlever återskapandet av vyn.
## Verifiering
- ...

## Lärdomar
- Jag har lärt mig mycket om observerbara makroekonomiska faktorer.
