lbl_8078E260:
/* 8078E260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078E264  7C 08 02 A6 */	mflr r0
/* 8078E268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078E26C  3C 60 80 79 */	lis r3, data_80791D5C@ha
/* 8078E270  38 63 1D 5C */	addi r3, r3, data_80791D5C@l
/* 8078E274  4B AD 4E D8 */	b ModuleConstructorsX
/* 8078E278  4B AD 4E 10 */	b ModuleProlog
/* 8078E27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078E280  7C 08 03 A6 */	mtlr r0
/* 8078E284  38 21 00 10 */	addi r1, r1, 0x10
/* 8078E288  4E 80 00 20 */	blr 
