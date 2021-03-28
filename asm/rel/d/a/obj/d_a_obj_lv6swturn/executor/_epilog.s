lbl_80C8394C:
/* 80C8394C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83950  7C 08 02 A6 */	mflr r0
/* 80C83954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83958  4B 5D F7 34 */	b ModuleEpilog
/* 80C8395C  3C 60 80 C8 */	lis r3, data_80C846A0@ha
/* 80C83960  38 63 46 A0 */	addi r3, r3, data_80C846A0@l
/* 80C83964  4B 5D F8 2C */	b ModuleDestructorsX
/* 80C83968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8396C  7C 08 03 A6 */	mtlr r0
/* 80C83970  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83974  4E 80 00 20 */	blr 
