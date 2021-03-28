lbl_805AB04C:
/* 805AB04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB050  7C 08 02 A6 */	mflr r0
/* 805AB054  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB058  4B CB 80 34 */	b ModuleEpilog
/* 805AB05C  3C 60 80 5B */	lis r3, data_805ADF4C@ha
/* 805AB060  38 63 DF 4C */	addi r3, r3, data_805ADF4C@l
/* 805AB064  4B CB 81 2C */	b ModuleDestructorsX
/* 805AB068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB06C  7C 08 03 A6 */	mtlr r0
/* 805AB070  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB074  4E 80 00 20 */	blr 
