lbl_807D032C:
/* 807D032C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807D0330  7C 08 02 A6 */	mflr r0
/* 807D0334  90 01 01 24 */	stw r0, 0x124(r1)
/* 807D0338  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807D033C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807D0340  39 61 01 10 */	addi r11, r1, 0x110
/* 807D0344  4B B9 1E 89 */	bl _savegpr_25
/* 807D0348  7C 7F 1B 78 */	mr r31, r3
/* 807D034C  3C 80 80 7D */	lis r4, lit_3864@ha /* 0x807D2088@ha */
/* 807D0350  3B C4 20 88 */	addi r30, r4, lit_3864@l /* 0x807D2088@l */
/* 807D0354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D0358  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D035C  83 7C 5D AC */	lwz r27, 0x5dac(r28)
/* 807D0360  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 807D0364  7C 00 07 74 */	extsb r0, r0
/* 807D0368  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807D036C  7C 9C 02 14 */	add r4, r28, r0
/* 807D0370  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 807D0374  83 5C 5D B8 */	lwz r26, 0x5db8(r28)
/* 807D0378  A8 03 05 9E */	lha r0, 0x59e(r3)
/* 807D037C  28 00 00 17 */	cmplwi r0, 0x17
/* 807D0380  41 81 15 C4 */	bgt lbl_807D1944
/* 807D0384  3C 80 80 7D */	lis r4, lit_4896@ha /* 0x807D22B8@ha */
/* 807D0388  38 84 22 B8 */	addi r4, r4, lit_4896@l /* 0x807D22B8@l */
/* 807D038C  54 00 10 3A */	slwi r0, r0, 2
/* 807D0390  7C 04 00 2E */	lwzx r0, r4, r0
/* 807D0394  7C 09 03 A6 */	mtctr r0
/* 807D0398  4E 80 04 20 */	bctr 
lbl_807D039C:
/* 807D039C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 807D03A0  28 00 00 02 */	cmplwi r0, 2
/* 807D03A4  41 82 00 28 */	beq lbl_807D03CC
/* 807D03A8  38 80 00 02 */	li r4, 2
/* 807D03AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807D03B0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807D03B4  38 C0 00 00 */	li r6, 0
/* 807D03B8  4B 84 B5 51 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807D03BC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807D03C0  60 00 00 02 */	ori r0, r0, 2
/* 807D03C4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 807D03C8  48 00 16 6C */	b lbl_807D1A34
lbl_807D03CC:
/* 807D03CC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D03D0  4B 99 11 01 */	bl Stop__9dCamera_cFv
/* 807D03D4  38 00 00 02 */	li r0, 2
/* 807D03D8  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D03DC  38 00 00 00 */	li r0, 0
/* 807D03E0  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D03E4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807D03E8  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807D03EC  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D03F0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807D03F4  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 807D03F8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D03FC  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 807D0400  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0404  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D0408  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D040C  38 80 00 03 */	li r4, 3
/* 807D0410  4B 99 2B FD */	bl SetTrimSize__9dCamera_cFl
/* 807D0414  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D0418  38 00 00 03 */	li r0, 3
/* 807D041C  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807D0420  38 00 00 00 */	li r0, 0
/* 807D0424  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807D0428  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D042C  38 80 00 17 */	li r4, 0x17
/* 807D0430  38 A0 00 00 */	li r5, 0
/* 807D0434  38 C0 00 00 */	li r6, 0
/* 807D0438  38 E0 00 00 */	li r7, 0
/* 807D043C  48 00 1C 31 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807D0440:
/* 807D0440  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807D0444  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D0448  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D044C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D0450  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807D0454  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D0458  7F 63 DB 78 */	mr r3, r27
/* 807D045C  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D0460  38 A0 4E F8 */	li r5, 0x4ef8
/* 807D0464  38 C0 00 00 */	li r6, 0
/* 807D0468  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 807D046C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807D0470  7D 89 03 A6 */	mtctr r12
/* 807D0474  4E 80 04 21 */	bctrl 
/* 807D0478  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 807D047C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807D0480  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 807D0484  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807D0488  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D048C  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 807D0490  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807D0494  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 807D0498  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D049C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D04A0  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 807D04A4  4B 83 BF 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D04A8  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807D04AC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807D04B0  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 807D04B4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807D04B8  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 807D04BC  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807D04C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D04C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D04C8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 807D04CC  38 BF 05 A4 */	addi r5, r31, 0x5a4
/* 807D04D0  4B B7 68 9D */	bl PSMTXMultVec
/* 807D04D4  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 807D04D8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807D04DC  7C 65 1B 78 */	mr r5, r3
/* 807D04E0  4B B7 6B B1 */	bl PSVECAdd
/* 807D04E4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807D04E8  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D04EC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807D04F0  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D04F4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 807D04F8  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D04FC  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D0500  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807D0504  EC 01 00 2A */	fadds f0, f1, f0
/* 807D0508  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D050C  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0510  2C 00 00 14 */	cmpwi r0, 0x14
/* 807D0514  40 81 14 30 */	ble lbl_807D1944
/* 807D0518  38 00 00 03 */	li r0, 3
/* 807D051C  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D0520  38 00 00 00 */	li r0, 0
/* 807D0524  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D0528  48 00 14 1C */	b lbl_807D1944
lbl_807D052C:
/* 807D052C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807D0530  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807D0534  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 807D0538  C0 7F 05 F8 */	lfs f3, 0x5f8(r31)
/* 807D053C  4B A9 F5 01 */	bl cLib_addCalc2__FPffff
/* 807D0540  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807D0544  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D0548  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807D054C  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 807D0550  4B A9 F4 ED */	bl cLib_addCalc2__FPffff
/* 807D0554  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0558  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D055C  40 82 00 4C */	bne lbl_807D05A8
/* 807D0560  38 00 00 0A */	li r0, 0xa
/* 807D0564  B0 1F 05 96 */	sth r0, 0x596(r31)
/* 807D0568  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EB@ha */
/* 807D056C  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000800EB@l */
/* 807D0570  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D0574  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807D0578  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807D057C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D0580  38 81 00 14 */	addi r4, r1, 0x14
/* 807D0584  38 A0 00 00 */	li r5, 0
/* 807D0588  38 C0 00 00 */	li r6, 0
/* 807D058C  38 E0 00 00 */	li r7, 0
/* 807D0590  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D0594  FC 40 08 90 */	fmr f2, f1
/* 807D0598  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 807D059C  FC 80 18 90 */	fmr f4, f3
/* 807D05A0  39 00 00 00 */	li r8, 0
/* 807D05A4  4B AD B3 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807D05A8:
/* 807D05A8  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D05AC  2C 00 00 96 */	cmpwi r0, 0x96
/* 807D05B0  40 81 13 94 */	ble lbl_807D1944
/* 807D05B4  38 00 00 04 */	li r0, 4
/* 807D05B8  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D05BC  38 00 00 00 */	li r0, 0
/* 807D05C0  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D05C4  48 00 13 80 */	b lbl_807D1944
lbl_807D05C8:
/* 807D05C8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807D05CC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D05D0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D05D4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D05D8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D05DC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D05E0  7F 63 DB 78 */	mr r3, r27
/* 807D05E4  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D05E8  38 A0 6E 38 */	li r5, 0x6e38
/* 807D05EC  38 C0 00 00 */	li r6, 0
/* 807D05F0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 807D05F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807D05F8  7D 89 03 A6 */	mtctr r12
/* 807D05FC  4E 80 04 21 */	bctrl 
/* 807D0600  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 807D0604  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807D0608  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 807D060C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807D0610  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 807D0614  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 807D0618  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 807D061C  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 807D0620  4B A9 F4 1D */	bl cLib_addCalc2__FPffff
/* 807D0624  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D0628  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D062C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 807D0630  4B 83 BD AD */	bl mDoMtx_YrotS__FPA4_fs
/* 807D0634  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807D0638  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807D063C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807D0640  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807D0644  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807D0648  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807D064C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D0650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D0654  38 81 00 D8 */	addi r4, r1, 0xd8
/* 807D0658  38 BF 05 A4 */	addi r5, r31, 0x5a4
/* 807D065C  4B B7 67 11 */	bl PSMTXMultVec
/* 807D0660  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 807D0664  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807D0668  7C 65 1B 78 */	mr r5, r3
/* 807D066C  4B B7 6A 25 */	bl PSVECAdd
/* 807D0670  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807D0674  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D0678  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807D067C  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0680  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807D0684  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D0688  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D068C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807D0690  EC 01 00 2A */	fadds f0, f1, f0
/* 807D0694  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0698  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D069C  2C 00 00 32 */	cmpwi r0, 0x32
/* 807D06A0  41 82 00 14 */	beq lbl_807D06B4
/* 807D06A4  2C 00 00 46 */	cmpwi r0, 0x46
/* 807D06A8  41 82 00 0C */	beq lbl_807D06B4
/* 807D06AC  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807D06B0  40 82 00 14 */	bne lbl_807D06C4
lbl_807D06B4:
/* 807D06B4  3C 60 80 7D */	lis r3, s_s1drop_sub__FPvPv@ha /* 0x807CF9D0@ha */
/* 807D06B8  38 63 F9 D0 */	addi r3, r3, s_s1drop_sub__FPvPv@l /* 0x807CF9D0@l */
/* 807D06BC  7F E4 FB 78 */	mr r4, r31
/* 807D06C0  4B 85 0C 79 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_807D06C4:
/* 807D06C4  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D06C8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 807D06CC  40 82 00 0C */	bne lbl_807D06D8
/* 807D06D0  38 00 00 14 */	li r0, 0x14
/* 807D06D4  B0 1F 05 96 */	sth r0, 0x596(r31)
lbl_807D06D8:
/* 807D06D8  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D06DC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 807D06E0  40 82 12 64 */	bne lbl_807D1944
/* 807D06E4  38 00 00 05 */	li r0, 5
/* 807D06E8  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D06EC  38 00 00 00 */	li r0, 0
/* 807D06F0  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D06F4  3C 60 80 7D */	lis r3, s_s1riv_sub__FPvPv@ha /* 0x807CFA74@ha */
/* 807D06F8  38 63 FA 74 */	addi r3, r3, s_s1riv_sub__FPvPv@l /* 0x807CFA74@l */
/* 807D06FC  7F E4 FB 78 */	mr r4, r31
/* 807D0700  4B 85 0C 39 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D0704  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807D0708  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D070C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 807D0710  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0714  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807D0718  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D071C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807D0720  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D0724  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807D0728  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D072C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807D0730  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D0734  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807D0738  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D073C  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807D0740  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D0744  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 807D0748  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 807D074C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 807D0750  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 807D0754  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 807D0758  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 807D075C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807D0760  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D0764  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 807D0768  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D076C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0770  FC 00 02 10 */	fabs f0, f0
/* 807D0774  FC 00 00 18 */	frsp f0, f0
/* 807D0778  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 807D077C  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 807D0780  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D0784  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0788  FC 00 02 10 */	fabs f0, f0
/* 807D078C  FC 00 00 18 */	frsp f0, f0
/* 807D0790  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 807D0794  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807D0798  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D079C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D07A0  FC 00 02 10 */	fabs f0, f0
/* 807D07A4  FC 00 00 18 */	frsp f0, f0
/* 807D07A8  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 807D07AC  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807D07B0  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D07B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D07B8  FC 00 02 10 */	fabs f0, f0
/* 807D07BC  FC 00 00 18 */	frsp f0, f0
/* 807D07C0  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 807D07C4  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807D07C8  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D07CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D07D0  FC 00 02 10 */	fabs f0, f0
/* 807D07D4  FC 00 00 18 */	frsp f0, f0
/* 807D07D8  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 807D07DC  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 807D07E0  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D07E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D07E8  FC 00 02 10 */	fabs f0, f0
/* 807D07EC  FC 00 00 18 */	frsp f0, f0
/* 807D07F0  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 807D07F4  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D07F8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807D07FC  EC 01 00 2A */	fadds f0, f1, f0
/* 807D0800  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0804  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0808  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D080C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807D0810  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807D0814  48 00 11 30 */	b lbl_807D1944
lbl_807D0818:
/* 807D0818  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807D081C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D0820  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0824  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D0828  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D082C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D0830  7F 63 DB 78 */	mr r3, r27
/* 807D0834  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D0838  38 A0 6E 38 */	li r5, 0x6e38
/* 807D083C  38 C0 00 00 */	li r6, 0
/* 807D0840  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 807D0844  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807D0848  7D 89 03 A6 */	mtctr r12
/* 807D084C  4E 80 04 21 */	bctrl 
/* 807D0850  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0854  2C 00 00 26 */	cmpwi r0, 0x26
/* 807D0858  40 82 00 3C */	bne lbl_807D0894
/* 807D085C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807D0860  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 807D0864  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807D0868  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807D086C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 807D0870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D0874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D0878  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807D087C  38 80 00 05 */	li r4, 5
/* 807D0880  38 A0 00 01 */	li r5, 1
/* 807D0884  38 C1 00 90 */	addi r6, r1, 0x90
/* 807D0888  4B 89 F1 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 807D088C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807D0890  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
lbl_807D0894:
/* 807D0894  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0898  2C 00 00 50 */	cmpwi r0, 0x50
/* 807D089C  41 81 00 1C */	bgt lbl_807D08B8
/* 807D08A0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807D08A4  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807D08A8  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 807D08AC  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 807D08B0  4B A9 F1 8D */	bl cLib_addCalc2__FPffff
/* 807D08B4  48 00 00 D4 */	b lbl_807D0988
lbl_807D08B8:
/* 807D08B8  C3 FE 00 84 */	lfs f31, 0x84(r30)
/* 807D08BC  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 807D08C0  2C 00 00 06 */	cmpwi r0, 6
/* 807D08C4  40 82 00 08 */	bne lbl_807D08CC
/* 807D08C8  C3 FE 00 E4 */	lfs f31, 0xe4(r30)
lbl_807D08CC:
/* 807D08CC  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 807D08D0  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807D08D4  FC 40 F8 90 */	fmr f2, f31
/* 807D08D8  C0 7F 05 E0 */	lfs f3, 0x5e0(r31)
/* 807D08DC  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D08E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D08E4  4B A9 F1 59 */	bl cLib_addCalc2__FPffff
/* 807D08E8  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807D08EC  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807D08F0  FC 40 F8 90 */	fmr f2, f31
/* 807D08F4  C0 7F 05 E4 */	lfs f3, 0x5e4(r31)
/* 807D08F8  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D08FC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D0900  4B A9 F1 3D */	bl cLib_addCalc2__FPffff
/* 807D0904  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807D0908  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 807D090C  FC 40 F8 90 */	fmr f2, f31
/* 807D0910  C0 7F 05 E8 */	lfs f3, 0x5e8(r31)
/* 807D0914  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D0918  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D091C  4B A9 F1 21 */	bl cLib_addCalc2__FPffff
/* 807D0920  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 807D0924  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 807D0928  FC 40 F8 90 */	fmr f2, f31
/* 807D092C  C0 7F 05 D4 */	lfs f3, 0x5d4(r31)
/* 807D0930  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D0934  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D0938  4B A9 F1 05 */	bl cLib_addCalc2__FPffff
/* 807D093C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 807D0940  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 807D0944  FC 40 F8 90 */	fmr f2, f31
/* 807D0948  C0 7F 05 D8 */	lfs f3, 0x5d8(r31)
/* 807D094C  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D0950  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D0954  4B A9 F0 E9 */	bl cLib_addCalc2__FPffff
/* 807D0958  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807D095C  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807D0960  FC 40 F8 90 */	fmr f2, f31
/* 807D0964  C0 7F 05 DC */	lfs f3, 0x5dc(r31)
/* 807D0968  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D096C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D0970  4B A9 F0 CD */	bl cLib_addCalc2__FPffff
/* 807D0974  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807D0978  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 807D097C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807D0980  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 807D0984  4B A9 F0 B9 */	bl cLib_addCalc2__FPffff
lbl_807D0988:
/* 807D0988  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D098C  2C 00 00 96 */	cmpwi r0, 0x96
/* 807D0990  40 82 01 5C */	bne lbl_807D0AEC
/* 807D0994  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807D0998  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D099C  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 807D09A0  D0 5F 05 B4 */	stfs f2, 0x5b4(r31)
/* 807D09A4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 807D09A8  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D09AC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807D09B0  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D09B4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 807D09B8  D0 3F 05 A8 */	stfs f1, 0x5a8(r31)
/* 807D09BC  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807D09C0  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D09C4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807D09C8  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D09CC  D0 5F 05 CC */	stfs f2, 0x5cc(r31)
/* 807D09D0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 807D09D4  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 807D09D8  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807D09DC  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 807D09E0  D0 3F 05 C0 */	stfs f1, 0x5c0(r31)
/* 807D09E4  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 807D09E8  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D09EC  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 807D09F0  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D09F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D09F8  FC 00 02 10 */	fabs f0, f0
/* 807D09FC  FC 00 00 18 */	frsp f0, f0
/* 807D0A00  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 807D0A04  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A08  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 807D0A0C  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 807D0A10  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D0A14  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0A18  FC 00 02 10 */	fabs f0, f0
/* 807D0A1C  FC 00 00 18 */	frsp f0, f0
/* 807D0A20  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A24  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 807D0A28  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807D0A2C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D0A30  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0A34  FC 00 02 10 */	fabs f0, f0
/* 807D0A38  FC 00 00 18 */	frsp f0, f0
/* 807D0A3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A40  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 807D0A44  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807D0A48  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D0A4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0A50  FC 00 02 10 */	fabs f0, f0
/* 807D0A54  FC 00 00 18 */	frsp f0, f0
/* 807D0A58  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A5C  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 807D0A60  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807D0A64  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D0A68  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0A6C  FC 00 02 10 */	fabs f0, f0
/* 807D0A70  FC 00 00 18 */	frsp f0, f0
/* 807D0A74  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A78  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 807D0A7C  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 807D0A80  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D0A84  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0A88  FC 00 02 10 */	fabs f0, f0
/* 807D0A8C  FC 00 00 18 */	frsp f0, f0
/* 807D0A90  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0A94  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 807D0A98  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 807D0A9C  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D0AA0  3C 60 80 7D */	lis r3, master_ns@ha /* 0x807D2378@ha */
/* 807D0AA4  38 83 23 78 */	addi r4, r3, master_ns@l /* 0x807D2378@l */
/* 807D0AA8  80 64 00 04 */	lwz r3, 4(r4)
/* 807D0AAC  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 807D0AB0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807D0AB4  80 64 00 04 */	lwz r3, 4(r4)
/* 807D0AB8  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 807D0ABC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807D0AC0  80 64 00 04 */	lwz r3, 4(r4)
/* 807D0AC4  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807D0AC8  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 807D0ACC  EC 01 00 2A */	fadds f0, f1, f0
/* 807D0AD0  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 807D0AD4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 807D0AD8  80 64 00 04 */	lwz r3, 4(r4)
/* 807D0ADC  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 807D0AE0  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807D0AE4  80 64 00 04 */	lwz r3, 4(r4)
/* 807D0AE8  D0 03 05 30 */	stfs f0, 0x530(r3)
lbl_807D0AEC:
/* 807D0AEC  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0AF0  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 807D0AF4  40 82 01 64 */	bne lbl_807D0C58
/* 807D0AF8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807D0AFC  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D0B00  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 807D0B04  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0B08  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 807D0B0C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D0B10  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 807D0B14  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D0B18  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807D0B1C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D0B20  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807D0B24  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D0B28  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807D0B2C  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D0B30  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 807D0B34  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D0B38  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 807D0B3C  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 807D0B40  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 807D0B44  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 807D0B48  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 807D0B4C  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 807D0B50  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 807D0B54  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D0B58  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 807D0B5C  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D0B60  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0B64  FC 00 02 10 */	fabs f0, f0
/* 807D0B68  FC 00 00 18 */	frsp f0, f0
/* 807D0B6C  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 807D0B70  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0B74  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 807D0B78  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 807D0B7C  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D0B80  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0B84  FC 00 02 10 */	fabs f0, f0
/* 807D0B88  FC 00 00 18 */	frsp f0, f0
/* 807D0B8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0B90  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 807D0B94  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807D0B98  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D0B9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0BA0  FC 00 02 10 */	fabs f0, f0
/* 807D0BA4  FC 00 00 18 */	frsp f0, f0
/* 807D0BA8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0BAC  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 807D0BB0  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807D0BB4  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D0BB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0BBC  FC 00 02 10 */	fabs f0, f0
/* 807D0BC0  FC 00 00 18 */	frsp f0, f0
/* 807D0BC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0BC8  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 807D0BCC  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807D0BD0  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D0BD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0BD8  FC 00 02 10 */	fabs f0, f0
/* 807D0BDC  FC 00 00 18 */	frsp f0, f0
/* 807D0BE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0BE4  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 807D0BE8  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 807D0BEC  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D0BF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0BF4  FC 00 02 10 */	fabs f0, f0
/* 807D0BF8  FC 00 00 18 */	frsp f0, f0
/* 807D0BFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0C00  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 807D0C04  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 807D0C08  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D0C0C  3C 60 80 7D */	lis r3, master_ns@ha /* 0x807D2378@ha */
/* 807D0C10  38 83 23 78 */	addi r4, r3, master_ns@l /* 0x807D2378@l */
/* 807D0C14  80 64 00 08 */	lwz r3, 8(r4)
/* 807D0C18  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 807D0C1C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807D0C20  80 64 00 08 */	lwz r3, 8(r4)
/* 807D0C24  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 807D0C28  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807D0C2C  80 64 00 08 */	lwz r3, 8(r4)
/* 807D0C30  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807D0C34  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 807D0C38  EC 01 00 2A */	fadds f0, f1, f0
/* 807D0C3C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 807D0C40  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 807D0C44  80 64 00 08 */	lwz r3, 8(r4)
/* 807D0C48  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 807D0C4C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807D0C50  80 64 00 08 */	lwz r3, 8(r4)
/* 807D0C54  D0 03 05 30 */	stfs f0, 0x530(r3)
lbl_807D0C58:
/* 807D0C58  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0C5C  2C 00 01 22 */	cmpwi r0, 0x122
/* 807D0C60  40 82 00 54 */	bne lbl_807D0CB4
/* 807D0C64  C0 BE 01 54 */	lfs f5, 0x154(r30)
/* 807D0C68  D0 BF 05 B0 */	stfs f5, 0x5b0(r31)
/* 807D0C6C  C0 9E 01 58 */	lfs f4, 0x158(r30)
/* 807D0C70  D0 9F 05 B4 */	stfs f4, 0x5b4(r31)
/* 807D0C74  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 807D0C78  D0 7F 05 B8 */	stfs f3, 0x5b8(r31)
/* 807D0C7C  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 807D0C80  D0 5F 05 A4 */	stfs f2, 0x5a4(r31)
/* 807D0C84  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 807D0C88  D0 3F 05 A8 */	stfs f1, 0x5a8(r31)
/* 807D0C8C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 807D0C90  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D0C94  D0 BF 05 C8 */	stfs f5, 0x5c8(r31)
/* 807D0C98  D0 9F 05 CC */	stfs f4, 0x5cc(r31)
/* 807D0C9C  D0 7F 05 D0 */	stfs f3, 0x5d0(r31)
/* 807D0CA0  D0 5F 05 BC */	stfs f2, 0x5bc(r31)
/* 807D0CA4  D0 3F 05 C0 */	stfs f1, 0x5c0(r31)
/* 807D0CA8  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D0CAC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0CB0  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
lbl_807D0CB4:
/* 807D0CB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D0CB8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D0CBC  A0 1A 4F A4 */	lhz r0, 0x4fa4(r26)
/* 807D0CC0  60 00 00 0F */	ori r0, r0, 0xf
/* 807D0CC4  B0 1A 4F A4 */	sth r0, 0x4fa4(r26)
/* 807D0CC8  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 807D0CCC  2C 00 00 05 */	cmpwi r0, 5
/* 807D0CD0  40 82 01 80 */	bne lbl_807D0E50
/* 807D0CD4  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0CD8  2C 00 01 36 */	cmpwi r0, 0x136
/* 807D0CDC  41 80 00 34 */	blt lbl_807D0D10
/* 807D0CE0  40 82 00 1C */	bne lbl_807D0CFC
/* 807D0CE4  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0CE8  7F E4 FB 78 */	mr r4, r31
/* 807D0CEC  38 A0 00 7F */	li r5, 0x7f
/* 807D0CF0  38 C0 00 00 */	li r6, 0
/* 807D0CF4  38 E0 00 00 */	li r7, 0
/* 807D0CF8  4B A7 92 99 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_807D0CFC:
/* 807D0CFC  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0D00  7F E4 FB 78 */	mr r4, r31
/* 807D0D04  38 A0 00 00 */	li r5, 0
/* 807D0D08  38 C0 00 00 */	li r6, 0
/* 807D0D0C  4B A7 95 CD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_807D0D10:
/* 807D0D10  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0D14  4B A7 98 2D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 807D0D18  28 03 13 A5 */	cmplwi r3, 0x13a5
/* 807D0D1C  41 82 00 14 */	beq lbl_807D0D30
/* 807D0D20  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0D24  4B A7 98 1D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 807D0D28  28 03 13 E3 */	cmplwi r3, 0x13e3
/* 807D0D2C  40 82 0C 18 */	bne lbl_807D1944
lbl_807D0D30:
/* 807D0D30  38 00 00 06 */	li r0, 6
/* 807D0D34  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D0D38  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 807D0D3C  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D0D40  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807D0D44  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D0D48  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 807D0D4C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D0D50  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 807D0D54  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D0D58  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 807D0D5C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D0D60  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 807D0D64  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D0D68  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 807D0D6C  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D0D70  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 807D0D74  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D0D78  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 807D0D7C  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 807D0D80  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 807D0D84  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 807D0D88  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 807D0D8C  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 807D0D90  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 807D0D94  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D0D98  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 807D0D9C  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D0DA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0DA4  FC 00 02 10 */	fabs f0, f0
/* 807D0DA8  FC 00 00 18 */	frsp f0, f0
/* 807D0DAC  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 807D0DB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0DB4  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
/* 807D0DB8  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 807D0DBC  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D0DC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0DC4  FC 00 02 10 */	fabs f0, f0
/* 807D0DC8  FC 00 00 18 */	frsp f0, f0
/* 807D0DCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0DD0  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 807D0DD4  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807D0DD8  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D0DDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0DE0  FC 00 02 10 */	fabs f0, f0
/* 807D0DE4  FC 00 00 18 */	frsp f0, f0
/* 807D0DE8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0DEC  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 807D0DF0  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807D0DF4  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D0DF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0DFC  FC 00 02 10 */	fabs f0, f0
/* 807D0E00  FC 00 00 18 */	frsp f0, f0
/* 807D0E04  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0E08  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 807D0E0C  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807D0E10  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D0E14  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0E18  FC 00 02 10 */	fabs f0, f0
/* 807D0E1C  FC 00 00 18 */	frsp f0, f0
/* 807D0E20  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0E24  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 807D0E28  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 807D0E2C  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D0E30  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0E34  FC 00 02 10 */	fabs f0, f0
/* 807D0E38  FC 00 00 18 */	frsp f0, f0
/* 807D0E3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807D0E40  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 807D0E44  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 807D0E48  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D0E4C  48 00 0A F8 */	b lbl_807D1944
lbl_807D0E50:
/* 807D0E50  2C 00 00 06 */	cmpwi r0, 6
/* 807D0E54  40 82 0A F0 */	bne lbl_807D1944
/* 807D0E58  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0E5C  7F E4 FB 78 */	mr r4, r31
/* 807D0E60  38 A0 00 00 */	li r5, 0
/* 807D0E64  38 C0 00 00 */	li r6, 0
/* 807D0E68  4B A7 94 71 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 807D0E6C  2C 03 00 00 */	cmpwi r3, 0
/* 807D0E70  41 82 0A D4 */	beq lbl_807D1944
/* 807D0E74  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D0E78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807D0E7C  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D0E80  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807D0E84  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D0E88  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807D0E8C  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D0E90  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807D0E94  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D0E98  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807D0E9C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D0EA0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807D0EA4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D0EA8  38 81 00 84 */	addi r4, r1, 0x84
/* 807D0EAC  38 A1 00 78 */	addi r5, r1, 0x78
/* 807D0EB0  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 807D0EB4  38 C0 00 00 */	li r6, 0
/* 807D0EB8  4B 9A FC E9 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 807D0EBC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D0EC0  4B 99 05 ED */	bl Start__9dCamera_cFv
/* 807D0EC4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D0EC8  38 80 00 00 */	li r4, 0
/* 807D0ECC  4B 99 21 41 */	bl SetTrimSize__9dCamera_cFl
/* 807D0ED0  38 7A 4E C8 */	addi r3, r26, 0x4ec8
/* 807D0ED4  4B 87 15 95 */	bl reset__14dEvt_control_cFv
/* 807D0ED8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D0EDC  38 00 00 02 */	li r0, 2
/* 807D0EE0  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807D0EE4  38 00 00 01 */	li r0, 1
/* 807D0EE8  90 03 06 14 */	stw r0, 0x614(r3)
/* 807D0EEC  7F E3 FB 78 */	mr r3, r31
/* 807D0EF0  4B 84 8D 8D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807D0EF4  3C 60 80 7D */	lis r3, s_s1fight_sub__FPvPv@ha /* 0x807CFB78@ha */
/* 807D0EF8  38 63 FB 78 */	addi r3, r3, s_s1fight_sub__FPvPv@l /* 0x807CFB78@l */
/* 807D0EFC  7F E4 FB 78 */	mr r4, r31
/* 807D0F00  4B 85 04 39 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D0F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D0F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D0F0C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807D0F10  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807D0F14  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807D0F18  A0 84 01 2E */	lhz r4, 0x12e(r4)
/* 807D0F1C  4B 86 3A 71 */	bl onEventBit__11dSv_event_cFUs
/* 807D0F20  48 00 0A 24 */	b lbl_807D1944
lbl_807D0F24:
/* 807D0F24  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 807D0F28  28 00 00 02 */	cmplwi r0, 2
/* 807D0F2C  41 82 00 28 */	beq lbl_807D0F54
/* 807D0F30  38 80 00 02 */	li r4, 2
/* 807D0F34  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807D0F38  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807D0F3C  38 C0 00 00 */	li r6, 0
/* 807D0F40  4B 84 A9 C9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807D0F44  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807D0F48  60 00 00 02 */	ori r0, r0, 2
/* 807D0F4C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 807D0F50  48 00 0A E4 */	b lbl_807D1A34
lbl_807D0F54:
/* 807D0F54  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D0F58  4B 99 05 79 */	bl Stop__9dCamera_cFv
/* 807D0F5C  38 00 00 0B */	li r0, 0xb
/* 807D0F60  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D0F64  38 00 00 00 */	li r0, 0
/* 807D0F68  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D0F6C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807D0F70  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807D0F74  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D0F78  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807D0F7C  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 807D0F80  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D0F84  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 807D0F88  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0F8C  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D0F90  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D0F94  38 80 00 03 */	li r4, 3
/* 807D0F98  4B 99 20 75 */	bl SetTrimSize__9dCamera_cFl
/* 807D0F9C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D0FA0  38 00 00 03 */	li r0, 3
/* 807D0FA4  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807D0FA8  38 00 00 00 */	li r0, 0
/* 807D0FAC  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807D0FB0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D0FB4  38 80 00 17 */	li r4, 0x17
/* 807D0FB8  38 A0 00 00 */	li r5, 0
/* 807D0FBC  38 C0 00 00 */	li r6, 0
/* 807D0FC0  38 E0 00 00 */	li r7, 0
/* 807D0FC4  48 00 10 A9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807D0FC8:
/* 807D0FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D0FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D0FD0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 807D0FD4  3C 80 80 7D */	lis r4, d_a_e_warpappear__stringBase0@ha /* 0x807D2280@ha */
/* 807D0FD8  38 84 22 80 */	addi r4, r4, d_a_e_warpappear__stringBase0@l /* 0x807D2280@l */
/* 807D0FDC  4B B9 79 B9 */	bl strcmp
/* 807D0FE0  2C 03 00 00 */	cmpwi r3, 0
/* 807D0FE4  40 82 00 5C */	bne lbl_807D1040
/* 807D0FE8  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D0FEC  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D0FF0  41 80 00 6C */	blt lbl_807D105C
/* 807D0FF4  40 82 00 1C */	bne lbl_807D1010
/* 807D0FF8  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D0FFC  7F E4 FB 78 */	mr r4, r31
/* 807D1000  38 A0 0B BA */	li r5, 0xbba
/* 807D1004  38 C0 00 00 */	li r6, 0
/* 807D1008  38 E0 00 00 */	li r7, 0
/* 807D100C  4B A7 8F 85 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_807D1010:
/* 807D1010  38 7F 06 00 */	addi r3, r31, 0x600
/* 807D1014  7F E4 FB 78 */	mr r4, r31
/* 807D1018  38 A0 00 00 */	li r5, 0
/* 807D101C  38 C0 00 00 */	li r6, 0
/* 807D1020  4B A7 92 B9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 807D1024  2C 03 00 00 */	cmpwi r3, 0
/* 807D1028  41 82 00 34 */	beq lbl_807D105C
/* 807D102C  38 00 00 0C */	li r0, 0xc
/* 807D1030  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D1034  38 00 00 00 */	li r0, 0
/* 807D1038  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D103C  48 00 00 20 */	b lbl_807D105C
lbl_807D1040:
/* 807D1040  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1044  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D1048  40 82 00 14 */	bne lbl_807D105C
/* 807D104C  38 00 00 0C */	li r0, 0xc
/* 807D1050  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D1054  38 00 00 00 */	li r0, 0
/* 807D1058  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
lbl_807D105C:
/* 807D105C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 807D1060  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D1064  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 807D1068  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D106C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 807D1070  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D1074  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D1078  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807D107C  EC 01 00 2A */	fadds f0, f1, f0
/* 807D1080  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D1084  38 61 00 CC */	addi r3, r1, 0xcc
/* 807D1088  4B 84 CC 35 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807D108C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D1090  41 82 00 14 */	beq lbl_807D10A4
/* 807D1094  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 807D1098  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 807D109C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D10A0  48 00 00 0C */	b lbl_807D10AC
lbl_807D10A4:
/* 807D10A4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807D10A8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_807D10AC:
/* 807D10AC  7F 63 DB 78 */	mr r3, r27
/* 807D10B0  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D10B4  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 807D10B8  38 C0 00 00 */	li r6, 0
/* 807D10BC  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 807D10C0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807D10C4  7D 89 03 A6 */	mtctr r12
/* 807D10C8  4E 80 04 21 */	bctrl 
/* 807D10CC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807D10D0  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 807D10D4  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807D10D8  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 807D10DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D10E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D10E4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 807D10E8  4B 83 B2 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D10EC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807D10F0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807D10F4  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 807D10F8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807D10FC  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 807D1100  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807D1104  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D1108  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D110C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 807D1110  38 BF 05 A4 */	addi r5, r31, 0x5a4
/* 807D1114  4B B7 5C 59 */	bl PSMTXMultVec
/* 807D1118  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 807D111C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807D1120  7C 65 1B 78 */	mr r5, r3
/* 807D1124  4B B7 5F 6D */	bl PSVECAdd
/* 807D1128  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807D112C  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D1130  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807D1134  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D1138  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 807D113C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D1140  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D1144  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807D1148  EC 01 00 2A */	fadds f0, f1, f0
/* 807D114C  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D1150  48 00 07 F4 */	b lbl_807D1944
lbl_807D1154:
/* 807D1154  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1158  2C 00 00 1D */	cmpwi r0, 0x1d
/* 807D115C  41 80 07 E8 */	blt lbl_807D1944
/* 807D1160  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807D1164  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807D1168  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 807D116C  C0 7F 05 F8 */	lfs f3, 0x5f8(r31)
/* 807D1170  4B A9 E8 CD */	bl cLib_addCalc2__FPffff
/* 807D1174  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807D1178  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D117C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807D1180  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 807D1184  4B A9 E8 B9 */	bl cLib_addCalc2__FPffff
/* 807D1188  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D118C  2C 00 00 45 */	cmpwi r0, 0x45
/* 807D1190  40 82 00 4C */	bne lbl_807D11DC
/* 807D1194  38 00 00 0A */	li r0, 0xa
/* 807D1198  B0 1F 05 96 */	sth r0, 0x596(r31)
/* 807D119C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EB@ha */
/* 807D11A0  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000800EB@l */
/* 807D11A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D11A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807D11AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807D11B0  80 63 00 00 */	lwz r3, 0(r3)
/* 807D11B4  38 81 00 10 */	addi r4, r1, 0x10
/* 807D11B8  38 A0 00 00 */	li r5, 0
/* 807D11BC  38 C0 00 00 */	li r6, 0
/* 807D11C0  38 E0 00 00 */	li r7, 0
/* 807D11C4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D11C8  FC 40 08 90 */	fmr f2, f1
/* 807D11CC  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 807D11D0  FC 80 18 90 */	fmr f4, f3
/* 807D11D4  39 00 00 00 */	li r8, 0
/* 807D11D8  4B AD A7 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807D11DC:
/* 807D11DC  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D11E0  2C 00 00 9F */	cmpwi r0, 0x9f
/* 807D11E4  40 81 07 60 */	ble lbl_807D1944
/* 807D11E8  38 00 00 0D */	li r0, 0xd
/* 807D11EC  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D11F0  38 00 00 00 */	li r0, 0
/* 807D11F4  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D11F8  48 00 07 4C */	b lbl_807D1944
lbl_807D11FC:
/* 807D11FC  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 807D1200  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 807D1204  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 807D1208  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 807D120C  4B A9 E8 31 */	bl cLib_addCalc2__FPffff
/* 807D1210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D1214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D1218  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 807D121C  4B 83 B1 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 807D1220  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807D1224  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807D1228  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807D122C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807D1230  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807D1234  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807D1238  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807D123C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807D1240  38 81 00 D8 */	addi r4, r1, 0xd8
/* 807D1244  38 BF 05 A4 */	addi r5, r31, 0x5a4
/* 807D1248  4B B7 5B 25 */	bl PSMTXMultVec
/* 807D124C  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 807D1250  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807D1254  7C 65 1B 78 */	mr r5, r3
/* 807D1258  4B B7 5E 39 */	bl PSVECAdd
/* 807D125C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807D1260  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D1264  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807D1268  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D126C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807D1270  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D1274  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D1278  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807D127C  EC 01 00 2A */	fadds f0, f1, f0
/* 807D1280  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D1284  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1288  2C 00 00 32 */	cmpwi r0, 0x32
/* 807D128C  40 82 00 40 */	bne lbl_807D12CC
/* 807D1290  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 807D1294  2C 03 00 00 */	cmpwi r3, 0
/* 807D1298  41 82 00 34 */	beq lbl_807D12CC
/* 807D129C  38 03 FF FF */	addi r0, r3, -1
/* 807D12A0  90 1F 06 4C */	stw r0, 0x64c(r31)
/* 807D12A4  3C 60 80 7D */	lis r3, s_s1drop2_sub__FPvPv@ha /* 0x807CFC8C@ha */
/* 807D12A8  38 63 FC 8C */	addi r3, r3, s_s1drop2_sub__FPvPv@l /* 0x807CFC8C@l */
/* 807D12AC  7F E4 FB 78 */	mr r4, r31
/* 807D12B0  4B 85 00 89 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D12B4  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 807D12B8  2C 00 00 00 */	cmpwi r0, 0
/* 807D12BC  41 82 00 10 */	beq lbl_807D12CC
/* 807D12C0  A8 7F 05 A0 */	lha r3, 0x5a0(r31)
/* 807D12C4  38 03 FF EC */	addi r0, r3, -20
/* 807D12C8  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
lbl_807D12CC:
/* 807D12CC  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D12D0  2C 00 00 46 */	cmpwi r0, 0x46
/* 807D12D4  40 82 00 0C */	bne lbl_807D12E0
/* 807D12D8  38 00 00 14 */	li r0, 0x14
/* 807D12DC  B0 1F 05 96 */	sth r0, 0x596(r31)
lbl_807D12E0:
/* 807D12E0  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D12E4  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807D12E8  40 82 06 5C */	bne lbl_807D1944
/* 807D12EC  3C 60 80 7D */	lis r3, s_s1start_sub__FPvPv@ha /* 0x807CFDAC@ha */
/* 807D12F0  38 63 FD AC */	addi r3, r3, s_s1start_sub__FPvPv@l /* 0x807CFDAC@l */
/* 807D12F4  7F E4 FB 78 */	mr r4, r31
/* 807D12F8  4B 85 00 41 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D12FC  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D1300  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807D1304  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D1308  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807D130C  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D1310  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807D1314  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D1318  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807D131C  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D1320  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807D1324  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D1328  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807D132C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D1330  38 81 00 6C */	addi r4, r1, 0x6c
/* 807D1334  38 A1 00 60 */	addi r5, r1, 0x60
/* 807D1338  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 807D133C  38 C0 00 00 */	li r6, 0
/* 807D1340  4B 9A F8 61 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 807D1344  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D1348  4B 99 01 65 */	bl Start__9dCamera_cFv
/* 807D134C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D1350  38 80 00 00 */	li r4, 0
/* 807D1354  4B 99 1C B9 */	bl SetTrimSize__9dCamera_cFl
/* 807D1358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D135C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D1360  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807D1364  4B 87 11 05 */	bl reset__14dEvt_control_cFv
/* 807D1368  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D136C  38 00 00 02 */	li r0, 2
/* 807D1370  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807D1374  38 00 00 01 */	li r0, 1
/* 807D1378  90 03 06 14 */	stw r0, 0x614(r3)
/* 807D137C  7F E3 FB 78 */	mr r3, r31
/* 807D1380  4B 84 88 FD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807D1384  48 00 05 C0 */	b lbl_807D1944
lbl_807D1388:
/* 807D1388  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 807D138C  28 00 00 02 */	cmplwi r0, 2
/* 807D1390  41 82 00 28 */	beq lbl_807D13B8
/* 807D1394  38 80 00 02 */	li r4, 2
/* 807D1398  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807D139C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807D13A0  38 C0 00 00 */	li r6, 0
/* 807D13A4  4B 84 A5 65 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807D13A8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807D13AC  60 00 00 02 */	ori r0, r0, 2
/* 807D13B0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 807D13B4  48 00 06 80 */	b lbl_807D1A34
lbl_807D13B8:
/* 807D13B8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D13BC  4B 99 01 15 */	bl Stop__9dCamera_cFv
/* 807D13C0  38 00 00 15 */	li r0, 0x15
/* 807D13C4  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D13C8  38 00 00 00 */	li r0, 0
/* 807D13CC  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D13D0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807D13D4  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807D13D8  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D13DC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D13E0  38 80 00 03 */	li r4, 3
/* 807D13E4  4B 99 1C 29 */	bl SetTrimSize__9dCamera_cFl
/* 807D13E8  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807D13EC  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D13F0  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 807D13F4  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D13F8  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 807D13FC  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D1400  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 807D1404  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D1408  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 807D140C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D1410  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 807D1414  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
lbl_807D1418:
/* 807D1418  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807D141C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807D1420  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807D1424  7D 89 03 A6 */	mtctr r12
/* 807D1428  4E 80 04 21 */	bctrl 
/* 807D142C  28 03 00 00 */	cmplwi r3, 0
/* 807D1430  40 82 00 40 */	bne lbl_807D1470
/* 807D1434  28 1A 00 00 */	cmplwi r26, 0
/* 807D1438  41 82 00 38 */	beq lbl_807D1470
/* 807D143C  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 807D1440  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 807D1444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D1448  40 81 00 28 */	ble lbl_807D1470
/* 807D144C  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 807D1450  D0 5A 04 D0 */	stfs f2, 0x4d0(r26)
/* 807D1454  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 807D1458  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 807D145C  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 807D1460  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 807D1464  D0 5A 04 BC */	stfs f2, 0x4bc(r26)
/* 807D1468  D0 3A 04 C0 */	stfs f1, 0x4c0(r26)
/* 807D146C  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
lbl_807D1470:
/* 807D1470  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1474  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D1478  40 82 00 4C */	bne lbl_807D14C4
/* 807D147C  38 00 00 0A */	li r0, 0xa
/* 807D1480  B0 1F 05 96 */	sth r0, 0x596(r31)
/* 807D1484  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EB@ha */
/* 807D1488  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000800EB@l */
/* 807D148C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D1490  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807D1494  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807D1498  80 63 00 00 */	lwz r3, 0(r3)
/* 807D149C  38 81 00 0C */	addi r4, r1, 0xc
/* 807D14A0  38 A0 00 00 */	li r5, 0
/* 807D14A4  38 C0 00 00 */	li r6, 0
/* 807D14A8  38 E0 00 00 */	li r7, 0
/* 807D14AC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D14B0  FC 40 08 90 */	fmr f2, f1
/* 807D14B4  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 807D14B8  FC 80 18 90 */	fmr f4, f3
/* 807D14BC  39 00 00 00 */	li r8, 0
/* 807D14C0  4B AD A4 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807D14C4:
/* 807D14C4  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D14C8  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 807D14CC  41 80 01 34 */	blt lbl_807D1600
/* 807D14D0  38 00 00 DE */	li r0, 0xde
/* 807D14D4  B0 01 00 08 */	sth r0, 8(r1)
/* 807D14D8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 807D14DC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 807D14E0  38 81 00 08 */	addi r4, r1, 8
/* 807D14E4  4B 84 83 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807D14E8  7C 7C 1B 78 */	mr r28, r3
/* 807D14EC  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 807D14F0  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 807D14F4  EC 21 00 2A */	fadds f1, f1, f0
/* 807D14F8  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807D14FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D1500  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 807D1504  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 807D1508  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D150C  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 807D1510  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008521@ha */
/* 807D1514  38 84 85 21 */	addi r4, r4, 0x8521 /* 0x00008521@l */
/* 807D1518  38 A1 00 CC */	addi r5, r1, 0xcc
/* 807D151C  38 C0 00 00 */	li r6, 0
/* 807D1520  38 E0 00 00 */	li r7, 0
/* 807D1524  48 00 05 A5 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 807D1528  90 7C 05 BC */	stw r3, 0x5bc(r28)
/* 807D152C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 807D1530  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807D1534  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807D1538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D153C  4C 41 13 82 */	cror 2, 1, 2
/* 807D1540  40 82 00 18 */	bne lbl_807D1558
/* 807D1544  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D1548  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807D154C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 807D1550  C0 7E 01 C4 */	lfs f3, 0x1c4(r30)
/* 807D1554  4B A9 E4 E9 */	bl cLib_addCalc2__FPffff
lbl_807D1558:
/* 807D1558  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D155C  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 807D1560  40 82 00 A0 */	bne lbl_807D1600
/* 807D1564  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D1568  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D156C  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D1570  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D1574  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D1578  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D157C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 807D1580  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807D1584  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807D1588  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807D158C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000850C@ha */
/* 807D1590  38 63 85 0C */	addi r3, r3, 0x850C /* 0x0000850C@l */
/* 807D1594  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D1598  38 A0 00 00 */	li r5, 0
/* 807D159C  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 807D15A0  48 00 04 B5 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 807D15A4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807D15A8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807D15AC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807D15B0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807D15B4  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 807D15B8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 807D15BC  3B 20 00 00 */	li r25, 0
/* 807D15C0  3B 40 00 00 */	li r26, 0
/* 807D15C4  3C 60 80 7D */	lis r3, w_id@ha /* 0x807D2290@ha */
/* 807D15C8  3B 63 22 90 */	addi r27, r3, w_id@l /* 0x807D2290@l */
lbl_807D15CC:
/* 807D15CC  7C 7B D2 2E */	lhzx r3, r27, r26
/* 807D15D0  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D15D4  38 A0 00 00 */	li r5, 0
/* 807D15D8  38 C0 00 00 */	li r6, 0
/* 807D15DC  48 00 04 79 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 807D15E0  3B 39 00 01 */	addi r25, r25, 1
/* 807D15E4  2C 19 00 14 */	cmpwi r25, 0x14
/* 807D15E8  3B 5A 00 02 */	addi r26, r26, 2
/* 807D15EC  41 80 FF E0 */	blt lbl_807D15CC
/* 807D15F0  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 807D15F4  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 807D15F8  38 00 00 01 */	li r0, 1
/* 807D15FC  98 1C 05 86 */	stb r0, 0x586(r28)
lbl_807D1600:
/* 807D1600  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1604  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 807D1608  41 80 00 18 */	blt lbl_807D1620
/* 807D160C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 807D1610  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 807D1614  C0 5E 01 CC */	lfs f2, 0x1cc(r30)
/* 807D1618  C0 7E 01 D0 */	lfs f3, 0x1d0(r30)
/* 807D161C  4B A9 E4 21 */	bl cLib_addCalc2__FPffff
lbl_807D1620:
/* 807D1620  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1624  2C 00 00 BE */	cmpwi r0, 0xbe
/* 807D1628  40 82 00 34 */	bne lbl_807D165C
/* 807D162C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807D1630  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807D1634  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807D1638  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807D163C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807D1640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D1644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D1648  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807D164C  38 80 00 03 */	li r4, 3
/* 807D1650  38 A0 00 01 */	li r5, 1
/* 807D1654  38 C1 00 54 */	addi r6, r1, 0x54
/* 807D1658  4B 89 E4 B9 */	bl StartQuake__12dVibration_cFii4cXyz
lbl_807D165C:
/* 807D165C  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1660  2C 00 00 BE */	cmpwi r0, 0xbe
/* 807D1664  41 80 00 14 */	blt lbl_807D1678
/* 807D1668  2C 00 00 DE */	cmpwi r0, 0xde
/* 807D166C  40 80 00 0C */	bge lbl_807D1678
/* 807D1670  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807D1674  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
lbl_807D1678:
/* 807D1678  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D167C  2C 00 00 DE */	cmpwi r0, 0xde
/* 807D1680  40 82 00 4C */	bne lbl_807D16CC
/* 807D1684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D1688  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D168C  3B 43 5B D4 */	addi r26, r3, 0x5bd4
/* 807D1690  7F 43 D3 78 */	mr r3, r26
/* 807D1694  38 80 00 1F */	li r4, 0x1f
/* 807D1698  4B 89 E6 FD */	bl StopQuake__12dVibration_cFi
/* 807D169C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807D16A0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807D16A4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807D16A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D16AC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807D16B0  7F 43 D3 78 */	mr r3, r26
/* 807D16B4  38 80 00 08 */	li r4, 8
/* 807D16B8  38 A0 00 01 */	li r5, 1
/* 807D16BC  38 C1 00 48 */	addi r6, r1, 0x48
/* 807D16C0  4B 89 E3 65 */	bl StartShock__12dVibration_cFii4cXyz
/* 807D16C4  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 807D16C8  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
lbl_807D16CC:
/* 807D16CC  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D16D0  2C 00 01 CC */	cmpwi r0, 0x1cc
/* 807D16D4  41 80 02 70 */	blt lbl_807D1944
/* 807D16D8  38 00 00 16 */	li r0, 0x16
/* 807D16DC  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D16E0  38 00 00 00 */	li r0, 0
/* 807D16E4  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D16E8  C0 7E 01 A0 */	lfs f3, 0x1a0(r30)
/* 807D16EC  D0 7F 05 B0 */	stfs f3, 0x5b0(r31)
/* 807D16F0  C0 5E 01 A4 */	lfs f2, 0x1a4(r30)
/* 807D16F4  D0 5F 05 B4 */	stfs f2, 0x5b4(r31)
/* 807D16F8  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 807D16FC  D0 3F 05 B8 */	stfs f1, 0x5b8(r31)
/* 807D1700  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 807D1704  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D1708  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 807D170C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D1710  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 807D1714  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D1718  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 807D171C  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 807D1720  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 807D1724  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 807D1728  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807D172C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807D1730  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807D1734  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008522@ha */
/* 807D1738  38 63 85 22 */	addi r3, r3, 0x8522 /* 0x00008522@l */
/* 807D173C  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D1740  38 A0 00 00 */	li r5, 0
/* 807D1744  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 807D1748  48 00 03 0D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 807D174C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008523@ha */
/* 807D1750  38 63 85 23 */	addi r3, r3, 0x8523 /* 0x00008523@l */
/* 807D1754  38 81 00 CC */	addi r4, r1, 0xcc
/* 807D1758  38 A0 00 00 */	li r5, 0
/* 807D175C  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 807D1760  48 00 02 F5 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 807D1764  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D1768  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 807D176C  38 00 00 00 */	li r0, 0
/* 807D1770  3C 60 80 7D */	lis r3, ew_s1angy@ha /* 0x807D2388@ha */
/* 807D1774  B0 03 23 88 */	sth r0, ew_s1angy@l(r3)  /* 0x807D2388@l */
/* 807D1778  48 00 01 CC */	b lbl_807D1944
lbl_807D177C:
/* 807D177C  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1780  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807D1784  41 80 00 34 */	blt lbl_807D17B8
/* 807D1788  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 807D178C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 807D1790  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 807D1794  C0 7E 00 E4 */	lfs f3, 0xe4(r30)
/* 807D1798  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807D179C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D17A0  4B A9 E2 9D */	bl cLib_addCalc2__FPffff
/* 807D17A4  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 807D17A8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D17AC  FC 40 08 90 */	fmr f2, f1
/* 807D17B0  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 807D17B4  4B A9 E2 89 */	bl cLib_addCalc2__FPffff
lbl_807D17B8:
/* 807D17B8  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D17BC  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807D17C0  40 82 00 64 */	bne lbl_807D1824
/* 807D17C4  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 807D17C8  2C 03 00 00 */	cmpwi r3, 0
/* 807D17CC  41 82 00 58 */	beq lbl_807D1824
/* 807D17D0  38 03 FF FF */	addi r0, r3, -1
/* 807D17D4  90 1F 06 4C */	stw r0, 0x64c(r31)
/* 807D17D8  3C 60 80 7D */	lis r3, s_s1drop2_sub__FPvPv@ha /* 0x807CFC8C@ha */
/* 807D17DC  38 63 FC 8C */	addi r3, r3, s_s1drop2_sub__FPvPv@l /* 0x807CFC8C@l */
/* 807D17E0  7F E4 FB 78 */	mr r4, r31
/* 807D17E4  4B 84 FB 55 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D17E8  3C 60 80 7D */	lis r3, s_s1Yangset_sub__FPvPv@ha /* 0x807CFD34@ha */
/* 807D17EC  38 63 FD 34 */	addi r3, r3, s_s1Yangset_sub__FPvPv@l /* 0x807CFD34@l */
/* 807D17F0  7F E4 FB 78 */	mr r4, r31
/* 807D17F4  4B 84 FB 45 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D17F8  3C 60 80 7D */	lis r3, ew_s1angy@ha /* 0x807D2388@ha */
/* 807D17FC  38 83 23 88 */	addi r4, r3, ew_s1angy@l /* 0x807D2388@l */
/* 807D1800  A8 64 00 00 */	lha r3, 0(r4)
/* 807D1804  38 03 55 55 */	addi r0, r3, 0x5555
/* 807D1808  B0 04 00 00 */	sth r0, 0(r4)
/* 807D180C  80 1F 06 4C */	lwz r0, 0x64c(r31)
/* 807D1810  2C 00 00 00 */	cmpwi r0, 0
/* 807D1814  41 82 00 10 */	beq lbl_807D1824
/* 807D1818  A8 7F 05 A0 */	lha r3, 0x5a0(r31)
/* 807D181C  38 03 FF EC */	addi r0, r3, -20
/* 807D1820  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
lbl_807D1824:
/* 807D1824  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1828  2C 00 00 96 */	cmpwi r0, 0x96
/* 807D182C  40 82 00 0C */	bne lbl_807D1838
/* 807D1830  38 00 00 14 */	li r0, 0x14
/* 807D1834  B0 1F 05 96 */	sth r0, 0x596(r31)
lbl_807D1838:
/* 807D1838  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D183C  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 807D1840  41 80 01 04 */	blt lbl_807D1944
/* 807D1844  3C 60 80 7D */	lis r3, s_s1start_sub__FPvPv@ha /* 0x807CFDAC@ha */
/* 807D1848  38 63 FD AC */	addi r3, r3, s_s1start_sub__FPvPv@l /* 0x807CFDAC@l */
/* 807D184C  7F E4 FB 78 */	mr r4, r31
/* 807D1850  4B 84 FA E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807D1854  38 00 00 17 */	li r0, 0x17
/* 807D1858  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 807D185C  38 00 00 00 */	li r0, 0
/* 807D1860  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D1864  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 807D1868  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 807D186C  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 807D1870  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 807D1874  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 807D1878  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 807D187C  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 807D1880  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 807D1884  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 807D1888  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 807D188C  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 807D1890  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 807D1894  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807D1898  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 807D189C  48 00 00 A8 */	b lbl_807D1944
lbl_807D18A0:
/* 807D18A0  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D18A4  2C 00 00 50 */	cmpwi r0, 0x50
/* 807D18A8  41 80 00 9C */	blt lbl_807D1944
/* 807D18AC  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 807D18B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807D18B4  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 807D18B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D18BC  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 807D18C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D18C4  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 807D18C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807D18CC  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 807D18D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807D18D4  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 807D18D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807D18DC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D18E0  38 81 00 3C */	addi r4, r1, 0x3c
/* 807D18E4  38 A1 00 30 */	addi r5, r1, 0x30
/* 807D18E8  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 807D18EC  38 C0 00 00 */	li r6, 0
/* 807D18F0  4B 9A F2 B1 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 807D18F4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D18F8  4B 98 FB B5 */	bl Start__9dCamera_cFv
/* 807D18FC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D1900  38 80 00 00 */	li r4, 0
/* 807D1904  4B 99 17 09 */	bl SetTrimSize__9dCamera_cFl
/* 807D1908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D190C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D1910  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807D1914  4B 87 0B 55 */	bl reset__14dEvt_control_cFv
/* 807D1918  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807D191C  38 60 00 02 */	li r3, 2
/* 807D1920  B0 64 06 04 */	sth r3, 0x604(r4)
/* 807D1924  38 00 00 01 */	li r0, 1
/* 807D1928  90 04 06 14 */	stw r0, 0x614(r4)
/* 807D192C  28 1A 00 00 */	cmplwi r26, 0
/* 807D1930  41 82 00 0C */	beq lbl_807D193C
/* 807D1934  98 7A 16 B8 */	stb r3, 0x16b8(r26)
/* 807D1938  90 1A 17 40 */	stw r0, 0x1740(r26)
lbl_807D193C:
/* 807D193C  7F E3 FB 78 */	mr r3, r31
/* 807D1940  4B 84 83 3D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807D1944:
/* 807D1944  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 807D1948  2C 00 00 00 */	cmpwi r0, 0
/* 807D194C  41 82 00 E8 */	beq lbl_807D1A34
/* 807D1950  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807D1954  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807D1958  A8 9F 05 94 */	lha r4, 0x594(r31)
/* 807D195C  1C 04 35 00 */	mulli r0, r4, 0x3500
/* 807D1960  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D1964  7C 65 02 14 */	add r3, r5, r0
/* 807D1968  C0 03 00 04 */	lfs f0, 4(r3)
/* 807D196C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 807D1970  C0 FF 05 FC */	lfs f7, 0x5fc(r31)
/* 807D1974  EC 07 00 32 */	fmuls f0, f7, f0
/* 807D1978  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D197C  FC 00 00 1E */	fctiwz f0, f0
/* 807D1980  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 807D1984  80 C1 00 EC */	lwz r6, 0xec(r1)
/* 807D1988  C0 DF 05 B0 */	lfs f6, 0x5b0(r31)
/* 807D198C  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 807D1990  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 807D1994  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 807D1998  C0 BF 05 B8 */	lfs f5, 0x5b8(r31)
/* 807D199C  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 807D19A0  C0 9F 05 A4 */	lfs f4, 0x5a4(r31)
/* 807D19A4  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 807D19A8  C0 7F 05 A8 */	lfs f3, 0x5a8(r31)
/* 807D19AC  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 807D19B0  C0 5F 05 AC */	lfs f2, 0x5ac(r31)
/* 807D19B4  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 807D19B8  1C 04 32 00 */	mulli r0, r4, 0x3200
/* 807D19BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D19C0  7C 05 04 2E */	lfsx f0, r5, r0
/* 807D19C4  EC 07 00 32 */	fmuls f0, f7, f0
/* 807D19C8  EC 21 00 2A */	fadds f1, f1, f0
/* 807D19CC  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 807D19D0  EC 03 00 2A */	fadds f0, f3, f0
/* 807D19D4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807D19D8  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 807D19DC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807D19E0  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 807D19E4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 807D19E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D19EC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807D19F0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807D19F4  38 81 00 24 */	addi r4, r1, 0x24
/* 807D19F8  38 A1 00 18 */	addi r5, r1, 0x18
/* 807D19FC  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 807D1A00  4B 9A F1 41 */	bl Set__9dCamera_cF4cXyz4cXyzsf
/* 807D1A04  38 7F 05 FC */	addi r3, r31, 0x5fc
/* 807D1A08  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D1A0C  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 807D1A10  4B A9 E0 71 */	bl cLib_addCalc0__FPfff
/* 807D1A14  A8 7F 05 A0 */	lha r3, 0x5a0(r31)
/* 807D1A18  38 03 00 01 */	addi r0, r3, 1
/* 807D1A1C  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 807D1A20  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 807D1A24  2C 00 27 10 */	cmpwi r0, 0x2710
/* 807D1A28  40 81 00 0C */	ble lbl_807D1A34
/* 807D1A2C  38 00 27 10 */	li r0, 0x2710
/* 807D1A30  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
lbl_807D1A34:
/* 807D1A34  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807D1A38  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807D1A3C  39 61 01 10 */	addi r11, r1, 0x110
/* 807D1A40  4B B9 07 D9 */	bl _restgpr_25
/* 807D1A44  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807D1A48  7C 08 03 A6 */	mtlr r0
/* 807D1A4C  38 21 01 20 */	addi r1, r1, 0x120
/* 807D1A50  4E 80 00 20 */	blr 
