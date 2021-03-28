lbl_80CFFF00:
/* 80CFFF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFF04  7C 08 02 A6 */	mflr r0
/* 80CFFF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFF0C  3C 60 80 D0 */	lis r3, data_80D00A8C@ha
/* 80CFFF10  38 63 0A 8C */	addi r3, r3, data_80D00A8C@l
/* 80CFFF14  4B 56 32 38 */	b ModuleConstructorsX
/* 80CFFF18  4B 56 31 70 */	b ModuleProlog
/* 80CFFF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFF20  7C 08 03 A6 */	mtlr r0
/* 80CFFF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFF28  4E 80 00 20 */	blr 
