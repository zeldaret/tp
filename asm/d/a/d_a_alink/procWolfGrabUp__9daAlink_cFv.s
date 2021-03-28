lbl_8013D3FC:
/* 8013D3FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013D400  7C 08 02 A6 */	mflr r0
/* 8013D404  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013D408  39 61 00 20 */	addi r11, r1, 0x20
/* 8013D40C  48 22 4D D1 */	bl _savegpr_29
/* 8013D410  7C 7D 1B 78 */	mr r29, r3
/* 8013D414  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 8013D418  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 8013D41C  28 1F 00 00 */	cmplwi r31, 0
/* 8013D420  40 82 00 10 */	bne lbl_8013D430
/* 8013D424  38 80 00 00 */	li r4, 0
/* 8013D428  4B FE C7 1D */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D42C  48 00 01 44 */	b lbl_8013D570
lbl_8013D430:
/* 8013D430  7F C3 F3 78 */	mr r3, r30
/* 8013D434  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8013D438  48 1E AF F5 */	bl checkPass__12J3DFrameCtrlFf
/* 8013D43C  2C 03 00 00 */	cmpwi r3, 0
/* 8013D440  41 82 00 34 */	beq lbl_8013D474
/* 8013D444  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 8013D448  60 00 80 00 */	ori r0, r0, 0x8000
/* 8013D44C  90 1D 05 80 */	stw r0, 0x580(r29)
/* 8013D450  7F E3 FB 78 */	mr r3, r31
/* 8013D454  4B ED C4 71 */	bl fopAcM_setStageLayer__FPv
/* 8013D458  7F A3 EB 78 */	mr r3, r29
/* 8013D45C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010046@ha */
/* 8013D460  38 84 00 46 */	addi r4, r4, 0x0046 /* 0x00010046@l */
/* 8013D464  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013D468  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013D46C  7D 89 03 A6 */	mtctr r12
/* 8013D470  4E 80 04 21 */	bctrl 
lbl_8013D474:
/* 8013D474  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8013D478  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 8013D47C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D480  4C 41 13 82 */	cror 2, 1, 2
/* 8013D484  40 82 00 0C */	bne lbl_8013D490
/* 8013D488  38 00 00 01 */	li r0, 1
/* 8013D48C  B0 1D 30 0E */	sth r0, 0x300e(r29)
lbl_8013D490:
/* 8013D490  7F C3 F3 78 */	mr r3, r30
/* 8013D494  48 02 10 39 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013D498  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013D49C  41 82 00 58 */	beq lbl_8013D4F4
/* 8013D4A0  7F A3 EB 78 */	mr r3, r29
/* 8013D4A4  A0 9D 1F 58 */	lhz r4, 0x1f58(r29)
/* 8013D4A8  38 A0 00 02 */	li r5, 2
/* 8013D4AC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013D4B0  A8 1E 00 08 */	lha r0, 8(r30)
/* 8013D4B4  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 8013D4B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013D4BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013D4C0  3C 00 43 30 */	lis r0, 0x4330
/* 8013D4C4  90 01 00 08 */	stw r0, 8(r1)
/* 8013D4C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8013D4CC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8013D4D0  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8013D4D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 8013D4D8  38 C0 FF FF */	li r6, -1
/* 8013D4DC  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8013D4E0  4B F6 FE F9 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 8013D4E4  7F A3 EB 78 */	mr r3, r29
/* 8013D4E8  38 80 00 00 */	li r4, 0
/* 8013D4EC  4B FE C6 59 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D4F0  48 00 00 7C */	b lbl_8013D56C
lbl_8013D4F4:
/* 8013D4F4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8013D4F8  C0 1D 34 7C */	lfs f0, 0x347c(r29)
/* 8013D4FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D500  40 81 00 6C */	ble lbl_8013D56C
/* 8013D504  7F A3 EB 78 */	mr r3, r29
/* 8013D508  A0 9D 1F 58 */	lhz r4, 0x1f58(r29)
/* 8013D50C  38 A0 00 02 */	li r5, 2
/* 8013D510  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013D514  A8 1E 00 08 */	lha r0, 8(r30)
/* 8013D518  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 8013D51C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013D520  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013D524  3C 00 43 30 */	lis r0, 0x4330
/* 8013D528  90 01 00 08 */	stw r0, 8(r1)
/* 8013D52C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8013D530  EC 40 10 28 */	fsubs f2, f0, f2
/* 8013D534  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8013D538  EC 42 00 28 */	fsubs f2, f2, f0
/* 8013D53C  38 C0 FF FF */	li r6, -1
/* 8013D540  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8013D544  4B F6 FE 95 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 8013D548  7F A3 EB 78 */	mr r3, r29
/* 8013D54C  38 80 00 01 */	li r4, 1
/* 8013D550  4B FE C5 F5 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D554  2C 03 00 00 */	cmpwi r3, 0
/* 8013D558  40 82 00 14 */	bne lbl_8013D56C
/* 8013D55C  7F A3 EB 78 */	mr r3, r29
/* 8013D560  38 80 00 02 */	li r4, 2
/* 8013D564  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8013D568  4B F7 01 BD */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_8013D56C:
/* 8013D56C  38 60 00 01 */	li r3, 1
lbl_8013D570:
/* 8013D570  39 61 00 20 */	addi r11, r1, 0x20
/* 8013D574  48 22 4C B5 */	bl _restgpr_29
/* 8013D578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013D57C  7C 08 03 A6 */	mtlr r0
/* 8013D580  38 21 00 20 */	addi r1, r1, 0x20
/* 8013D584  4E 80 00 20 */	blr 
