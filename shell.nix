{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [
    python3
    (python3.withPackages (ps: with ps; with python3Packages; [
      jupyter
      ipython

      pandas
      numpy
      matplotlib
      keras
      tensorflow
    ]))
  ];
}

