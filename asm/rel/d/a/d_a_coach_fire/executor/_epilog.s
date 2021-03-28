lbl_80657B2C:
/* 80657B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657B30  7C 08 02 A6 */	mflr r0
/* 80657B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657B38  4B C0 B5 54 */	b ModuleEpilog
/* 80657B3C  3C 60 80 66 */	lis r3, data_806583E4@ha
/* 80657B40  38 63 83 E4 */	addi r3, r3, data_806583E4@l
/* 80657B44  4B C0 B6 4C */	b ModuleDestructorsX
/* 80657B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657B4C  7C 08 03 A6 */	mtlr r0
/* 80657B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80657B54  4E 80 00 20 */	blr 
