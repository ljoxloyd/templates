{ pkgs, ... }: pkgs.mkShell {
  name = "csharp-shell-dev";
  packages = [
    pkgs.dotnetCorePackages.sdk_8_0
    pkgs.omnisharp-roslyn
  ];

  shellHook = ''
    export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
    export LD_LIBRARY_PATH="${pkgs.ncurses}/lib:$LD_LIBRARY_PATH"
    export OMNISHARPHOME="$XDG_CONFIG_HOME/omnisharp"
    echo "dotnet version: $(dotnet --version)" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat
  '';
}
