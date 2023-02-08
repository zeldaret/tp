lbl_801DC214:
/* 801DC214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC218  7C 08 02 A6 */	mflr r0
/* 801DC21C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC220  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC224  7C 7F 1B 78 */	mr r31, r3
/* 801DC228  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801DC22C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801DC230  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801DC234  54 64 05 EF */	rlwinm. r4, r3, 0, 0x17, 0x17
/* 801DC238  40 82 00 0C */	bne lbl_801DC244
/* 801DC23C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DC240  41 82 00 90 */	beq lbl_801DC2D0
lbl_801DC244:
/* 801DC244  28 04 00 00 */	cmplwi r4, 0
/* 801DC248  41 82 00 10 */	beq lbl_801DC258
/* 801DC24C  38 00 00 01 */	li r0, 1
/* 801DC250  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DC254  48 00 00 14 */	b lbl_801DC268
lbl_801DC258:
/* 801DC258  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DC25C  41 82 00 0C */	beq lbl_801DC268
/* 801DC260  38 00 00 02 */	li r0, 2
/* 801DC264  98 1F 00 E3 */	stb r0, 0xe3(r31)
lbl_801DC268:
/* 801DC268  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 801DC26C  28 00 00 02 */	cmplwi r0, 2
/* 801DC270  40 82 00 48 */	bne lbl_801DC2B8
/* 801DC274  38 00 00 05 */	li r0, 5
/* 801DC278  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DC27C  38 00 00 52 */	li r0, 0x52
/* 801DC280  90 01 00 08 */	stw r0, 8(r1)
/* 801DC284  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DC288  38 81 00 08 */	addi r4, r1, 8
/* 801DC28C  38 A0 00 00 */	li r5, 0
/* 801DC290  38 C0 00 00 */	li r6, 0
/* 801DC294  38 E0 00 00 */	li r7, 0
/* 801DC298  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DC29C  FC 40 08 90 */	fmr f2, f1
/* 801DC2A0  C0 62 A8 B0 */	lfs f3, lit_4304(r2)
/* 801DC2A4  FC 80 18 90 */	fmr f4, f3
/* 801DC2A8  39 00 00 00 */	li r8, 0
/* 801DC2AC  48 0C F6 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DC2B0  48 04 27 21 */	bl dMeter2Info_set2DVibration__Fv
/* 801DC2B4  48 00 00 14 */	b lbl_801DC2C8
lbl_801DC2B8:
/* 801DC2B8  38 00 00 02 */	li r0, 2
/* 801DC2BC  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DC2C0  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 801DC2C4  90 1F 00 C8 */	stw r0, 0xc8(r31)
lbl_801DC2C8:
/* 801DC2C8  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801DC2CC  48 05 E3 B5 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
lbl_801DC2D0:
/* 801DC2D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC2D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC2D8  7C 08 03 A6 */	mtlr r0
/* 801DC2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC2E0  4E 80 00 20 */	blr 
