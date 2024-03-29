# Entwickeln auf jedem Rechner

dieses container image benutze ich zum entwickeln. damit kann ich auf jedem Rechner, der podman oder docker kennt, einen container starten, der alles nötige für mich hat. :)

## Nützliche Links
- https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/assembly_working-with-pods_building-running-and-managing-containers

## Installation
```shell
make
```

## Notizen für mich
- podman installieren
- devbox-image holen & starten
- ssh-key generieren und im git hinterlegen
- ssh-key konfigurieren im container
- devbox container starten
- git clone machen
- jetzt kann ich schon mal arbeiten

## Ideen
- devbox publishen
- ssh-key zeugs vorbereiten
  * ssh-key in jeder devbox erzeugen
  * den pub-key gleich printen oder rausgeben, so dass man ihn nur noch konfigurieren muss
- OOOODER mit gitlab-token arbeiten & als env-variable reingeben?

