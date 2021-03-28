lbl_800FE058:
/* 800FE058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FE05C  7C 08 02 A6 */	mflr r0
/* 800FE060  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FE064  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE068  48 26 41 69 */	bl _savegpr_26
/* 800FE06C  7C 9A 23 78 */	mr r26, r4
/* 800FE070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FE074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FE078  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 800FE07C  7F 63 DB 78 */	mr r3, r27
/* 800FE080  4B F7 65 A9 */	bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 800FE084  7C 7F 1B 78 */	mr r31, r3
/* 800FE088  3B C0 00 00 */	li r30, 0
/* 800FE08C  7F DD F3 78 */	mr r29, r30
/* 800FE090  7F DC F3 78 */	mr r28, r30
/* 800FE094  7F 63 DB 78 */	mr r3, r27
/* 800FE098  7F 44 D3 78 */	mr r4, r26
/* 800FE09C  4B F7 6D 65 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800FE0A0  2C 03 00 01 */	cmpwi r3, 1
/* 800FE0A4  40 82 00 28 */	bne lbl_800FE0CC
/* 800FE0A8  7F 43 D3 78 */	mr r3, r26
/* 800FE0AC  4B F7 7D B1 */	bl dBgS_GetNY__FRC13cBgS_PolyInfo
/* 800FE0B0  FC 00 0A 10 */	fabs f0, f1
/* 800FE0B4  FC 20 00 18 */	frsp f1, f0
/* 800FE0B8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FE0BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FE0C0  4C 40 13 82 */	cror 2, 0, 2
/* 800FE0C4  40 82 00 08 */	bne lbl_800FE0CC
/* 800FE0C8  3B 80 00 01 */	li r28, 1
lbl_800FE0CC:
/* 800FE0CC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800FE0D0  41 82 00 10 */	beq lbl_800FE0E0
/* 800FE0D4  28 1F 00 00 */	cmplwi r31, 0
/* 800FE0D8  41 82 00 08 */	beq lbl_800FE0E0
/* 800FE0DC  3B A0 00 01 */	li r29, 1
lbl_800FE0E0:
/* 800FE0E0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800FE0E4  41 82 00 14 */	beq lbl_800FE0F8
/* 800FE0E8  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 800FE0EC  28 00 00 00 */	cmplwi r0, 0
/* 800FE0F0  41 82 00 08 */	beq lbl_800FE0F8
/* 800FE0F4  3B C0 00 01 */	li r30, 1
lbl_800FE0F8:
/* 800FE0F8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 800FE0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 800FE100  48 26 41 1D */	bl _restgpr_26
/* 800FE104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FE108  7C 08 03 A6 */	mtlr r0
/* 800FE10C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FE110  4E 80 00 20 */	blr 
