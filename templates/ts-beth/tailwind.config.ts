export default {
  content: ["./src/**/*.tsx"],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
} satisfies import("tailwindcss").Config;
