lbl_80C75780:
/* 80C75780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75784  7C 08 02 A6 */	mflr r0
/* 80C75788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7578C  3C 60 80 C7 */	lis r3, data_80C7661C@ha
/* 80C75790  38 63 66 1C */	addi r3, r3, data_80C7661C@l
/* 80C75794  4B 5E D9 B8 */	b ModuleConstructorsX
/* 80C75798  4B 5E D8 F0 */	b ModuleProlog
/* 80C7579C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C757A0  7C 08 03 A6 */	mtlr r0
/* 80C757A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C757A8  4E 80 00 20 */	blr 
