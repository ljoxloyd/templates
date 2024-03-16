{ pkgs, ... }: pkgs.mkShell (
  let
    npmrc = pkgs.writeTextFile {
      name = "npmrc";
      destination = "/npmrc";
      text = ''
        prefix=''${XDG_DATA_HOME}/npm
        cache=''${XDG_CACHE_HOME}/npm
        init-module=''${XDG_CONFIG_HOME}/npm/config/npm-init.js
      '';
    };
    node = pkgs.nodejs_21;
    pnpm = node.pkgs.pnpm;
  in
  {
    packages = [
      pkgs.bun
      pkgs.biome
      node
      pnpm
      npmrc
    ];

    shellHook = ''
      export PATH="$PWD/node_modules/.bin:$PATH"
      export NPM_CONFIG_USERCONFIG="${npmrc}/npmrc"
    '';
  }
)
