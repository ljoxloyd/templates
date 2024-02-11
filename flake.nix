{
  inputs = {};

  outputs = inputs: {
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
  };
}
