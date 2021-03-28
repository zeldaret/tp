lbl_80A01360:
/* 80A01360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01364  7C 08 02 A6 */	mflr r0
/* 80A01368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0136C  3C 60 80 A0 */	lis r3, data_80A013D8@ha
/* 80A01370  38 63 13 D8 */	addi r3, r3, data_80A013D8@l
/* 80A01374  4B 86 1D D8 */	b ModuleConstructorsX
/* 80A01378  4B 86 1D 10 */	b ModuleProlog
/* 80A0137C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01380  7C 08 03 A6 */	mtlr r0
/* 80A01384  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01388  4E 80 00 20 */	blr 
