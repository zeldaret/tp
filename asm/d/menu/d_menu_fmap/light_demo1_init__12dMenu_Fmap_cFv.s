lbl_801CA5CC:
/* 801CA5CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CA5D0  7C 08 02 A6 */	mflr r0
/* 801CA5D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CA5D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CA5DC  7C 7F 1B 78 */	mr r31, r3
/* 801CA5E0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801CA5E4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CA5E8  48 00 6E 91 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CA5EC  38 00 FF F6 */	li r0, -10
/* 801CA5F0  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CA5F4  38 00 00 BC */	li r0, 0xbc
/* 801CA5F8  90 01 00 08 */	stw r0, 8(r1)
/* 801CA5FC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CA600  38 81 00 08 */	addi r4, r1, 8
/* 801CA604  38 A0 00 00 */	li r5, 0
/* 801CA608  38 C0 00 00 */	li r6, 0
/* 801CA60C  38 E0 00 00 */	li r7, 0
/* 801CA610  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CA614  FC 40 08 90 */	fmr f2, f1
/* 801CA618  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CA61C  FC 80 18 90 */	fmr f4, f3
/* 801CA620  39 00 00 00 */	li r8, 0
/* 801CA624  48 0E 13 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801CA628  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA62C  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801CA630  7F E3 FB 78 */	mr r3, r31
/* 801CA634  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA638  7C 9F 02 14 */	add r4, r31, r0
/* 801CA63C  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801CA640  48 00 22 1D */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801CA644  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA648  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801CA64C  7F E3 FB 78 */	mr r3, r31
/* 801CA650  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA654  7C 9F 02 14 */	add r4, r31, r0
/* 801CA658  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801CA65C  48 00 22 25 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801CA660  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA664  38 80 00 00 */	li r4, 0
/* 801CA668  38 A0 00 FF */	li r5, 0xff
/* 801CA66C  48 00 CB A5 */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA670  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA674  38 80 00 00 */	li r4, 0
/* 801CA678  38 A0 00 FF */	li r5, 0xff
/* 801CA67C  48 00 CC 59 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA680  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA684  38 80 00 00 */	li r4, 0
/* 801CA688  38 A0 00 FF */	li r5, 0xff
/* 801CA68C  48 00 CA 5D */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA690  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA694  38 80 00 00 */	li r4, 0
/* 801CA698  48 00 CE 55 */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801CA69C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA6A0  38 80 00 00 */	li r4, 0
/* 801CA6A4  48 00 CC F5 */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801CA6A8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801CA6AC  48 06 D4 35 */	bl setTalkHeap__12dMsgObject_cFPv
/* 801CA6B0  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CA6B4  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801CA6B8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA6BC  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801CA6C0  7F E3 FB 78 */	mr r3, r31
/* 801CA6C4  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA6C8  7C 9F 02 14 */	add r4, r31, r0
/* 801CA6CC  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801CA6D0  48 00 21 8D */	bl setTitleName__12dMenu_Fmap_cFUl
/* 801CA6D4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA6D8  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801CA6DC  7F E3 FB 78 */	mr r3, r31
/* 801CA6E0  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801CA6E4  7C 9F 02 14 */	add r4, r31, r0
/* 801CA6E8  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801CA6EC  48 00 21 95 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801CA6F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA6F4  88 03 12 29 */	lbz r0, 0x1229(r3)
/* 801CA6F8  90 1F 02 04 */	stw r0, 0x204(r31)
/* 801CA6FC  38 00 00 00 */	li r0, 0
/* 801CA700  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA704  98 03 12 38 */	stb r0, 0x1238(r3)
/* 801CA708  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA70C  38 80 00 01 */	li r4, 1
/* 801CA710  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA714  48 00 D0 01 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA718  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA71C  38 80 00 02 */	li r4, 2
/* 801CA720  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801CA724  48 00 CF F1 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801CA728  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA72C  38 80 00 00 */	li r4, 0
/* 801CA730  38 A0 00 FF */	li r5, 0xff
/* 801CA734  48 00 CA DD */	bl setBButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA738  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA73C  38 80 00 00 */	li r4, 0
/* 801CA740  38 A0 00 FF */	li r5, 0xff
/* 801CA744  48 00 CB 91 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA748  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA74C  38 80 00 00 */	li r4, 0
/* 801CA750  38 A0 00 FF */	li r5, 0xff
/* 801CA754  48 00 C9 95 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CA758  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA75C  38 80 00 00 */	li r4, 0
/* 801CA760  48 00 CD 8D */	bl set3DStickString__17dMenu_Fmap2DTop_cFUl
/* 801CA764  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CA768  38 80 00 00 */	li r4, 0
/* 801CA76C  48 00 CC 2D */	bl setCrossLRString__17dMenu_Fmap2DTop_cFUl
/* 801CA770  80 7F 00 08 */	lwz r3, 8(r31)
/* 801CA774  48 06 D3 6D */	bl setTalkHeap__12dMsgObject_cFPv
/* 801CA778  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CA77C  38 80 00 00 */	li r4, 0
/* 801CA780  38 A0 00 7D */	li r5, 0x7d
/* 801CA784  38 C0 00 00 */	li r6, 0
/* 801CA788  38 E0 00 00 */	li r7, 0
/* 801CA78C  48 07 F8 05 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 801CA790  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CA794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CA798  7C 08 03 A6 */	mtlr r0
/* 801CA79C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CA7A0  4E 80 00 20 */	blr 
