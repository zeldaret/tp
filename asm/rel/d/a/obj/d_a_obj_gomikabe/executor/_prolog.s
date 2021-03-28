lbl_80BFE140:
/* 80BFE140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFE144  7C 08 02 A6 */	mflr r0
/* 80BFE148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFE14C  3C 60 80 C0 */	lis r3, data_80BFFC08@ha
/* 80BFE150  38 63 FC 08 */	addi r3, r3, data_80BFFC08@l
/* 80BFE154  4B 66 4F F8 */	b ModuleConstructorsX
/* 80BFE158  4B 66 4F 30 */	b ModuleProlog
/* 80BFE15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFE160  7C 08 03 A6 */	mtlr r0
/* 80BFE164  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFE168  4E 80 00 20 */	blr 
