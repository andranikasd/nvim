return {
  "ThePrimeagen/harpoon",
}


local harpoon_ui = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")

vim.keymap.set("n", "mv", harpoon_ui.toggle_quick_menu, {})
vim.keymap.set("n", "<C-j>", function()
	harpoon_ui.nav_file(1)
end, {})
vim.keymap.set("n", "<C-k>", function()
	harpoon_ui.nav_file(2)
end, {})
vim.keymap.set("n", "<C-l>", function()
	harpoon_ui.nav_file(3)
end, {})
vim.keymap.set("n", "mc", harpoon_mark.add_file, {})
