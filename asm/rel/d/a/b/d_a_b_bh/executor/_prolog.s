lbl_805AE180:
/* 805AE180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE184  7C 08 02 A6 */	mflr r0
/* 805AE188  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE18C  3C 60 80 5B */	lis r3, data_805B312C@ha
/* 805AE190  38 63 31 2C */	addi r3, r3, data_805B312C@l
/* 805AE194  4B CB 4F B8 */	b ModuleConstructorsX
/* 805AE198  4B CB 4E F0 */	b ModuleProlog
/* 805AE19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE1A0  7C 08 03 A6 */	mtlr r0
/* 805AE1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE1A8  4E 80 00 20 */	blr 
