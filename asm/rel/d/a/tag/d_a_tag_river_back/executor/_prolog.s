lbl_80D5F280:
/* 80D5F280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F284  7C 08 02 A6 */	mflr r0
/* 80D5F288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F28C  3C 60 80 D6 */	lis r3, data_80D5F93C@ha
/* 80D5F290  38 63 F9 3C */	addi r3, r3, data_80D5F93C@l
/* 80D5F294  4B 50 3E B8 */	b ModuleConstructorsX
/* 80D5F298  4B 50 3D F0 */	b ModuleProlog
/* 80D5F29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F2A0  7C 08 03 A6 */	mtlr r0
/* 80D5F2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F2A8  4E 80 00 20 */	blr 
