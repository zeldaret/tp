lbl_80A0C94C:
/* 80A0C94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C950  7C 08 02 A6 */	mflr r0
/* 80A0C954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C958  4B 85 67 34 */	b ModuleEpilog
/* 80A0C95C  3C 60 80 A1 */	lis r3, data_80A0E010@ha
/* 80A0C960  38 63 E0 10 */	addi r3, r3, data_80A0E010@l
/* 80A0C964  4B 85 68 2C */	b ModuleDestructorsX
/* 80A0C968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C96C  7C 08 03 A6 */	mtlr r0
/* 80A0C970  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C974  4E 80 00 20 */	blr 
