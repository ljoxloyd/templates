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

      ts-bun = {
        path = ./templates/ts-bun;
        description = ''
          Typescript + Bun starter
        '';
        welcomText = ''
          Run `bun init` or `bun create ...`
        '';
      };
    };
  };
}
