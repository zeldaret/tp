lbl_805F4960:
/* 805F4960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F4964  7C 08 02 A6 */	mflr r0
/* 805F4968  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F496C  3C 60 80 60 */	lis r3, data_80602650@ha
/* 805F4970  38 63 26 50 */	addi r3, r3, data_80602650@l
/* 805F4974  4B C6 E7 D8 */	b ModuleConstructorsX
/* 805F4978  4B C6 E7 10 */	b ModuleProlog
/* 805F497C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F4980  7C 08 03 A6 */	mtlr r0
/* 805F4984  38 21 00 10 */	addi r1, r1, 0x10
/* 805F4988  4E 80 00 20 */	blr 
