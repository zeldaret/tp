lbl_800E055C:
/* 800E055C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0560  7C 08 02 A6 */	mflr r0
/* 800E0564  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E0568  39 61 00 20 */	addi r11, r1, 0x20
/* 800E056C  48 28 1C 71 */	bl _savegpr_29
/* 800E0570  7C 7D 1B 78 */	mr r29, r3
/* 800E0574  83 E3 27 E0 */	lwz r31, 0x27e0(r3)
/* 800E0578  3B C0 00 01 */	li r30, 1
/* 800E057C  7F E3 FB 78 */	mr r3, r31
/* 800E0580  4B F9 32 65 */	bl LockonTruth__12dAttention_cFv
/* 800E0584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0588  40 82 00 14 */	bne lbl_800E059C
/* 800E058C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800E0590  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E0594  40 82 00 08 */	bne lbl_800E059C
/* 800E0598  3B C0 00 00 */	li r30, 0
lbl_800E059C:
/* 800E059C  7F A3 EB 78 */	mr r3, r29
/* 800E05A0  38 80 00 54 */	li r4, 0x54
/* 800E05A4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800E05A8  41 82 00 14 */	beq lbl_800E05BC
/* 800E05AC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_boom_c0@ha
/* 800E05B0  38 A5 E6 C8 */	addi r5, r5, m__18daAlinkHIO_boom_c0@l
/* 800E05B4  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 800E05B8  48 00 00 08 */	b lbl_800E05C0
lbl_800E05BC:
/* 800E05BC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800E05C0:
/* 800E05C0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800E05C4  4B FC CD E5 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E05C8  7F A3 EB 78 */	mr r3, r29
/* 800E05CC  4B FF FF 1D */	bl setBoomerangReadyQuake__9daAlink_cFv
/* 800E05D0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E05D4  48 28 1C 55 */	bl _restgpr_29
/* 800E05D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E05DC  7C 08 03 A6 */	mtlr r0
/* 800E05E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800E05E4  4E 80 00 20 */	blr 
