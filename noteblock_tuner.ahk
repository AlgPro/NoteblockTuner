#NoEnv
#SingleInstance Force
#MaxHotkeysPerInterval 40

ParseCommand(command) {
	If RegExMatch(command, "/setblock (\d+) (\d+) (\d+) minecraft:note_block\[instrument=\w+,note=(\d+),powered=\w+\]", match) {
		x := match1
		y := match2
		z := match3
		note := match4
		MsgBox, X: %x%`nY: %y%`nZ: %z%`nNote: %note%
	}
}

B::
Clipboard=""
SendInput, {f3 down}i{f3 up}
ClipWait
result := ParseCommand(Clipboard)
return