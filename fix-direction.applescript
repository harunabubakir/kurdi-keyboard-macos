-- Fix Word Direction: sets each paragraph and line of the front Word document to
-- right-to-left or left-to-right from its first letter (Arabic script = RTL, Latin = LTR).
-- Works on the text itself, so it does not matter which keyboard typed it.

on dirOf(t)
	-- "R" if the first letter is Arabic/Hebrew script, "L" if Latin, "" if no letters
	repeat with c in (id of t) as list
		set n to c as integer
		if (n ≥ 1424 and n ≤ 2303) or (n ≥ 64285 and n ≤ 65276) then return "R"
		if (n ≥ 65 and n ≤ 90) or (n ≥ 97 and n ≤ 122) or (n ≥ 192 and n ≤ 591) then return "L"
	end repeat
	return ""
end dirOf

tell application "Microsoft Word"
	if (count of documents) = 0 then return "No document open."
	set d to active document
	set selStart to selection start of selection
	set selEnd to selection end of selection
	set fixedCount to 0
	repeat with i from 1 to (count of paragraphs of d)
		set r to text object of paragraph i of d
		set t to content of r
		set pDir to my dirOf(t)
		if pDir is not "" then
			select r
			if pDir = "R" then
				run VB macro macro name "RtlPara"
			else
				run VB macro macro name "LtrPara"
			end if
			-- start-aligned: right edge for RTL, left edge for LTR (centre/justify left alone)
			set a to alignment of paragraph format of r
			if a is align paragraph right or a is align paragraph left then set alignment of paragraph format of r to align paragraph left
			-- each line (Shift-Return break) gets its own text direction
			set pos to start of content of r
			set AppleScript's text item delimiters to (character id 11)
			set theLines to text items of t
			set AppleScript's text item delimiters to ""
			repeat with ln in theLines
				set n to count of (ln as text)
				set lDir to my dirOf(ln as text)
				if lDir is not "" and n > 0 then
					select (create range d start pos end (pos + n))
					if lDir = "R" then
						run VB macro macro name "RtlRun"
					else
						run VB macro macro name "LtrRun"
					end if
					set fixedCount to fixedCount + 1
				end if
				set pos to pos + n + 1
			end repeat
		end if
	end repeat
	select (create range d start selStart end selEnd)
	return "Fixed " & fixedCount & " lines."
end tell
