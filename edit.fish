function edit
    if test -n "$VISUAL" && type -q $VISUAL[1]; and test -z "$WAYLAND_DISPLAY" || test -z "$DISPLAY"
        $VISUAL $argv
    else if test -n "$EDITOR" && type -q $EDITOR[1]
        $EDITOR $argv
    else if type -q editor
        # https://wiki.debian.org/TextEditor#How_to_set_a_default_text_editor
        editor $argv
    else if type -q nano
        # For users with no editor, nano is an easier fallback
        nano $argv
    else if type -q pico
        pico $argv
    else if type -q vim
        vim $argv
    else if type -q vi
        vi $argv
    else if type -q ed
        ed $argv
    else
        echo "No suitable editor found"
    end
end
