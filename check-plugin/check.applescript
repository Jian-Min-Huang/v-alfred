# for check out, please :%s/clockin/clockout/g

set cName to "xxx"
set eId to "xxx"
set pd to "xxx"

if application "Google Chrome" is not running then
  do shell script "open -a /Applications/Google\\ Chrome.app"
end if

tell application "Google Chrome"
  open location "https://cloud.nueip.com"
  activate
  delay 0.8

  execute front window's active tab javascript "var xmlHttp = new XMLHttpRequest(); xmlHttp.open('GET', 'https://cloud.nueip.com/logout', false); xmlHttp.send(null);"
  activate
  delay 0.8

  set windowList to every tab of every window whose URL starts with "https://cloud.nueip.com"
  repeat with tabList in windowList
    set tabList to tabList as any
    repeat with tabItr in tabList
      set tabItr to tabItr as any
      delete tabItr
    end repeat
  end repeat
  activate
  delay 0.8

  open location "https://cloud.nueip.com"
  activate
  delay 0.8

  tell application "System Events"
    tell process "Google Chrome" to keystroke tab
    tell process "Google Chrome" to keystroke tab
    tell process "Google Chrome" to keystroke cName
    tell process "Google Chrome" to keystroke tab
    tell process "Google Chrome" to keystroke eId
    tell process "Google Chrome" to keystroke tab
    tell process "Google Chrome" to keystroke pd
    tell process "Google Chrome" to keystroke return
  end tell
  activate
  delay 0.8

  execute front window's active tab javascript "document.getElementById('clockin').click();"
  activate
  delay 0.8
end tell