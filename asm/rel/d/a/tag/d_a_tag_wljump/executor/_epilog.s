lbl_80D64E6C:
/* 80D64E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64E70  7C 08 02 A6 */	mflr r0
/* 80D64E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64E78  4B 4F E2 14 */	b ModuleEpilog
/* 80D64E7C  3C 60 80 D6 */	lis r3, data_80D658C8@ha
/* 80D64E80  38 63 58 C8 */	addi r3, r3, data_80D658C8@l
/* 80D64E84  4B 4F E3 0C */	b ModuleDestructorsX
/* 80D64E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64E8C  7C 08 03 A6 */	mtlr r0
/* 80D64E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64E94  4E 80 00 20 */	blr 
