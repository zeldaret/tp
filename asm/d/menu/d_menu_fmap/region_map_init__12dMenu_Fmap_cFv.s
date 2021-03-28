lbl_801C8518:
/* 801C8518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C851C  7C 08 02 A6 */	mflr r0
/* 801C8520  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C8524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C8528  7C 7F 1B 78 */	mr r31, r3
/* 801C852C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C8530  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C8534  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C8538  7C 9F 02 14 */	add r4, r31, r0
/* 801C853C  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C8540  48 00 43 1D */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C8544  38 00 00 01 */	li r0, 1
/* 801C8548  98 1F 03 12 */	stb r0, 0x312(r31)
/* 801C854C  88 1F 03 13 */	lbz r0, 0x313(r31)
/* 801C8550  28 00 00 00 */	cmplwi r0, 0
/* 801C8554  40 82 00 10 */	bne lbl_801C8564
/* 801C8558  7F E3 FB 78 */	mr r3, r31
/* 801C855C  48 00 43 51 */	bl setAreaNameZero__12dMenu_Fmap_cFv
/* 801C8560  48 00 00 20 */	b lbl_801C8580
lbl_801C8564:
/* 801C8564  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C8568  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801C856C  7F E3 FB 78 */	mr r3, r31
/* 801C8570  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C8574  7C 9F 02 14 */	add r4, r31, r0
/* 801C8578  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801C857C  48 00 43 05 */	bl setAreaName__12dMenu_Fmap_cFUl
lbl_801C8580:
/* 801C8580  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C8584  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801C8588  90 1F 02 04 */	stw r0, 0x204(r31)
/* 801C858C  38 00 FF FF */	li r0, -1
/* 801C8590  90 1F 02 08 */	stw r0, 0x208(r31)
/* 801C8594  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8598  38 80 00 03 */	li r4, 3
/* 801C859C  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C85A0  48 00 F1 75 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C85A4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C85A8  38 80 05 22 */	li r4, 0x522
/* 801C85AC  38 A0 00 FF */	li r5, 0xff
/* 801C85B0  48 00 EC 61 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C85B4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C85B8  38 80 05 27 */	li r4, 0x527
/* 801C85BC  38 A0 00 FF */	li r5, 0xff
/* 801C85C0  48 00 ED 15 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C85C4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C85C8  38 80 05 29 */	li r4, 0x529
/* 801C85CC  38 A0 00 FF */	li r5, 0xff
/* 801C85D0  48 00 EB 19 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C85D4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C85D8  38 80 05 28 */	li r4, 0x528
/* 801C85DC  48 00 EF 11 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C85E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C85E4  38 80 03 F9 */	li r4, 0x3f9
/* 801C85E8  48 00 ED B1 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C85EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C85F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C85F4  7C 08 03 A6 */	mtlr r0
/* 801C85F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801C85FC  4E 80 00 20 */	blr 
