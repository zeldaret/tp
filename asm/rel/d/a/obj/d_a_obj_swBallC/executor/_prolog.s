lbl_80CF5B20:
/* 80CF5B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5B24  7C 08 02 A6 */	mflr r0
/* 80CF5B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5B2C  3C 60 80 CF */	lis r3, data_80CF6CCC@ha
/* 80CF5B30  38 63 6C CC */	addi r3, r3, data_80CF6CCC@l
/* 80CF5B34  4B 56 D6 18 */	b ModuleConstructorsX
/* 80CF5B38  4B 56 D5 50 */	b ModuleProlog
/* 80CF5B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5B40  7C 08 03 A6 */	mtlr r0
/* 80CF5B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5B48  4E 80 00 20 */	blr 
