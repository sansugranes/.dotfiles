vim.g.nord_disable_background = true

function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
    require('catppuccin').setup({
        transparent_background = true
    });
end

ColorMyPencils()
