lbl_80C43E00:
/* 80C43E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C43E04  7C 08 02 A6 */	mflr r0
/* 80C43E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C43E0C  3C 60 80 C4 */	lis r3, data_80C44B2C@ha
/* 80C43E10  38 63 4B 2C */	addi r3, r3, data_80C44B2C@l
/* 80C43E14  4B 61 F3 38 */	b ModuleConstructorsX
/* 80C43E18  4B 61 F2 70 */	b ModuleProlog
/* 80C43E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C43E20  7C 08 03 A6 */	mtlr r0
/* 80C43E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C43E28  4E 80 00 20 */	blr 
