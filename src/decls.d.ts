type MainInitArgs = {
  node: ReturnType<typeof document.querySelector>;
  flags?: unknown;
};

declare module "*.elm" {
  export const Elm: {
    Main: {
      init: (args: MainInitArgs) => void;
    };
  };
}
