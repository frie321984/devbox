{ pkgs ? import <nixpkgs> {} }:
with pkgs; dockerTools.buildLayeredImage {
  name = "registry.gitlab.com/frie321984/frieweb";
  tag = "latest";

  contents = [ cowsay bashInteractive coreutils catimg python3 nodejs_22 lftp gnumake imagemagick ];

  config.Cmd = [ "/bin/bash" ];
}
