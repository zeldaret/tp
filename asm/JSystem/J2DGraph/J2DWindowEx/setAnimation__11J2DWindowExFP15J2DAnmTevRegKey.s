lbl_80303194:
/* 80303194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303198  7C 08 02 A6 */	mflr r0
/* 8030319C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803031A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803031A4  48 05 F0 39 */	bl _savegpr_29
/* 803031A8  7C 7D 1B 78 */	mr r29, r3
/* 803031AC  7C 9E 23 78 */	mr r30, r4
/* 803031B0  3B E0 00 00 */	li r31, 0
/* 803031B4  48 00 00 30 */	b lbl_803031E4
lbl_803031B8:
/* 803031B8  7F A3 EB 78 */	mr r3, r29
/* 803031BC  7F E4 FB 78 */	mr r4, r31
/* 803031C0  48 00 00 5D */	bl isNeedSetAnm__11J2DWindowExFUc
/* 803031C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803031C8  41 82 00 18 */	beq lbl_803031E0
/* 803031CC  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 803031D0  38 03 01 48 */	addi r0, r3, 0x148
/* 803031D4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 803031D8  7F C4 F3 78 */	mr r4, r30
/* 803031DC  4B FE 79 31 */	bl setAnimation__11J2DMaterialFP15J2DAnmTevRegKey
lbl_803031E0:
/* 803031E0  3B FF 00 01 */	addi r31, r31, 1
lbl_803031E4:
/* 803031E4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803031E8  28 00 00 04 */	cmplwi r0, 4
/* 803031EC  41 80 FF CC */	blt lbl_803031B8
/* 803031F0  80 7D 01 60 */	lwz r3, 0x160(r29)
/* 803031F4  28 03 00 00 */	cmplwi r3, 0
/* 803031F8  41 82 00 0C */	beq lbl_80303204
/* 803031FC  7F C4 F3 78 */	mr r4, r30
/* 80303200  4B FE 79 0D */	bl setAnimation__11J2DMaterialFP15J2DAnmTevRegKey
lbl_80303204:
/* 80303204  39 61 00 20 */	addi r11, r1, 0x20
/* 80303208  48 05 F0 21 */	bl _restgpr_29
/* 8030320C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80303210  7C 08 03 A6 */	mtlr r0
/* 80303214  38 21 00 20 */	addi r1, r1, 0x20
/* 80303218  4E 80 00 20 */	blr 
