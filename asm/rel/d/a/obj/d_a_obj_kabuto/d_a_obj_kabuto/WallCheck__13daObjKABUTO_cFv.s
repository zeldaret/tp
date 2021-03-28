lbl_80C2B618:
/* 80C2B618  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C2B61C  7C 08 02 A6 */	mflr r0
/* 80C2B620  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C2B624  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C2B628  4B 73 6B B4 */	b _savegpr_29
/* 80C2B62C  7C 7F 1B 78 */	mr r31, r3
/* 80C2B630  3C 60 80 C3 */	lis r3, lit_3775@ha
/* 80C2B634  3B C3 E1 10 */	addi r30, r3, lit_3775@l
/* 80C2B638  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2B63C  4B 44 C6 2C */	b __ct__11dBgS_LinChkFv
/* 80C2B640  38 61 00 90 */	addi r3, r1, 0x90
/* 80C2B644  4B 44 D8 24 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C2B648  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2B64C  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80C2B650  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C2B654  38 C0 00 00 */	li r6, 0
/* 80C2B658  4B 44 C7 0C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2B65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2B660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2B664  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C2B668  7F A3 EB 78 */	mr r3, r29
/* 80C2B66C  38 81 00 38 */	addi r4, r1, 0x38
/* 80C2B670  4B 44 8D 44 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C2B674  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2B678  41 82 01 A4 */	beq lbl_80C2B81C
/* 80C2B67C  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha
/* 80C2B680  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C2B684  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2B688  7F A3 EB 78 */	mr r3, r29
/* 80C2B68C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2B690  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C2B694  4B 44 90 B0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2B698  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C2B69C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C2B6A0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C2B6A4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C2B6A8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C2B6AC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C2B6B0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2B6B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2B6B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2B6BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C2B6C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C2B6C4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C2B6C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2B6CC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C2B6D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C2B6D4  38 61 00 18 */	addi r3, r1, 0x18
/* 80C2B6D8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C2B6DC  4B 71 BC C0 */	b PSVECSquareDistance
/* 80C2B6E0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2B6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2B6E8  40 81 00 58 */	ble lbl_80C2B740
/* 80C2B6EC  FC 00 08 34 */	frsqrte f0, f1
/* 80C2B6F0  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80C2B6F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2B6F8  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80C2B6FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2B700  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2B704  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2B708  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2B70C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2B710  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2B714  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2B718  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2B71C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2B720  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2B724  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2B728  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2B72C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2B730  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2B734  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2B738  FC 40 10 18 */	frsp f2, f2
/* 80C2B73C  48 00 00 90 */	b lbl_80C2B7CC
lbl_80C2B740:
/* 80C2B740  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80C2B744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2B748  40 80 00 10 */	bge lbl_80C2B758
/* 80C2B74C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C2B750  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C2B754  48 00 00 78 */	b lbl_80C2B7CC
lbl_80C2B758:
/* 80C2B758  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2B75C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2B760  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2B764  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2B768  7C 03 00 00 */	cmpw r3, r0
/* 80C2B76C  41 82 00 14 */	beq lbl_80C2B780
/* 80C2B770  40 80 00 40 */	bge lbl_80C2B7B0
/* 80C2B774  2C 03 00 00 */	cmpwi r3, 0
/* 80C2B778  41 82 00 20 */	beq lbl_80C2B798
/* 80C2B77C  48 00 00 34 */	b lbl_80C2B7B0
lbl_80C2B780:
/* 80C2B780  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2B784  41 82 00 0C */	beq lbl_80C2B790
/* 80C2B788  38 00 00 01 */	li r0, 1
/* 80C2B78C  48 00 00 28 */	b lbl_80C2B7B4
lbl_80C2B790:
/* 80C2B790  38 00 00 02 */	li r0, 2
/* 80C2B794  48 00 00 20 */	b lbl_80C2B7B4
lbl_80C2B798:
/* 80C2B798  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2B79C  41 82 00 0C */	beq lbl_80C2B7A8
/* 80C2B7A0  38 00 00 05 */	li r0, 5
/* 80C2B7A4  48 00 00 10 */	b lbl_80C2B7B4
lbl_80C2B7A8:
/* 80C2B7A8  38 00 00 03 */	li r0, 3
/* 80C2B7AC  48 00 00 08 */	b lbl_80C2B7B4
lbl_80C2B7B0:
/* 80C2B7B0  38 00 00 04 */	li r0, 4
lbl_80C2B7B4:
/* 80C2B7B4  2C 00 00 01 */	cmpwi r0, 1
/* 80C2B7B8  40 82 00 10 */	bne lbl_80C2B7C8
/* 80C2B7BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C2B7C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C2B7C4  48 00 00 08 */	b lbl_80C2B7CC
lbl_80C2B7C8:
/* 80C2B7C8  FC 40 08 90 */	fmr f2, f1
lbl_80C2B7CC:
/* 80C2B7CC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C2B7D0  4B 63 BE A4 */	b cM_atan2s__Fff
/* 80C2B7D4  7C 03 00 D0 */	neg r0, r3
/* 80C2B7D8  B0 1F 07 2E */	sth r0, 0x72e(r31)
/* 80C2B7DC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C2B7E0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C2B7E4  4B 63 BE 90 */	b cM_atan2s__Fff
/* 80C2B7E8  B0 7F 07 2A */	sth r3, 0x72a(r31)
/* 80C2B7EC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C2B7F0  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C2B7F4  4B 63 BE 80 */	b cM_atan2s__Fff
/* 80C2B7F8  B0 7F 07 32 */	sth r3, 0x732(r31)
/* 80C2B7FC  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha
/* 80C2B800  38 03 E2 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C2B804  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2B808  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2B80C  38 80 FF FF */	li r4, -1
/* 80C2B810  4B 44 C4 CC */	b __dt__11dBgS_LinChkFv
/* 80C2B814  38 60 00 01 */	li r3, 1
/* 80C2B818  48 00 00 14 */	b lbl_80C2B82C
lbl_80C2B81C:
/* 80C2B81C  38 61 00 38 */	addi r3, r1, 0x38
/* 80C2B820  38 80 FF FF */	li r4, -1
/* 80C2B824  4B 44 C4 B8 */	b __dt__11dBgS_LinChkFv
/* 80C2B828  38 60 00 00 */	li r3, 0
lbl_80C2B82C:
/* 80C2B82C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C2B830  4B 73 69 F8 */	b _restgpr_29
/* 80C2B834  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C2B838  7C 08 03 A6 */	mtlr r0
/* 80C2B83C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C2B840  4E 80 00 20 */	blr 
