lbl_80D0C1EC:
/* 80D0C1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C1F0  7C 08 02 A6 */	mflr r0
/* 80D0C1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C1F8  4B 55 6E 94 */	b ModuleEpilog
/* 80D0C1FC  3C 60 80 D1 */	lis r3, data_80D0D188@ha
/* 80D0C200  38 63 D1 88 */	addi r3, r3, data_80D0D188@l
/* 80D0C204  4B 55 6F 8C */	b ModuleDestructorsX
/* 80D0C208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C20C  7C 08 03 A6 */	mtlr r0
/* 80D0C210  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C214  4E 80 00 20 */	blr 
