# Umweltbox

<img src="https://mintfv.github.io/assets/images/logo.png" width="120">  Förderverein MINTarium Hamburg e. V.

## Tasmota Basis Setup

Diese Anleitung beschreibt die grundlegende Einrichtung von Tasmota auf einem ESP32-basierten Gerät für die Umweltbox. Sie umfasst die Installation der Firmware, die Konfiguration der WLAN-Verbindung für die Arbeit im Mintarium.

Für andere Umgebungen müssen die Schritte entsprechend abgewandelt werden.

## Inhaltsverzeichnis

1. [Einmalige Vorbereitungen](#einmalige-vorbereitungen)
2. [Verbindung des ESP32 mit dem Computer](#verbindung-des-esp32-mit-dem-computer)
3. [Installation der Tasmota Firmware](#installation-der-tasmota-firmware)
4. [Tasmota WLAN Konfiguration für das Mintarium - uwbox09](#tasmota-wlan-konfiguration-für-das-mintarium---uwbox09)

## Einmalige Vorbereitungen

1. ESP32 Platine besorgen (z.B. ESP32 DevKitC, ESP32-WROOM-32, etc.)
1. USB-Datenkabel besorgen
1. für Windows: Seriell Treiber installieren
    1. Manche ESP32-Boards benötigen einen Treiber (z.B. CP210x oder CH340).
1. Chrome Browser installieren (für Tasmota Web-Interface)


## Verbindung des ESP32 mit dem Computer

1. ESP32 mit USB-Kabel an Computer anschließen
    1. Beachte: Verwende ein Datenkabel, kein reines Ladekabel.
    1. Beachte: bei Verwendung eines Entwicklungsboards muss das USB-Kabel direkt an der Platine mit dem ESP32-Chip angeschlossen werden.
1. Stellen Sie sicher, dass die erforderlichen Treiber installiert sind, damit der Computer den ESP32 erkennt.

## Installation der Tasmota Firmware

1. Öffne im Chrome-Browser die URL <https://tasmota.github.io/install/>
1. Wähle "Tasmota Sensors" als Firmware-Version aus
1. Drücke auf die Schaltfläche "CONNECT"
1. Wähle den entsprechenden COM-Port aus, der deinem ESP32 zugewiesen ist.
1. TODO: ....

## Tasmota WLAN Konfiguration für das Mintarium - uwbox09

1. Wie oben beschrieben die Verbindung zu "Logs & Console" herstellen
1. in die untere Zeile klicken wo das ">" Zeichen zu sehen ist und dort alle folgenden Eingaben machen
1. Für die Konfiguration nachfolgende Zeile kopieren, passend für das Zielsystem uwbox**09** ändern, das Passwort bei **XXXXXX** eintragen und einspielen:

    ```text
    Backlog Topic uwbox09; FriendlyName uwbox09; DeviceName uwbox09; Hostname uwbox09; SSID1 NWZ-Mint; Password1 XXXXXX; AP uwbox09; WifiConfig 4; SetOption55 1; SetOption56 1; WebPassword 0;  SaveData
    ```

1. nach dem Neustart des ESP32 sollte die Verbindung zum WLAN "NWZ-Mint" automatisch hergestellt werden, was in der seriellen Konsole sichtbar sein sollte.
