lbl_80BEB72C:
/* 80BEB72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB730  7C 08 02 A6 */	mflr r0
/* 80BEB734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB738  4B 67 79 54 */	b ModuleEpilog
/* 80BEB73C  3C 60 80 BF */	lis r3, data_80BEC4E8@ha
/* 80BEB740  38 63 C4 E8 */	addi r3, r3, data_80BEC4E8@l
/* 80BEB744  4B 67 7A 4C */	b ModuleDestructorsX
/* 80BEB748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB74C  7C 08 03 A6 */	mtlr r0
/* 80BEB750  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB754  4E 80 00 20 */	blr 
