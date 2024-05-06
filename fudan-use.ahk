#h::Left
return
#j::Down
return
#k::Up
return
#l::Right
return


#Up::
#Left::
#Down::
#Right::
While (GetKeyState("LWin", "P"))
    {
        MoveX := 0, MoveY := 0
        MoveY += GetKeyState("Up", "P") ? -11 : 0 
        MoveX += GetKeyState("Left", "P") ? -11 : 0
        MoveY += GetKeyState("Down", "P") ? 11 : 0
        MoveX += GetKeyState("Right", "P") ? 11 : 0
        MoveX *= GetKeyState("Ctrl", "P") ? 10 : 1   ; Ctrlキーが押されている間は座標を10倍にし続ける(スピードアップ)
        MoveY *= GetKeyState("Ctrl", "P") ? 10 : 1
        MoveX *= GetKeyState("Shift", "P") ? 0.3 : 1 ; Shiftキーが押されている間は座標を30%にする（スピードダウン）
        MoveY *= GetKeyState("Shift", "P") ? 0.3 : 1
        MouseMove, %MoveX%, %MoveY%, 1, R            ; マウスカーソルを移動する
        Sleep, 0                                     ; 負荷が高い場合は設定を変更 設定できる値は-1、0、10～m秒 詳細はSleep
    }
Return

#Enter::
MouseClick, LEFT
return 