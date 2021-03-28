lbl_80BF62CC:
/* 80BF62CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF62D0  7C 08 02 A6 */	mflr r0
/* 80BF62D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF62D8  4B 66 CD B4 */	b ModuleEpilog
/* 80BF62DC  3C 60 80 BF */	lis r3, data_80BF6DB8@ha
/* 80BF62E0  38 63 6D B8 */	addi r3, r3, data_80BF6DB8@l
/* 80BF62E4  4B 66 CE AC */	b ModuleDestructorsX
/* 80BF62E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF62EC  7C 08 03 A6 */	mtlr r0
/* 80BF62F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF62F4  4E 80 00 20 */	blr 
