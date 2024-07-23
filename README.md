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

## Nützliche Links
- https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/8/html/building_running_and_managing_containers/assembly_working-with-pods_building-running-and-managing-containers
- https://www.deutschlandfunkkultur.de/frauen-informatik-programmieren-geschichte-100.html

