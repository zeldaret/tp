lbl_80C9B60C:
/* 80C9B60C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C9B610  7C 08 02 A6 */	mflr r0
/* 80C9B614  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C9B618  39 61 00 50 */	addi r11, r1, 0x50
/* 80C9B61C  4B 6C 6B C0 */	b _savegpr_29
/* 80C9B620  7C 7E 1B 78 */	mr r30, r3
/* 80C9B624  3C 60 80 CA */	lis r3, lit_3863@ha
/* 80C9B628  3B E3 CD 4C */	addi r31, r3, lit_3863@l
/* 80C9B62C  A8 1E 05 94 */	lha r0, 0x594(r30)
/* 80C9B630  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9B634  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C9B638  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C9B63C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C9B640  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C9B644  FC 00 00 50 */	fneg f0, f0
/* 80C9B648  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C9B64C  FC 00 00 1E */	fctiwz f0, f0
/* 80C9B650  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C9B654  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C9B658  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C9B65C  A8 1E 05 96 */	lha r0, 0x596(r30)
/* 80C9B660  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9B664  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C9B668  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C9B66C  FC 00 00 50 */	fneg f0, f0
/* 80C9B670  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C9B674  FC 00 00 1E */	fctiwz f0, f0
/* 80C9B678  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C9B67C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C9B680  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C9B684  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9B688  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C9B68C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C9B690  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C9B694  4B 5D 43 A8 */	b cLib_addCalc2__FPffff
/* 80C9B698  A8 1E 05 84 */	lha r0, 0x584(r30)
/* 80C9B69C  2C 00 00 01 */	cmpwi r0, 1
/* 80C9B6A0  41 82 01 D8 */	beq lbl_80C9B878
/* 80C9B6A4  40 80 01 D4 */	bge lbl_80C9B878
/* 80C9B6A8  2C 00 00 00 */	cmpwi r0, 0
/* 80C9B6AC  40 80 00 08 */	bge lbl_80C9B6B4
/* 80C9B6B0  48 00 01 C8 */	b lbl_80C9B878
lbl_80C9B6B4:
/* 80C9B6B4  A8 1E 05 86 */	lha r0, 0x586(r30)
/* 80C9B6B8  2C 00 00 00 */	cmpwi r0, 0
/* 80C9B6BC  40 82 00 3C */	bne lbl_80C9B6F8
/* 80C9B6C0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C9B6C4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C9B6C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9B6CC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C9B6D0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C9B6D4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C9B6D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C9B6DC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C9B6E0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C9B6E4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C9B6E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9B6EC  4C 40 13 82 */	cror 2, 0, 2
/* 80C9B6F0  40 82 00 08 */	bne lbl_80C9B6F8
/* 80C9B6F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80C9B6F8:
/* 80C9B6F8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C9B6FC  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 80C9B700  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80C9B704  38 63 CE B4 */	addi r3, r3, l_HIO@l
/* 80C9B708  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C9B70C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9B710  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C9B714  40 80 01 64 */	bge lbl_80C9B878
/* 80C9B718  38 00 00 01 */	li r0, 1
/* 80C9B71C  B0 1E 05 84 */	sth r0, 0x584(r30)
/* 80C9B720  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C9B724  D0 1E 05 9C */	stfs f0, 0x59c(r30)
/* 80C9B728  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C9B72C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C9B730  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C9B734  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C9B738  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C9B73C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C9B740  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9B744  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C9B748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9B74C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C9B750  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C9B754  38 80 00 00 */	li r4, 0
/* 80C9B758  90 81 00 08 */	stw r4, 8(r1)
/* 80C9B75C  38 00 FF FF */	li r0, -1
/* 80C9B760  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9B764  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9B768  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9B76C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9B770  38 80 00 00 */	li r4, 0
/* 80C9B774  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008456@ha */
/* 80C9B778  38 A5 84 56 */	addi r5, r5, 0x8456 /* 0x00008456@l */
/* 80C9B77C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C9B780  38 E0 00 00 */	li r7, 0
/* 80C9B784  39 00 00 00 */	li r8, 0
/* 80C9B788  39 20 00 00 */	li r9, 0
/* 80C9B78C  39 40 00 FF */	li r10, 0xff
/* 80C9B790  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C9B794  4B 3B 12 FC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9B798  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C9B79C  38 80 00 00 */	li r4, 0
/* 80C9B7A0  90 81 00 08 */	stw r4, 8(r1)
/* 80C9B7A4  38 00 FF FF */	li r0, -1
/* 80C9B7A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9B7AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9B7B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9B7B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9B7B8  38 80 00 00 */	li r4, 0
/* 80C9B7BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008457@ha */
/* 80C9B7C0  38 A5 84 57 */	addi r5, r5, 0x8457 /* 0x00008457@l */
/* 80C9B7C4  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C9B7C8  38 E0 00 00 */	li r7, 0
/* 80C9B7CC  39 00 00 00 */	li r8, 0
/* 80C9B7D0  39 20 00 00 */	li r9, 0
/* 80C9B7D4  39 40 00 FF */	li r10, 0xff
/* 80C9B7D8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C9B7DC  4B 3B 12 B4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9B7E0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C9B7E4  38 80 00 00 */	li r4, 0
/* 80C9B7E8  90 81 00 08 */	stw r4, 8(r1)
/* 80C9B7EC  38 00 FF FF */	li r0, -1
/* 80C9B7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9B7F4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9B7F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9B7FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9B800  38 80 00 00 */	li r4, 0
/* 80C9B804  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008458@ha */
/* 80C9B808  38 A5 84 58 */	addi r5, r5, 0x8458 /* 0x00008458@l */
/* 80C9B80C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C9B810  38 E0 00 00 */	li r7, 0
/* 80C9B814  39 00 00 00 */	li r8, 0
/* 80C9B818  39 20 00 00 */	li r9, 0
/* 80C9B81C  39 40 00 FF */	li r10, 0xff
/* 80C9B820  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C9B824  4B 3B 12 6C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9B828  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C9B82C  7C 03 07 74 */	extsb r3, r0
/* 80C9B830  4B 39 18 3C */	b dComIfGp_getReverb__Fi
/* 80C9B834  7C 67 1B 78 */	mr r7, r3
/* 80C9B838  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010A@ha */
/* 80C9B83C  38 03 01 0A */	addi r0, r3, 0x010A /* 0x0008010A@l */
/* 80C9B840  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C9B844  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C9B848  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9B84C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9B850  38 81 00 20 */	addi r4, r1, 0x20
/* 80C9B854  3C A0 80 CA */	lis r5, c_pos@ha
/* 80C9B858  38 A5 CE D4 */	addi r5, r5, c_pos@l
/* 80C9B85C  38 C0 00 00 */	li r6, 0
/* 80C9B860  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C9B864  FC 40 08 90 */	fmr f2, f1
/* 80C9B868  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80C9B86C  FC 80 18 90 */	fmr f4, f3
/* 80C9B870  39 00 00 00 */	li r8, 0
/* 80C9B874  4B 61 01 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C9B878:
/* 80C9B878  39 61 00 50 */	addi r11, r1, 0x50
/* 80C9B87C  4B 6C 69 AC */	b _restgpr_29
/* 80C9B880  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C9B884  7C 08 03 A6 */	mtlr r0
/* 80C9B888  38 21 00 50 */	addi r1, r1, 0x50
/* 80C9B88C  4E 80 00 20 */	blr 
