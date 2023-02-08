lbl_801C91D8:
/* 801C91D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C91DC  7C 08 02 A6 */	mflr r0
/* 801C91E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C91E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C91E8  7C 7F 1B 78 */	mr r31, r3
/* 801C91EC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C91F0  38 80 03 F9 */	li r4, 0x3f9
/* 801C91F4  38 A0 00 FF */	li r5, 0xff
/* 801C91F8  48 00 E0 19 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C91FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9200  38 80 00 00 */	li r4, 0
/* 801C9204  38 A0 00 FF */	li r5, 0xff
/* 801C9208  48 00 E0 CD */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C920C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9210  38 80 00 00 */	li r4, 0
/* 801C9214  48 00 E2 D9 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C9218  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C921C  38 80 00 00 */	li r4, 0
/* 801C9220  48 00 E1 79 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C9224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C922C  7C 08 03 A6 */	mtlr r0
/* 801C9230  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9234  4E 80 00 20 */	blr 
