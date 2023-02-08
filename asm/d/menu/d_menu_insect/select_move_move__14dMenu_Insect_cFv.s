lbl_801D92DC:
/* 801D92DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D92E0  7C 08 02 A6 */	mflr r0
/* 801D92E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D92E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D92EC  7C 7F 1B 78 */	mr r31, r3
/* 801D92F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801D92F4  4B E5 8E A9 */	bl checkTrigger__9STControlFv
/* 801D92F8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801D92FC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801D9300  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801D9304  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801D9308  41 82 00 8C */	beq lbl_801D9394
/* 801D930C  38 00 00 04 */	li r0, 4
/* 801D9310  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801D9314  88 1F 00 F7 */	lbz r0, 0xf7(r31)
/* 801D9318  28 00 00 00 */	cmplwi r0, 0
/* 801D931C  40 82 00 40 */	bne lbl_801D935C
/* 801D9320  38 00 00 6D */	li r0, 0x6d
/* 801D9324  90 01 00 18 */	stw r0, 0x18(r1)
/* 801D9328  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D932C  38 81 00 18 */	addi r4, r1, 0x18
/* 801D9330  38 A0 00 00 */	li r5, 0
/* 801D9334  38 C0 00 00 */	li r6, 0
/* 801D9338  38 E0 00 00 */	li r7, 0
/* 801D933C  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D9340  FC 40 08 90 */	fmr f2, f1
/* 801D9344  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D9348  FC 80 18 90 */	fmr f4, f3
/* 801D934C  39 00 00 00 */	li r8, 0
/* 801D9350  48 0D 26 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D9354  48 04 56 7D */	bl dMeter2Info_set2DVibration__Fv
/* 801D9358  48 00 01 64 */	b lbl_801D94BC
lbl_801D935C:
/* 801D935C  38 00 00 6E */	li r0, 0x6e
/* 801D9360  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9364  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D9368  38 81 00 14 */	addi r4, r1, 0x14
/* 801D936C  38 A0 00 00 */	li r5, 0
/* 801D9370  38 C0 00 00 */	li r6, 0
/* 801D9374  38 E0 00 00 */	li r7, 0
/* 801D9378  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D937C  FC 40 08 90 */	fmr f2, f1
/* 801D9380  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D9384  FC 80 18 90 */	fmr f4, f3
/* 801D9388  39 00 00 00 */	li r8, 0
/* 801D938C  48 0D 25 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D9390  48 00 01 2C */	b lbl_801D94BC
lbl_801D9394:
/* 801D9394  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801D9398  41 82 00 50 */	beq lbl_801D93E8
/* 801D939C  38 00 00 04 */	li r0, 4
/* 801D93A0  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801D93A4  38 00 00 01 */	li r0, 1
/* 801D93A8  98 1F 00 F7 */	stb r0, 0xf7(r31)
/* 801D93AC  38 00 00 6E */	li r0, 0x6e
/* 801D93B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D93B4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D93B8  38 81 00 10 */	addi r4, r1, 0x10
/* 801D93BC  38 A0 00 00 */	li r5, 0
/* 801D93C0  38 C0 00 00 */	li r6, 0
/* 801D93C4  38 E0 00 00 */	li r7, 0
/* 801D93C8  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D93CC  FC 40 08 90 */	fmr f2, f1
/* 801D93D0  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D93D4  FC 80 18 90 */	fmr f4, f3
/* 801D93D8  39 00 00 00 */	li r8, 0
/* 801D93DC  48 0D 25 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D93E0  48 04 55 F1 */	bl dMeter2Info_set2DVibration__Fv
/* 801D93E4  48 00 00 D8 */	b lbl_801D94BC
lbl_801D93E8:
/* 801D93E8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D93EC  48 06 08 79 */	bl isSelect__17dMsgScrn3Select_cFv
/* 801D93F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D93F4  41 82 00 60 */	beq lbl_801D9454
/* 801D93F8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801D93FC  4B E5 91 29 */	bl checkUpTrigger__9STControlFv
/* 801D9400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9404  41 82 00 50 */	beq lbl_801D9454
/* 801D9408  88 1F 00 F7 */	lbz r0, 0xf7(r31)
/* 801D940C  28 00 00 01 */	cmplwi r0, 1
/* 801D9410  40 82 00 AC */	bne lbl_801D94BC
/* 801D9414  38 00 00 00 */	li r0, 0
/* 801D9418  98 1F 00 F7 */	stb r0, 0xf7(r31)
/* 801D941C  38 00 00 A0 */	li r0, 0xa0
/* 801D9420  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D9424  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D9428  38 81 00 0C */	addi r4, r1, 0xc
/* 801D942C  38 A0 00 00 */	li r5, 0
/* 801D9430  38 C0 00 00 */	li r6, 0
/* 801D9434  38 E0 00 00 */	li r7, 0
/* 801D9438  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D943C  FC 40 08 90 */	fmr f2, f1
/* 801D9440  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D9444  FC 80 18 90 */	fmr f4, f3
/* 801D9448  39 00 00 00 */	li r8, 0
/* 801D944C  48 0D 25 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801D9450  48 00 00 6C */	b lbl_801D94BC
lbl_801D9454:
/* 801D9454  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D9458  48 06 08 0D */	bl isSelect__17dMsgScrn3Select_cFv
/* 801D945C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9460  41 82 00 5C */	beq lbl_801D94BC
/* 801D9464  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801D9468  4B E5 91 39 */	bl checkDownTrigger__9STControlFv
/* 801D946C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D9470  41 82 00 4C */	beq lbl_801D94BC
/* 801D9474  88 1F 00 F7 */	lbz r0, 0xf7(r31)
/* 801D9478  28 00 00 00 */	cmplwi r0, 0
/* 801D947C  40 82 00 40 */	bne lbl_801D94BC
/* 801D9480  38 00 00 01 */	li r0, 1
/* 801D9484  98 1F 00 F7 */	stb r0, 0xf7(r31)
/* 801D9488  38 00 00 A0 */	li r0, 0xa0
/* 801D948C  90 01 00 08 */	stw r0, 8(r1)
/* 801D9490  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801D9494  38 81 00 08 */	addi r4, r1, 8
/* 801D9498  38 A0 00 00 */	li r5, 0
/* 801D949C  38 C0 00 00 */	li r6, 0
/* 801D94A0  38 E0 00 00 */	li r7, 0
/* 801D94A4  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D94A8  FC 40 08 90 */	fmr f2, f1
/* 801D94AC  C0 62 A8 68 */	lfs f3, lit_4089(r2)
/* 801D94B0  FC 80 18 90 */	fmr f4, f3
/* 801D94B4  39 00 00 00 */	li r8, 0
/* 801D94B8  48 0D 24 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801D94BC:
/* 801D94BC  88 1F 00 F3 */	lbz r0, 0xf3(r31)
/* 801D94C0  28 00 00 03 */	cmplwi r0, 3
/* 801D94C4  40 82 00 24 */	bne lbl_801D94E8
/* 801D94C8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D94CC  38 80 00 02 */	li r4, 2
/* 801D94D0  88 BF 00 F7 */	lbz r5, 0xf7(r31)
/* 801D94D4  38 05 00 01 */	addi r0, r5, 1
/* 801D94D8  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801D94DC  38 C0 00 00 */	li r6, 0
/* 801D94E0  48 06 0E B9 */	bl selAnimeMove__17dMsgScrn3Select_cFUcUcb
/* 801D94E4  48 00 00 0C */	b lbl_801D94F0
lbl_801D94E8:
/* 801D94E8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801D94EC  48 06 11 95 */	bl selAnimeEnd__17dMsgScrn3Select_cFv
lbl_801D94F0:
/* 801D94F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D94F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D94F8  7C 08 03 A6 */	mtlr r0
/* 801D94FC  38 21 00 30 */	addi r1, r1, 0x30
/* 801D9500  4E 80 00 20 */	blr 
