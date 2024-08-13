De Identity & Access Management (IAM)-oplossing HelloID van Tools4ever integreert met een breed scala aan bron- en doelsystemen. PowerShell speelt een onmisbare rol bij het realiseren van deze integraties. In dit artikel lees je meer over de manier waarop HelloID gebruik maakt van PowerShell, welke rol deze oplossing speelt in de connectoren die we aanbieden en wat de voordelen zijn PowerShell. 

## Wat is PowerShell?
PowerShell is een platformoverschrijdende oplossing voor het automatiseren van taken en configuratiebeheer. De oplossing bestaat uit een opdrachtregelshell, een scripttaal en een raamwerk voor configuratiebeheer. PowerShell is ontwikkeld door Microsoft en wordt als scripttaal vaak gebruikt voor het automatiseren van het beheer van systemen. 

Veel IT-professionals kennen PowerShell vanwege de mogelijkheden die het biedt voor het automatiseren van uiteenlopende zaken. PowerShell beperkt zich hierbij niet tot de Microsoft-infrastructuur en werkt zelfs platformoverschrijdend. Zo is PowerShell Core 7 en hoger geschikt voor Windows, macOS en Linux.

## Eenvoudig koppelen met GitHub 
PowerShell maakt de realisatie van allerlei koppelingen tussen systemen mogelijk. Werken met PowerShell vraagt om de juiste kennis, die bij veel functioneel beheerders van HelloID ontbreekt. Dit maakt het realiseren van deze koppelingen een uitdaging. 

Tools4ever neemt deze uitdaging weg door het gratis beschikbaar stellen van een groot aantal connectoren via onze GitHub-repository. Met name onze PowerShell V2-connectoren maken het realiseren van koppelingen zeer eenvoudig. Zo kan je de mapping van informatievelden via een grafische interface configureren.  

We werken ook aan een GitHub-integratie voor targetsystemen, wat het beheer van doelsystemen verder vereenvoudigd. Beheerders kunnen dankzij deze integratie met een druk op de knop een nieuw doelsysteem toevoegen, beheren of juist verwijderen. 

## Hoe past HelloID PowerShell toe?
HelloID maakt gebruik van PowerShell in zowel zijn bron- als doelconnectoren. Afhankelijk van de vereisten van het betreffende systeem waarmee HelloID koppelt kan de versie van PowerShell die we gebruiken variëren. Zo maken we voor onze cloud agents gebruik van PowerShell Core 7 of hoger, terwijl we voor onze on-premises HelloID agents PowerShell 5.1 inzetten.

Hoewel je met behulp van PowerShell allerlei functionaliteiten kunt automatiseren in HelloID, zijn niet alle mogelijkheden van PowerShell beschikbaar in de IAM-oplossing. Dit is een bewuste keuze. Een voorbeeld is het ontbreken van ondersteuning voor ‘Invoke-Expression’, dat we vanuit veiligheidsoverwegingen niet bieden.

Voor het waarborgen van de transparantie en eenvoud maakt HelloID gebruik van performance limits. Zo hebben doelsystemen in HelloID te maken met de verschillende account lifecycle events: het aanmaken, activeren, updaten, deactiveren en verwijderen van accounts. Elke actie binnen deze 'cirkel' moet binnen 30 seconden zijn afgerond. Voor mutaties aan bronsystemen geldt dat alle mutaties binnen 60 minuten moeten zijn afgerond. 

## Voordelen van het gebruik van HelloID met PowerShell
HelloID biedt zeer brede integratiemogelijkheden met uiteenlopende systemen. Bij het realiseren van deze koppelingen zijn we afhankelijk van de mogelijkheden die een leverancier aanbiedt. Met behulp van PowerShell kunnen we echter elke denkbare mogelijkheid ondersteunen. Zo kunnen we onder meer werken met API’s, webservices, SQL-databases en CSV-bestanden. 

Ook de fysieke locatie waar systemen draaien is geen belemmering. Gaat het om een cloudgebaseerd systeem? Dan realiseert HelloID met behulp van een cloud agent - op basis van PowerShell Core 7 of hoger - een cloud-to-cloud verbinding. Gaat het om een on-premises systeem die op jouw eigen infrastructuur draait? Dan kunnen we middels de on-premises HelloID agent - gebaseerd op PowerShell 5.1 - een koppeling realiseren. 
HelloID biedt in totaal zo’n 200 connectoren aan. Kijk [hier](https://www.tools4ever.nl/connectoren/) voor een overzicht van alle connectoren.
