
; #FUNCTION# ====================================================================================================================
; Name ..........: GoldElixirChangeEBO  (End Battle Options)
; Description ...: Checks if the gold/elixir changes , Returns True if changed.
; Syntax ........: GoldElixirChangeEBO()
; Parameters ....:
; Return values .: None
; Author ........: Samota
; Modified ......: Sardo (2015-06) : add exit for minimum resource left
; Remarks .......: This file is part of ClashGameBot. Copyright 2015
;                  ClashGameBot is distributed under the terms of the GNU GPL
; Related .......:v
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func GoldElixirChangeEBO()
	Local $Gold1, $Gold2
	Local $GoldChange, $ElixirChange
	Local $Elixir1, $Elixir2
	Local $DarkElixir1, $DarkElixir2
	Local $DarkElixirChange
	Local $Trophies
	Local $txtDiff
	Local $exitOneStar = 0, $exitTwoStars = 0

	;READ RESOURCES n.1
	$Gold1 = getGoldVillageSearch(48, 68)
	$Elixir1 = getElixirVillageSearch(48, 68 + 28)
	$Trophies = getTrophyVillageSearch(48, 167)
	If $Trophies <> "" Then ; If trophy value found, then base has Dark Elixir
		If _Sleep(500) Then Return
		$DarkElixir1 = getDarkElixirVillageSearch(48, 125)
	Else
		$DarkElixir1 = ""
		$Trophies = getTrophyVillageSearch(48, 138)
	EndIf

	;CALCULATE WITCH TIMER TO USE
	Local $iBegin = TimerInit(), $x = $sTimeStopAtk * 1000, $y = $sTimeStopAtk2 * 1000, $z
	If Number($Gold1) < Number($stxtMinGoldStopAtk2) And Number($Elixir1) < Number($stxtMinElixirStopAtk2) And Number($DarkElixir1) < Number($stxtMinDarkElixirStopAtk2) And $iChkTimeStopAtk2 = 1 Then
		$z = $y
	Else
		If $ichkTimeStopAtk = 1 Then
			$z = $x
		Else
			$z = 60 * 3 * 1000
		EndIf
	EndIf


	;CALCULATE TWO STARS REACH
	If _ColorCheck(_GetPixelColor($aWonTwoStar[0], $aWonTwoStar[1], True), Hex($aWonTwoStar[2], 6), $aWonTwoStar[3]) Then
		If $ichkEndTwoStars = 1 Then
			SetLog("Two Star Reach, exit", $COLOR_GREEN)
			$exitTwoStars = 1
			$z = 0
		EndIf
	EndIf

	;CALCULATE ONE STARS REACH
	If _ColorCheck(_GetPixelColor($aWonOneStar[0], $aWonOneStar[1], True), Hex($aWonOneStar[2], 6), $aWonOneStar[3]) Then
		If $ichkEndOneStar = 1 Then
			SetLog("One Star Reach, exit", $COLOR_GREEN)
			$exitOneStar = 1
			$z = 0
		EndIf
	EndIf


	;MAIN LOOP
	While TimerDiff($iBegin) < $z
		;HEALT HEROES
		CheckHeroesHealth()
		If $checkKPower Or $checkQPower Then
			If _Sleep(500) Then Return
		Else
			If _Sleep(1000) Then Return
		EndIf

		;READ RESOURCE n.2
		$Gold2 = getGoldVillageSearch(48, 68)
		If $Gold2 = "" Then
			If _Sleep(500) Then Return
			$Gold2 = getGoldVillageSearch(48, 68)
		EndIf
		$Elixir2 = getElixirVillageSearch(48, 68 + 28)
		$Trophies = getTrophyVillageSearch(48, 167)
		If $Trophies <> "" Then ; If trophy value found, then base has Dark Elixir
			If _Sleep(500) Then Return
			$DarkElixir2 = getDarkElixirVillageSearch(48, 125)
		Else
			$DarkElixir2 = ""
			$Trophies = getTrophyVillageSearch(48, 138)
		EndIf

		;WRITE LOG
		$txtDiff = Round(($z - TimerDiff($iBegin)) / 1000, 1)
		If Number($txtDiff) < 0 Then $txtDiff = 0
		SetLog("detected [G]: " & $Gold2 & " [E]: " & $Elixir2 & " [DE]: " & $DarkElixir2 & " |  Exit in " & StringReplace(StringFormat("%2.1f", $txtDiff), "-", "") & " sec.", $COLOR_BLUE)

		;CALCULATE RESOURCE CHANGES
		If $Gold2 <> "" Or $Elixir2 <> "" Or $DarkElixir2 <> "" Then
			$GoldChange = $Gold2
			$ElixirChange = $Elixir2
			$DarkElixirChange = $DarkElixir2
		EndIf

		;EXIT IF RESOURCES = 0
		If $chkEndNoResources = 1 And Number($Gold2) = 0 And Number($Elixir2) = 0 And Number($DarkElixir2) = 0 Then
			SetLog("Gold & Elixir & DE = 0, end battle ", $COLOR_GREEN)
			If _Sleep(1500) Then Return ;wait 1.5 seconds... antiban purpose...
			ExitLoop
		EndIf

		;EXIT IF TWO STARS REACH
		If _ColorCheck(_GetPixelColor($aWonTwoStar[0], $aWonTwoStar[1], True), Hex($aWonTwoStar[2], 6), $aWonTwoStar[3]) Then
			If $ichkEndTwoStars = 1 Then
				SetLog("Two Star Reach, exit", $COLOR_GREEN)
				$exitTwoStars = 1
				ExitLoop
			EndIf
		EndIf

		;EXIT IF ONE STARS REACH
		If _ColorCheck(_GetPixelColor($aWonOneStar[0], $aWonOneStar[1], True), Hex($aWonOneStar[2], 6), $aWonOneStar[3]) Then
			If $ichkEndOneStar = 1 Then
				SetLog("One Star Reach, exit", $COLOR_GREEN)
				$exitOneStar = 1
				ExitLoop
			EndIf
		EndIf

		;EXIT LOOP IF RESOURCES = "" ... battle end
		If getGoldVillageSearch(48, 68) = "" And getElixirVillageSearch(48, 68 + 28) = "" And $DarkElixir2 = "" Then
			ExitLoop
		EndIf

		;EXIT IF RESOURCES CHANGE DETECTEC
		If ($Gold1 <> $Gold2 Or $Elixir1 <> $Elixir2 Or $DarkElixir1 <> $DarkElixir2) Then
			;SetLog("Gold & Elixir & DE change detected, waiting... .", $COLOR_GREEN)
			ExitLoop
		EndIf

	WEnd ; END MAIN LOOP

	;FIRST CHECK... EXIT FOR ONE STAR REACH
	If $ichkEndOneStar = 1 And $exitOneStar = 1 Then
		If _Sleep(1500) Then Return ;wait 1.5 seconds... antiban purpose...
		Return False
	EndIf

	;SECOND CHECK... EXIT FOR TWO STARS REACH
	If $ichkEndTwoStars = 1 And $exitTwoStars = 1 Then
		If _Sleep(1500) Then Return ;wait 1.5 seconds... antiban purpose...
		Return False
	EndIf

	;THIRD CHECK... IF VALUES= "" REREAD AND RETURN FALSE IF = ""
	If ($Gold2 = "" And $Elixir2 = "" And $DarkElixir2 = "") Then
		SetLog("Battle has finished", $COLOR_GREEN)
		Return False ;end battle
	EndIf

	;FOURTH CHECK... IF RESOURCES = 0 THEN EXIT
	If $chkEndNoResources = 1 And Number($Gold2) = 0 And Number($Elixir2) = 0 And Number($DarkElixir2) = 0 Then
		SetLog("Gold & Elixir & DE = 0, end battle ", $COLOR_GREEN)
		If _Sleep(1500) Then Return ;wait 1.5 seconds... antiban purpose...
		Return False
	EndIf

	;FIFTH CHECK... IF VALUES NOT CHANGED  RETURN FALSE ELSE RETURN TRUE
	If (Number($Gold1) = Number($Gold2) And Number($Elixir1) = Number($Elixir2) And Number($DarkElixir1) = Number($DarkElixir2)) Then
		SetLog("Gold & Elixir & DE no change detected, exit", $COLOR_GREEN)
		Return False
	Else
		IF $debugsetlog= 1 Then
			Setlog("Gold1: "  & Number($Gold1) & "  Gold2: " & Number($Gold2))
			Setlog("Elixir1: "  & Number($Elixir1) & "  Elixir2: " & Number($Elixir2))
			Setlog("Dark Elixir1: "  & Number($DarkElixir1) & "  Dark Elixir2: " & Number($DarkElixir2))
		EndIf
		SetLog("Gold & Elixir & DE change detected, waiting...", $COLOR_GREEN)
		Return True
	EndIf



EndFunc   ;==>GoldElixirChangeEBO
