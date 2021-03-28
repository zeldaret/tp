lbl_80BF9260:
/* 80BF9260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9264  7C 08 02 A6 */	mflr r0
/* 80BF9268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF926C  3C 60 80 C0 */	lis r3, data_80BFA95C@ha
/* 80BF9270  38 63 A9 5C */	addi r3, r3, data_80BFA95C@l
/* 80BF9274  4B 66 9E D8 */	b ModuleConstructorsX
/* 80BF9278  4B 66 9E 10 */	b ModuleProlog
/* 80BF927C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9280  7C 08 03 A6 */	mtlr r0
/* 80BF9284  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9288  4E 80 00 20 */	blr 
