function ls
    command ls -p -G
end

function la
    command ls -A
end

# use exa
function ll
    if type -q exa
        command exa -l -g --icons
    else
        command ls -l
    end
end

function lla
    if type -q exa
        command exa -l -g -a --icons
    else
        command ls -la
    end
end

# like windows command prompt
function dir
    command ls -p -G
end
