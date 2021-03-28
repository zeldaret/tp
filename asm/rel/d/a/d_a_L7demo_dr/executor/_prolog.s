lbl_805A91C0:
/* 805A91C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A91C4  7C 08 02 A6 */	mflr r0
/* 805A91C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A91CC  3C 60 80 5B */	lis r3, data_805AA44C@ha
/* 805A91D0  38 63 A4 4C */	addi r3, r3, data_805AA44C@l
/* 805A91D4  4B CB 9F 78 */	b ModuleConstructorsX
/* 805A91D8  4B CB 9E B0 */	b ModuleProlog
/* 805A91DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A91E0  7C 08 03 A6 */	mtlr r0
/* 805A91E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A91E8  4E 80 00 20 */	blr 
