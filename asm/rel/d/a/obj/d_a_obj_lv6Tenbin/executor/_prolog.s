lbl_80C76800:
/* 80C76800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76804  7C 08 02 A6 */	mflr r0
/* 80C76808  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7680C  3C 60 80 C7 */	lis r3, data_80C7799C@ha
/* 80C76810  38 63 79 9C */	addi r3, r3, data_80C7799C@l
/* 80C76814  4B 5E C9 38 */	b ModuleConstructorsX
/* 80C76818  4B 5E C8 70 */	b ModuleProlog
/* 80C7681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76820  7C 08 03 A6 */	mtlr r0
/* 80C76824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C76828  4E 80 00 20 */	blr 
