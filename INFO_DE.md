Die Identity & Access Management (IAM)-Lösung HelloID von Tools4ever integriert sich mit einer Vielzahl von Quell- und Zielsystemen. PowerShell spielt dabei eine unverzichtbare Rolle bei der Realisierung dieser Integrationen. In diesem Artikel erfahren Sie mehr darüber, wie HelloID PowerShell nutzt, welche Rolle diese Lösung in den von uns angebotenen Konnektoren spielt und welche Vorteile PowerShell bietet.

## Was ist PowerShell?
PowerShell ist eine plattformübergreifende Lösung zur Automatisierung von Aufgaben und zum Konfigurationsmanagement. Die Lösung besteht aus einer Befehlszeilen-Shell, einer Skriptsprache und einem Rahmenwerk für das Konfigurationsmanagement. Entwickelt von Microsoft, wird PowerShell häufig als Skriptsprache zur Automatisierung von Systemverwaltungsaufgaben genutzt.

Viele IT-Experten kennen PowerShell für die Möglichkeiten, die es zur Automatisierung unterschiedlichster Aufgaben bietet. PowerShell beschränkt sich nicht auf die Microsoft-Infrastruktur und ist sogar plattformübergreifend einsetzbar. So ist PowerShell Core ab Version 7 für Windows, macOS und Linux geeignet.

## Einfache Verbindung mit GitHub
PowerShell ermöglicht die Realisierung verschiedenster Verbindungen zwischen Systemen. Die Arbeit mit PowerShell erfordert das richtige Wissen, das vielen funktionalen Administratoren von HelloID fehlt. Dies macht die Realisierung solcher Verbindungen zu einer Herausforderung.

Tools4ever löst diese Herausforderung, indem eine Vielzahl von Konnektoren kostenlos über unser GitHub-Repository bereitgestellt werden. Insbesondere unsere PowerShell V2-Konnektoren machen die Realisierung von Verbindungen sehr einfach. So können Sie die Zuordnung von Informationsfeldern über eine grafische Benutzeroberfläche konfigurieren.

Wir arbeiten auch an einer GitHub-Integration für Zielsysteme, die die Verwaltung der Zielsysteme weiter vereinfacht. Administratoren können dank dieser Integration mit einem Klick ein neues Zielsystem hinzufügen, verwalten oder entfernen.

## Wie setzt HelloID PowerShell ein?
HelloID nutzt PowerShell sowohl in seinen Quellen- als auch in den Zielkonnektoren. Je nach den Anforderungen des betreffenden Systems, mit dem HelloID verbunden wird, kann die verwendete PowerShell-Version variieren. Für unsere Cloud-Agenten verwenden wir PowerShell Core 7 oder höher, während wir für unsere On-Premise HelloID-Agenten PowerShell 5.1 einsetzen.

Obwohl Sie mit PowerShell eine Vielzahl von Funktionen in HelloID automatisieren können, sind nicht alle Möglichkeiten von PowerShell in der IAM-Lösung verfügbar. Das ist eine bewusste Entscheidung. Ein Beispiel ist der Verzicht auf Unterstützung für ‘Invoke-Expression’, den wir aus Sicherheitsgründen nicht anbieten.

Um Transparenz und Einfachheit zu gewährleisten, nutzt HelloID Leistungsgrenzen. Zielsysteme in HelloID unterliegen den verschiedenen Lebenszyklusereignissen von Konten: Erstellung, Aktivierung, Aktualisierung, Deaktivierung und Löschung von Konten. Jede Aktion innerhalb dieses 'Zyklus' muss innerhalb von 30 Sekunden abgeschlossen sein. Bei Änderungen an Quellsystemen gilt, dass alle Änderungen innerhalb von 60 Minuten abgeschlossen sein müssen.

## Vorteile der Nutzung von HelloID mit PowerShell
HelloID bietet sehr umfangreiche Integrationsmöglichkeiten mit unterschiedlichen Systemen. Bei der Realisierung dieser Verbindungen sind wir auf die Möglichkeiten angewiesen, die ein Anbieter bietet. Mit PowerShell können wir jedoch jede denkbare Option unterstützen. So können wir unter anderem mit APIs, Webdiensten, SQL-Datenbanken und CSV-Dateien arbeiten.

Auch der physische Standort, an dem Systeme betrieben werden, stellt kein Hindernis dar. Handelt es sich um ein cloudbasiertes System? Dann realisiert HelloID mit Hilfe eines Cloud-Agents - basierend auf PowerShell Core 7 oder höher - eine Cloud-to-Cloud-Verbindung. Handelt es sich um ein On-Premise-System, das auf Ihrer eigenen Infrastruktur läuft? Dann können wir mittels des On-Premise HelloID-Agents - basierend auf PowerShell 5.1 - eine Verbindung realisieren. HelloID bietet insgesamt etwa 200 Konnektoren an. Sehen Sie sich [hier](https://www.tools4ever.nl/connectoren/) eine Übersicht aller Konnektoren an.