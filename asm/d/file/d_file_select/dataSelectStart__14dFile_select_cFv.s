lbl_80185508:
/* 80185508  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8018550C  7C 08 02 A6 */	mflr r0
/* 80185510  90 01 00 44 */	stw r0, 0x44(r1)
/* 80185514  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80185518  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8018551C  7C 7F 1B 78 */	mr r31, r3
/* 80185520  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80185524  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80185528  48 00 FD 79 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018552C  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80185530  7C 7F 22 14 */	add r3, r31, r4
/* 80185534  88 03 02 5B */	lbz r0, 0x25b(r3)
/* 80185538  28 00 00 00 */	cmplwi r0, 0
/* 8018553C  41 82 02 04 */	beq lbl_80185740
/* 80185540  7F E3 FB 78 */	mr r3, r31
/* 80185544  38 80 00 52 */	li r4, 0x52
/* 80185548  38 A0 00 00 */	li r5, 0
/* 8018554C  38 C0 00 00 */	li r6, 0
/* 80185550  48 00 7B 95 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 80185554  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185558  54 00 10 3A */	slwi r0, r0, 2
/* 8018555C  7F E3 FB 78 */	mr r3, r31
/* 80185560  3C 80 80 3C */	lis r4, SelOpenStartFrameTbl@ha /* 0x803BA86C@ha */
/* 80185564  38 84 A8 6C */	addi r4, r4, SelOpenStartFrameTbl@l /* 0x803BA86C@l */
/* 80185568  7C 84 00 2E */	lwzx r4, r4, r0
/* 8018556C  3C A0 80 3C */	lis r5, SelOpenEndFrameTbl@ha /* 0x803BA878@ha */
/* 80185570  38 A5 A8 78 */	addi r5, r5, SelOpenEndFrameTbl@l /* 0x803BA878@l */
/* 80185574  7C A5 00 2E */	lwzx r5, r5, r0
/* 80185578  48 00 04 1D */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 8018557C  7F E3 FB 78 */	mr r3, r31
/* 80185580  38 80 04 73 */	li r4, 0x473
/* 80185584  38 A0 04 7D */	li r5, 0x47d
/* 80185588  48 00 36 35 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018558C  7F E3 FB 78 */	mr r3, r31
/* 80185590  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80185594  38 A0 00 FF */	li r5, 0xff
/* 80185598  38 C0 00 00 */	li r6, 0
/* 8018559C  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 801855A0  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 801855A4  88 E7 00 08 */	lbz r7, 8(r7)
/* 801855A8  48 00 80 A9 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 801855AC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801855B0  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3030@ha */
/* 801855B4  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E5F3030@l */
/* 801855B8  38 A0 6B 65 */	li r5, 0x6b65
/* 801855BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801855C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801855C4  7D 89 03 A6 */	mtctr r12
/* 801855C8  4E 80 04 21 */	bctrl 
/* 801855CC  38 00 00 00 */	li r0, 0
/* 801855D0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801855D4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801855D8  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3031@ha */
/* 801855DC  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6E5F3031@l */
/* 801855E0  38 A0 6B 65 */	li r5, 0x6b65
/* 801855E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801855E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801855EC  7D 89 03 A6 */	mtctr r12
/* 801855F0  4E 80 04 21 */	bctrl 
/* 801855F4  38 00 00 00 */	li r0, 0
/* 801855F8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801855FC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80185600  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3032@ha */
/* 80185604  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6E5F3032@l */
/* 80185608  38 A0 6B 65 */	li r5, 0x6b65
/* 8018560C  81 83 00 00 */	lwz r12, 0(r3)
/* 80185610  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80185614  7D 89 03 A6 */	mtctr r12
/* 80185618  4E 80 04 21 */	bctrl 
/* 8018561C  38 00 00 00 */	li r0, 0
/* 80185620  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80185624  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80185628  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3030@ha */
/* 8018562C  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x655F3030@l */
/* 80185630  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 80185634  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 80185638  81 83 00 00 */	lwz r12, 0(r3)
/* 8018563C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80185640  7D 89 03 A6 */	mtctr r12
/* 80185644  4E 80 04 21 */	bctrl 
/* 80185648  38 00 00 00 */	li r0, 0
/* 8018564C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80185650  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80185654  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3031@ha */
/* 80185658  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x655F3031@l */
/* 8018565C  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 80185660  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 80185664  81 83 00 00 */	lwz r12, 0(r3)
/* 80185668  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018566C  7D 89 03 A6 */	mtctr r12
/* 80185670  4E 80 04 21 */	bctrl 
/* 80185674  38 00 00 00 */	li r0, 0
/* 80185678  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018567C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80185680  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3032@ha */
/* 80185684  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x655F3032@l */
/* 80185688  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 8018568C  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 80185690  81 83 00 00 */	lwz r12, 0(r3)
/* 80185694  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80185698  7D 89 03 A6 */	mtctr r12
/* 8018569C  4E 80 04 21 */	bctrl 
/* 801856A0  38 00 00 00 */	li r0, 0
/* 801856A4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801856A8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801856AC  3C 80 75 5F */	lis r4, 0x755F /* 0x755F3030@ha */
/* 801856B0  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x755F3030@l */
/* 801856B4  3C 80 00 66 */	lis r4, 0x0066 /* 0x0066756B@ha */
/* 801856B8  38 A4 75 6B */	addi r5, r4, 0x756B /* 0x0066756B@l */
/* 801856BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801856C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801856C4  7D 89 03 A6 */	mtctr r12
/* 801856C8  4E 80 04 21 */	bctrl 
/* 801856CC  38 00 00 00 */	li r0, 0
/* 801856D0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801856D4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801856D8  3C 80 75 5F */	lis r4, 0x755F /* 0x755F3031@ha */
/* 801856DC  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x755F3031@l */
/* 801856E0  3C 80 00 66 */	lis r4, 0x0066 /* 0x0066756B@ha */
/* 801856E4  38 A4 75 6B */	addi r5, r4, 0x756B /* 0x0066756B@l */
/* 801856E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801856EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801856F0  7D 89 03 A6 */	mtctr r12
/* 801856F4  4E 80 04 21 */	bctrl 
/* 801856F8  38 00 00 00 */	li r0, 0
/* 801856FC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80185700  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80185704  3C 80 75 5F */	lis r4, 0x755F /* 0x755F3032@ha */
/* 80185708  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x755F3032@l */
/* 8018570C  3C 80 00 66 */	lis r4, 0x0066 /* 0x0066756B@ha */
/* 80185710  38 A4 75 6B */	addi r5, r4, 0x756B /* 0x0066756B@l */
/* 80185714  81 83 00 00 */	lwz r12, 0(r3)
/* 80185718  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018571C  7D 89 03 A6 */	mtctr r12
/* 80185720  4E 80 04 21 */	bctrl 
/* 80185724  38 00 00 00 */	li r0, 0
/* 80185728  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8018572C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80185730  90 03 00 08 */	stw r0, 8(r3)
/* 80185734  38 00 00 07 */	li r0, 7
/* 80185738  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018573C  48 00 02 34 */	b lbl_80185970
lbl_80185740:
/* 80185740  88 03 02 58 */	lbz r0, 0x258(r3)
/* 80185744  28 00 00 00 */	cmplwi r0, 0
/* 80185748  41 82 01 48 */	beq lbl_80185890
/* 8018574C  38 00 00 80 */	li r0, 0x80
/* 80185750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80185754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80185758  98 03 0F 19 */	stb r0, 0xf19(r3)
/* 8018575C  98 83 0F 18 */	stb r4, 0xf18(r3)
/* 80185760  38 00 00 A7 */	li r0, 0xa7
/* 80185764  90 01 00 0C */	stw r0, 0xc(r1)
/* 80185768  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018576C  38 81 00 0C */	addi r4, r1, 0xc
/* 80185770  38 A0 00 00 */	li r5, 0
/* 80185774  38 C0 00 00 */	li r6, 0
/* 80185778  38 E0 00 00 */	li r7, 0
/* 8018577C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80185780  FC 40 08 90 */	fmr f2, f1
/* 80185784  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80185788  FC 80 18 90 */	fmr f4, f3
/* 8018578C  39 00 00 00 */	li r8, 0
/* 80185790  48 12 61 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80185794  7F E3 FB 78 */	mr r3, r31
/* 80185798  38 80 03 85 */	li r4, 0x385
/* 8018579C  38 A0 00 01 */	li r5, 1
/* 801857A0  38 C0 00 00 */	li r6, 0
/* 801857A4  48 00 79 41 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 801857A8  7F E3 FB 78 */	mr r3, r31
/* 801857AC  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 801857B0  C0 42 9F 48 */	lfs f2, lit_4778(r2)
/* 801857B4  48 00 A6 B1 */	bl fileRecScaleAnmInitSet2__14dFile_select_cFff
/* 801857B8  7F E3 FB 78 */	mr r3, r31
/* 801857BC  38 80 0D 1F */	li r4, 0xd1f
/* 801857C0  38 A0 0D 29 */	li r5, 0xd29
/* 801857C4  48 00 A8 B1 */	bl nameMoveAnmInitSet__14dFile_select_cFii
/* 801857C8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801857CC  54 00 10 3A */	slwi r0, r0, 2
/* 801857D0  7C 7F 02 14 */	add r3, r31, r0
/* 801857D4  80 63 01 64 */	lwz r3, 0x164(r3)
/* 801857D8  38 80 00 00 */	li r4, 0
/* 801857DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801857E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801857E4  7D 89 03 A6 */	mtctr r12
/* 801857E8  4E 80 04 21 */	bctrl 
/* 801857EC  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801857F0  54 00 10 3A */	slwi r0, r0, 2
/* 801857F4  7C 7F 02 14 */	add r3, r31, r0
/* 801857F8  80 63 01 70 */	lwz r3, 0x170(r3)
/* 801857FC  38 80 00 00 */	li r4, 0
/* 80185800  81 83 00 00 */	lwz r12, 0(r3)
/* 80185804  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80185808  7D 89 03 A6 */	mtctr r12
/* 8018580C  4E 80 04 21 */	bctrl 
/* 80185810  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185814  54 00 10 3A */	slwi r0, r0, 2
/* 80185818  7C 7F 02 14 */	add r3, r31, r0
/* 8018581C  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80185820  38 80 00 00 */	li r4, 0
/* 80185824  81 83 00 00 */	lwz r12, 0(r3)
/* 80185828  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018582C  7D 89 03 A6 */	mtctr r12
/* 80185830  4E 80 04 21 */	bctrl 
/* 80185834  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80185838  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8018583C  38 80 03 82 */	li r4, 0x382
/* 80185840  38 A1 00 10 */	addi r5, r1, 0x10
/* 80185844  38 C0 00 00 */	li r6, 0
/* 80185848  48 09 6A 09 */	bl getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 8018584C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80185850  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80185854  38 7E 01 B4 */	addi r3, r30, 0x1b4
/* 80185858  38 81 00 10 */	addi r4, r1, 0x10
/* 8018585C  48 1E 32 D1 */	bl strcpy
/* 80185860  38 9E 01 B4 */	addi r4, r30, 0x1b4
/* 80185864  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80185868  38 63 03 1C */	addi r3, r3, 0x31c
/* 8018586C  48 1E 32 C1 */	bl strcpy
/* 80185870  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80185874  48 0C 8F 31 */	bl initial__7dName_cFv
/* 80185878  7F E3 FB 78 */	mr r3, r31
/* 8018587C  38 80 00 01 */	li r4, 1
/* 80185880  48 00 7A C5 */	bl modoruTxtChange__14dFile_select_cFUc
/* 80185884  38 00 00 06 */	li r0, 6
/* 80185888  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018588C  48 00 00 E4 */	b lbl_80185970
lbl_80185890:
/* 80185890  38 00 00 00 */	li r0, 0
/* 80185894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80185898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8018589C  98 03 0F 19 */	stb r0, 0xf19(r3)
/* 801858A0  38 00 00 6D */	li r0, 0x6d
/* 801858A4  90 01 00 08 */	stw r0, 8(r1)
/* 801858A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801858AC  38 81 00 08 */	addi r4, r1, 8
/* 801858B0  38 A0 00 00 */	li r5, 0
/* 801858B4  38 C0 00 00 */	li r6, 0
/* 801858B8  38 E0 00 00 */	li r7, 0
/* 801858BC  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 801858C0  FC 40 08 90 */	fmr f2, f1
/* 801858C4  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 801858C8  FC 80 18 90 */	fmr f4, f3
/* 801858CC  39 00 00 00 */	li r8, 0
/* 801858D0  48 12 60 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801858D4  38 00 00 01 */	li r0, 1
/* 801858D8  98 1F 02 67 */	stb r0, 0x267(r31)
/* 801858DC  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 801858E0  98 1F 02 66 */	stb r0, 0x266(r31)
/* 801858E4  7F E3 FB 78 */	mr r3, r31
/* 801858E8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801858EC  54 00 08 3C */	slwi r0, r0, 1
/* 801858F0  38 8D 81 40 */	la r4, msgTbl(r13) /* 804506C0-_SDA_BASE_ */
/* 801858F4  7C 84 02 2E */	lhzx r4, r4, r0
/* 801858F8  38 A0 00 01 */	li r5, 1
/* 801858FC  38 C0 00 00 */	li r6, 0
/* 80185900  48 00 77 E5 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 80185904  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185908  54 00 10 3A */	slwi r0, r0, 2
/* 8018590C  7F E3 FB 78 */	mr r3, r31
/* 80185910  3C 80 80 3C */	lis r4, SelOpenStartFrameTbl@ha /* 0x803BA86C@ha */
/* 80185914  38 84 A8 6C */	addi r4, r4, SelOpenStartFrameTbl@l /* 0x803BA86C@l */
/* 80185918  7C 84 00 2E */	lwzx r4, r4, r0
/* 8018591C  3C A0 80 3C */	lis r5, SelOpenEndFrameTbl@ha /* 0x803BA878@ha */
/* 80185920  38 A5 A8 78 */	addi r5, r5, SelOpenEndFrameTbl@l /* 0x803BA878@l */
/* 80185924  7C A5 00 2E */	lwzx r5, r5, r0
/* 80185928  48 00 00 6D */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 8018592C  7F E3 FB 78 */	mr r3, r31
/* 80185930  38 80 03 1F */	li r4, 0x31f
/* 80185934  38 A0 03 29 */	li r5, 0x329
/* 80185938  48 00 12 11 */	bl menuMoveAnmInitSet__14dFile_select_cFii
/* 8018593C  7F E3 FB 78 */	mr r3, r31
/* 80185940  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80185944  38 A0 00 FF */	li r5, 0xff
/* 80185948  38 C0 00 00 */	li r6, 0
/* 8018594C  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 80185950  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 80185954  88 E7 00 08 */	lbz r7, 8(r7)
/* 80185958  48 00 7C F9 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 8018595C  7F E3 FB 78 */	mr r3, r31
/* 80185960  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80185964  48 00 07 25 */	bl makeRecInfo__14dFile_select_cFUc
/* 80185968  38 00 00 05 */	li r0, 5
/* 8018596C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80185970:
/* 80185970  7F E3 FB 78 */	mr r3, r31
/* 80185974  38 80 00 01 */	li r4, 1
/* 80185978  48 00 7A 29 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018597C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80185980  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80185984  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80185988  7C 08 03 A6 */	mtlr r0
/* 8018598C  38 21 00 40 */	addi r1, r1, 0x40
/* 80185990  4E 80 00 20 */	blr 
