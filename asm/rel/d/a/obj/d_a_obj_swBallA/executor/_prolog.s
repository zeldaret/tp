lbl_80CF3280:
/* 80CF3280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3284  7C 08 02 A6 */	mflr r0
/* 80CF3288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF328C  3C 60 80 CF */	lis r3, data_80CF43DC@ha
/* 80CF3290  38 63 43 DC */	addi r3, r3, data_80CF43DC@l
/* 80CF3294  4B 56 FE B8 */	b ModuleConstructorsX
/* 80CF3298  4B 56 FD F0 */	b ModuleProlog
/* 80CF329C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF32A0  7C 08 03 A6 */	mtlr r0
/* 80CF32A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF32A8  4E 80 00 20 */	blr 
