lbl_801DE824:
/* 801DE824  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801DE828  7C 08 02 A6 */	mflr r0
/* 801DE82C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DE830  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801DE834  7C 7F 1B 78 */	mr r31, r3
/* 801DE838  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801DE83C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801DE840  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801DE844  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801DE848  41 82 00 A4 */	beq lbl_801DE8EC
/* 801DE84C  88 7F 03 E3 */	lbz r3, 0x3e3(r31)
/* 801DE850  88 1F 03 E2 */	lbz r0, 0x3e2(r31)
/* 801DE854  7C 03 00 40 */	cmplw r3, r0
/* 801DE858  40 82 00 48 */	bne lbl_801DE8A0
/* 801DE85C  38 00 00 C3 */	li r0, 0xc3
/* 801DE860  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE864  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE868  38 81 00 14 */	addi r4, r1, 0x14
/* 801DE86C  38 A0 00 00 */	li r5, 0
/* 801DE870  38 C0 00 00 */	li r6, 0
/* 801DE874  38 E0 00 00 */	li r7, 0
/* 801DE878  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE87C  FC 40 08 90 */	fmr f2, f1
/* 801DE880  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE884  FC 80 18 90 */	fmr f4, f3
/* 801DE888  39 00 00 00 */	li r8, 0
/* 801DE88C  48 0C D0 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DE890  48 04 01 41 */	bl dMeter2Info_set2DVibration__Fv
/* 801DE894  38 00 00 07 */	li r0, 7
/* 801DE898  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DE89C  48 00 01 98 */	b lbl_801DEA34
lbl_801DE8A0:
/* 801DE8A0  38 00 00 05 */	li r0, 5
/* 801DE8A4  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DE8A8  38 00 00 C4 */	li r0, 0xc4
/* 801DE8AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DE8B0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE8B4  38 81 00 10 */	addi r4, r1, 0x10
/* 801DE8B8  38 A0 00 00 */	li r5, 0
/* 801DE8BC  38 C0 00 00 */	li r6, 0
/* 801DE8C0  38 E0 00 00 */	li r7, 0
/* 801DE8C4  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE8C8  FC 40 08 90 */	fmr f2, f1
/* 801DE8CC  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE8D0  FC 80 18 90 */	fmr f4, f3
/* 801DE8D4  39 00 00 00 */	li r8, 0
/* 801DE8D8  48 0C D0 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DE8DC  48 04 00 F5 */	bl dMeter2Info_set2DVibration__Fv
/* 801DE8E0  38 00 00 01 */	li r0, 1
/* 801DE8E4  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801DE8E8  48 00 01 4C */	b lbl_801DEA34
lbl_801DE8EC:
/* 801DE8EC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801DE8F0  41 82 00 A0 */	beq lbl_801DE990
/* 801DE8F4  88 1F 03 E3 */	lbz r0, 0x3e3(r31)
/* 801DE8F8  28 00 00 01 */	cmplwi r0, 1
/* 801DE8FC  41 81 00 48 */	bgt lbl_801DE944
/* 801DE900  38 00 00 07 */	li r0, 7
/* 801DE904  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DE908  38 00 00 C3 */	li r0, 0xc3
/* 801DE90C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DE910  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE914  38 81 00 0C */	addi r4, r1, 0xc
/* 801DE918  38 A0 00 00 */	li r5, 0
/* 801DE91C  38 C0 00 00 */	li r6, 0
/* 801DE920  38 E0 00 00 */	li r7, 0
/* 801DE924  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE928  FC 40 08 90 */	fmr f2, f1
/* 801DE92C  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE930  FC 80 18 90 */	fmr f4, f3
/* 801DE934  39 00 00 00 */	li r8, 0
/* 801DE938  48 0C D0 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DE93C  48 04 00 95 */	bl dMeter2Info_set2DVibration__Fv
/* 801DE940  48 00 00 F4 */	b lbl_801DEA34
lbl_801DE944:
/* 801DE944  38 00 00 05 */	li r0, 5
/* 801DE948  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DE94C  38 00 00 C4 */	li r0, 0xc4
/* 801DE950  90 01 00 08 */	stw r0, 8(r1)
/* 801DE954  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801DE958  38 81 00 08 */	addi r4, r1, 8
/* 801DE95C  38 A0 00 00 */	li r5, 0
/* 801DE960  38 C0 00 00 */	li r6, 0
/* 801DE964  38 E0 00 00 */	li r7, 0
/* 801DE968  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DE96C  FC 40 08 90 */	fmr f2, f1
/* 801DE970  C0 62 A9 00 */	lfs f3, lit_4056(r2)
/* 801DE974  FC 80 18 90 */	fmr f4, f3
/* 801DE978  39 00 00 00 */	li r8, 0
/* 801DE97C  48 0C D0 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801DE980  48 04 00 51 */	bl dMeter2Info_set2DVibration__Fv
/* 801DE984  38 00 00 00 */	li r0, 0
/* 801DE988  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801DE98C  48 00 00 A8 */	b lbl_801DEA34
lbl_801DE990:
/* 801DE990  88 7F 03 E2 */	lbz r3, 0x3e2(r31)
/* 801DE994  28 03 00 01 */	cmplwi r3, 1
/* 801DE998  40 81 00 9C */	ble lbl_801DEA34
/* 801DE99C  88 1F 03 E3 */	lbz r0, 0x3e3(r31)
/* 801DE9A0  7C 00 18 40 */	cmplw r0, r3
/* 801DE9A4  40 82 00 10 */	bne lbl_801DE9B4
/* 801DE9A8  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DE9AC  48 05 D6 65 */	bl dotAnimeMove__15dMsgScrnArrow_cFv
/* 801DE9B0  48 00 00 0C */	b lbl_801DE9BC
lbl_801DE9B4:
/* 801DE9B4  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DE9B8  48 05 D4 D9 */	bl arwAnimeMove__15dMsgScrnArrow_cFv
lbl_801DE9BC:
/* 801DE9BC  38 61 00 30 */	addi r3, r1, 0x30
/* 801DE9C0  48 07 4F 71 */	bl __ct__8CPaneMgrFv
/* 801DE9C4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801DE9C8  3C 80 79 61 */	lis r4, 0x7961 /* 0x79615F6E@ha */
/* 801DE9CC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x79615F6E@l */
/* 801DE9D0  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 801DE9D4  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 801DE9D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE9DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DE9E0  7D 89 03 A6 */	mtctr r12
/* 801DE9E4  4E 80 04 21 */	bctrl 
/* 801DE9E8  7C 65 1B 78 */	mr r5, r3
/* 801DE9EC  38 61 00 18 */	addi r3, r1, 0x18
/* 801DE9F0  38 81 00 30 */	addi r4, r1, 0x30
/* 801DE9F4  38 C0 00 00 */	li r6, 0
/* 801DE9F8  38 E0 00 00 */	li r7, 0
/* 801DE9FC  48 07 64 C1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801DEA00  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801DEA04  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801DEA08  90 61 00 24 */	stw r3, 0x24(r1)
/* 801DEA0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801DEA10  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801DEA14  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801DEA18  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DEA1C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801DEA20  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801DEA24  48 05 D3 D5 */	bl setPos__15dMsgScrnArrow_cFff
/* 801DEA28  38 61 00 30 */	addi r3, r1, 0x30
/* 801DEA2C  38 80 FF FF */	li r4, -1
/* 801DEA30  48 07 4F E9 */	bl __dt__8CPaneMgrFv
lbl_801DEA34:
/* 801DEA34  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801DEA38  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801DEA3C  7C 08 03 A6 */	mtlr r0
/* 801DEA40  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801DEA44  4E 80 00 20 */	blr 
