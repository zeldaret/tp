lbl_8079DD00:
/* 8079DD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079DD04  7C 08 02 A6 */	mflr r0
/* 8079DD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079DD0C  3C 60 80 7A */	lis r3, data_807A6810@ha
/* 8079DD10  38 63 68 10 */	addi r3, r3, data_807A6810@l
/* 8079DD14  4B AC 54 38 */	b ModuleConstructorsX
/* 8079DD18  4B AC 53 70 */	b ModuleProlog
/* 8079DD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079DD20  7C 08 03 A6 */	mtlr r0
/* 8079DD24  38 21 00 10 */	addi r1, r1, 0x10
/* 8079DD28  4E 80 00 20 */	blr 
