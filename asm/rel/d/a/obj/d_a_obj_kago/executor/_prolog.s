lbl_80C31A00:
/* 80C31A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31A04  7C 08 02 A6 */	mflr r0
/* 80C31A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C31A0C  3C 60 80 C3 */	lis r3, data_80C33C6C@ha
/* 80C31A10  38 63 3C 6C */	addi r3, r3, data_80C33C6C@l
/* 80C31A14  4B 63 17 38 */	b ModuleConstructorsX
/* 80C31A18  4B 63 16 70 */	b ModuleProlog
/* 80C31A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31A20  7C 08 03 A6 */	mtlr r0
/* 80C31A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31A28  4E 80 00 20 */	blr 
