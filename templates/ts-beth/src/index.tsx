import { Elysia } from "elysia";
import { html } from "@elysiajs/html";
import { staticPlugin } from "@elysiajs/static";

const app = new Elysia()
  .use(html())
  .use(staticPlugin())
  .get("/", () => (
    <Root>
      <main class="container mx-auto p-4">
        <h1 class="text-3xl text-center text-neutral-100">Hi 👋</h1>
      </main>
    </Root>
  ));

app.listen(3000, server => {
  console.log(`🦊 Elysia is running at ${server.hostname}:${server.port}`);
});

type HtmlNode = JSX.Element | boolean | null | string | number;
type HtmlChildren = HtmlNode | HtmlNode[];

const Root = ({
  children,
  title = "App",
}: {
  children?: HtmlChildren;
  title?: string;
}) => {
  return (
    <Html.Fragment>
      <html lang="en">
        <head>
          <meta charset="UTF-8" />
          <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0"
          />
          <title>{title}</title>
          <link rel="stylesheet" href="public/index.gen.css" />
          <script src="public/htmx.js"></script>
        </head>
        <body>{children}</body>
      </html>
    </Html.Fragment>
  );
};
