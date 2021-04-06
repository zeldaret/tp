lbl_8007A184:
/* 8007A184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007A188  7C 08 02 A6 */	mflr r0
/* 8007A18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007A190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007A194  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007A198  41 82 00 34 */	beq lbl_8007A1CC
/* 8007A19C  3C 60 80 3B */	lis r3, __vt__11cBgW_GrpElm@ha /* 0x803ABB90@ha */
/* 8007A1A0  38 03 BB 90 */	addi r0, r3, __vt__11cBgW_GrpElm@l /* 0x803ABB90@l */
/* 8007A1A4  90 1F 00 00 */	stw r0, 0(r31)
/* 8007A1A8  34 1F 00 04 */	addic. r0, r31, 4
/* 8007A1AC  41 82 00 10 */	beq lbl_8007A1BC
/* 8007A1B0  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 8007A1B4  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 8007A1B8  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8007A1BC:
/* 8007A1BC  7C 80 07 35 */	extsh. r0, r4
/* 8007A1C0  40 81 00 0C */	ble lbl_8007A1CC
/* 8007A1C4  7F E3 FB 78 */	mr r3, r31
/* 8007A1C8  48 25 4B 75 */	bl __dl__FPv
lbl_8007A1CC:
/* 8007A1CC  7F E3 FB 78 */	mr r3, r31
/* 8007A1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007A1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007A1D8  7C 08 03 A6 */	mtlr r0
/* 8007A1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007A1E0  4E 80 00 20 */	blr 
