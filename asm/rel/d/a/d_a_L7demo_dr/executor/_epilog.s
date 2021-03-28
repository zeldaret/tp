lbl_805A91EC:
/* 805A91EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A91F0  7C 08 02 A6 */	mflr r0
/* 805A91F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A91F8  4B CB 9E 94 */	b ModuleEpilog
/* 805A91FC  3C 60 80 5B */	lis r3, data_805AA450@ha
/* 805A9200  38 63 A4 50 */	addi r3, r3, data_805AA450@l
/* 805A9204  4B CB 9F 8C */	b ModuleDestructorsX
/* 805A9208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A920C  7C 08 03 A6 */	mtlr r0
/* 805A9210  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9214  4E 80 00 20 */	blr 
