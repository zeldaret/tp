lbl_80C1F9AC:
/* 80C1F9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F9B0  7C 08 02 A6 */	mflr r0
/* 80C1F9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F9B8  4B 64 36 D4 */	b ModuleEpilog
/* 80C1F9BC  3C 60 80 C2 */	lis r3, data_80C20788@ha
/* 80C1F9C0  38 63 07 88 */	addi r3, r3, data_80C20788@l
/* 80C1F9C4  4B 64 37 CC */	b ModuleDestructorsX
/* 80C1F9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F9CC  7C 08 03 A6 */	mtlr r0
/* 80C1F9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F9D4  4E 80 00 20 */	blr 
