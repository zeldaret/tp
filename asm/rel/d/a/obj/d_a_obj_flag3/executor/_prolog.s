lbl_80BEEA00:
/* 80BEEA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEEA04  7C 08 02 A6 */	mflr r0
/* 80BEEA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEEA0C  3C 60 80 BF */	lis r3, data_80BF0450@ha
/* 80BEEA10  38 63 04 50 */	addi r3, r3, data_80BF0450@l
/* 80BEEA14  4B 67 47 38 */	b ModuleConstructorsX
/* 80BEEA18  4B 67 46 70 */	b ModuleProlog
/* 80BEEA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEEA20  7C 08 03 A6 */	mtlr r0
/* 80BEEA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEEA28  4E 80 00 20 */	blr 
