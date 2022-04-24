#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 3

seed = A_Hour + A_Min + A_Sec
Random , , seed


cps = 12


*$XButton2::
Loop
{
    If ( GetKeyState("XButton2", "P") )
    {
        Random, rand, -3.0, 3.0
        Click
        Sleep (1000 / (cps + rand))
    }
    Else
    {
        Break
    }       
}
Return

