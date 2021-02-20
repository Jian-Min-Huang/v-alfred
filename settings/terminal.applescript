on alfred_script(q)
  	do shell script "open -a /Applications/iTerm.app"

	tell application "iTerm"
		activate
		delay 0.8

		tell the first window to tell current session to write text q
		activate
		delay 0.8
	end tell
end alfred_script