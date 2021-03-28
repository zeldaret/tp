lbl_80CF6F20:
/* 80CF6F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6F24  7C 08 02 A6 */	mflr r0
/* 80CF6F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6F2C  3C 60 80 D0 */	lis r3, data_80CF8398@ha
/* 80CF6F30  38 63 83 98 */	addi r3, r3, data_80CF8398@l
/* 80CF6F34  4B 56 C2 18 */	b ModuleConstructorsX
/* 80CF6F38  4B 56 C1 50 */	b ModuleProlog
/* 80CF6F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6F40  7C 08 03 A6 */	mtlr r0
/* 80CF6F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6F48  4E 80 00 20 */	blr 
