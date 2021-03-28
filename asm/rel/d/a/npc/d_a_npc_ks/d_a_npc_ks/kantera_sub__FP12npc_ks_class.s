lbl_80A5B614:
/* 80A5B614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A5B618  7C 08 02 A6 */	mflr r0
/* 80A5B61C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A5B620  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5B624  4B 90 6B B8 */	b _savegpr_29
/* 80A5B628  7C 7D 1B 78 */	mr r29, r3
/* 80A5B62C  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A5B630  3B C3 DE FC */	addi r30, r3, lit_4030@l
/* 80A5B634  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A5B638  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5B63C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A5B640  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5B644  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80A5B648  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A5B64C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A5B650  4B 8E AE 60 */	b PSMTXCopy
/* 80A5B654  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5B658  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5B65C  80 9D 0C 00 */	lwz r4, 0xc00(r29)
/* 80A5B660  38 84 00 24 */	addi r4, r4, 0x24
/* 80A5B664  4B 8E AE 4C */	b PSMTXCopy
/* 80A5B668  88 1D 0C 17 */	lbz r0, 0xc17(r29)
/* 80A5B66C  7C 00 07 74 */	extsb r0, r0
/* 80A5B670  2C 00 00 02 */	cmpwi r0, 2
/* 80A5B674  40 82 00 7C */	bne lbl_80A5B6F0
/* 80A5B678  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A5B67C  C0 5E 04 DC */	lfs f2, 0x4dc(r30)
/* 80A5B680  C0 7E 04 94 */	lfs f3, 0x494(r30)
/* 80A5B684  4B 5B 17 18 */	b transM__14mDoMtx_stack_cFfff
/* 80A5B688  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5B68C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5B690  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A5B694  D0 1D 0C 04 */	stfs f0, 0xc04(r29)
/* 80A5B698  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A5B69C  D0 1D 0C 08 */	stfs f0, 0xc08(r29)
/* 80A5B6A0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A5B6A4  D0 1D 0C 0C */	stfs f0, 0xc0c(r29)
/* 80A5B6A8  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A5B6AC  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A5B6B0  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80A5B6B4  FC 40 08 90 */	fmr f2, f1
/* 80A5B6B8  FC 60 08 90 */	fmr f3, f1
/* 80A5B6BC  4B 5B 17 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 80A5B6C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5B6C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5B6C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A5B6CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A5B6D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A5B6D4  38 A0 00 01 */	li r5, 1
/* 80A5B6D8  38 C0 00 01 */	li r6, 1
/* 80A5B6DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A5B6E0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80A5B6E4  7D 89 03 A6 */	mtctr r12
/* 80A5B6E8  4E 80 04 21 */	bctrl 
/* 80A5B6EC  48 00 01 F8 */	b lbl_80A5B8E4
lbl_80A5B6F0:
/* 80A5B6F0  2C 00 00 03 */	cmpwi r0, 3
/* 80A5B6F4  40 82 01 F0 */	bne lbl_80A5B8E4
/* 80A5B6F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5B6FC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A5B700  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A5B704  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80A5B708  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A5B70C  41 82 00 4C */	beq lbl_80A5B758
/* 80A5B710  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80A5B714  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80A5B718  41 82 00 40 */	beq lbl_80A5B758
/* 80A5B71C  7F A3 EB 78 */	mr r3, r29
/* 80A5B720  4B 5C 14 80 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80A5B724  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80A5B728  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80A5B72C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A5B730  38 00 00 00 */	li r0, 0
/* 80A5B734  98 1D 0C 17 */	stb r0, 0xc17(r29)
/* 80A5B738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5B73C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5B740  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A5B744  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80A5B748  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80A5B74C  A0 84 01 C4 */	lhz r4, 0x1c4(r4)
/* 80A5B750  4B 5D 92 3C */	b onEventBit__11dSv_event_cFUs
/* 80A5B754  48 00 01 90 */	b lbl_80A5B8E4
lbl_80A5B758:
/* 80A5B758  C0 1E 04 E0 */	lfs f0, 0x4e0(r30)
/* 80A5B75C  D0 1D 0C 04 */	stfs f0, 0xc04(r29)
/* 80A5B760  C0 1E 02 F8 */	lfs f0, 0x2f8(r30)
/* 80A5B764  D0 1D 0C 0C */	stfs f0, 0xc0c(r29)
/* 80A5B768  C0 3D 0C 08 */	lfs f1, 0xc08(r29)
/* 80A5B76C  C0 1D 0C 10 */	lfs f0, 0xc10(r29)
/* 80A5B770  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B774  D0 1D 0C 08 */	stfs f0, 0xc08(r29)
/* 80A5B778  C0 3D 0C 10 */	lfs f1, 0xc10(r29)
/* 80A5B77C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80A5B780  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5B784  D0 1D 0C 10 */	stfs f0, 0xc10(r29)
/* 80A5B788  C0 3D 0C 08 */	lfs f1, 0xc08(r29)
/* 80A5B78C  C0 1E 04 E4 */	lfs f0, 0x4e4(r30)
/* 80A5B790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5B794  4C 40 13 82 */	cror 2, 0, 2
/* 80A5B798  40 82 00 38 */	bne lbl_80A5B7D0
/* 80A5B79C  D0 1D 0C 08 */	stfs f0, 0xc08(r29)
/* 80A5B7A0  88 1D 0C 16 */	lbz r0, 0xc16(r29)
/* 80A5B7A4  7C 00 07 75 */	extsb. r0, r0
/* 80A5B7A8  40 82 00 20 */	bne lbl_80A5B7C8
/* 80A5B7AC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A5B7B0  D0 1D 0C 10 */	stfs f0, 0xc10(r29)
/* 80A5B7B4  38 00 00 01 */	li r0, 1
/* 80A5B7B8  98 1D 0C 16 */	stb r0, 0xc16(r29)
/* 80A5B7BC  38 00 00 0C */	li r0, 0xc
/* 80A5B7C0  B0 1D 0C 14 */	sth r0, 0xc14(r29)
/* 80A5B7C4  48 00 00 0C */	b lbl_80A5B7D0
lbl_80A5B7C8:
/* 80A5B7C8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5B7CC  D0 1D 0C 10 */	stfs f0, 0xc10(r29)
lbl_80A5B7D0:
/* 80A5B7D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5B7D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5B7D8  C0 3D 0C 04 */	lfs f1, 0xc04(r29)
/* 80A5B7DC  C0 5D 0C 08 */	lfs f2, 0xc08(r29)
/* 80A5B7E0  C0 7D 0C 0C */	lfs f3, 0xc0c(r29)
/* 80A5B7E4  4B 8E B1 04 */	b PSMTXTrans
/* 80A5B7E8  A8 BD 0C 14 */	lha r5, 0xc14(r29)
/* 80A5B7EC  1C 05 32 C8 */	mulli r0, r5, 0x32c8
/* 80A5B7F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A5B7F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A5B7F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A5B7FC  7C 83 04 2E */	lfsx f4, r3, r0
/* 80A5B800  C0 7E 04 E8 */	lfs f3, 0x4e8(r30)
/* 80A5B804  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 80A5B808  C8 3E 04 F0 */	lfd f1, 0x4f0(r30)
/* 80A5B80C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80A5B810  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A5B814  3C 00 43 30 */	lis r0, 0x4330
/* 80A5B818  90 01 00 08 */	stw r0, 8(r1)
/* 80A5B81C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A5B820  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A5B824  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A5B828  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A5B82C  EC 03 00 2A */	fadds f0, f3, f0
/* 80A5B830  FC 00 00 1E */	fctiwz f0, f0
/* 80A5B834  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A5B838  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A5B83C  7C A0 07 35 */	extsh. r0, r5
/* 80A5B840  41 82 00 0C */	beq lbl_80A5B84C
/* 80A5B844  38 05 FF FF */	addi r0, r5, -1
/* 80A5B848  B0 1D 0C 14 */	sth r0, 0xc14(r29)
lbl_80A5B84C:
/* 80A5B84C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5B850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5B854  4B 5B 0C 78 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A5B858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5B85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5B860  38 80 13 88 */	li r4, 0x1388
/* 80A5B864  4B 5B 0B D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80A5B868  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A5B86C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A5B870  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A5B874  38 A0 00 00 */	li r5, 0
/* 80A5B878  38 C0 00 00 */	li r6, 0
/* 80A5B87C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A5B880  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80A5B884  7D 89 03 A6 */	mtctr r12
/* 80A5B888  4E 80 04 21 */	bctrl 
/* 80A5B88C  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 80A5B890  60 00 00 20 */	ori r0, r0, 0x20
/* 80A5B894  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 80A5B898  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80A5B89C  60 00 00 10 */	ori r0, r0, 0x10
/* 80A5B8A0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A5B8A4  38 00 00 06 */	li r0, 6
/* 80A5B8A8  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80A5B8AC  C0 1D 0C 04 */	lfs f0, 0xc04(r29)
/* 80A5B8B0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80A5B8B4  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A5B8B8  C0 1D 0C 08 */	lfs f0, 0xc08(r29)
/* 80A5B8BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5B8C0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80A5B8C4  C0 1D 0C 0C */	lfs f0, 0xc0c(r29)
/* 80A5B8C8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80A5B8CC  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80A5B8D0  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80A5B8D4  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80A5B8D8  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80A5B8DC  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80A5B8E0  D0 1D 05 40 */	stfs f0, 0x540(r29)
lbl_80A5B8E4:
/* 80A5B8E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5B8E8  4B 90 69 40 */	b _restgpr_29
/* 80A5B8EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A5B8F0  7C 08 03 A6 */	mtlr r0
/* 80A5B8F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A5B8F8  4E 80 00 20 */	blr 
