lbl_8054D490:
/* 8054D490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054D494  7C 08 02 A6 */	mflr r0
/* 8054D498  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054D49C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D4A0  4B E1 4D 34 */	b _savegpr_27
/* 8054D4A4  7C 7B 1B 78 */	mr r27, r3
/* 8054D4A8  7C 9C 23 78 */	mr r28, r4
/* 8054D4AC  3B C0 00 00 */	li r30, 0
/* 8054D4B0  3B A0 FF FF */	li r29, -1
/* 8054D4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054D4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054D4BC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8054D4C0  7F E3 FB 78 */	mr r3, r31
/* 8054D4C4  3C A0 80 55 */	lis r5, struct_8054EBD0+0x0@ha
/* 8054D4C8  38 A5 EB D0 */	addi r5, r5, struct_8054EBD0+0x0@l
/* 8054D4CC  38 A5 01 C6 */	addi r5, r5, 0x1c6
/* 8054D4D0  38 C0 00 03 */	li r6, 3
/* 8054D4D4  4B AF AC 18 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8054D4D8  28 03 00 00 */	cmplwi r3, 0
/* 8054D4DC  41 82 00 08 */	beq lbl_8054D4E4
/* 8054D4E0  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8054D4E4:
/* 8054D4E4  7F E3 FB 78 */	mr r3, r31
/* 8054D4E8  7F 84 E3 78 */	mr r4, r28
/* 8054D4EC  4B AF A8 60 */	b getIsAddvance__16dEvent_manager_cFi
/* 8054D4F0  2C 03 00 00 */	cmpwi r3, 0
/* 8054D4F4  41 82 00 54 */	beq lbl_8054D548
/* 8054D4F8  2C 1D 00 01 */	cmpwi r29, 1
/* 8054D4FC  41 82 00 0C */	beq lbl_8054D508
/* 8054D500  40 80 00 48 */	bge lbl_8054D548
/* 8054D504  48 00 00 44 */	b lbl_8054D548
lbl_8054D508:
/* 8054D508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054D50C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8054D510  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8054D514  7F 64 DB 78 */	mr r4, r27
/* 8054D518  4B AC D1 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8054D51C  7C 65 1B 78 */	mr r5, r3
/* 8054D520  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8054D524  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 8054D528  38 C0 00 00 */	li r6, 0
/* 8054D52C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8054D530  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8054D534  7D 89 03 A6 */	mtctr r12
/* 8054D538  4E 80 04 21 */	bctrl 
/* 8054D53C  38 60 00 02 */	li r3, 2
/* 8054D540  4B AE 41 68 */	b daNpcKakashi_setSwdTutorialStep__FUc
/* 8054D544  4B AE 42 F4 */	b daNpcKakashi_clrSuccessCount__Fv
lbl_8054D548:
/* 8054D548  2C 1D 00 02 */	cmpwi r29, 2
/* 8054D54C  40 80 00 14 */	bge lbl_8054D560
/* 8054D550  2C 1D 00 00 */	cmpwi r29, 0
/* 8054D554  40 80 00 08 */	bge lbl_8054D55C
/* 8054D558  48 00 00 08 */	b lbl_8054D560
lbl_8054D55C:
/* 8054D55C  3B C0 00 01 */	li r30, 1
lbl_8054D560:
/* 8054D560  7F C3 F3 78 */	mr r3, r30
/* 8054D564  39 61 00 20 */	addi r11, r1, 0x20
/* 8054D568  4B E1 4C B8 */	b _restgpr_27
/* 8054D56C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054D570  7C 08 03 A6 */	mtlr r0
/* 8054D574  38 21 00 20 */	addi r1, r1, 0x20
/* 8054D578  4E 80 00 20 */	blr 
