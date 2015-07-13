; #FUNCTION# ====================================================================================================================
; Name ..........: CGB GUI Design
; Description ...: This file Includes GUI Design
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

;~ -------------------------------------------------------------
;~ Troops Tab
;~ -------------------------------------------------------------
$tabTroops = GUICtrlCreateTabItem("Barrack")
	Local $x = 30, $y = 150
;~ 	$grpTroopComp = GUICtrlCreateGroup("Army Composition", $x - 20, $y - 20, 222, 55)
;~ 		$cmbTroopComp = GUICtrlCreateCombo("", $x - 5, $y, 190, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetTip(-1, "Set the type of Army composition." & @CRLF & "'Use Barracks Mode' or 'Custom Army' is for manual compositions.")
;~ 			GUICtrlSetOnEvent(-1, "cmbTroopComp")
;~ 			GUICtrlSetData(-1, "Preset: Archers|Preset: Barbarians|Preset: Goblins|Preset: B.Arch|Preset: B.A.G.G.|Preset: B.A.Giant|Preset: B.A.Goblin|Preset: B.A.G.G.Wall|Use Barrack Mode|Custom Army", "Custom Army")
;~ 	GUICtrlCreateGroup("", -99, -99, 1, 1)

;~ 	$x += 227
	$grpBarrack1 = GUICtrlCreateGroup("Barrack #1", $x - 20, $y - 20, 445, 55)
; 		$lblBarrack1Troop1 = GUICtrlCreateLabel("First", $x - 10, $y + 5, -1, -1)
		$cmbBarrack1Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 1.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Dragons") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumBarrack1Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumBarrack1Troop1 = GUICtrlCreateInput("3", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblBarrack1Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbBarrack1Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 1.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Nothing", "Nothing") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumBarrack1Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumBarrack1Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQBarrack1 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue barrack 1 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillBarrack1 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370

   GUICtrlCreateGroup("", -99, -99, 1, 1)

    $y += 55
    $grpBarrack2 = GUICtrlCreateGroup("Barrack #2", $x - 20, $y - 20, 445, 55)
