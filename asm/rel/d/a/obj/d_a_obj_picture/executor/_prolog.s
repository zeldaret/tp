lbl_80CAD280:
/* 80CAD280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD284  7C 08 02 A6 */	mflr r0
/* 80CAD288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD28C  3C 60 80 CB */	lis r3, data_80CAF014@ha
/* 80CAD290  38 63 F0 14 */	addi r3, r3, data_80CAF014@l
/* 80CAD294  4B 5B 5E B8 */	b ModuleConstructorsX
/* 80CAD298  4B 5B 5D F0 */	b ModuleProlog
/* 80CAD29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD2A0  7C 08 03 A6 */	mtlr r0
/* 80CAD2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD2A8  4E 80 00 20 */	blr 
