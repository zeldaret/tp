lbl_80465B34:
/* 80465B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465B38  7C 08 02 A6 */	mflr r0
/* 80465B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80465B44  4B EF C6 98 */	b _savegpr_29
/* 80465B48  7C 7D 1B 78 */	mr r29, r3
/* 80465B4C  4B BD 46 6C */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465B50  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80465B54  7F A3 EB 78 */	mr r3, r29
/* 80465B58  4B BD 46 48 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80465B5C  7C 7F 1B 78 */	mr r31, r3
/* 80465B60  7F A3 EB 78 */	mr r3, r29
/* 80465B64  4B BD 46 6C */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80465B68  7C 64 1B 78 */	mr r4, r3
/* 80465B6C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80465B70  28 00 00 FF */	cmplwi r0, 0xff
/* 80465B74  40 82 00 0C */	bne lbl_80465B80
/* 80465B78  38 60 00 00 */	li r3, 0
/* 80465B7C  48 00 00 70 */	b lbl_80465BEC
lbl_80465B80:
/* 80465B80  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80465B84  2C 00 00 02 */	cmpwi r0, 2
/* 80465B88  41 82 00 60 */	beq lbl_80465BE8
/* 80465B8C  40 80 00 10 */	bge lbl_80465B9C
/* 80465B90  2C 00 00 01 */	cmpwi r0, 1
/* 80465B94  40 80 00 10 */	bge lbl_80465BA4
/* 80465B98  48 00 00 50 */	b lbl_80465BE8
lbl_80465B9C:
/* 80465B9C  2C 00 00 04 */	cmpwi r0, 4
/* 80465BA0  40 80 00 48 */	bge lbl_80465BE8
lbl_80465BA4:
/* 80465BA4  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 80465BA8  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 80465BAC  1C 1E 04 04 */	mulli r0, r30, 0x404
/* 80465BB0  7C 63 02 14 */	add r3, r3, r0
/* 80465BB4  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80465BB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80465BBC  40 82 00 0C */	bne lbl_80465BC8
/* 80465BC0  38 60 FF FF */	li r3, -1
/* 80465BC4  48 00 00 28 */	b lbl_80465BEC
lbl_80465BC8:
/* 80465BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465BD0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80465BD4  7F C5 F3 78 */	mr r5, r30
/* 80465BD8  4B BC F7 88 */	b isSwitch__10dSv_info_cCFii
/* 80465BDC  7C 60 00 34 */	cntlzw r0, r3
/* 80465BE0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80465BE4  48 00 00 08 */	b lbl_80465BEC
lbl_80465BE8:
/* 80465BE8  38 60 00 00 */	li r3, 0
lbl_80465BEC:
/* 80465BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80465BF0  4B EF C6 38 */	b _restgpr_29
/* 80465BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465BF8  7C 08 03 A6 */	mtlr r0
/* 80465BFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80465C00  4E 80 00 20 */	blr 