;~ 		$lblBarrack2Troop1 = GUICtrlCreateLabel("Barrack 2: First Train", $x - 5, $y + 5, -1, -1)
		$cmbBarrack2Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 2.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Dragons") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumBarrack2Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumBarrack2Troop1 = GUICtrlCreateInput("3", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblBarrack2Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbBarrack2Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 2.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Nothing", "Nothing") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumBarrack2Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumBarrack2Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQBarrack2 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue barrack 2 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillBarrack2 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370
   GUICtrlCreateGroup("", -99, -99, 1, 1)

    $y += 55
   $grpBarrack3 = GUICtrlCreateGroup("Barrack #3", $x - 20, $y - 20, 445, 55)
		$cmbBarrack3Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 3.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Archers") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumBarrack3Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumBarrack3Troop1 = GUICtrlCreateInput("15", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblBarrack3Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbBarrack3Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 3.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Nothing", "Dragons") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumBarrack3Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumBarrack3Troop2 = GUICtrlCreateInput("3", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQBarrack3 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue barrack 3 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillBarrack3 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370
   GUICtrlCreateGroup("", -99, -99, 1, 1)

    $y += 55
   $grpBarrack4 = GUICtrlCreateGroup("Barrack #4", $x - 20, $y - 20, 445, 55)
		$cmbBarrack4Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 4.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Dragons") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumBarrack4Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumBarrack4Troop1 = GUICtrlCreateInput("3", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblBarrack4Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbBarrack4Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 4.")
			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas|Nothing", "Nothing") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumBarrack4Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumBarrack4Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQBarrack4 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue barrack 4 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillBarrack4 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370
   GUICtrlCreateGroup("", -99, -99, 1, 1)

    $y += 50
	$chkUseDarkBarrack = GUICtrlCreateCheckbox("Use Dark Barrack", $x - 15 , $y, -1, -1)
	  GUICtrlSetState($chkUseDarkBarrack, $GUI_UNCHECKED)
	  GUICtrlSetOnEvent(-1, "cmbUseDark")

	$y += 45
   $grpDarkBarrack1 = GUICtrlCreateGroup("Dark Barrack #1", $x - 20, $y - 20, 445, 55)
		$cmbDarkBarrack1Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Dark Barrack 1.")
			GUICtrlSetData(-1, "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound", "Minion") ; "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumDarkBarrack1Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumDarkBarrack1Troop1 = GUICtrlCreateInput("5", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblDarkBarrack1Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbDarkBarrack1Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Dark Barrack 1.")
			GUICtrlSetData(-1, "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound|Nothing", "Nothing") ; "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumDarkBarrack1Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumDarkBarrack1Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQDarkBarrack1 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue Dark barrack 1 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillDarkBarrack1 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370
   GUICtrlCreateGroup("", -99, -99, 1, 1)

	$y += 55
   $grpDarkBarrack2 = GUICtrlCreateGroup("Dark Barrack #2", $x - 20, $y - 20, 445, 55)
		$cmbDarkBarrack2Troop1 = GUICtrlCreateCombo("", $x - 10, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Frist Troops to make in Dark Barrack 2.")
			GUICtrlSetData(-1, "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound", "Minion") ; "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound"
			GUICtrlSetState(-1, $GUI_ENABLE)
	    $lblNumDarkBarrack2Troop1 = GUICtrlCreateLabel(" x ", $x + 65, $y + 5, -1, -1)
		$txtNumDarkBarrack2Troop1 = GUICtrlCreateInput("5", $x + 75, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)

		$x += 135
		$lblDarkBarrack2Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
		$cmbDarkBarrack2Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetTip(-1, "Set the Second Troops to make in Dark Barrack 2.")
			GUICtrlSetData(-1, "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound|Nothing", "Nothing") ; "Minion|Hog Rider|Valkyrie|Golem|Witch|Lava Hound"
			GUICtrlSetState(-1, $GUI_ENABLE)
			GUICtrlSetOnEvent(-1, "cmbBarrack")
	    $lblNumDarkBarrack2Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
		$txtNumDarkBarrack2Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 50, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
			GUICtrlSetLimit(-1, 2)
	    $x += 170
		$chkDeQDarkBarrack2 = GUICtrlCreateCheckbox("Dequeue", $x, $y, -1, -1)
			$txtTip = "Dequeue Dark barrack 2 before train"
			GUICtrlSetTip(-1, $txtTip)
	    $x += 65
	    $chkRefillDarkBarrack2 = GUICtrlCreateCheckbox("Refill", $x, $y, -1, -1)
	    $txtTip = "Refill the troops before army camp is full"
	    GUICtrlSetTip(-1, $txtTip)
		$x -= 370
   GUICtrlCreateGroup("", -99, -99, 1, 1)


;~    		$y += 150
;~ 		$lblBarrack3Troop1 = GUICtrlCreateLabel("Barrack 3: First Train", $x - 5, $y + 5, -1, -1)
;~ 		$cmbBarrack3Troop1 = GUICtrlCreateCombo("", $x + 100, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 3.")
;~ 			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Archers") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
;~ 	    $lblNumBarrack3Troop1 = GUICtrlCreateLabel(" x ", $x + 175, $y + 5, -1, -1)
;~ 		$txtNumBarrack3Troop1 = GUICtrlCreateInput("0", $x + 185, $y, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
;~ 			GUICtrlSetLimit(-1, 3)

;~ 		$x += 250
;~ 		$lblBarrack3Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
;~ 		$cmbBarrack3Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 3.")
;~ 			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Barbarians") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
;~ 	    $lblNumBarrack3Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
;~ 		$txtNumBarrack3Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 	    $x -= 250

;~ 		$y += 225
;~ 		$lblBarrack4Troop1 = GUICtrlCreateLabel("Barrack 4: First Train", $x - 5, $y + 5, -1, -1)
;~ 		$cmbBarrack4Troop1 = GUICtrlCreateCombo("", $x + 100, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetTip(-1, "Set the Frist Troops to make in Barrack 4.")
;~ 			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Goblins") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
;~ 	    $lblNumBarrack4Troop1 = GUICtrlCreateLabel(" x ", $x + 175, $y + 5, -1, -1)
;~ 		$txtNumBarrack4Troop1 = GUICtrlCreateInput("0", $x + 185, $y, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
;~ 			GUICtrlSetLimit(-1, 3)

;~ 		$x += 250
;~ 		$lblBarrack4Troop2 = GUICtrlCreateLabel("Then", $x - 5, $y + 5, -1, -1)
;~ 		$cmbBarrack4Troop2 = GUICtrlCreateCombo("", $x + 25, $y, 75, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 			GUICtrlSetTip(-1, "Set the Second Troops to make in Barrack 4.")
;~ 			GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas", "Barbarians") ; "Barbarians|Archers|Giants|Goblins|WallBreakers|Balloons|Wizards|Healers|Dragons|Pekkas"
;~ 			GUICtrlSetState(-1, $GUI_DISABLE)
;~ 	    $lblNumBarrack4Troop2 = GUICtrlCreateLabel(" x ", $x + 100, $y + 5, -1, -1)
;~ 		$txtNumBarrack4Troop2 = GUICtrlCreateInput("0", $x + 110, $y, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Troops to make.")
;~ 			GUICtrlSetLimit(-1, 3)

;~ 	$y = 230
;~ 	$grpBoosterOptions = GUICtrlCreateGroup("Boost Options", $x - 20, $y - 20, 223, 95)
;~ 	$y -= 5
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnTroops, $x, $y + 2, 16, 16)
;~ 	$lblFullTroop = GUICtrlCreateLabel("Raid when Troops reach:",$x + 25, $y + 5, -1, 17)
;~ 	$txtFullTroop = GUICtrlCreateInput("100",  $x + 150, $y, 35, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;~ 		GUICtrlSetTip(-1, "Enter percentage")
;~ 		GUICtrlSetLimit(-1, 3)
;~ 	$lblFullTroop = GUICtrlCreateLabel("%",$x + 188, $y + 5, -1, 17)
;~ 	$y += 25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnBarrackBoost, $x, $y + 2, 16, 16)
;~ 	$lblBoostBarracks = GUICtrlCreateLabel("Barracks Boosts left:", $x + 25, $y + 5, -1, -1)
;~ 		$txtTip = "Use this to boost your Barracks with GEMS! Use with caution!"
;~ 		GUICtrlSetTip(-1, $txtTip)
;~ 	$cmbBoostBarracks = GUICtrlCreateCombo("", $x + 150, $y, 35, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 		GUICtrlSetData(-1, "0|1|2|3|4|5", "0")
;~ 		GUICtrlSetTip(-1, $txtTip)
;~ 	$y += 25
;~ 	GUICtrlCreateIcon ($pIconLib, $eIcnSpellFactoryBoost, $x, $y + 2, 16, 16)
;~ 	$lblBoostSpellFactory = GUICtrlCreateLabel("Spell Factory Boosts left:", $x + 25, $y + 5, -1, -1)
;~ 		$txtTip = "Use this to boost your Spell Factory with GEMS! Use with caution!"
;~ 		GUICtrlSetTip(-1, $txtTip)
;~ 	$cmbBoostSpellFactory = GUICtrlCreateCombo("", $x + 150, $y, 35, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
;~ 		GUICtrlSetData(-1, "0|1|2|3|4|5", "0")
;~ 		GUICtrlSetTip(-1, $txtTip)
;~ 	GUICtrlCreateGroup("", -99, -99, 1, 1)

;~ 	Local $x = 30, $y = 210
;~ 	$grpTroops = GUICtrlCreateGroup("Troops", $x - 20, $y - 20, 222, 115)
;~ 		$y +=5
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnBarbarian, $x - 5, $y - 5, 24, 24)
;~ 		$lblBarbarians = GUICtrlCreateLabel("Barbarians:", $x + 25, $y, -1, -1)
;~ 		$txtNumBarb = GUICtrlCreateInput("30", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;~ 			GUICtrlSetTip(-1, "Set the % of Barbarians to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 			GUICtrlSetOnEvent(-1, "lblTotalCount")
;~ 		$lblPercentBarbarians = GUICtrlCreateLabel("%", $x + 188, $y, -1, -1)
;~ 		$y += 25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnArcher, $x - 5, $y - 5, 24, 24)
;~ 		$lblArchers = GUICtrlCreateLabel("Archers:", $x + 25, $y, -1, -1)
;~ 		$txtNumArch = GUICtrlCreateInput("60", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;~ 			GUICtrlSetTip(-1, "Set the % of Archers to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 			GUICtrlSetOnEvent(-1, "lblTotalCount")
;~ 		$lblPercentArchers = GUICtrlCreateLabel("%", $x + 188, $y, -1, -1)
;~ 		$y += 25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnGoblin, $x - 5, $y - 5, 24, 24)
;~ 		$lblGoblins = GUICtrlCreateLabel("Goblins:", $x + 25, $y, -1, -1)
;~ 		$txtNumGobl = GUICtrlCreateInput("10", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
;~ 			GUICtrlSetTip(-1, "Set the % of Goblins to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 			GUICtrlSetOnEvent(-1, "lblTotalCount")
;~ 		$lblPercentGoblins = GUICtrlCreateLabel("%", $x + 188, $y, -1, -1)
;~ 		$y += 25
;~ 		$lblTotal = GUICtrlCreateLabel("Total:", $x + 95, $y - 5, -1, -1, $SS_RIGHT)
;~ 		$lblTotalCount = GUICtrlCreateLabel("100", $x + 130, $y - 5, 55, 15, $SS_CENTER)
;~ 			GUICtrlSetBkColor (-1, $COLOR_MONEYGREEN) ;lime, moneygreen
;~ 		$lblPercentTotal = GUICtrlCreateLabel("%", $x + 188, $y - 5, -1, -1)
;~ 	GUICtrlCreateGroup("", -99, -99, 1, 1)

;~ 	Local $x = 30, $y = 330
;~ 	$grpOtherTroops = GUICtrlCreateGroup("Add. Troops", $x - 20, $y - 20, 222, 195)
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnGiant, $x - 5, $y - 5, 24, 24)
;~ 		$lblGiants = GUICtrlCreateLabel("No. of Giants:", $x + 25, $y, -1, -1)
;~ 		$txtNumGiant = GUICtrlCreateInput("4", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Giants to make.")
;~ 			GUICtrlSetLimit(-1, 2)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnWallBreaker, $x - 5, $y - 5, 24, 24)
;~ 		$lblWallBreakers = GUICtrlCreateLabel("No. of Wall Breakers:", $x + 25, $y, -1, -1)
;~ 		$txtNumWall = GUICtrlCreateInput("4", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Wall Breakers to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnBalloon, $x - 5, $y - 5, 24, 24)
;~ 		$lblBalloons = GUICtrlCreateLabel("No. of Balloons:", $x + 25, $y, -1, -1)
;~ 		$txtNumBall = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Balloons to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnWizard, $x - 5, $y - 5, 24, 24)
;~ 		$lblWizards = GUICtrlCreateLabel("No. of Wizards:", $x + 25, $y, -1, -1)
;~ 		$txtNumWiza = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Wizards to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnHealer, $x - 5, $y - 5, 24, 24)
;~ 		$lblHealers = GUICtrlCreateLabel("No. of Healers:", $x + 25, $y, -1, -1)
;~ 		$txtNumHeal = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Healers to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnDragon, $x - 5, $y - 5, 24, 24)
;~ 		$lblDragons = GUICtrlCreateLabel("No. of Dragons:", $x + 25, $y, -1, -1)
;~ 		$txtNumDrag = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Dragons to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnPekka, $x - 5, $y - 5, 24, 24)
;~ 		$lblPekka = GUICtrlCreateLabel("No. of P.E.K.K.A.:", $x + 25, $y, -1, -1)
;~ 		$txtNumPekk = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of P.E.K.K.A. to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 	GUICtrlCreateGroup("", -99, -99, 1, 1)

;~ 	$x +=  227
;~ 	$y = 330
;~ 	$grpDarkTroops = GUICtrlCreateGroup("Add. Dark Troops", $x - 20, $y - 20, 223, 195)
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnMinion, $x - 5, $y - 5, 24, 24)
;~ 		$lblMinion = GUICtrlCreateLabel("No. of Minions:", $x + 25, $y, -1, -1)
;~ 		$txtNumMini = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, -1, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Minions to make.")
;~ 			GUICtrlSetLimit(-1, 3)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnHogRider, $x - 5, $y - 5, 24, 24)
;~ 		$lblHogRiders = GUICtrlCreateLabel("No. of Hog Riders:", $x + 25, $y, -1, -1)
;~ 		$txtNumHogs = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Hog Riders to make.")
;~ 			GUICtrlSetLimit(-1, 2)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnValkyrie, $x - 5, $y - 5, 24, 24)
;~ 		$lblValkyries = GUICtrlCreateLabel("No. of Valkyries:", $x + 25, $y, -1, -1)
;~ 		$txtNumValk = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Valkyries to make.")
;~ 			GUICtrlSetLimit(-1, 2)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnGolem, $x - 5, $y - 5, 24, 24)
;~ 		$lblGolems = GUICtrlCreateLabel("No. of Golems:", $x + 25, $y, -1, -1)
;~ 		$txtNumGole = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Golems to make.")
;~ 			GUICtrlSetLimit(-1, 2)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnWitch, $x - 5, $y - 5, 24, 24)
;~ 		$lblWitches = GUICtrlCreateLabel("No. of Witches:", $x + 25, $y, -1, -1)
;~ 		$txtNumWitc = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Witches to make.")
;~ 			GUICtrlSetLimit(-1, 2)
;~ 		$y +=25
;~ 		GUICtrlCreateIcon ($pIconLib, $eIcnLavaHound, $x - 5, $y - 5, 24, 24)
;~ 		$lblLavaHounds = GUICtrlCreateLabel("No. of Lava Hounds:", $x + 25, $y, -1, -1)
;~ 		$txtNumLava = GUICtrlCreateInput("0", $x + 130, $y - 5, 55, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
;~ 			GUICtrlSetTip(-1, "Enter the No. of Lava Hounds to make.")
;~ 			GUICtrlSetLimit(-1, 2)

;~ 	GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
