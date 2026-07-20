{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    bc
    gawk
    lua
    python3
    ruby
    gnused
  ];
}
