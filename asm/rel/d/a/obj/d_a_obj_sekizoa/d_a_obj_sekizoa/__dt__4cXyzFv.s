lbl_80CD4BD0:
/* 80CD4BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4BD4  7C 08 02 A6 */	mflr r0
/* 80CD4BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4BE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4BE4  41 82 00 10 */	beq lbl_80CD4BF4
/* 80CD4BE8  7C 80 07 35 */	extsh. r0, r4
/* 80CD4BEC  40 81 00 08 */	ble lbl_80CD4BF4
/* 80CD4BF0  4B 5F A1 4C */	b __dl__FPv
lbl_80CD4BF4:
/* 80CD4BF4  7F E3 FB 78 */	mr r3, r31
/* 80CD4BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4C00  7C 08 03 A6 */	mtlr r0
/* 80CD4C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4C08  4E 80 00 20 */	blr 
