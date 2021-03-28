lbl_801C7B24:
/* 801C7B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C7B28  7C 08 02 A6 */	mflr r0
/* 801C7B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C7B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C7B34  7C 7F 1B 78 */	mr r31, r3
/* 801C7B38  88 03 03 07 */	lbz r0, 0x307(r3)
/* 801C7B3C  28 00 00 01 */	cmplwi r0, 1
/* 801C7B40  40 82 00 20 */	bne lbl_801C7B60
/* 801C7B44  38 80 05 25 */	li r4, 0x525
/* 801C7B48  48 00 4D 15 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C7B4C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7B50  38 80 05 2A */	li r4, 0x52a
/* 801C7B54  38 A0 00 FF */	li r5, 0xff
/* 801C7B58  48 00 F5 91 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7B5C  48 00 00 1C */	b lbl_801C7B78
lbl_801C7B60:
/* 801C7B60  A0 9F 02 16 */	lhz r4, 0x216(r31)
/* 801C7B64  48 00 4C F9 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C7B68  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7B6C  38 80 05 29 */	li r4, 0x529
/* 801C7B70  38 A0 00 FF */	li r5, 0xff
/* 801C7B74  48 00 F5 75 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
lbl_801C7B78:
/* 801C7B78  38 00 00 01 */	li r0, 1
/* 801C7B7C  98 1F 03 12 */	stb r0, 0x312(r31)
/* 801C7B80  88 1F 03 13 */	lbz r0, 0x313(r31)
/* 801C7B84  28 00 00 00 */	cmplwi r0, 0
/* 801C7B88  40 82 00 10 */	bne lbl_801C7B98
/* 801C7B8C  7F E3 FB 78 */	mr r3, r31
/* 801C7B90  48 00 4D 1D */	bl setAreaNameZero__12dMenu_Fmap_cFv
/* 801C7B94  48 00 00 20 */	b lbl_801C7BB4
lbl_801C7B98:
/* 801C7B98  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7B9C  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801C7BA0  7F E3 FB 78 */	mr r3, r31
/* 801C7BA4  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C7BA8  7C 9F 02 14 */	add r4, r31, r0
/* 801C7BAC  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C7BB0  48 00 4C D1 */	bl setAreaName__12dMenu_Fmap_cFUl
lbl_801C7BB4:
/* 801C7BB4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C7BB8  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801C7BBC  98 1F 03 11 */	stb r0, 0x311(r31)
/* 801C7BC0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7BC4  38 80 00 01 */	li r4, 1
/* 801C7BC8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C7BCC  48 00 FB 49 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C7BD0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7BD4  38 80 00 02 */	li r4, 2
/* 801C7BD8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C7BDC  48 00 FB 39 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C7BE0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7BE4  38 80 03 F9 */	li r4, 0x3f9
/* 801C7BE8  38 A0 00 FF */	li r5, 0xff
/* 801C7BEC  48 00 F6 25 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7BF0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7BF4  38 80 05 27 */	li r4, 0x527
/* 801C7BF8  38 A0 00 FF */	li r5, 0xff
/* 801C7BFC  48 00 F6 D9 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7C00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7C04  38 80 05 24 */	li r4, 0x524
/* 801C7C08  48 00 F8 E5 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C7C0C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C7C10  38 80 03 F9 */	li r4, 0x3f9
/* 801C7C14  48 00 F7 85 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C7C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C7C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C7C20  7C 08 03 A6 */	mtlr r0
/* 801C7C24  38 21 00 10 */	addi r1, r1, 0x10
/* 801C7C28  4E 80 00 20 */	blr 
