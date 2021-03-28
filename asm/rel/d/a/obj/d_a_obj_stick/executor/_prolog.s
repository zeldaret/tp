lbl_80599140:
/* 80599140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599144  7C 08 02 A6 */	mflr r0
/* 80599148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059914C  3C 60 80 5A */	lis r3, data_80599E28@ha
/* 80599150  38 63 9E 28 */	addi r3, r3, data_80599E28@l
/* 80599154  4B CC 9F F8 */	b ModuleConstructorsX
/* 80599158  4B CC 9F 30 */	b ModuleProlog
/* 8059915C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599160  7C 08 03 A6 */	mtlr r0
/* 80599164  38 21 00 10 */	addi r1, r1, 0x10
/* 80599168  4E 80 00 20 */	blr 
