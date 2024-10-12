{ pkgs ? import <nixpkgs> {} }:
with pkgs; dockerTools.buildLayeredImage {
  name = "hello";
  tag = "latest";

  contents = [ cowsay bashInteractive coreutils catimg ];

  config.Cmd = [ "/bin/bash" ];
}
