lbl_80BE90A0:
/* 80BE90A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE90A4  7C 08 02 A6 */	mflr r0
/* 80BE90A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE90AC  3C 60 80 BF */	lis r3, data_80BE9A98@ha
/* 80BE90B0  38 63 9A 98 */	addi r3, r3, data_80BE9A98@l
/* 80BE90B4  4B 67 A0 98 */	b ModuleConstructorsX
/* 80BE90B8  4B 67 9F D0 */	b ModuleProlog
/* 80BE90BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE90C0  7C 08 03 A6 */	mtlr r0
/* 80BE90C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE90C8  4E 80 00 20 */	blr 
