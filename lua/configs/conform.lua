local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "ruff_format", "ruff_organize_imports" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    nix = { "nixfmt" },
  },

  formatters = {
    clang_format = {
      prepend_args = {
        "--style={BasedOnStyle: LLVM, IndentWidth: 4, AllowShortFunctionsOnASingleLine: None}",
      },
    },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
