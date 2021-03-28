lbl_8057F940:
/* 8057F940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F944  7C 08 02 A6 */	mflr r0
/* 8057F948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F94C  3C 60 80 58 */	lis r3, data_805814A4@ha
/* 8057F950  38 63 14 A4 */	addi r3, r3, data_805814A4@l
/* 8057F954  4B CE 37 F8 */	b ModuleConstructorsX
/* 8057F958  4B CE 37 30 */	b ModuleProlog
/* 8057F95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F960  7C 08 03 A6 */	mtlr r0
/* 8057F964  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F968  4E 80 00 20 */	blr 
