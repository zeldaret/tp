lbl_80BF578C:
/* 80BF578C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5790  7C 08 02 A6 */	mflr r0
/* 80BF5794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF5798  4B 66 D8 F4 */	b ModuleEpilog
/* 80BF579C  3C 60 80 BF */	lis r3, data_80BF6108@ha
/* 80BF57A0  38 63 61 08 */	addi r3, r3, data_80BF6108@l
/* 80BF57A4  4B 66 D9 EC */	b ModuleDestructorsX
/* 80BF57A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF57AC  7C 08 03 A6 */	mtlr r0
/* 80BF57B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF57B4  4E 80 00 20 */	blr 
