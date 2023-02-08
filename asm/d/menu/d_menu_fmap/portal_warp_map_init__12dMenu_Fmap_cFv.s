lbl_801C8B48:
/* 801C8B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C8B4C  7C 08 02 A6 */	mflr r0
/* 801C8B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C8B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C8B58  7C 7F 1B 78 */	mr r31, r3
/* 801C8B5C  88 03 03 01 */	lbz r0, 0x301(r3)
/* 801C8B60  28 00 00 09 */	cmplwi r0, 9
/* 801C8B64  41 82 00 38 */	beq lbl_801C8B9C
/* 801C8B68  38 00 00 FF */	li r0, 0xff
/* 801C8B6C  98 1F 03 08 */	stb r0, 0x308(r31)
/* 801C8B70  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801C8B74  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C8B78  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C8B7C  7C 9F 02 14 */	add r4, r31, r0
/* 801C8B80  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C8B84  48 00 3C D9 */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C8B88  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801C8B8C  28 00 00 FF */	cmplwi r0, 0xff
/* 801C8B90  40 82 00 0C */	bne lbl_801C8B9C
/* 801C8B94  7F E3 FB 78 */	mr r3, r31
/* 801C8B98  48 00 3D 15 */	bl setAreaNameZero__12dMenu_Fmap_cFv
lbl_801C8B9C:
/* 801C8B9C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BA0  38 80 00 01 */	li r4, 1
/* 801C8BA4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C8BA8  48 00 EB 6D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C8BAC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BB0  38 80 00 02 */	li r4, 2
/* 801C8BB4  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C8BB8  48 00 EB 5D */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C8BBC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BC0  38 80 05 22 */	li r4, 0x522
/* 801C8BC4  38 A0 00 FF */	li r5, 0xff
/* 801C8BC8  48 00 E6 49 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C8BCC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BD0  38 80 00 00 */	li r4, 0
/* 801C8BD4  38 A0 00 FF */	li r5, 0xff
/* 801C8BD8  48 00 E6 FD */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C8BDC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BE0  38 80 05 2A */	li r4, 0x52a
/* 801C8BE4  38 A0 00 FF */	li r5, 0xff
/* 801C8BE8  48 00 E5 01 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C8BEC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8BF0  38 80 05 26 */	li r4, 0x526
/* 801C8BF4  48 00 E8 F9 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C8BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C8BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C8C00  7C 08 03 A6 */	mtlr r0
/* 801C8C04  38 21 00 10 */	addi r1, r1, 0x10
/* 801C8C08  4E 80 00 20 */	blr 
