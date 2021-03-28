lbl_80BC9808:
/* 80BC9808  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80BC980C  7C 08 02 A6 */	mflr r0
/* 80BC9810  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80BC9814  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80BC9818  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80BC981C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80BC9820  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80BC9824  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80BC9828  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80BC982C  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80BC9830  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80BC9834  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80BC9838  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80BC983C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BC9840  4B 79 89 84 */	b _savegpr_23
/* 80BC9844  7C 7F 1B 78 */	mr r31, r3
/* 80BC9848  3C 60 80 BD */	lis r3, l_cyl_src@ha
/* 80BC984C  3B 63 9F FC */	addi r27, r3, l_cyl_src@l
/* 80BC9850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC9854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC9858  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80BC985C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC9860  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 80BC9864  40 82 00 C8 */	bne lbl_80BC992C
/* 80BC9868  38 7F 0A 92 */	addi r3, r31, 0xa92
/* 80BC986C  48 00 07 5D */	bl func_80BC9FC8
/* 80BC9870  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80BC9874  40 82 00 B8 */	bne lbl_80BC992C
/* 80BC9878  C0 3B 00 64 */	lfs f1, 0x64(r27)
/* 80BC987C  4B 69 E0 D8 */	b cM_rndF__Ff
/* 80BC9880  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 80BC9884  EC 00 08 2A */	fadds f0, f0, f1
/* 80BC9888  FC 00 00 1E */	fctiwz f0, f0
/* 80BC988C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BC9890  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BC9894  B0 1F 0A 92 */	sth r0, 0xa92(r31)
/* 80BC9898  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80BC989C  4B 69 E0 F0 */	b cM_rndFX__Ff
/* 80BC98A0  C0 1B 00 68 */	lfs f0, 0x68(r27)
/* 80BC98A4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BC98A8  FC 00 00 1E */	fctiwz f0, f0
/* 80BC98AC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80BC98B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BC98B4  B0 1F 0A 9A */	sth r0, 0xa9a(r31)
/* 80BC98B8  C0 3B 00 44 */	lfs f1, 0x44(r27)
/* 80BC98BC  4B 69 E0 98 */	b cM_rndF__Ff
/* 80BC98C0  C0 1B 00 70 */	lfs f0, 0x70(r27)
/* 80BC98C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC98C8  40 81 00 10 */	ble lbl_80BC98D8
/* 80BC98CC  C0 1B 00 54 */	lfs f0, 0x54(r27)
/* 80BC98D0  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
/* 80BC98D4  48 00 00 0C */	b lbl_80BC98E0
lbl_80BC98D8:
/* 80BC98D8  C0 1B 00 74 */	lfs f0, 0x74(r27)
/* 80BC98DC  D0 1F 0A 9C */	stfs f0, 0xa9c(r31)
lbl_80BC98E0:
/* 80BC98E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BC98E4  7C 03 07 74 */	extsb r3, r0
/* 80BC98E8  4B 46 37 84 */	b dComIfGp_getReverb__Fi
/* 80BC98EC  7C 67 1B 78 */	mr r7, r3
/* 80BC98F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080174@ha */
/* 80BC98F4  38 03 01 74 */	addi r0, r3, 0x0174 /* 0x00080174@l */
/* 80BC98F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BC98FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BC9900  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BC9904  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC9908  38 81 00 0C */	addi r4, r1, 0xc
/* 80BC990C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80BC9910  38 C0 00 00 */	li r6, 0
/* 80BC9914  C0 3B 00 44 */	lfs f1, 0x44(r27)
/* 80BC9918  FC 40 08 90 */	fmr f2, f1
/* 80BC991C  C0 7B 00 78 */	lfs f3, 0x78(r27)
/* 80BC9920  FC 80 18 90 */	fmr f4, f3
/* 80BC9924  39 00 00 00 */	li r8, 0
/* 80BC9928  4B 6E 20 5C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BC992C:
/* 80BC992C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC9930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC9934  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC9938  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC993C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BC9940  7C 05 07 74 */	extsb r5, r0
/* 80BC9944  4B 46 BA 1C */	b isSwitch__10dSv_info_cCFii
/* 80BC9948  2C 03 00 00 */	cmpwi r3, 0
/* 80BC994C  40 82 02 64 */	bne lbl_80BC9BB0
/* 80BC9950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC9954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC9958  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BC995C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BC9960  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BC9964  41 82 02 4C */	beq lbl_80BC9BB0
/* 80BC9968  80 1A 05 84 */	lwz r0, 0x584(r26)
/* 80BC996C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BC9970  40 82 00 10 */	bne lbl_80BC9980
/* 80BC9974  80 1A 05 80 */	lwz r0, 0x580(r26)
/* 80BC9978  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BC997C  41 82 02 34 */	beq lbl_80BC9BB0
lbl_80BC9980:
/* 80BC9980  3B 00 00 00 */	li r24, 0
/* 80BC9984  3A E0 00 00 */	li r23, 0
/* 80BC9988  C3 9B 00 7C */	lfs f28, 0x7c(r27)
/* 80BC998C  C3 BB 00 54 */	lfs f29, 0x54(r27)
/* 80BC9990  C3 DB 00 80 */	lfs f30, 0x80(r27)
/* 80BC9994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC9998  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80BC999C  C3 FB 00 64 */	lfs f31, 0x64(r27)
/* 80BC99A0  7F 9D E3 78 */	mr r29, r28
/* 80BC99A4  7F 9E E3 78 */	mr r30, r28
/* 80BC99A8  C3 7B 00 6C */	lfs f27, 0x6c(r27)
lbl_80BC99AC:
/* 80BC99AC  D3 81 00 34 */	stfs f28, 0x34(r1)
/* 80BC99B0  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 80BC99B4  D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 80BC99B8  D3 81 00 4C */	stfs f28, 0x4c(r1)
/* 80BC99BC  D3 A1 00 50 */	stfs f29, 0x50(r1)
/* 80BC99C0  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 80BC99C4  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80BC99C8  D3 A1 00 2C */	stfs f29, 0x2c(r1)
/* 80BC99CC  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80BC99D0  D3 C1 00 58 */	stfs f30, 0x58(r1)
/* 80BC99D4  D3 A1 00 5C */	stfs f29, 0x5c(r1)
/* 80BC99D8  D3 C1 00 60 */	stfs f30, 0x60(r1)
/* 80BC99DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BC99E0  4B 44 33 84 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC99E4  7F 83 E3 78 */	mr r3, r28
/* 80BC99E8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80BC99EC  4B 44 2A 48 */	b mDoMtx_YrotM__FPA4_fs
/* 80BC99F0  3B 21 00 4C */	addi r25, r1, 0x4c
/* 80BC99F4  7F 39 BA 14 */	add r25, r25, r23
/* 80BC99F8  7F 83 E3 78 */	mr r3, r28
/* 80BC99FC  7F 24 CB 78 */	mr r4, r25
/* 80BC9A00  7F 25 CB 78 */	mr r5, r25
/* 80BC9A04  4B 77 D3 68 */	b PSMTXMultVec
/* 80BC9A08  D3 A1 00 40 */	stfs f29, 0x40(r1)
/* 80BC9A0C  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 80BC9A10  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 80BC9A14  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80BC9A18  4B 44 33 4C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC9A1C  7F A3 EB 78 */	mr r3, r29
/* 80BC9A20  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80BC9A24  4B 44 2A 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80BC9A28  7F C3 F3 78 */	mr r3, r30
/* 80BC9A2C  38 81 00 40 */	addi r4, r1, 0x40
/* 80BC9A30  7C 85 23 78 */	mr r5, r4
/* 80BC9A34  4B 77 D3 38 */	b PSMTXMultVec
/* 80BC9A38  C0 19 00 00 */	lfs f0, 0(r25)
/* 80BC9A3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BC9A40  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 80BC9A44  C0 19 00 08 */	lfs f0, 8(r25)
/* 80BC9A48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC9A4C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BC9A50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BC9A54  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80BC9A58  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BC9A5C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BC9A60  38 61 00 10 */	addi r3, r1, 0x10
/* 80BC9A64  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BC9A68  4B 77 D9 34 */	b PSVECSquareDistance
/* 80BC9A6C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80BC9A70  40 81 00 58 */	ble lbl_80BC9AC8
/* 80BC9A74  FC 00 08 34 */	frsqrte f0, f1
/* 80BC9A78  C8 9B 00 88 */	lfd f4, 0x88(r27)
/* 80BC9A7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC9A80  C8 7B 00 90 */	lfd f3, 0x90(r27)
/* 80BC9A84  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC9A88  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC9A8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC9A90  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC9A94  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC9A98  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC9A9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC9AA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC9AA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC9AA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BC9AAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BC9AB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BC9AB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BC9AB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BC9ABC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BC9AC0  FC 20 08 18 */	frsp f1, f1
/* 80BC9AC4  48 00 00 88 */	b lbl_80BC9B4C
lbl_80BC9AC8:
/* 80BC9AC8  C8 1B 00 98 */	lfd f0, 0x98(r27)
/* 80BC9ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC9AD0  40 80 00 10 */	bge lbl_80BC9AE0
/* 80BC9AD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC9AD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BC9ADC  48 00 00 70 */	b lbl_80BC9B4C
lbl_80BC9AE0:
/* 80BC9AE0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BC9AE4  80 81 00 08 */	lwz r4, 8(r1)
/* 80BC9AE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BC9AEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BC9AF0  7C 03 00 00 */	cmpw r3, r0
/* 80BC9AF4  41 82 00 14 */	beq lbl_80BC9B08
/* 80BC9AF8  40 80 00 40 */	bge lbl_80BC9B38
/* 80BC9AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80BC9B00  41 82 00 20 */	beq lbl_80BC9B20
/* 80BC9B04  48 00 00 34 */	b lbl_80BC9B38
lbl_80BC9B08:
/* 80BC9B08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC9B0C  41 82 00 0C */	beq lbl_80BC9B18
/* 80BC9B10  38 00 00 01 */	li r0, 1
/* 80BC9B14  48 00 00 28 */	b lbl_80BC9B3C
lbl_80BC9B18:
/* 80BC9B18  38 00 00 02 */	li r0, 2
/* 80BC9B1C  48 00 00 20 */	b lbl_80BC9B3C
lbl_80BC9B20:
/* 80BC9B20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BC9B24  41 82 00 0C */	beq lbl_80BC9B30
/* 80BC9B28  38 00 00 05 */	li r0, 5
/* 80BC9B2C  48 00 00 10 */	b lbl_80BC9B3C
lbl_80BC9B30:
/* 80BC9B30  38 00 00 03 */	li r0, 3
/* 80BC9B34  48 00 00 08 */	b lbl_80BC9B3C
lbl_80BC9B38:
/* 80BC9B38  38 00 00 04 */	li r0, 4
lbl_80BC9B3C:
/* 80BC9B3C  2C 00 00 01 */	cmpwi r0, 1
/* 80BC9B40  40 82 00 0C */	bne lbl_80BC9B4C
/* 80BC9B44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BC9B48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BC9B4C:
/* 80BC9B4C  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 80BC9B50  40 80 00 50 */	bge lbl_80BC9BA0
/* 80BC9B54  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80BC9B58  C0 3B 00 A0 */	lfs f1, 0xa0(r27)
/* 80BC9B5C  C0 19 00 04 */	lfs f0, 4(r25)
/* 80BC9B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC9B64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BC9B68  40 80 00 38 */	bge lbl_80BC9BA0
/* 80BC9B6C  38 00 00 05 */	li r0, 5
/* 80BC9B70  98 1F 0A 91 */	stb r0, 0xa91(r31)
/* 80BC9B74  38 00 00 01 */	li r0, 1
/* 80BC9B78  98 1F 0A 90 */	stb r0, 0xa90(r31)
/* 80BC9B7C  C0 1B 00 54 */	lfs f0, 0x54(r27)
/* 80BC9B80  D0 1F 0A A0 */	stfs f0, 0xaa0(r31)
/* 80BC9B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC9B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC9B8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC9B90  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC9B94  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BC9B98  7C 05 07 74 */	extsb r5, r0
/* 80BC9B9C  4B 46 B6 64 */	b onSwitch__10dSv_info_cFii
lbl_80BC9BA0:
/* 80BC9BA0  3B 18 00 01 */	addi r24, r24, 1
/* 80BC9BA4  2C 18 00 02 */	cmpwi r24, 2
/* 80BC9BA8  3A F7 00 0C */	addi r23, r23, 0xc
/* 80BC9BAC  41 80 FE 00 */	blt lbl_80BC99AC
lbl_80BC9BB0:
/* 80BC9BB0  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80BC9BB4  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80BC9BB8  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80BC9BBC  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80BC9BC0  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80BC9BC4  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80BC9BC8  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80BC9BCC  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80BC9BD0  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 80BC9BD4  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80BC9BD8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BC9BDC  4B 79 86 34 */	b _restgpr_23
/* 80BC9BE0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80BC9BE4  7C 08 03 A6 */	mtlr r0
/* 80BC9BE8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80BC9BEC  4E 80 00 20 */	blr 
