lbl_80BC83E4:
/* 80BC83E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC83E8  7C 08 02 A6 */	mflr r0
/* 80BC83EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC83F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BC83F4  7C 7F 1B 78 */	mr r31, r3
/* 80BC83F8  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BC83FC  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BC8400  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC8404  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BC8408  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 80BC840C  C0 03 05 30 */	lfs f0, 0x530(r3)
/* 80BC8410  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC8414  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BC8418  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BC841C  C0 03 05 F4 */	lfs f0, 0x5f4(r3)
/* 80BC8420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC8424  4C 40 13 82 */	cror 2, 0, 2
/* 80BC8428  40 82 00 84 */	bne lbl_80BC84AC
/* 80BC842C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BC8430  7C 03 07 74 */	extsb r3, r0
/* 80BC8434  4B 46 4C 38 */	b dComIfGp_getReverb__Fi
/* 80BC8438  7C 67 1B 78 */	mr r7, r3
/* 80BC843C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802BD@ha */
/* 80BC8440  38 03 02 BD */	addi r0, r3, 0x02BD /* 0x000802BD@l */
/* 80BC8444  90 01 00 08 */	stw r0, 8(r1)
/* 80BC8448  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC844C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC8450  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC8454  38 81 00 08 */	addi r4, r1, 8
/* 80BC8458  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BC845C  38 C0 00 00 */	li r6, 0
/* 80BC8460  3D 00 80 BD */	lis r8, lit_3760@ha
/* 80BC8464  C0 28 8C F4 */	lfs f1, lit_3760@l(r8)
/* 80BC8468  FC 40 08 90 */	fmr f2, f1
/* 80BC846C  3D 00 80 BD */	lis r8, lit_3761@ha
/* 80BC8470  C0 68 8C F8 */	lfs f3, lit_3761@l(r8)
/* 80BC8474  FC 80 18 90 */	fmr f4, f3
/* 80BC8478  39 00 00 00 */	li r8, 0
/* 80BC847C  4B 6E 35 08 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC8480  38 00 00 03 */	li r0, 3
/* 80BC8484  98 1F 06 09 */	stb r0, 0x609(r31)
/* 80BC8488  3C 60 80 BD */	lis r3, lit_3760@ha
/* 80BC848C  C0 03 8C F4 */	lfs f0, lit_3760@l(r3)
/* 80BC8490  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80BC8494  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BC8498  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 80BC849C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BC84A0  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80BC84A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BC84A8  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
lbl_80BC84AC:
/* 80BC84AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BC84B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC84B4  7C 08 03 A6 */	mtlr r0
/* 80BC84B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC84BC  4E 80 00 20 */	blr 
