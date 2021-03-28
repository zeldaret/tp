lbl_80BDDBB4:
/* 80BDDBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDDBB8  7C 08 02 A6 */	mflr r0
/* 80BDDBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDDBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDDBC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDDBC8  41 82 00 10 */	beq lbl_80BDDBD8
/* 80BDDBCC  7C 80 07 35 */	extsh. r0, r4
/* 80BDDBD0  40 81 00 08 */	ble lbl_80BDDBD8
/* 80BDDBD4  4B 6F 11 68 */	b __dl__FPv
lbl_80BDDBD8:
/* 80BDDBD8  7F E3 FB 78 */	mr r3, r31
/* 80BDDBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDDBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDDBE4  7C 08 03 A6 */	mtlr r0
/* 80BDDBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDDBEC  4E 80 00 20 */	blr 
