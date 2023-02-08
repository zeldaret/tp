lbl_801C950C:
/* 801C950C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C9510  7C 08 02 A6 */	mflr r0
/* 801C9514  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C951C  7C 7F 1B 78 */	mr r31, r3
/* 801C9520  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801C9524  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 801C9528  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C952C  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C9530  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9534  7C 9F 02 14 */	add r4, r31, r0
/* 801C9538  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C953C  48 00 33 21 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C9540  38 00 00 01 */	li r0, 1
/* 801C9544  98 1F 03 12 */	stb r0, 0x312(r31)
/* 801C9548  88 1F 03 13 */	lbz r0, 0x313(r31)
/* 801C954C  28 00 00 00 */	cmplwi r0, 0
/* 801C9550  40 82 00 10 */	bne lbl_801C9560
/* 801C9554  7F E3 FB 78 */	mr r3, r31
/* 801C9558  48 00 33 55 */	bl setAreaNameZero__12dMenu_Fmap_cFv
/* 801C955C  48 00 00 20 */	b lbl_801C957C
lbl_801C9560:
/* 801C9560  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9564  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801C9568  7F E3 FB 78 */	mr r3, r31
/* 801C956C  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9570  7C 9F 02 14 */	add r4, r31, r0
/* 801C9574  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801C9578  48 00 33 09 */	bl setAreaName__12dMenu_Fmap_cFUl
lbl_801C957C:
/* 801C957C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9580  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801C9584  90 1F 02 04 */	stw r0, 0x204(r31)
/* 801C9588  38 00 FF FF */	li r0, -1
/* 801C958C  90 1F 02 08 */	stw r0, 0x208(r31)
/* 801C9590  38 00 00 00 */	li r0, 0
/* 801C9594  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9598  98 03 12 38 */	stb r0, 0x1238(r3)
/* 801C959C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95A0  38 80 00 01 */	li r4, 1
/* 801C95A4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C95A8  48 00 E1 6D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C95AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95B0  38 80 00 02 */	li r4, 2
/* 801C95B4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C95B8  48 00 E1 5D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C95BC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95C0  38 80 05 22 */	li r4, 0x522
/* 801C95C4  38 A0 00 FF */	li r5, 0xff
/* 801C95C8  48 00 DC 49 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C95CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95D0  38 80 00 00 */	li r4, 0
/* 801C95D4  38 A0 00 FF */	li r5, 0xff
/* 801C95D8  48 00 DC FD */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C95DC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95E0  38 80 05 29 */	li r4, 0x529
/* 801C95E4  38 A0 00 FF */	li r5, 0xff
/* 801C95E8  48 00 DB 01 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C95EC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95F0  38 80 05 28 */	li r4, 0x528
/* 801C95F4  48 00 DE F9 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C95F8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C95FC  38 80 03 F9 */	li r4, 0x3f9
/* 801C9600  48 00 DD 99 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C9604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C960C  7C 08 03 A6 */	mtlr r0
/* 801C9610  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9614  4E 80 00 20 */	blr 
