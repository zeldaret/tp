lbl_801CA1E8:
/* 801CA1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA1EC  7C 08 02 A6 */	mflr r0
/* 801CA1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CA1F8  7C 7F 1B 78 */	mr r31, r3
/* 801CA1FC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801CA200  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801CA204  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA208  7C 9F 02 14 */	add r4, r31, r0
/* 801CA20C  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801CA210  48 00 26 4D */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801CA214  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA218  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801CA21C  7F E3 FB 78 */	mr r3, r31
/* 801CA220  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA224  7C 9F 02 14 */	add r4, r31, r0
/* 801CA228  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801CA22C  48 00 26 55 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801CA230  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA234  38 80 00 01 */	li r4, 1
/* 801CA238  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA23C  48 00 D4 D9 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA240  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA244  38 80 00 02 */	li r4, 2
/* 801CA248  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA24C  48 00 D4 C9 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA250  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA254  38 80 00 08 */	li r4, 8
/* 801CA258  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA25C  48 00 D4 B9 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA260  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA264  38 80 00 04 */	li r4, 4
/* 801CA268  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA26C  48 00 D4 A9 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA270  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA274  38 80 00 00 */	li r4, 0
/* 801CA278  38 A0 00 FF */	li r5, 0xff
/* 801CA27C  48 00 CF 95 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA280  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA284  38 80 00 00 */	li r4, 0
/* 801CA288  38 A0 00 FF */	li r5, 0xff
/* 801CA28C  48 00 D0 49 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA290  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA294  38 80 00 00 */	li r4, 0
/* 801CA298  38 A0 00 FF */	li r5, 0xff
/* 801CA29C  48 00 CE 4D */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA2A0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA2A4  38 80 00 00 */	li r4, 0
/* 801CA2A8  48 00 D2 45 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801CA2AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA2B0  38 80 00 00 */	li r4, 0
/* 801CA2B4  48 00 D0 E5 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801CA2B8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801CA2BC  48 06 D8 25 */	bl setTalkHeap__12dMsgObject_cFPv
/* 801CA2C0  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CA2C4  38 80 00 00 */	li r4, 0
/* 801CA2C8  38 A0 0B C4 */	li r5, 0xbc4
/* 801CA2CC  38 C0 00 00 */	li r6, 0
/* 801CA2D0  38 E0 00 00 */	li r7, 0
/* 801CA2D4  48 07 FC BD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801CA2D8  38 00 00 0A */	li r0, 0xa
/* 801CA2DC  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CA2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CA2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA2E8  7C 08 03 A6 */	mtlr r0
/* 801CA2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA2F0  4E 80 00 20 */	blr 
