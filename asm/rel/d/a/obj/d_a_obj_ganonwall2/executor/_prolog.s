lbl_80BF5760:
/* 80BF5760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF5764  7C 08 02 A6 */	mflr r0
/* 80BF5768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF576C  3C 60 80 BF */	lis r3, data_80BF6104@ha
/* 80BF5770  38 63 61 04 */	addi r3, r3, data_80BF6104@l
/* 80BF5774  4B 66 D9 D8 */	b ModuleConstructorsX
/* 80BF5778  4B 66 D9 10 */	b ModuleProlog
/* 80BF577C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF5780  7C 08 03 A6 */	mtlr r0
/* 80BF5784  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF5788  4E 80 00 20 */	blr 
