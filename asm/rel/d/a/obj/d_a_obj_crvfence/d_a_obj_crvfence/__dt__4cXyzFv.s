lbl_80BCED24:
/* 80BCED24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCED28  7C 08 02 A6 */	mflr r0
/* 80BCED2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCED30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCED34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCED38  41 82 00 10 */	beq lbl_80BCED48
/* 80BCED3C  7C 80 07 35 */	extsh. r0, r4
/* 80BCED40  40 81 00 08 */	ble lbl_80BCED48
/* 80BCED44  4B 6F FF F8 */	b __dl__FPv
lbl_80BCED48:
/* 80BCED48  7F E3 FB 78 */	mr r3, r31
/* 80BCED4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCED50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCED54  7C 08 03 A6 */	mtlr r0
/* 80BCED58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCED5C  4E 80 00 20 */	blr 
