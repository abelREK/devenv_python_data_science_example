{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ 
    pkgs.python311Packages.numpy
    pkgs.python311Packages.matplotlib
    pkgs.python311Packages.pandas
    # pkgs.python311Packages.torch # Pytorch
    # pkgs.python311Packages.tensorflow # tensorflow
  ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
  '';

  languages.python = {
    enable = true;
    version = "3.11.3";

    venv.enable = true;
    venv.requirements = ./requirements.txt;
  };

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
