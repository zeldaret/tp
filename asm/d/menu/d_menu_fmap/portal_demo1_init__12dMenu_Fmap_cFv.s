lbl_801C9A4C:
/* 801C9A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C9A50  7C 08 02 A6 */	mflr r0
/* 801C9A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C9A5C  7C 7F 1B 78 */	mr r31, r3
/* 801C9A60  38 00 00 02 */	li r0, 2
/* 801C9A64  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C9A68  98 04 12 27 */	stb r0, 0x1227(r4)
/* 801C9A6C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801C9A70  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C9A74  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9A78  7C 9F 02 14 */	add r4, r31, r0
/* 801C9A7C  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C9A80  48 00 2D DD */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801C9A84  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9A88  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801C9A8C  7F E3 FB 78 */	mr r3, r31
/* 801C9A90  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C9A94  7C 9F 02 14 */	add r4, r31, r0
/* 801C9A98  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801C9A9C  48 00 2D E5 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C9AA0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AA4  38 80 00 01 */	li r4, 1
/* 801C9AA8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C9AAC  48 00 DC 69 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C9AB0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AB4  38 80 00 02 */	li r4, 2
/* 801C9AB8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C9ABC  48 00 DC 59 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C9AC0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AC4  38 80 00 08 */	li r4, 8
/* 801C9AC8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C9ACC  48 00 DC 49 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C9AD0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AD4  38 80 00 04 */	li r4, 4
/* 801C9AD8  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C9ADC  48 00 DC 39 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C9AE0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AE4  38 80 00 00 */	li r4, 0
/* 801C9AE8  38 A0 00 FF */	li r5, 0xff
/* 801C9AEC  48 00 D7 25 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C9AF0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9AF4  38 80 00 00 */	li r4, 0
/* 801C9AF8  38 A0 00 FF */	li r5, 0xff
/* 801C9AFC  48 00 D7 D9 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C9B00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9B04  38 80 00 00 */	li r4, 0
/* 801C9B08  38 A0 00 FF */	li r5, 0xff
/* 801C9B0C  48 00 D5 DD */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C9B10  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9B14  38 80 00 00 */	li r4, 0
/* 801C9B18  48 00 D9 D5 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801C9B1C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9B20  38 80 00 00 */	li r4, 0
/* 801C9B24  48 00 D8 75 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801C9B28  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C9B2C  48 06 DF B5 */	bl setTalkHeap__12dMsgObject_cFPv
/* 801C9B30  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801C9B34  38 80 00 00 */	li r4, 0
/* 801C9B38  38 A0 0B BD */	li r5, 0xbbd
/* 801C9B3C  38 C0 00 00 */	li r6, 0
/* 801C9B40  38 E0 00 00 */	li r7, 0
/* 801C9B44  48 08 04 4D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801C9B48  38 00 00 0A */	li r0, 0xa
/* 801C9B4C  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C9B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C9B58  7C 08 03 A6 */	mtlr r0
/* 801C9B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C9B60  4E 80 00 20 */	blr 
