; #FUNCTION# ====================================================================================================================
; Name ..........: CGB GUI Control
; Description ...: This file Includes all functions to current GUI
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: Jack Chan (July 2015)
; Modified ......: None
; Remarks .......: This file is part of ClashGameBot. Copyright 2015
;                  ClashGameBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================


Func cmbBarrack()
   If _GUICtrlComboBox_GetCurSel($cmbTroopComp) = 8 Then
	  For $i = 0 To 3
			If _GUICtrlComboBox_GetCurSel(Eval("cmbBarrack" & $i + 1 & "Troop2")) = 10 Then
			   GUICtrlSetState(Eval("txtNumBarrack" & $i + 1 & "Troop2"), $GUI_DISABLE)
			Else
			   GUICtrlSetState(Eval("txtNumBarrack" & $i + 1 & "Troop2"), $GUI_ENABLE)
			EndIf
	  Next

	  For $i = 0 To 1
			If _GUICtrlComboBox_GetCurSel(Eval("cmbDarkBarrack" & $i + 1 & "Troop2")) = 6 Then
			   GUICtrlSetState(Eval("txtNumDarkBarrack" & $i + 1 & "Troop2"), $GUI_DISABLE)
			Else
			   GUICtrlSetState(Eval("txtNumDarkBarrack" & $i + 1 & "Troop2"), $GUI_ENABLE)
			EndIf
	  Next
   EndIf
EndFunc   ;==>cmbBarrack

Func cmbUseDark()
   If _GUICtrlComboBox_GetCurSel($cmbTroopComp) = 8 Then

	  If GUICtrlRead($chkUseDarkBarrack) = $GUI_CHECKED Then

		 For $i = 0 To 1
			GUICtrlSetState(Eval("chkDeQDarkBarrack" & $i + 1), $GUI_ENABLE)
			GUICtrlSetState(Eval("chkRefillDarkBarrack" & $i + 1), $GUI_ENABLE)
			For $j = 0 To 1
			   GUICtrlSetState(Eval("cmbDarkBarrack" & $i + 1 & "Troop" & $j + 1), $GUI_ENABLE)
			   GUICtrlSetState(Eval("txtNumDarkBarrack" & $i + 1 & "Troop" & $j + 1), $GUI_ENABLE)
			Next
		 Next
		 cmbBarrack()

	  Else

		 For $i = 0 To 1
			GUICtrlSetState(Eval("chkDeQDarkBarrack" & $i + 1), $GUI_DISABLE)
			GUICtrlSetState(Eval("chkRefillDarkBarrack" & $i + 1), $GUI_DISABLE)
			For $j = 0 To 1
			   GUICtrlSetState(Eval("cmbDarkBarrack" & $i + 1 & "Troop" & $j + 1), $GUI_DISABLE)
			   GUICtrlSetState(Eval("txtNumDarkBarrack" & $i + 1 & "Troop" & $j + 1), $GUI_DISABLE)
			Next
		 Next

	  EndIf

   EndIf
EndFunc   ;==>cmbUssDark
;~ Func cmbTroopComp()
;~ 	If _GUICtrlComboBox_GetCurSel($cmbTroopComp) <> $icmbTroopComp Then
;~ 		$icmbTroopComp = _GUICtrlComboBox_GetCurSel($cmbTroopComp)
;~ 		For $i = 0 To UBound($TroopName) - 1
;~ 			Assign("Cur" & $TroopName[$i], 1)
;~ 		Next
;~ 		For $i = 0 To UBound($TroopDarkName) - 1
;~ 			Assign("Cur" & $TroopDarkName[$i], 1)
;~ 		Next
;~ 		SetComboTroopComp()
;~ 	EndIf
;~ EndFunc   ;==>cmbTroopComp

;~ Func SetComboTroopComp()
;~ 	Switch _GUICtrlComboBox_GetCurSel($cmbTroopComp)
;~ 		Case 0
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next
;~ 			GUICtrlSetData($txtNumArch, "100")
;~ 		Case 1
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next
;~ 			GUICtrlSetData($txtNumBarb, "100")
;~ 		Case 2
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next
;~ 			GUICtrlSetData($txtNumGobl, "100")
;~ 		Case 3
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next

