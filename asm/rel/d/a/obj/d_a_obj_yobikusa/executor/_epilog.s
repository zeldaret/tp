lbl_8059C9AC:
/* 8059C9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C9B0  7C 08 02 A6 */	mflr r0
/* 8059C9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C9B8  4B CC 66 D4 */	b ModuleEpilog
/* 8059C9BC  3C 60 80 5A */	lis r3, data_8059DE78@ha
/* 8059C9C0  38 63 DE 78 */	addi r3, r3, data_8059DE78@l
/* 8059C9C4  4B CC 67 CC */	b ModuleDestructorsX
/* 8059C9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C9CC  7C 08 03 A6 */	mtlr r0
/* 8059C9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C9D4  4E 80 00 20 */	blr 
