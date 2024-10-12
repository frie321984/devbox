nix-build nixDockImg.nix 
podman load < result 
podman push registry.gitlab.com/frie321984/frieweb:latest 
