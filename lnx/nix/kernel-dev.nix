{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
  	# bash
  	bc
  	binutils
  	bison
  	btrfs-progs
  	# dwarves
  	e2fsprogs
  	flex
  	gcc
  	kmod
  	gnumake
  	mcelog
  	nfs-utils
  	nftables
  	openssl
	perl
  	ppp
  	procps
  	python3
  	quota
  	squashfs-tools
  	tar
  	util-linux
  	xfsprogs
  ];
}
