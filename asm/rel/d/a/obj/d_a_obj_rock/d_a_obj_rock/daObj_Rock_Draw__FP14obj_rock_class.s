lbl_80CBDC98:
/* 80CBDC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBDC9C  7C 08 02 A6 */	mflr r0
/* 80CBDCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBDCA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDCA8  4B 6A 45 2D */	bl _savegpr_27
/* 80CBDCAC  7C 7B 1B 78 */	mr r27, r3
/* 80CBDCB0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CBDCB4  7C 00 07 74 */	extsb r0, r0
/* 80CBDCB8  7C 1E 03 78 */	mr r30, r0
/* 80CBDCBC  3B BB 05 78 */	addi r29, r27, 0x578
/* 80CBDCC0  3B 80 00 00 */	li r28, 0
/* 80CBDCC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBDCC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBDCCC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CBDCD0  48 00 00 28 */	b lbl_80CBDCF8
lbl_80CBDCD4:
/* 80CBDCD4  88 1D 01 5C */	lbz r0, 0x15c(r29)
/* 80CBDCD8  7C 00 07 75 */	extsb. r0, r0
/* 80CBDCDC  41 82 00 14 */	beq lbl_80CBDCF0
/* 80CBDCE0  7F E3 FB 78 */	mr r3, r31
/* 80CBDCE4  80 9D 00 00 */	lwz r4, 0(r29)
/* 80CBDCE8  7F C5 F3 78 */	mr r5, r30
/* 80CBDCEC  4B 36 EE 7D */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80CBDCF0:
/* 80CBDCF0  3B 9C 00 01 */	addi r28, r28, 1
/* 80CBDCF4  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80CBDCF8:
/* 80CBDCF8  80 1B 1B 78 */	lwz r0, 0x1b78(r27)
/* 80CBDCFC  7C 1C 00 00 */	cmpw r28, r0
/* 80CBDD00  41 80 FF D4 */	blt lbl_80CBDCD4
/* 80CBDD04  38 60 00 01 */	li r3, 1
/* 80CBDD08  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDD0C  4B 6A 45 15 */	bl _restgpr_27
/* 80CBDD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBDD14  7C 08 03 A6 */	mtlr r0
/* 80CBDD18  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBDD1C  4E 80 00 20 */	blr 
