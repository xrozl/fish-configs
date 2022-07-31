function reloadfish
    switch (uname)
    case Darwin
        source $HOME/.config/fish/config-osx.fish
    case '*'
        # pass threw
    end
end
