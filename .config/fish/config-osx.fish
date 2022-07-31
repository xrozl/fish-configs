# Nim 
fish_add_path $HOME/Nim/bin

# yuu scripts
for file in $HOME/.config/fish/functions/yuu/*.fish
  #echo $file
	source $file
end
