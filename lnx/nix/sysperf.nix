{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    bpftools
    # dtrace
    perf
    procps
    sysstat
    systemtap-unwrapped
  ];
}
