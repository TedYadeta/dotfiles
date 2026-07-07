{ config, pkgs, ... }:
{
environment.shellAliases = {
	# Legacy Aliases for Legacy Commands
	"nx-bd" = "nix-build";
	"nx-sh" = "nix-shell";
	"nx-st" = "nix-store";
	"nx-en" = "nix-env";
	"nx-ch" = "nix-channel";
	"nx-cg" = "nix-collect-garbage";
	"nx-cc" = "nix-copy-closure";
	"nx-dm" = "nix-daemon";
	"nx-ha" = "nix-hash";
	"nx-in" = "nix-instantiate";
	"nx-pu" = "nix-prefetch-url";
	# Experimental Aliases for Experimental Commands
	nxbd = "nix build";
	nxbu = "nix bundle";
	nxcf = "nix config";
	nxcp = "nix copy";
	nxdm = "nix daemon";
	nxdr = "nix derivation";
	nxdv = "nix develop";
	nxed = "nix edit";
	nxen = "nix env";
	nxev = "nix eval";
	nxfl = "nix flake";
	nxfm = "nix fmt";
	nxfo = "nix formatter";
	nxha = "nix hash";
	nxhe = "nix help";
	nxhs = "nix help-stores";
	nxke = "nix key";
	nxlg = "nix log";
	nxnr = "nix nar";
	nxpi = "nix path-info";
	nxpd = "nix print-dev-env";
	nxpr = "nix profile";
	nxrl = "nix realisation";
	nxrg = "nix registry";
	nxrp = "nix repl";
	nxru = "nix run";
	nxse = "nix search";
	nxst = "nix store";
	nxun = "nix upgrade-nix";
	nxwd = "nix why-depends";
	};
}

# Run 'sudo nixos-rebuild switch' to execute
	
