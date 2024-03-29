# Entwickeln auf jedem Rechner

Dieses container image benutze ich zum entwickeln. damit kann ich auf jedem Rechner, der podman oder docker kennt, einen container starten, der alles nötige für mich hat. :)

## Verwenden

image holen
```
podman pull ghcr.io/frie321984/devbox:main
```

direkt mit der Entwicklung loslegen - lokales verzeichnis wird in /workspace gemountet
```
podman run -it -v .:/workspace ghcr.io/frie321984/devbox:main
```

oder mit festem namen laufen lassen
```
podman run -dt -it -v .:/workspace --name devbox ghcr.io/frie321984/devbox:main
podman attach devbox
```

## Notizen für mich
- ssh-key generieren und im git hinterlegen
- ssh-key konfigurieren im container
- gitconfig bereitstellen

## Ideen
- ssh-key zeugs vorbereiten
    * ssh-key in jeder devbox erzeugen
    * den pub-key gleich printen oder rausgeben, so dass man ihn nur noch konfigurieren muss
- OOOODER mit gitlab-token arbeiten & als env-variable reingeben?

## Nützliche Links
- https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/assembly_working-with-pods_building-running-and-managing-containers
- https://www.deutschlandfunkkultur.de/frauen-informatik-programmieren-geschichte-100.html

