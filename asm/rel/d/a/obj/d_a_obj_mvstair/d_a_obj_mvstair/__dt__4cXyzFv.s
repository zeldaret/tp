lbl_80C9DEDC:
/* 80C9DEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9DEE0  7C 08 02 A6 */	mflr r0
/* 80C9DEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9DEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9DEEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9DEF0  41 82 00 10 */	beq lbl_80C9DF00
/* 80C9DEF4  7C 80 07 35 */	extsh. r0, r4
/* 80C9DEF8  40 81 00 08 */	ble lbl_80C9DF00
/* 80C9DEFC  4B 63 0E 40 */	b __dl__FPv
lbl_80C9DF00:
/* 80C9DF00  7F E3 FB 78 */	mr r3, r31
/* 80C9DF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9DF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9DF0C  7C 08 03 A6 */	mtlr r0
/* 80C9DF10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9DF14  4E 80 00 20 */	blr 
