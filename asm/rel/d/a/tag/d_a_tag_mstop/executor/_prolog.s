lbl_805A60C0:
/* 805A60C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A60C4  7C 08 02 A6 */	mflr r0
/* 805A60C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A60CC  3C 60 80 5A */	lis r3, data_805A6964@ha
/* 805A60D0  38 63 69 64 */	addi r3, r3, data_805A6964@l
/* 805A60D4  4B CB D0 78 */	b ModuleConstructorsX
/* 805A60D8  4B CB CF B0 */	b ModuleProlog
/* 805A60DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A60E0  7C 08 03 A6 */	mtlr r0
/* 805A60E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A60E8  4E 80 00 20 */	blr 
