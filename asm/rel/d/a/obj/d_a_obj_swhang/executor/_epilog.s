lbl_80CFB8EC:
/* 80CFB8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB8F0  7C 08 02 A6 */	mflr r0
/* 80CFB8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB8F8  4B 56 77 94 */	b ModuleEpilog
/* 80CFB8FC  3C 60 80 D0 */	lis r3, data_80CFD1D8@ha
/* 80CFB900  38 63 D1 D8 */	addi r3, r3, data_80CFD1D8@l
/* 80CFB904  4B 56 78 8C */	b ModuleDestructorsX
/* 80CFB908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB90C  7C 08 03 A6 */	mtlr r0
/* 80CFB910  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB914  4E 80 00 20 */	blr 
