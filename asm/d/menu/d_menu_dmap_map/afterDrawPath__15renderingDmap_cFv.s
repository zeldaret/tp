lbl_801C0CB8:
/* 801C0CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0CBC  7C 08 02 A6 */	mflr r0
/* 801C0CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0CC4  4B E7 F8 55 */	bl afterDrawPath__19renderingPlusDoor_cFv
/* 801C0CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0CCC  7C 08 03 A6 */	mtlr r0
/* 801C0CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0CD4  4E 80 00 20 */	blr 
