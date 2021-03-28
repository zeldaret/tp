lbl_80CB1980:
/* 80CB1980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1984  7C 08 02 A6 */	mflr r0
/* 80CB1988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB198C  3C 60 80 CB */	lis r3, data_80CB26A4@ha
/* 80CB1990  38 63 26 A4 */	addi r3, r3, data_80CB26A4@l
/* 80CB1994  4B 5B 17 B8 */	b ModuleConstructorsX
/* 80CB1998  4B 5B 16 F0 */	b ModuleProlog
/* 80CB199C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB19A0  7C 08 03 A6 */	mtlr r0
/* 80CB19A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB19A8  4E 80 00 20 */	blr 
