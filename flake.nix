{
  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, utils, ... }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.javascript = import ./shells/js/shell.nix { inherit pkgs; };
      devShells.csharp = import ./shells/csharp/shell.nix { inherit pkgs; };
      devShells.golang = import ./shells/golang/shell.nix { inherit pkgs; };

      templates = {
        ts-pnpm = {
          path = ./templates/ts-pnpm;
          description = ''
            Typescript + PNPM starter
          '';
          welcomText = ''
            Run `pnpm init` or `pnpm create ...`
          '';
        };

        ts-beth = {
          path = ./templates/ts-beth;
          description = ''
            TS, Bun, Elysia, Tailwindcss, HTMX
          '';
          welcomText = ''
            Run `bun init` or `bun create ...`
          '';
        };

        ts-lit = {
          path = ./templates/ts-lit;
          description = ''
            Typescript + Lit starter
          '';
        };

        ts-angular = {
          path = ./templates/ts-angular;
          description = ''
            Angular starter
          '';
        };
      };
    });
}
