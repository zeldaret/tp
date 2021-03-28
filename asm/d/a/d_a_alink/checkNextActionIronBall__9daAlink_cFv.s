lbl_801153F8:
/* 801153F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801153FC  7C 08 02 A6 */	mflr r0
/* 80115400  90 01 00 24 */	stw r0, 0x24(r1)
/* 80115404  39 61 00 20 */	addi r11, r1, 0x20
/* 80115408  48 24 CD D5 */	bl _savegpr_29
/* 8011540C  7C 7D 1B 78 */	mr r29, r3
/* 80115410  A8 63 30 8E */	lha r3, 0x308e(r3)
/* 80115414  2C 03 00 00 */	cmpwi r3, 0
/* 80115418  41 82 00 0C */	beq lbl_80115424
/* 8011541C  38 03 FF FF */	addi r0, r3, -1
/* 80115420  B0 1D 30 8E */	sth r0, 0x308e(r29)
lbl_80115424:
/* 80115424  7F A3 EB 78 */	mr r3, r29
/* 80115428  4B FF FC BD */	bl checkIronBallAnime__9daAlink_cCFv
/* 8011542C  2C 03 00 00 */	cmpwi r3, 0
/* 80115430  40 82 00 4C */	bne lbl_8011547C
/* 80115434  7F A3 EB 78 */	mr r3, r29
/* 80115438  4B FF FC D5 */	bl setIronBallReadyAnime__9daAlink_cFv
/* 8011543C  7F A3 EB 78 */	mr r3, r29
/* 80115440  4B FA 1D 29 */	bl setFastShotTimer__9daAlink_cFv
/* 80115444  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 80115448  3B C0 00 01 */	li r30, 1
/* 8011544C  7F E3 FB 78 */	mr r3, r31
/* 80115450  4B F5 E3 95 */	bl LockonTruth__12dAttention_cFv
/* 80115454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115458  40 82 00 14 */	bne lbl_8011546C
/* 8011545C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80115460  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80115464  40 82 00 08 */	bne lbl_8011546C
/* 80115468  3B C0 00 00 */	li r30, 0
lbl_8011546C:
/* 8011546C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80115470  40 82 00 0C */	bne lbl_8011547C
/* 80115474  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80115478  B0 1D 2F E4 */	sth r0, 0x2fe4(r29)
lbl_8011547C:
/* 8011547C  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 80115480  3B C0 00 01 */	li r30, 1
/* 80115484  7F E3 FB 78 */	mr r3, r31
/* 80115488  4B F5 E3 5D */	bl LockonTruth__12dAttention_cFv
/* 8011548C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115490  40 82 00 14 */	bne lbl_801154A4
/* 80115494  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80115498  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8011549C  40 82 00 08 */	bne lbl_801154A4
/* 801154A0  3B C0 00 00 */	li r30, 0
lbl_801154A4:
/* 801154A4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801154A8  40 82 00 1C */	bne lbl_801154C4
/* 801154AC  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 801154B0  2C 00 00 00 */	cmpwi r0, 0
/* 801154B4  40 82 00 10 */	bne lbl_801154C4
/* 801154B8  7F A3 EB 78 */	mr r3, r29
/* 801154BC  48 00 00 29 */	bl procIronBallSubjectInit__9daAlink_cFv
/* 801154C0  48 00 00 0C */	b lbl_801154CC
lbl_801154C4:
/* 801154C4  7F A3 EB 78 */	mr r3, r29
/* 801154C8  48 00 01 25 */	bl procIronBallMoveInit__9daAlink_cFv
lbl_801154CC:
/* 801154CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801154D0  48 24 CD 59 */	bl _restgpr_29
/* 801154D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801154D8  7C 08 03 A6 */	mtlr r0
/* 801154DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801154E0  4E 80 00 20 */	blr 
