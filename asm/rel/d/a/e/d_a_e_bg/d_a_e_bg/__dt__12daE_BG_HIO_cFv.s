lbl_8068A19C:
/* 8068A19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A1A0  7C 08 02 A6 */	mflr r0
/* 8068A1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068A1AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068A1B0  41 82 00 1C */	beq lbl_8068A1CC
/* 8068A1B4  3C A0 80 69 */	lis r5, __vt__12daE_BG_HIO_c@ha /* 0x8068A4A4@ha */
/* 8068A1B8  38 05 A4 A4 */	addi r0, r5, __vt__12daE_BG_HIO_c@l /* 0x8068A4A4@l */
/* 8068A1BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8068A1C0  7C 80 07 35 */	extsh. r0, r4
/* 8068A1C4  40 81 00 08 */	ble lbl_8068A1CC
/* 8068A1C8  4B C4 4B 75 */	bl __dl__FPv
lbl_8068A1CC:
/* 8068A1CC  7F E3 FB 78 */	mr r3, r31
/* 8068A1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068A1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A1D8  7C 08 03 A6 */	mtlr r0
/* 8068A1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A1E0  4E 80 00 20 */	blr 
