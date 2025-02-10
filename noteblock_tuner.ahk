text := "/setblock 69 65 488 minecraft:note_block[instrument=harp,note=0,powered=false]"

; Regex to extract coordinates, block type, and note
if RegExMatch(text, "/setblock (\d+) (\d+) (\d+) minecraft:note_block\[instrument=\w+,note=(\d+),powered=\w+\]", match) {
    x := match1
    y := match2
    z := match3
    note := match4
    MsgBox, X: %x%`nY: %y%`nZ: %z%`nNote: %note%
} else {
    MsgBox, Failed to parse the command.
}

MsgBox, X: %x%`nY: %y%`nZ: %z%`nNote: %note%