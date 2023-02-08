lbl_80BE538C:
/* 80BE538C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BE5390  7C 08 02 A6 */	mflr r0
/* 80BE5394  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BE5398  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BE539C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BE53A0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BE53A4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BE53A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE53AC  4B 77 CE 2D */	bl _savegpr_28
/* 80BE53B0  7C 7D 1B 78 */	mr r29, r3
/* 80BE53B4  3C 60 80 BE */	lis r3, l_bmd@ha /* 0x80BE5D80@ha */
/* 80BE53B8  3B E3 5D 80 */	addi r31, r3, l_bmd@l /* 0x80BE5D80@l */
/* 80BE53BC  C3 DF 00 90 */	lfs f30, 0x90(r31)
/* 80BE53C0  FF E0 F0 90 */	fmr f31, f30
/* 80BE53C4  38 00 00 00 */	li r0, 0
/* 80BE53C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BE53CC  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80BE53D0  3C 03 00 01 */	addis r0, r3, 1
/* 80BE53D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE53D8  41 82 00 28 */	beq lbl_80BE5400
/* 80BE53DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BE53E0  4B 43 45 DD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BE53E4  2C 03 00 00 */	cmpwi r3, 0
/* 80BE53E8  41 82 00 18 */	beq lbl_80BE5400
/* 80BE53EC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80BE53F0  28 03 00 00 */	cmplwi r3, 0
/* 80BE53F4  41 82 00 0C */	beq lbl_80BE5400
/* 80BE53F8  C3 C3 07 38 */	lfs f30, 0x738(r3)
/* 80BE53FC  C3 E3 07 04 */	lfs f31, 0x704(r3)
lbl_80BE5400:
/* 80BE5400  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80BE5404  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80BE5408  40 82 00 0C */	bne lbl_80BE5414
/* 80BE540C  38 80 00 00 */	li r4, 0
/* 80BE5410  48 00 00 14 */	b lbl_80BE5424
lbl_80BE5414:
/* 80BE5414  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE5418  54 00 08 3C */	slwi r0, r0, 1
/* 80BE541C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80BE5420  7C 83 02 AE */	lhax r4, r3, r0
lbl_80BE5424:
/* 80BE5424  80 7D 0A D0 */	lwz r3, 0xad0(r29)
/* 80BE5428  3C 03 00 01 */	addis r0, r3, 1
/* 80BE542C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE5430  40 82 00 1C */	bne lbl_80BE544C
/* 80BE5434  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80BE5438  3C 03 00 01 */	addis r0, r3, 1
/* 80BE543C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE5440  41 82 00 0C */	beq lbl_80BE544C
/* 80BE5444  B0 9D 0A CC */	sth r4, 0xacc(r29)
/* 80BE5448  48 00 01 74 */	b lbl_80BE55BC
lbl_80BE544C:
/* 80BE544C  7C 80 07 35 */	extsh. r0, r4
/* 80BE5450  41 82 00 58 */	beq lbl_80BE54A8
/* 80BE5454  38 7D 0A CC */	addi r3, r29, 0xacc
/* 80BE5458  38 A0 00 32 */	li r5, 0x32
/* 80BE545C  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80BE5460  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE5464  54 00 08 3C */	slwi r0, r0, 1
/* 80BE5468  38 DF 00 3C */	addi r6, r31, 0x3c
/* 80BE546C  7C 06 02 AE */	lhax r0, r6, r0
/* 80BE5470  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 80BE5474  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5478  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE547C  3C 00 43 30 */	lis r0, 0x4330
/* 80BE5480  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE5484  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE5488  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE548C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE5490  FC 00 00 1E */	fctiwz f0, f0
/* 80BE5494  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BE5498  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80BE549C  38 E0 00 0A */	li r7, 0xa
/* 80BE54A0  4B 68 B0 A1 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE54A4  48 00 01 18 */	b lbl_80BE55BC
lbl_80BE54A8:
/* 80BE54A8  38 7D 0A CC */	addi r3, r29, 0xacc
/* 80BE54AC  38 A0 00 32 */	li r5, 0x32
/* 80BE54B0  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80BE54B4  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE54B8  54 00 08 3C */	slwi r0, r0, 1
/* 80BE54BC  38 DF 00 3C */	addi r6, r31, 0x3c
/* 80BE54C0  7C 06 02 AE */	lhax r0, r6, r0
/* 80BE54C4  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 80BE54C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE54CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BE54D0  3C 00 43 30 */	lis r0, 0x4330
/* 80BE54D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BE54D8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE54DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE54E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE54E4  FC 00 00 1E */	fctiwz f0, f0
/* 80BE54E8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BE54EC  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80BE54F0  38 E0 00 0A */	li r7, 0xa
/* 80BE54F4  4B 68 B0 4D */	bl cLib_addCalcAngleS__FPsssss
/* 80BE54F8  A8 1D 0A CE */	lha r0, 0xace(r29)
/* 80BE54FC  2C 00 E0 00 */	cmpwi r0, -8192
/* 80BE5500  40 81 00 14 */	ble lbl_80BE5514
/* 80BE5504  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80BE5508  41 81 00 0C */	bgt lbl_80BE5514
/* 80BE550C  3B C0 20 00 */	li r30, 0x2000
/* 80BE5510  48 00 00 58 */	b lbl_80BE5568
lbl_80BE5514:
/* 80BE5514  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80BE5518  40 81 00 14 */	ble lbl_80BE552C
/* 80BE551C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80BE5520  41 81 00 0C */	bgt lbl_80BE552C
/* 80BE5524  3B C0 60 00 */	li r30, 0x6000
/* 80BE5528  48 00 00 40 */	b lbl_80BE5568
lbl_80BE552C:
/* 80BE552C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80BE5530  40 81 00 0C */	ble lbl_80BE553C
/* 80BE5534  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 80BE5538  40 81 00 14 */	ble lbl_80BE554C
lbl_80BE553C:
/* 80BE553C  2C 00 A0 00 */	cmpwi r0, -24576
/* 80BE5540  40 80 00 14 */	bge lbl_80BE5554
/* 80BE5544  2C 00 80 01 */	cmpwi r0, -32767
/* 80BE5548  40 81 00 0C */	ble lbl_80BE5554
lbl_80BE554C:
/* 80BE554C  3B C0 A0 00 */	li r30, -24576
/* 80BE5550  48 00 00 18 */	b lbl_80BE5568
lbl_80BE5554:
/* 80BE5554  2C 00 A0 00 */	cmpwi r0, -24576
/* 80BE5558  40 81 00 10 */	ble lbl_80BE5568
/* 80BE555C  2C 00 E0 00 */	cmpwi r0, -8192
/* 80BE5560  41 81 00 08 */	bgt lbl_80BE5568
/* 80BE5564  3B C0 E0 00 */	li r30, -8192
lbl_80BE5568:
/* 80BE5568  38 7D 0A CE */	addi r3, r29, 0xace
/* 80BE556C  7F C4 F3 78 */	mr r4, r30
/* 80BE5570  38 A0 00 32 */	li r5, 0x32
/* 80BE5574  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80BE5578  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE557C  54 00 08 3C */	slwi r0, r0, 1
/* 80BE5580  38 DF 00 3C */	addi r6, r31, 0x3c
/* 80BE5584  7C 06 02 AE */	lhax r0, r6, r0
/* 80BE5588  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 80BE558C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5590  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BE5594  3C 00 43 30 */	lis r0, 0x4330
/* 80BE5598  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BE559C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE55A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE55A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE55A8  FC 00 00 1E */	fctiwz f0, f0
/* 80BE55AC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BE55B0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80BE55B4  38 E0 00 0A */	li r7, 0xa
/* 80BE55B8  4B 68 AF 89 */	bl cLib_addCalcAngleS__FPsssss
lbl_80BE55BC:
/* 80BE55BC  A8 7D 0A CE */	lha r3, 0xace(r29)
/* 80BE55C0  A8 1D 0A CC */	lha r0, 0xacc(r29)
/* 80BE55C4  7C 03 02 14 */	add r0, r3, r0
/* 80BE55C8  B0 1D 0A CE */	sth r0, 0xace(r29)
/* 80BE55CC  A8 7D 0A CC */	lha r3, 0xacc(r29)
/* 80BE55D0  7C 60 07 35 */	extsh. r0, r3
/* 80BE55D4  41 82 00 F8 */	beq lbl_80BE56CC
/* 80BE55D8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80BE55DC  C8 5F 00 B8 */	lfd f2, 0xb8(r31)
/* 80BE55E0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80BE55E4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BE55E8  3C 80 43 30 */	lis r4, 0x4330
/* 80BE55EC  90 81 00 28 */	stw r4, 0x28(r1)
/* 80BE55F0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE55F4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BE55F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BE55FC  8B 9D 0A D4 */	lbz r28, 0xad4(r29)
/* 80BE5600  57 80 08 3C */	slwi r0, r28, 1
/* 80BE5604  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80BE5608  7C 03 02 AE */	lhax r0, r3, r0
/* 80BE560C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE5610  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE5614  90 81 00 20 */	stw r4, 0x20(r1)
/* 80BE5618  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE561C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BE5620  EC 21 00 24 */	fdivs f1, f1, f0
/* 80BE5624  4B 77 CA 89 */	bl __cvt_fp2unsigned
/* 80BE5628  7C 7E 1B 78 */	mr r30, r3
/* 80BE562C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BE5630  7C 03 07 74 */	extsb r3, r0
/* 80BE5634  2C 03 00 04 */	cmpwi r3, 4
/* 80BE5638  40 82 00 4C */	bne lbl_80BE5684
/* 80BE563C  4B 44 7A 31 */	bl dComIfGp_getReverb__Fi
/* 80BE5640  7C 67 1B 78 */	mr r7, r3
/* 80BE5644  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080262@ha */
/* 80BE5648  38 03 02 62 */	addi r0, r3, 0x0262 /* 0x00080262@l */
/* 80BE564C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5650  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE5654  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE5658  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE565C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BE5660  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BE5664  7F C6 F3 78 */	mr r6, r30
/* 80BE5668  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80BE566C  FC 40 08 90 */	fmr f2, f1
/* 80BE5670  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80BE5674  FC 80 18 90 */	fmr f4, f3
/* 80BE5678  39 00 00 00 */	li r8, 0
/* 80BE567C  4B 6C 6E 91 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE5680  48 00 00 4C */	b lbl_80BE56CC
lbl_80BE5684:
/* 80BE5684  57 80 10 3A */	slwi r0, r28, 2
/* 80BE5688  38 9F 00 24 */	addi r4, r31, 0x24
/* 80BE568C  7F 84 00 2E */	lwzx r28, r4, r0
/* 80BE5690  4B 44 79 DD */	bl dComIfGp_getReverb__Fi
/* 80BE5694  7C 67 1B 78 */	mr r7, r3
/* 80BE5698  93 81 00 10 */	stw r28, 0x10(r1)
/* 80BE569C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE56A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE56A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE56A8  38 81 00 10 */	addi r4, r1, 0x10
/* 80BE56AC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BE56B0  7F C6 F3 78 */	mr r6, r30
/* 80BE56B4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80BE56B8  FC 40 08 90 */	fmr f2, f1
/* 80BE56BC  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80BE56C0  FC 80 18 90 */	fmr f4, f3
/* 80BE56C4  39 00 00 00 */	li r8, 0
/* 80BE56C8  4B 6C 6E 45 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BE56CC:
/* 80BE56CC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80BE56D0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80BE56D4  41 82 01 40 */	beq lbl_80BE5814
/* 80BE56D8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BE56DC  7C 03 07 74 */	extsb r3, r0
/* 80BE56E0  2C 03 00 04 */	cmpwi r3, 4
/* 80BE56E4  40 82 00 4C */	bne lbl_80BE5730
/* 80BE56E8  4B 44 79 85 */	bl dComIfGp_getReverb__Fi
/* 80BE56EC  7C 67 1B 78 */	mr r7, r3
/* 80BE56F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080265@ha */
/* 80BE56F4  38 03 02 65 */	addi r0, r3, 0x0265 /* 0x00080265@l */
/* 80BE56F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE56FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE5700  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE5704  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE5708  38 81 00 0C */	addi r4, r1, 0xc
/* 80BE570C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BE5710  38 C0 00 00 */	li r6, 0
/* 80BE5714  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80BE5718  FC 40 08 90 */	fmr f2, f1
/* 80BE571C  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80BE5720  FC 80 18 90 */	fmr f4, f3
/* 80BE5724  39 00 00 00 */	li r8, 0
/* 80BE5728  4B 6C 6D E5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE572C  48 00 00 E8 */	b lbl_80BE5814
lbl_80BE5730:
/* 80BE5730  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE5734  54 00 10 3A */	slwi r0, r0, 2
/* 80BE5738  38 9F 00 30 */	addi r4, r31, 0x30
/* 80BE573C  7F 84 00 2E */	lwzx r28, r4, r0
/* 80BE5740  3C 1C FF F8 */	addis r0, r28, 0xfff8
/* 80BE5744  28 00 02 64 */	cmplwi r0, 0x264
/* 80BE5748  40 82 00 90 */	bne lbl_80BE57D8
/* 80BE574C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80BE5750  28 03 00 00 */	cmplwi r3, 0
/* 80BE5754  41 82 00 20 */	beq lbl_80BE5774
/* 80BE5758  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80BE575C  D0 1D 0A D8 */	stfs f0, 0xad8(r29)
/* 80BE5760  C0 03 06 F8 */	lfs f0, 0x6f8(r3)
/* 80BE5764  D0 1D 0A DC */	stfs f0, 0xadc(r29)
/* 80BE5768  C0 03 06 FC */	lfs f0, 0x6fc(r3)
/* 80BE576C  D0 1D 0A E0 */	stfs f0, 0xae0(r29)
/* 80BE5770  48 00 00 1C */	b lbl_80BE578C
lbl_80BE5774:
/* 80BE5774  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80BE5778  D0 1D 0A D8 */	stfs f0, 0xad8(r29)
/* 80BE577C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80BE5780  D0 1D 0A DC */	stfs f0, 0xadc(r29)
/* 80BE5784  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80BE5788  D0 1D 0A E0 */	stfs f0, 0xae0(r29)
lbl_80BE578C:
/* 80BE578C  88 1D 0A D4 */	lbz r0, 0xad4(r29)
/* 80BE5790  54 00 10 3A */	slwi r0, r0, 2
/* 80BE5794  38 7F 00 30 */	addi r3, r31, 0x30
/* 80BE5798  7C 03 00 2E */	lwzx r0, r3, r0
/* 80BE579C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BE57A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE57A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE57A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE57AC  38 81 00 18 */	addi r4, r1, 0x18
/* 80BE57B0  38 BD 0A D8 */	addi r5, r29, 0xad8
/* 80BE57B4  38 C0 00 00 */	li r6, 0
/* 80BE57B8  38 E0 00 00 */	li r7, 0
/* 80BE57BC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80BE57C0  FC 40 08 90 */	fmr f2, f1
/* 80BE57C4  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80BE57C8  FC 80 18 90 */	fmr f4, f3
/* 80BE57CC  39 00 00 00 */	li r8, 0
/* 80BE57D0  4B 6C 6D 3D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BE57D4  48 00 00 40 */	b lbl_80BE5814
lbl_80BE57D8:
/* 80BE57D8  4B 44 78 95 */	bl dComIfGp_getReverb__Fi
/* 80BE57DC  7C 67 1B 78 */	mr r7, r3
/* 80BE57E0  93 81 00 08 */	stw r28, 8(r1)
/* 80BE57E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BE57E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BE57EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BE57F0  38 81 00 08 */	addi r4, r1, 8
/* 80BE57F4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BE57F8  38 C0 00 00 */	li r6, 0
/* 80BE57FC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80BE5800  FC 40 08 90 */	fmr f2, f1
/* 80BE5804  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80BE5808  FC 80 18 90 */	fmr f4, f3
/* 80BE580C  39 00 00 00 */	li r8, 0
/* 80BE5810  4B 6C 6C FD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BE5814:
/* 80BE5814  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BE5818  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BE581C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BE5820  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BE5824  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE5828  4B 77 C9 FD */	bl _restgpr_28
/* 80BE582C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BE5830  7C 08 03 A6 */	mtlr r0
/* 80BE5834  38 21 00 60 */	addi r1, r1, 0x60
/* 80BE5838  4E 80 00 20 */	blr 
