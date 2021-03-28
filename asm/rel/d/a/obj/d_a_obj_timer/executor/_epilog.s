lbl_8048514C:
/* 8048514C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485150  7C 08 02 A6 */	mflr r0
/* 80485154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485158  4B DD DF 34 */	b ModuleEpilog
/* 8048515C  3C 60 80 48 */	lis r3, data_8048563C@ha
/* 80485160  38 63 56 3C */	addi r3, r3, data_8048563C@l
/* 80485164  4B DD E0 2C */	b ModuleDestructorsX
/* 80485168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048516C  7C 08 03 A6 */	mtlr r0
/* 80485170  38 21 00 10 */	addi r1, r1, 0x10
/* 80485174  4E 80 00 20 */	blr 
