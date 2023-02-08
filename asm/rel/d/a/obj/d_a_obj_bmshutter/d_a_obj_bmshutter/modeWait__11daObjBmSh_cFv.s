lbl_80BBA394:
/* 80BBA394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BBA398  7C 08 02 A6 */	mflr r0
/* 80BBA39C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BBA3A0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BBA3A4  4B 7A 7E 39 */	bl _savegpr_29
/* 80BBA3A8  7C 7E 1B 78 */	mr r30, r3
/* 80BBA3AC  3C 80 80 BC */	lis r4, l_cull_box@ha /* 0x80BBA7B0@ha */
/* 80BBA3B0  3B E4 A7 B0 */	addi r31, r4, l_cull_box@l /* 0x80BBA7B0@l */
/* 80BBA3B4  4B FF FC 09 */	bl checkAnySw__11daObjBmSh_cFv
/* 80BBA3B8  7F C3 F3 78 */	mr r3, r30
/* 80BBA3BC  4B FF FB 79 */	bl checkSw__11daObjBmSh_cFv
/* 80BBA3C0  7C 7D 1B 78 */	mr r29, r3
/* 80BBA3C4  7F C3 F3 78 */	mr r3, r30
/* 80BBA3C8  4B FF FC 7D */	bl checkMySw__11daObjBmSh_cFv
/* 80BBA3CC  2C 03 00 00 */	cmpwi r3, 0
/* 80BBA3D0  41 82 00 B0 */	beq lbl_80BBA480
/* 80BBA3D4  2C 1D 00 00 */	cmpwi r29, 0
/* 80BBA3D8  40 82 00 A8 */	bne lbl_80BBA480
/* 80BBA3DC  88 1E 05 CD */	lbz r0, 0x5cd(r30)
/* 80BBA3E0  28 00 00 00 */	cmplwi r0, 0
/* 80BBA3E4  40 82 00 9C */	bne lbl_80BBA480
/* 80BBA3E8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BBA3EC  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80BBA3F0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BBA3F4  D0 3E 05 D0 */	stfs f1, 0x5d0(r30)
/* 80BBA3F8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BBA3FC  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80BBA400  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
/* 80BBA404  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA408  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA40C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BBA410  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BBA414  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BBA418  4B 78 C4 D1 */	bl PSMTXTrans
/* 80BBA41C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA424  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BBA428  4B 45 20 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BBA42C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA434  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 80BBA438  7C 85 23 78 */	mr r5, r4
/* 80BBA43C  4B 78 C9 31 */	bl PSMTXMultVec
/* 80BBA440  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D0@ha */
/* 80BBA444  38 03 00 D0 */	addi r0, r3, 0x00D0 /* 0x000800D0@l */
/* 80BBA448  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BBA44C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBA450  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBA454  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBA458  38 81 00 10 */	addi r4, r1, 0x10
/* 80BBA45C  38 BE 05 D0 */	addi r5, r30, 0x5d0
/* 80BBA460  38 C0 00 00 */	li r6, 0
/* 80BBA464  38 E0 00 00 */	li r7, 0
/* 80BBA468  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBA46C  FC 40 08 90 */	fmr f2, f1
/* 80BBA470  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80BBA474  FC 80 18 90 */	fmr f4, f3
/* 80BBA478  39 00 00 00 */	li r8, 0
/* 80BBA47C  4B 6F 15 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBA480:
/* 80BBA480  2C 1D 00 00 */	cmpwi r29, 0
/* 80BBA484  41 82 01 18 */	beq lbl_80BBA59C
/* 80BBA488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBA48C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBA490  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BBA494  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BBA498  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BBA49C  7C 05 07 74 */	extsb r5, r0
/* 80BBA4A0  4B 47 AD 61 */	bl onSwitch__10dSv_info_cFii
/* 80BBA4A4  38 00 00 01 */	li r0, 1
/* 80BBA4A8  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80BBA4AC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BBA4B0  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80BBA4B4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BBA4B8  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80BBA4BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BBA4C0  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80BBA4C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA4C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA4CC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BBA4D0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BBA4D4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BBA4D8  4B 78 C4 11 */	bl PSMTXTrans
/* 80BBA4DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA4E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA4E4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BBA4E8  4B 45 1F 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BBA4EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBA4F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBA4F4  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 80BBA4F8  7C 85 23 78 */	mr r5, r4
/* 80BBA4FC  4B 78 C8 71 */	bl PSMTXMultVec
/* 80BBA500  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BBA504  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 80BBA508  54 00 27 BF */	rlwinm. r0, r0, 4, 0x1e, 0x1f
/* 80BBA50C  40 82 00 48 */	bne lbl_80BBA554
/* 80BBA510  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011A@ha */
/* 80BBA514  38 03 01 1A */	addi r0, r3, 0x011A /* 0x0008011A@l */
/* 80BBA518  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BBA51C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBA520  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBA524  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBA528  38 81 00 0C */	addi r4, r1, 0xc
/* 80BBA52C  38 BE 05 D0 */	addi r5, r30, 0x5d0
/* 80BBA530  38 C0 00 00 */	li r6, 0
/* 80BBA534  38 E0 00 00 */	li r7, 0
/* 80BBA538  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBA53C  FC 40 08 90 */	fmr f2, f1
/* 80BBA540  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80BBA544  FC 80 18 90 */	fmr f4, f3
/* 80BBA548  39 00 00 00 */	li r8, 0
/* 80BBA54C  4B 6F 14 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BBA550  48 00 00 4C */	b lbl_80BBA59C
lbl_80BBA554:
/* 80BBA554  28 03 00 FF */	cmplwi r3, 0xff
/* 80BBA558  41 82 00 44 */	beq lbl_80BBA59C
/* 80BBA55C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D1@ha */
/* 80BBA560  38 03 00 D1 */	addi r0, r3, 0x00D1 /* 0x000800D1@l */
/* 80BBA564  90 01 00 08 */	stw r0, 8(r1)
/* 80BBA568  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBA56C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBA570  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBA574  38 81 00 08 */	addi r4, r1, 8
/* 80BBA578  38 BE 05 D0 */	addi r5, r30, 0x5d0
/* 80BBA57C  38 C0 00 00 */	li r6, 0
/* 80BBA580  38 E0 00 00 */	li r7, 0
/* 80BBA584  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BBA588  FC 40 08 90 */	fmr f2, f1
/* 80BBA58C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80BBA590  FC 80 18 90 */	fmr f4, f3
/* 80BBA594  39 00 00 00 */	li r8, 0
/* 80BBA598  4B 6F 13 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBA59C:
/* 80BBA59C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BBA5A0  4B 7A 7C 89 */	bl _restgpr_29
/* 80BBA5A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BBA5A8  7C 08 03 A6 */	mtlr r0
/* 80BBA5AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80BBA5B0  4E 80 00 20 */	blr 
