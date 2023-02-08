lbl_80CA54A8:
/* 80CA54A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA54AC  7C 08 02 A6 */	mflr r0
/* 80CA54B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA54B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA54B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA54BC  41 82 00 10 */	beq lbl_80CA54CC
/* 80CA54C0  7C 80 07 35 */	extsh. r0, r4
/* 80CA54C4  40 81 00 08 */	ble lbl_80CA54CC
/* 80CA54C8  4B 62 98 75 */	bl __dl__FPv
lbl_80CA54CC:
/* 80CA54CC  7F E3 FB 78 */	mr r3, r31
/* 80CA54D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA54D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA54D8  7C 08 03 A6 */	mtlr r0
/* 80CA54DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA54E0  4E 80 00 20 */	blr 
