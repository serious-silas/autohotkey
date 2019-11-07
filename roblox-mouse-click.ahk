if WinExist("Roblox")
    WinActivate

CoordMode, Mouse, Window

Send {3} ; grab the bottle
Send {Click, 200, 200}

Loop, 3
{
    Send {Click, 200, 200}
    Sleep 2000
}

Send {3} ; put down the bottle
Send {Click, 300, 300}

SetKeyDelay,, 500
Send {Up}
Send {Left}

SetKeyDelay,, 2000
Loop, 3
{
    Send {Up}
    Send {Left}
}

