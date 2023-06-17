-- disable header folding
vim.g.vim_markdown_folding_disabled = 1

-- do not use conceal feature, the implementation is not good
vim.g.vim_markdown_conceal = 0

-- diable math tex conceal feature
vim.g.tex_conceal = ""
vim.g.vim_markdown_math = 1

-- support front matter of various format
vim.g.vim_markdown_frontmatter = 1 -- for YAML
vim.g.vim_markdown_toml_frontmatter = 1 -- for TOML
vim.g.vim_markdown_json_frontmatter = 1 -- for JSON
