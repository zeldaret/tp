lbl_801C9F7C:
/* 801C9F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C9F80  7C 08 02 A6 */	mflr r0
/* 801C9F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C9F8C  7C 7F 1B 78 */	mr r31, r3
/* 801C9F90  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C9F94  38 80 05 26 */	li r4, 0x526
/* 801C9F98  48 00 D5 55 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C9F9C  38 00 00 01 */	li r0, 1
/* 801C9FA0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9FA4  98 03 12 3A */	stb r0, 0x123a(r3)
/* 801C9FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C9FB0  7C 08 03 A6 */	mtlr r0
/* 801C9FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9FB8  4E 80 00 20 */	blr 
