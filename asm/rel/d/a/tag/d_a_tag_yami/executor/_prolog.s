lbl_80D65980:
/* 80D65980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65984  7C 08 02 A6 */	mflr r0
/* 80D65988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6598C  3C 60 80 D6 */	lis r3, data_80D66208@ha
/* 80D65990  38 63 62 08 */	addi r3, r3, data_80D66208@l
/* 80D65994  4B 4F D7 B8 */	b ModuleConstructorsX
/* 80D65998  4B 4F D6 F0 */	b ModuleProlog
/* 80D6599C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D659A0  7C 08 03 A6 */	mtlr r0
/* 80D659A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D659A8  4E 80 00 20 */	blr 
