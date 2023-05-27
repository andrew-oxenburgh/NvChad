##### plugins
1. cmp - completion
1. base46 - theme
1. mason - not sure what this for or if its run

#### commands

1. Backwrds and forwards `ctrl-i` and `ctrl-o`

1.  :checkhealth
2.  `<leader>` is `<space>`
3.  Open explorer `<leader> + e`
4. Go to definition `ctrl-]`
5. `:%bd|e#` close all buffers except this one

##### save all buffers
`:wa`
`:xa` write all unsaved buffers and quit
`:qa` if there are no open buffers, quit


##### shell

`find . -maxdepth 4 | fzf -e --query vim`

`tree -L 2`




##### init 1. 

1. `.config/nvim/init.lua`
    1. `lua/pre-init.lua`
	1. `lua/custom/init.lua`
	1. `lua/plugins/init.lua`


