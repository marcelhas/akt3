{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [
    python3
    pipreqs
    (python3.withPackages (ps:
      with ps;
      with python3Packages; [
        jupyter
        ipython

        pandas
        numpy
        matplotlib
        keras
        scikit-learn
        tensorflow
      ]))
  ];
}

