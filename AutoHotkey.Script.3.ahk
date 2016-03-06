F3:: 
#include SAMP.ahk
SendInput,{f6}/wanted{enter}
ShowDialog("1", "{4682B4}Проверка розыска", "Введите id человека, чтобы проверить его на наличие розыска`n", "OK") 
Input, varid, V, {enter} 
SendInput, %varid%{enter}
varName := GetPlayerNamebyId(varid) 
Loop, read, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt 
{ 
FoundPos:=RegExMatch(A_LoopReadLine, "\[.*\].*")
if(FoundPos)==1
RegExMatch(A_LoopReadLine, "\[.*\]    (.*)",SubPat)
else SubPat1:=A_LoopReadLine
Loop, parse, SubPat1, `,, %A_Space% 
{ 
FoundPos:= RegExMatch(A_LoopField, "(.*): (.)", SubPatt)
if(FoundPos)==1
{
if(SubPatt1==varName)

addMessageToChatWindow("{FF7F50}" SubPatt1 ".{F4A460}Уровень розыска: {FFFAFA}" SubPatt2)

}
} 
}
return