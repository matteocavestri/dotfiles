#!/bin/bash
# Run the script from home dir
cd ~

nvim_config="$HOME/.config/nvim"
nvim_data="$HOME/.local/share/nvim"

cp -r "$nvim_config" nvim_bak # backup nvim dir
cp -r "$nvim_config/lua/custom" .

# Remove prefix 'custom.' from all files
find custom -type f -exec sed -i 's/custom\.//g' {} +

# replace all plugins.configs -> nvchad.configs
find custom -type f -exec sed -i 's/plugins.configs/nvchad.configs/g' {} +

cd custom

# we will load this in main init.lua
mv init.lua myinit.lua

# disable these fields in chadrc
sed -Ei 's/M.mappings|M.plugins/-- &/g' chadrc.lua

# add new module paths
[ -e options.lua ] && sed -i '1s/^/require "nvchad.options"\n/' options.lua
[ -e autocmds.lua ] && sed -i '1s/^/require "nvchad.autocmds"\n/' autocmds.lua
[ -e mappings.lua ] && sed -i '1s/^/require "nvchad.mappings"\n/' mappings.lua

cd ..

rm -rf "$nvim_config" "$nvim_data"

# setup new config
git clone https://github.com/NvChad/starter "$nvim_config"

if [ -e custom/configs ]; then
	mv custom/configs/* "$nvim_config/lua/configs/"
	rm -rf custom/configs
fi

mv custom/* "$nvim_config/lua"

cd "$nvim_config"

# load custom.init.lua if it exists
[ -e lua/myinit.lua ] && echo "require 'myinit'" >> init.lua

# Some users have plugins.lua instead of plugins dir/ so move it in the plugins dir
[ -e lua/plugins.lua ] && mv lua/plugins.lua lua/plugins/myplugins.lua

nvim
