lbl_80456BE0:
/* 80456BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80456BE4  7C 08 02 A6 */	mflr r0
/* 80456BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80456BEC  3C 60 80 45 */	lis r3, data_80456C7C@ha
/* 80456BF0  38 63 6C 7C */	addi r3, r3, data_80456C7C@l
/* 80456BF4  4B E0 C5 58 */	b ModuleConstructorsX
/* 80456BF8  48 00 00 61 */	bl ModuleProlog
/* 80456BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80456C00  7C 08 03 A6 */	mtlr r0
/* 80456C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80456C08  4E 80 00 20 */	blr 
