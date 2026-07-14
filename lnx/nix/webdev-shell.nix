{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    apacheHttpd
    git
    nginx
    php
  ];
}