;~ 			GUICtrlSetData($txtNumBarb, "50")
;~ 			GUICtrlSetData($txtNumArch, "50")
;~ 		Case 4
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next

;~ 			_GUICtrlEdit_SetReadOnly($txtNumGiant, False)

;~ 			GUICtrlSetData($txtNumBarb, "60")
;~ 			GUICtrlSetData($txtNumArch, "30")
;~ 			GUICtrlSetData($txtNumGobl, "10")

;~ 			GUICtrlSetData($txtNumGiant, $GiantComp)
;~ 		Case 5
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next
;~ 			_GUICtrlEdit_SetReadOnly($txtNumGiant, False)

;~ 			GUICtrlSetData($txtNumBarb, "50")
;~ 			GUICtrlSetData($txtNumArch, "50")

;~ 			GUICtrlSetData($txtNumGiant, $GiantComp)
;~ 		Case 6
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next
;~ 			GUICtrlSetData($txtNumBarb, "60")
;~ 			GUICtrlSetData($txtNumArch, "30")
;~ 			GUICtrlSetData($txtNumGobl, "10")
;~ 		Case 7
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), True)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), True)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), "0")
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), "0")
;~ 			Next

;~ 			_GUICtrlEdit_SetReadOnly($txtNumGiant, False)
;~ 			_GUICtrlEdit_SetReadOnly($txtNumWall, False)

;~ 			GUICtrlSetData($txtNumBarb, "60")
;~ 			GUICtrlSetData($txtNumArch, "30")
;~ 			GUICtrlSetData($txtNumGobl, "10")

;~ 			GUICtrlSetData($txtNumGiant, $GiantComp)
;~ 			GUICtrlSetData($txtNumWall, $WallComp)
;~ 			GUICtrlSetData($txtNumWiza, $WizaComp)
;~ 			GUICtrlSetData($txtNumMini, $MiniComp)
;~ 			GUICtrlSetData($txtNumHogs, $HogsComp)
;~ 		Case 8
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_ENABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_ENABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_ENABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_ENABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_DISABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_DISABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), False)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), Eval($TroopDarkName[$i] & "Comp"))
;~ 			Next
;~ 		Case 9
;~ 			GUICtrlSetState($cmbBarrack1, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack2, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack3, $GUI_DISABLE)
;~ 			GUICtrlSetState($cmbBarrack4, $GUI_DISABLE)
;~ 			;GUICtrlSetState($txtCapacity, $GUI_ENABLE)
;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopName[$i]), $GUI_ENABLE)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetState(Eval("txtNum" & $TroopDarkName[$i]), $GUI_ENABLE)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopName[$i]), False)
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				_GUICtrlEdit_SetReadOnly(Eval("txtNum" & $TroopDarkName[$i]), False)
;~ 			Next

;~ 			For $i = 0 To UBound($TroopName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopName[$i]), Eval($TroopName[$i] & "Comp"))
;~ 			Next
;~ 			For $i = 0 To UBound($TroopDarkName) - 1
;~ 				GUICtrlSetData(Eval("txtNum" & $TroopDarkName[$i]), Eval($TroopDarkName[$i] & "Comp"))
;~ 			Next

;~ 	EndSwitch
;~ 	lblTotalCount()
;~ EndFunc   ;==>SetComboTroopComp

;~ Func lblTotalCount()
;~ 	GUICtrlSetData($lblTotalCount, GUICtrlRead($txtNumBarb) + GUICtrlRead($txtNumArch) + GUICtrlRead($txtNumGobl))
;~ 	If GUICtrlRead($lblTotalCount) = "100" Then
;~ 		GUICtrlSetBkColor($lblTotalCount, $COLOR_MONEYGREEN)
;~ 	ElseIf GUICtrlRead($lblTotalCount) = "0" Then
;~ 		GUICtrlSetBkColor($lblTotalCount, $COLOR_ORANGE)
;~ 	Else
;~ 		GUICtrlSetBkColor($lblTotalCount, $COLOR_RED)
;~ 	EndIf
;~ EndFunc   ;==>lblTotalCount
