#NoEnv
#SingleInstance Force
#MaxHotkeysPerInterval 40

notes := [0, 4, 7, 9, 14, 16, 19, 24]

ParseCommand(command) {
	If (RegExMatch(command, "\/setblock (\d+) (\d+) (\d+) minecraft:note_block\[instrument=\w+,note=(\d+),powered=\w+\]", match)) {
		return {"x": match1, "y": match2, "z": match3, "note": match4}
	}
	return false
}

TuneNoteblock(note, desired) {
	clicks := desired - note
	If (clicks < 0) {
		clicks += 25
	}
	Loop %clicks% {
		;MouseClick, R 
	}
}

B::
Clipboard := ""
SendInput, {f3 down}i{f3 up}
ClipWait
result := ParseCommand(Clipboard)
If (result) {
	Random, rand, 1, % notes.Length()
	TuneNoteblock(result.note, notes[rand])
}
return