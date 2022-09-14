type InitArgs = {
  node: ReturnType<typeof document.querySelector>;
  flags?: unknown;
};

declare module "*.elm" {
  export const Elm: {
    [key: string]: {
      init: (args: InitArgs) => void;
    };
  };
}
