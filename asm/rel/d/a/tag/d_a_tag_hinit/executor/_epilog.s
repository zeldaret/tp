lbl_805A370C:
/* 805A370C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3710  7C 08 02 A6 */	mflr r0
/* 805A3714  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3718  4B CB F9 74 */	b ModuleEpilog
/* 805A371C  3C 60 80 5A */	lis r3, data_805A39E4@ha
/* 805A3720  38 63 39 E4 */	addi r3, r3, data_805A39E4@l
/* 805A3724  4B CB FA 6C */	b ModuleDestructorsX
/* 805A3728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A372C  7C 08 03 A6 */	mtlr r0
/* 805A3730  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3734  4E 80 00 20 */	blr 
