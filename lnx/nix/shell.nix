{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  shellHook = ''
    nixos-version
    nix --version
    echo "From Nothing, We can build Everything."
  '';
}
