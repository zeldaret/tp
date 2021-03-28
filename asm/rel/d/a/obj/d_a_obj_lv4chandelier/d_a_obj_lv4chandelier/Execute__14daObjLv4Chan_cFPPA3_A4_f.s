lbl_80C648F4:
/* 80C648F4  94 21 FD A0 */	stwu r1, -0x260(r1)
/* 80C648F8  7C 08 02 A6 */	mflr r0
/* 80C648FC  90 01 02 64 */	stw r0, 0x264(r1)
/* 80C64900  DB E1 02 50 */	stfd f31, 0x250(r1)
/* 80C64904  F3 E1 02 58 */	psq_st f31, 600(r1), 0, 0 /* qr0 */
/* 80C64908  DB C1 02 40 */	stfd f30, 0x240(r1)
/* 80C6490C  F3 C1 02 48 */	psq_st f30, 584(r1), 0, 0 /* qr0 */
/* 80C64910  DB A1 02 30 */	stfd f29, 0x230(r1)
/* 80C64914  F3 A1 02 38 */	psq_st f29, 568(r1), 0, 0 /* qr0 */
/* 80C64918  DB 81 02 20 */	stfd f28, 0x220(r1)
/* 80C6491C  F3 81 02 28 */	psq_st f28, 552(r1), 0, 0 /* qr0 */
/* 80C64920  DB 61 02 10 */	stfd f27, 0x210(r1)
/* 80C64924  F3 61 02 18 */	psq_st f27, 536(r1), 0, 0 /* qr0 */
/* 80C64928  39 61 02 10 */	addi r11, r1, 0x210
/* 80C6492C  4B 6F D8 90 */	b _savegpr_21
/* 80C64930  7C 7F 1B 78 */	mr r31, r3
/* 80C64934  7C 9B 23 78 */	mr r27, r4
/* 80C64938  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C6493C  3B C3 68 60 */	addi r30, r3, l_bmdidx@l
/* 80C64940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C64944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C64948  82 E3 5D AC */	lwz r23, 0x5dac(r3)
/* 80C6494C  3B 80 00 00 */	li r28, 0
/* 80C64950  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C64954  D0 1F 24 20 */	stfs f0, 0x2420(r31)
/* 80C64958  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6495C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C64960  2C 00 00 0F */	cmpwi r0, 0xf
/* 80C64964  41 82 06 20 */	beq lbl_80C64F84
/* 80C64968  3C 60 80 C6 */	lis r3, searchSwChain__FPvPv@ha
/* 80C6496C  38 63 3F 34 */	addi r3, r3, searchSwChain__FPvPv@l
/* 80C64970  7F E4 FB 78 */	mr r4, r31
/* 80C64974  4B 3B 4E 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C64978  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C6497C  41 82 06 08 */	beq lbl_80C64F84
/* 80C64980  48 00 1C 25 */	bl checkTight__14daObjSwChain_cFv
/* 80C64984  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C64988  41 82 02 84 */	beq lbl_80C64C0C
/* 80C6498C  38 00 00 00 */	li r0, 0
/* 80C64990  98 1F 24 8B */	stb r0, 0x248b(r31)
/* 80C64994  80 7F 24 18 */	lwz r3, 0x2418(r31)
/* 80C64998  80 1F 24 84 */	lwz r0, 0x2484(r31)
/* 80C6499C  7C 03 00 00 */	cmpw r3, r0
/* 80C649A0  40 80 01 08 */	bge lbl_80C64AA8
/* 80C649A4  7E E3 BB 78 */	mr r3, r23
/* 80C649A8  81 97 06 28 */	lwz r12, 0x628(r23)
/* 80C649AC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80C649B0  7D 89 03 A6 */	mtctr r12
/* 80C649B4  4E 80 04 21 */	bctrl 
/* 80C649B8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C649BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C649C0  40 80 01 80 */	bge lbl_80C64B40
/* 80C649C4  7E E3 BB 78 */	mr r3, r23
/* 80C649C8  81 97 06 28 */	lwz r12, 0x628(r23)
/* 80C649CC  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80C649D0  7D 89 03 A6 */	mtctr r12
/* 80C649D4  4E 80 04 21 */	bctrl 
/* 80C649D8  FC 00 08 1E */	fctiwz f0, f1
/* 80C649DC  D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 80C649E0  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80C649E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C649E8  40 80 00 08 */	bge lbl_80C649F0
/* 80C649EC  38 00 00 00 */	li r0, 0
lbl_80C649F0:
/* 80C649F0  2C 00 00 09 */	cmpwi r0, 9
/* 80C649F4  40 81 00 08 */	ble lbl_80C649FC
/* 80C649F8  38 00 00 09 */	li r0, 9
lbl_80C649FC:
/* 80C649FC  80 9F 24 1C */	lwz r4, 0x241c(r31)
/* 80C64A00  54 00 10 3A */	slwi r0, r0, 2
/* 80C64A04  38 7E 00 9C */	addi r3, r30, 0x9c
/* 80C64A08  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C64A0C  7C 04 02 14 */	add r0, r4, r0
/* 80C64A10  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64A14  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64A18  2C 03 00 0A */	cmpwi r3, 0xa
/* 80C64A1C  41 80 01 24 */	blt lbl_80C64B40
/* 80C64A20  38 03 FF F6 */	addi r0, r3, -10
/* 80C64A24  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64A28  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64A2C  2C 00 00 01 */	cmpwi r0, 1
/* 80C64A30  40 82 00 28 */	bne lbl_80C64A58
/* 80C64A34  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C64A38  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C64A3C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C64A40  41 82 00 18 */	beq lbl_80C64A58
/* 80C64A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C64A48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C64A4C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C64A50  7C 05 07 74 */	extsb r5, r0
/* 80C64A54  4B 3D 07 AC */	b onSwitch__10dSv_info_cFii
lbl_80C64A58:
/* 80C64A58  80 7F 24 18 */	lwz r3, 0x2418(r31)
/* 80C64A5C  38 03 00 01 */	addi r0, r3, 1
/* 80C64A60  90 1F 24 18 */	stw r0, 0x2418(r31)
/* 80C64A64  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BA@ha */
/* 80C64A68  38 03 01 BA */	addi r0, r3, 0x01BA /* 0x000801BA@l */
/* 80C64A6C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C64A70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64A74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64A78  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64A7C  38 81 00 30 */	addi r4, r1, 0x30
/* 80C64A80  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64A84  38 C0 00 00 */	li r6, 0
/* 80C64A88  38 E0 00 00 */	li r7, 0
/* 80C64A8C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64A90  FC 40 08 90 */	fmr f2, f1
/* 80C64A94  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64A98  FC 80 18 90 */	fmr f4, f3
/* 80C64A9C  39 00 00 00 */	li r8, 0
/* 80C64AA0  4B 64 6E E4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C64AA4  48 00 00 9C */	b lbl_80C64B40
lbl_80C64AA8:
/* 80C64AA8  88 1F 24 89 */	lbz r0, 0x2489(r31)
/* 80C64AAC  28 00 00 00 */	cmplwi r0, 0
/* 80C64AB0  41 82 00 88 */	beq lbl_80C64B38
/* 80C64AB4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C64AB8  D0 21 01 84 */	stfs f1, 0x184(r1)
/* 80C64ABC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C64AC0  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80C64AC4  D0 21 01 8C */	stfs f1, 0x18c(r1)
/* 80C64AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C64ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C64AD0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C64AD4  38 80 00 03 */	li r4, 3
/* 80C64AD8  38 A0 00 1F */	li r5, 0x1f
/* 80C64ADC  38 C1 01 84 */	addi r6, r1, 0x184
/* 80C64AE0  4B 40 AF 44 */	b StartShock__12dVibration_cFii4cXyz
/* 80C64AE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C64AE8  7C 03 07 74 */	extsb r3, r0
/* 80C64AEC  4B 3C 85 80 */	b dComIfGp_getReverb__Fi
/* 80C64AF0  7C 67 1B 78 */	mr r7, r3
/* 80C64AF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008015F@ha */
/* 80C64AF8  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0008015F@l */
/* 80C64AFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C64B00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64B04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64B08  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64B0C  38 81 00 10 */	addi r4, r1, 0x10
/* 80C64B10  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64B14  38 C0 00 00 */	li r6, 0
/* 80C64B18  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64B1C  FC 40 08 90 */	fmr f2, f1
/* 80C64B20  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64B24  FC 80 18 90 */	fmr f4, f3
/* 80C64B28  39 00 00 00 */	li r8, 0
/* 80C64B2C  4B 64 6E 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C64B30  38 00 00 00 */	li r0, 0
/* 80C64B34  98 1F 24 89 */	stb r0, 0x2489(r31)
lbl_80C64B38:
/* 80C64B38  38 00 00 00 */	li r0, 0
/* 80C64B3C  90 1F 24 1C */	stw r0, 0x241c(r31)
lbl_80C64B40:
/* 80C64B40  80 1F 24 1C */	lwz r0, 0x241c(r31)
/* 80C64B44  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C64B48  40 81 00 0C */	ble lbl_80C64B54
/* 80C64B4C  38 00 00 09 */	li r0, 9
/* 80C64B50  90 1F 24 1C */	stw r0, 0x241c(r31)
lbl_80C64B54:
/* 80C64B54  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64B58  38 03 FF FE */	addi r0, r3, -2
/* 80C64B5C  C8 3E 00 60 */	lfd f1, 0x60(r30)
/* 80C64B60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64B64  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80C64B68  3C 00 43 30 */	lis r0, 0x4330
/* 80C64B6C  90 01 01 D0 */	stw r0, 0x1d0(r1)
/* 80C64B70  C8 01 01 D0 */	lfd f0, 0x1d0(r1)
/* 80C64B74  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C64B78  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80C64B7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C64B80  D0 1F 24 20 */	stfs f0, 0x2420(r31)
/* 80C64B84  C0 3F 24 20 */	lfs f1, 0x2420(r31)
/* 80C64B88  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C64B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C64B90  40 80 00 08 */	bge lbl_80C64B98
/* 80C64B94  D0 1F 24 20 */	stfs f0, 0x2420(r31)
lbl_80C64B98:
/* 80C64B98  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64B9C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 80C64BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64BA4  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80C64BA8  3C 60 43 30 */	lis r3, 0x4330
/* 80C64BAC  90 61 01 D0 */	stw r3, 0x1d0(r1)
/* 80C64BB0  C8 01 01 D0 */	lfd f0, 0x1d0(r1)
/* 80C64BB4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C64BB8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80C64BBC  80 1F 24 84 */	lwz r0, 0x2484(r31)
/* 80C64BC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64BC4  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 80C64BC8  90 61 01 D8 */	stw r3, 0x1d8(r1)
/* 80C64BCC  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 80C64BD0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C64BD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C64BD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C64BDC  40 81 00 0C */	ble lbl_80C64BE8
/* 80C64BE0  38 00 00 01 */	li r0, 1
/* 80C64BE4  98 1F 24 88 */	stb r0, 0x2488(r31)
lbl_80C64BE8:
/* 80C64BE8  88 1F 24 88 */	lbz r0, 0x2488(r31)
/* 80C64BEC  28 00 00 01 */	cmplwi r0, 1
/* 80C64BF0  40 82 00 10 */	bne lbl_80C64C00
/* 80C64BF4  38 00 00 00 */	li r0, 0
/* 80C64BF8  98 1F 24 8A */	stb r0, 0x248a(r31)
/* 80C64BFC  48 00 02 7C */	b lbl_80C64E78
lbl_80C64C00:
/* 80C64C00  38 00 00 01 */	li r0, 1
/* 80C64C04  98 1F 24 8A */	stb r0, 0x248a(r31)
/* 80C64C08  48 00 02 70 */	b lbl_80C64E78
lbl_80C64C0C:
/* 80C64C0C  88 1D 0A 62 */	lbz r0, 0xa62(r29)
/* 80C64C10  28 00 00 01 */	cmplwi r0, 1
/* 80C64C14  41 82 02 64 */	beq lbl_80C64E78
/* 80C64C18  80 7F 24 18 */	lwz r3, 0x2418(r31)
/* 80C64C1C  80 1F 24 84 */	lwz r0, 0x2484(r31)
/* 80C64C20  7C 03 00 00 */	cmpw r3, r0
/* 80C64C24  40 82 01 18 */	bne lbl_80C64D3C
/* 80C64C28  88 1F 24 8B */	lbz r0, 0x248b(r31)
/* 80C64C2C  28 00 00 00 */	cmplwi r0, 0
/* 80C64C30  40 82 00 4C */	bne lbl_80C64C7C
/* 80C64C34  38 00 00 01 */	li r0, 1
/* 80C64C38  98 1F 24 8B */	stb r0, 0x248b(r31)
/* 80C64C3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BB@ha */
/* 80C64C40  38 03 01 BB */	addi r0, r3, 0x01BB /* 0x000801BB@l */
/* 80C64C44  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C64C48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64C4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64C50  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64C54  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C64C58  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64C5C  38 C0 00 00 */	li r6, 0
/* 80C64C60  38 E0 00 00 */	li r7, 0
/* 80C64C64  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64C68  FC 40 08 90 */	fmr f2, f1
/* 80C64C6C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64C70  FC 80 18 90 */	fmr f4, f3
/* 80C64C74  39 00 00 00 */	li r8, 0
/* 80C64C78  4B 64 6D 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C64C7C:
/* 80C64C7C  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64C80  38 03 00 01 */	addi r0, r3, 1
/* 80C64C84  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64C88  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64C8C  2C 03 00 78 */	cmpwi r3, 0x78
/* 80C64C90  40 80 00 10 */	bge lbl_80C64CA0
/* 80C64C94  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C64C98  D0 1F 24 20 */	stfs f0, 0x2420(r31)
/* 80C64C9C  48 00 01 40 */	b lbl_80C64DDC
lbl_80C64CA0:
/* 80C64CA0  38 03 FF 88 */	addi r0, r3, -120
/* 80C64CA4  C8 3E 00 60 */	lfd f1, 0x60(r30)
/* 80C64CA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64CAC  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 80C64CB0  3C 00 43 30 */	lis r0, 0x4330
/* 80C64CB4  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 80C64CB8  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 80C64CBC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C64CC0  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80C64CC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C64CC8  D0 1F 24 20 */	stfs f0, 0x2420(r31)
/* 80C64CCC  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64CD0  38 03 FF 88 */	addi r0, r3, -120
/* 80C64CD4  2C 00 00 03 */	cmpwi r0, 3
/* 80C64CD8  40 81 00 20 */	ble lbl_80C64CF8
/* 80C64CDC  38 00 00 00 */	li r0, 0
/* 80C64CE0  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64CE4  80 7F 24 18 */	lwz r3, 0x2418(r31)
/* 80C64CE8  38 03 FF FF */	addi r0, r3, -1
/* 80C64CEC  90 1F 24 18 */	stw r0, 0x2418(r31)
/* 80C64CF0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C64CF4  D0 1F 24 20 */	stfs f0, 0x2420(r31)
lbl_80C64CF8:
/* 80C64CF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BC@ha */
/* 80C64CFC  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000801BC@l */
/* 80C64D00  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C64D04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64D08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64D0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64D10  38 81 00 28 */	addi r4, r1, 0x28
/* 80C64D14  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64D18  38 C0 00 00 */	li r6, 0
/* 80C64D1C  38 E0 00 00 */	li r7, 0
/* 80C64D20  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64D24  FC 40 08 90 */	fmr f2, f1
/* 80C64D28  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64D2C  FC 80 18 90 */	fmr f4, f3
/* 80C64D30  39 00 00 00 */	li r8, 0
/* 80C64D34  4B 64 77 D8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C64D38  48 00 00 A4 */	b lbl_80C64DDC
lbl_80C64D3C:
/* 80C64D3C  2C 03 00 01 */	cmpwi r3, 1
/* 80C64D40  40 81 00 9C */	ble lbl_80C64DDC
/* 80C64D44  80 7F 24 1C */	lwz r3, 0x241c(r31)
/* 80C64D48  38 03 00 01 */	addi r0, r3, 1
/* 80C64D4C  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64D50  80 1F 24 1C */	lwz r0, 0x241c(r31)
/* 80C64D54  2C 00 00 03 */	cmpwi r0, 3
/* 80C64D58  41 80 00 18 */	blt lbl_80C64D70
/* 80C64D5C  38 00 00 00 */	li r0, 0
/* 80C64D60  90 1F 24 1C */	stw r0, 0x241c(r31)
/* 80C64D64  80 7F 24 18 */	lwz r3, 0x2418(r31)
/* 80C64D68  38 03 FF FF */	addi r0, r3, -1
/* 80C64D6C  90 1F 24 18 */	stw r0, 0x2418(r31)
lbl_80C64D70:
/* 80C64D70  80 1F 24 1C */	lwz r0, 0x241c(r31)
/* 80C64D74  C8 3E 00 60 */	lfd f1, 0x60(r30)
/* 80C64D78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64D7C  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 80C64D80  3C 00 43 30 */	lis r0, 0x4330
/* 80C64D84  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 80C64D88  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 80C64D8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C64D90  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80C64D94  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C64D98  D0 1F 24 20 */	stfs f0, 0x2420(r31)
/* 80C64D9C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801BC@ha */
/* 80C64DA0  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000801BC@l */
/* 80C64DA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C64DA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64DAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64DB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64DB4  38 81 00 24 */	addi r4, r1, 0x24
/* 80C64DB8  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64DBC  38 C0 00 00 */	li r6, 0
/* 80C64DC0  38 E0 00 00 */	li r7, 0
/* 80C64DC4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64DC8  FC 40 08 90 */	fmr f2, f1
/* 80C64DCC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64DD0  FC 80 18 90 */	fmr f4, f3
/* 80C64DD4  39 00 00 00 */	li r8, 0
/* 80C64DD8  4B 64 77 34 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C64DDC:
/* 80C64DDC  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64DE0  2C 00 00 01 */	cmpwi r0, 1
/* 80C64DE4  40 82 00 94 */	bne lbl_80C64E78
/* 80C64DE8  88 1F 24 8A */	lbz r0, 0x248a(r31)
/* 80C64DEC  28 00 00 00 */	cmplwi r0, 0
/* 80C64DF0  41 82 00 88 */	beq lbl_80C64E78
/* 80C64DF4  38 00 00 00 */	li r0, 0
/* 80C64DF8  98 1F 24 8A */	stb r0, 0x248a(r31)
/* 80C64DFC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C64E00  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 80C64E04  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C64E08  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80C64E0C  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 80C64E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C64E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C64E18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C64E1C  38 80 00 04 */	li r4, 4
/* 80C64E20  38 A0 00 1F */	li r5, 0x1f
/* 80C64E24  38 C1 01 78 */	addi r6, r1, 0x178
/* 80C64E28  4B 40 AB FC */	b StartShock__12dVibration_cFii4cXyz
/* 80C64E2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C64E30  7C 03 07 74 */	extsb r3, r0
/* 80C64E34  4B 3C 82 38 */	b dComIfGp_getReverb__Fi
/* 80C64E38  7C 67 1B 78 */	mr r7, r3
/* 80C64E3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080161@ha */
/* 80C64E40  38 03 01 61 */	addi r0, r3, 0x0161 /* 0x00080161@l */
/* 80C64E44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C64E48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64E4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64E50  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64E54  38 81 00 0C */	addi r4, r1, 0xc
/* 80C64E58  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64E5C  38 C0 00 00 */	li r6, 0
/* 80C64E60  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64E64  FC 40 08 90 */	fmr f2, f1
/* 80C64E68  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64E6C  FC 80 18 90 */	fmr f4, f3
/* 80C64E70  39 00 00 00 */	li r8, 0
/* 80C64E74  4B 64 6B 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C64E78:
/* 80C64E78  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64E7C  2C 00 00 01 */	cmpwi r0, 1
/* 80C64E80  40 82 00 94 */	bne lbl_80C64F14
/* 80C64E84  88 1F 24 88 */	lbz r0, 0x2488(r31)
/* 80C64E88  28 00 00 00 */	cmplwi r0, 0
/* 80C64E8C  41 82 00 88 */	beq lbl_80C64F14
/* 80C64E90  38 00 00 00 */	li r0, 0
/* 80C64E94  98 1F 24 88 */	stb r0, 0x2488(r31)
/* 80C64E98  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C64E9C  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 80C64EA0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C64EA4  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80C64EA8  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 80C64EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C64EB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C64EB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C64EB8  38 80 00 08 */	li r4, 8
/* 80C64EBC  38 A0 00 1F */	li r5, 0x1f
/* 80C64EC0  38 C1 01 6C */	addi r6, r1, 0x16c
/* 80C64EC4  4B 40 AB 60 */	b StartShock__12dVibration_cFii4cXyz
/* 80C64EC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C64ECC  7C 03 07 74 */	extsb r3, r0
/* 80C64ED0  4B 3C 81 9C */	b dComIfGp_getReverb__Fi
/* 80C64ED4  7C 67 1B 78 */	mr r7, r3
/* 80C64ED8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080160@ha */
/* 80C64EDC  38 03 01 60 */	addi r0, r3, 0x0160 /* 0x00080160@l */
/* 80C64EE0  90 01 00 08 */	stw r0, 8(r1)
/* 80C64EE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C64EE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C64EEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C64EF0  38 81 00 08 */	addi r4, r1, 8
/* 80C64EF4  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C64EF8  38 C0 00 00 */	li r6, 0
/* 80C64EFC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64F00  FC 40 08 90 */	fmr f2, f1
/* 80C64F04  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C64F08  FC 80 18 90 */	fmr f4, f3
/* 80C64F0C  39 00 00 00 */	li r8, 0
/* 80C64F10  4B 64 6A 74 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C64F14:
/* 80C64F14  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64F18  2C 00 00 01 */	cmpwi r0, 1
/* 80C64F1C  41 81 00 10 */	bgt lbl_80C64F2C
/* 80C64F20  38 00 00 01 */	li r0, 1
/* 80C64F24  90 1F 24 18 */	stw r0, 0x2418(r31)
/* 80C64F28  98 1F 24 89 */	stb r0, 0x2489(r31)
lbl_80C64F2C:
/* 80C64F2C  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64F30  80 7F 24 84 */	lwz r3, 0x2484(r31)
/* 80C64F34  7C 00 18 00 */	cmpw r0, r3
/* 80C64F38  40 81 00 08 */	ble lbl_80C64F40
/* 80C64F3C  90 7F 24 18 */	stw r3, 0x2418(r31)
lbl_80C64F40:
/* 80C64F40  80 9F 24 84 */	lwz r4, 0x2484(r31)
/* 80C64F44  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C64F48  7C 00 20 50 */	subf r0, r0, r4
/* 80C64F4C  C8 5E 00 60 */	lfd f2, 0x60(r30)
/* 80C64F50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C64F54  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 80C64F58  3C 60 43 30 */	lis r3, 0x4330
/* 80C64F5C  90 61 01 D8 */	stw r3, 0x1d8(r1)
/* 80C64F60  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 80C64F64  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C64F68  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80C64F6C  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80C64F70  90 61 01 D0 */	stw r3, 0x1d0(r1)
/* 80C64F74  C8 01 01 D0 */	lfd f0, 0x1d0(r1)
/* 80C64F78  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C64F7C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C64F80  D0 1D 0A 98 */	stfs f0, 0xa98(r29)
lbl_80C64F84:
/* 80C64F84  C0 3F 24 20 */	lfs f1, 0x2420(r31)
/* 80C64F88  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80C64F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C64F90  40 81 00 08 */	ble lbl_80C64F98
/* 80C64F94  D0 1F 24 20 */	stfs f0, 0x2420(r31)
lbl_80C64F98:
/* 80C64F98  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80C64F9C  C0 1F 24 20 */	lfs f0, 0x2420(r31)
/* 80C64FA0  EF 81 00 32 */	fmuls f28, f1, f0
/* 80C64FA4  2C 1C 00 00 */	cmpwi r28, 0
/* 80C64FA8  40 82 00 0C */	bne lbl_80C64FB4
/* 80C64FAC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C64FB0  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_80C64FB4:
/* 80C64FB4  38 60 00 00 */	li r3, 0
/* 80C64FB8  7C 64 1B 78 */	mr r4, r3
/* 80C64FBC  38 00 00 08 */	li r0, 8
/* 80C64FC0  7C 09 03 A6 */	mtctr r0
lbl_80C64FC4:
/* 80C64FC4  7C BF 1A 14 */	add r5, r31, r3
/* 80C64FC8  80 05 23 D8 */	lwz r0, 0x23d8(r5)
/* 80C64FCC  90 05 23 F8 */	stw r0, 0x23f8(r5)
/* 80C64FD0  90 85 23 D8 */	stw r4, 0x23d8(r5)
/* 80C64FD4  38 63 00 04 */	addi r3, r3, 4
/* 80C64FD8  42 00 FF EC */	bdnz lbl_80C64FC4
/* 80C64FDC  38 00 00 00 */	li r0, 0
/* 80C64FE0  90 1F 23 D4 */	stw r0, 0x23d4(r31)
/* 80C64FE4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C64FE8  4B 60 29 6C */	b cM_rndF__Ff
/* 80C64FEC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80C64FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C64FF4  40 80 01 48 */	bge lbl_80C6513C
/* 80C64FF8  38 61 01 60 */	addi r3, r1, 0x160
/* 80C64FFC  4B 3F 5B 04 */	b dKyw_get_wind_vecpow__Fv
/* 80C65000  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 80C65004  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80C65008  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80C6500C  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80C65010  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80C65014  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80C65018  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80C6501C  4B 60 29 38 */	b cM_rndF__Ff
/* 80C65020  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80C65024  7C 64 1B 78 */	mr r4, r3
/* 80C65028  4B 6E 20 B0 */	b PSVECScale
/* 80C6502C  82 DF 24 18 */	lwz r22, 0x2418(r31)
/* 80C65030  1F 16 00 28 */	mulli r24, r22, 0x28
/* 80C65034  48 00 00 20 */	b lbl_80C65054
lbl_80C65038:
/* 80C65038  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C6503C  7C 60 C2 14 */	add r3, r0, r24
/* 80C65040  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C65044  7C 65 1B 78 */	mr r5, r3
/* 80C65048  4B 6E 20 48 */	b PSVECAdd
/* 80C6504C  3A D6 00 01 */	addi r22, r22, 1
/* 80C65050  3B 18 00 28 */	addi r24, r24, 0x28
lbl_80C65054:
/* 80C65054  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 80C65058  7C 16 00 00 */	cmpw r22, r0
/* 80C6505C  41 80 FF DC */	blt lbl_80C65038
/* 80C65060  82 DF 24 18 */	lwz r22, 0x2418(r31)
/* 80C65064  1F 16 00 28 */	mulli r24, r22, 0x28
/* 80C65068  48 00 00 20 */	b lbl_80C65088
lbl_80C6506C:
/* 80C6506C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C65070  7C 60 C2 14 */	add r3, r0, r24
/* 80C65074  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C65078  7C 65 1B 78 */	mr r5, r3
/* 80C6507C  4B 6E 20 14 */	b PSVECAdd
/* 80C65080  3A D6 00 01 */	addi r22, r22, 1
/* 80C65084  3B 18 00 28 */	addi r24, r24, 0x28
lbl_80C65088:
/* 80C65088  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C6508C  7C 16 00 00 */	cmpw r22, r0
/* 80C65090  41 80 FF DC */	blt lbl_80C6506C
/* 80C65094  82 DF 24 18 */	lwz r22, 0x2418(r31)
/* 80C65098  1F 16 00 28 */	mulli r24, r22, 0x28
/* 80C6509C  48 00 00 20 */	b lbl_80C650BC
lbl_80C650A0:
/* 80C650A0  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C650A4  7C 60 C2 14 */	add r3, r0, r24
/* 80C650A8  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C650AC  7C 65 1B 78 */	mr r5, r3
/* 80C650B0  4B 6E 1F E0 */	b PSVECAdd
/* 80C650B4  3A D6 00 01 */	addi r22, r22, 1
/* 80C650B8  3B 18 00 28 */	addi r24, r24, 0x28
lbl_80C650BC:
/* 80C650BC  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80C650C0  7C 16 00 00 */	cmpw r22, r0
/* 80C650C4  41 80 FF DC */	blt lbl_80C650A0
/* 80C650C8  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80C650CC  4B 60 28 88 */	b cM_rndF__Ff
/* 80C650D0  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 80C650D4  7C 64 1B 78 */	mr r4, r3
/* 80C650D8  4B 6E 20 00 */	b PSVECScale
/* 80C650DC  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80C650E0  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80C650E4  38 03 FF FF */	addi r0, r3, -1
/* 80C650E8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C650EC  7C 64 02 14 */	add r3, r4, r0
/* 80C650F0  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C650F4  7C 65 1B 78 */	mr r5, r3
/* 80C650F8  4B 6E 1F 98 */	b PSVECAdd
/* 80C650FC  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C65100  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80C65104  38 03 FF FF */	addi r0, r3, -1
/* 80C65108  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C6510C  7C 64 02 14 */	add r3, r4, r0
/* 80C65110  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C65114  7C 65 1B 78 */	mr r5, r3
/* 80C65118  4B 6E 1F 78 */	b PSVECAdd
/* 80C6511C  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C65120  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C65124  38 03 FF FF */	addi r0, r3, -1
/* 80C65128  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80C6512C  7C 64 02 14 */	add r3, r4, r0
/* 80C65130  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80C65134  7C 65 1B 78 */	mr r5, r3
/* 80C65138  4B 6E 1F 58 */	b PSVECAdd
lbl_80C6513C:
/* 80C6513C  3B A0 00 00 */	li r29, 0
/* 80C65140  3B 40 00 00 */	li r26, 0
/* 80C65144  3B 20 00 00 */	li r25, 0
/* 80C65148  3B 00 00 00 */	li r24, 0
lbl_80C6514C:
/* 80C6514C  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80C65150  38 03 FF FF */	addi r0, r3, -1
/* 80C65154  7E D8 00 51 */	subf. r22, r24, r0
/* 80C65158  41 80 01 04 */	blt lbl_80C6525C
/* 80C6515C  7F 9F CA 14 */	add r28, r31, r25
/* 80C65160  3A FC 06 7C */	addi r23, r28, 0x67c
/* 80C65164  7E E3 BB 78 */	mr r3, r23
/* 80C65168  4B 41 F2 F8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6516C  28 03 00 00 */	cmplwi r3, 0
/* 80C65170  41 82 00 EC */	beq lbl_80C6525C
/* 80C65174  7E E3 BB 78 */	mr r3, r23
/* 80C65178  4B 41 F3 80 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C6517C  7C 77 1B 78 */	mr r23, r3
/* 80C65180  4B 5F E8 C8 */	b GetAc__8cCcD_ObjFv
/* 80C65184  7C 65 1B 78 */	mr r5, r3
/* 80C65188  38 61 01 54 */	addi r3, r1, 0x154
/* 80C6518C  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C65190  1E D6 00 28 */	mulli r22, r22, 0x28
/* 80C65194  38 96 00 0C */	addi r4, r22, 0xc
/* 80C65198  7C 80 22 14 */	add r4, r0, r4
/* 80C6519C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C651A0  4B 60 19 94 */	b __mi__4cXyzCFRC3Vec
/* 80C651A4  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80C651A8  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80C651AC  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 80C651B0  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80C651B4  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80C651B8  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80C651BC  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80C651C0  4B 6E 1F 78 */	b PSVECSquareMag
/* 80C651C4  FC 00 0A 10 */	fabs f0, f1
/* 80C651C8  FC 20 00 18 */	frsp f1, f0
/* 80C651CC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C651D0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C651D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C651D8  41 80 00 34 */	blt lbl_80C6520C
/* 80C651DC  38 61 01 48 */	addi r3, r1, 0x148
/* 80C651E0  38 81 01 B4 */	addi r4, r1, 0x1b4
/* 80C651E4  4B 60 1D 10 */	b normalize__4cXyzFv
/* 80C651E8  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80C651EC  7C 64 1B 78 */	mr r4, r3
/* 80C651F0  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80C651F4  4B 6E 1E E4 */	b PSVECScale
/* 80C651F8  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C651FC  7C 60 B2 14 */	add r3, r0, r22
/* 80C65200  38 81 01 B4 */	addi r4, r1, 0x1b4
/* 80C65204  7C 65 1B 78 */	mr r5, r3
/* 80C65208  4B 6E 1E 88 */	b PSVECAdd
lbl_80C6520C:
/* 80C6520C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C65210  40 82 00 4C */	bne lbl_80C6525C
/* 80C65214  3B A0 00 01 */	li r29, 1
/* 80C65218  88 77 00 74 */	lbz r3, 0x74(r23)
/* 80C6521C  38 80 00 00 */	li r4, 0
/* 80C65220  4B 41 F3 90 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80C65224  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C65228  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6522C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C65230  80 63 00 00 */	lwz r3, 0(r3)
/* 80C65234  38 81 00 20 */	addi r4, r1, 0x20
/* 80C65238  38 BC 07 A0 */	addi r5, r28, 0x7a0
/* 80C6523C  38 C0 00 35 */	li r6, 0x35
/* 80C65240  38 E0 00 00 */	li r7, 0
/* 80C65244  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65248  FC 40 08 90 */	fmr f2, f1
/* 80C6524C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C65250  FC 80 18 90 */	fmr f4, f3
/* 80C65254  39 00 00 00 */	li r8, 0
/* 80C65258  4B 64 67 2C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6525C:
/* 80C6525C  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80C65260  38 03 FF FF */	addi r0, r3, -1
/* 80C65264  7E B8 00 51 */	subf. r21, r24, r0
/* 80C65268  41 80 01 04 */	blt lbl_80C6536C
/* 80C6526C  7F 9F CA 14 */	add r28, r31, r25
/* 80C65270  3A DC 10 3C */	addi r22, r28, 0x103c
/* 80C65274  7E C3 B3 78 */	mr r3, r22
/* 80C65278  4B 41 F1 E8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6527C  28 03 00 00 */	cmplwi r3, 0
/* 80C65280  41 82 00 EC */	beq lbl_80C6536C
/* 80C65284  7E C3 B3 78 */	mr r3, r22
/* 80C65288  4B 41 F2 70 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C6528C  7C 77 1B 78 */	mr r23, r3
/* 80C65290  4B 5F E7 B8 */	b GetAc__8cCcD_ObjFv
/* 80C65294  7C 65 1B 78 */	mr r5, r3
/* 80C65298  38 61 01 3C */	addi r3, r1, 0x13c
/* 80C6529C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C652A0  1E D5 00 28 */	mulli r22, r21, 0x28
/* 80C652A4  38 96 00 0C */	addi r4, r22, 0xc
/* 80C652A8  7C 80 22 14 */	add r4, r0, r4
/* 80C652AC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C652B0  4B 60 18 84 */	b __mi__4cXyzCFRC3Vec
/* 80C652B4  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80C652B8  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80C652BC  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 80C652C0  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80C652C4  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 80C652C8  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80C652CC  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80C652D0  4B 6E 1E 68 */	b PSVECSquareMag
/* 80C652D4  FC 00 0A 10 */	fabs f0, f1
/* 80C652D8  FC 20 00 18 */	frsp f1, f0
/* 80C652DC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C652E0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C652E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C652E8  41 80 00 34 */	blt lbl_80C6531C
/* 80C652EC  38 61 01 30 */	addi r3, r1, 0x130
/* 80C652F0  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80C652F4  4B 60 1C 00 */	b normalize__4cXyzFv
/* 80C652F8  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80C652FC  7C 64 1B 78 */	mr r4, r3
/* 80C65300  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80C65304  4B 6E 1D D4 */	b PSVECScale
/* 80C65308  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C6530C  7C 60 B2 14 */	add r3, r0, r22
/* 80C65310  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80C65314  7C 65 1B 78 */	mr r5, r3
/* 80C65318  4B 6E 1D 78 */	b PSVECAdd
lbl_80C6531C:
/* 80C6531C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C65320  40 82 00 4C */	bne lbl_80C6536C
/* 80C65324  3B A0 00 01 */	li r29, 1
/* 80C65328  88 77 00 74 */	lbz r3, 0x74(r23)
/* 80C6532C  38 80 00 00 */	li r4, 0
/* 80C65330  4B 41 F2 80 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80C65334  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80C65338  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6533C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C65340  80 63 00 00 */	lwz r3, 0(r3)
/* 80C65344  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C65348  38 BC 11 60 */	addi r5, r28, 0x1160
/* 80C6534C  38 C0 00 35 */	li r6, 0x35
/* 80C65350  38 E0 00 00 */	li r7, 0
/* 80C65354  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65358  FC 40 08 90 */	fmr f2, f1
/* 80C6535C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C65360  FC 80 18 90 */	fmr f4, f3
/* 80C65364  39 00 00 00 */	li r8, 0
/* 80C65368  4B 64 66 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6536C:
/* 80C6536C  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C65370  38 03 FF FF */	addi r0, r3, -1
/* 80C65374  7E B8 00 51 */	subf. r21, r24, r0
/* 80C65378  41 80 01 04 */	blt lbl_80C6547C
/* 80C6537C  7F 9F CA 14 */	add r28, r31, r25
/* 80C65380  3A DC 19 FC */	addi r22, r28, 0x19fc
/* 80C65384  7E C3 B3 78 */	mr r3, r22
/* 80C65388  4B 41 F0 D8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6538C  28 03 00 00 */	cmplwi r3, 0
/* 80C65390  41 82 00 EC */	beq lbl_80C6547C
/* 80C65394  7E C3 B3 78 */	mr r3, r22
/* 80C65398  4B 41 F1 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80C6539C  7C 77 1B 78 */	mr r23, r3
/* 80C653A0  4B 5F E6 A8 */	b GetAc__8cCcD_ObjFv
/* 80C653A4  7C 65 1B 78 */	mr r5, r3
/* 80C653A8  38 61 01 24 */	addi r3, r1, 0x124
/* 80C653AC  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C653B0  1E D5 00 28 */	mulli r22, r21, 0x28
/* 80C653B4  38 96 00 0C */	addi r4, r22, 0xc
/* 80C653B8  7C 80 22 14 */	add r4, r0, r4
/* 80C653BC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C653C0  4B 60 17 74 */	b __mi__4cXyzCFRC3Vec
/* 80C653C4  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80C653C8  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80C653CC  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 80C653D0  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80C653D4  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 80C653D8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80C653DC  38 61 01 9C */	addi r3, r1, 0x19c
/* 80C653E0  4B 6E 1D 58 */	b PSVECSquareMag
/* 80C653E4  FC 00 0A 10 */	fabs f0, f1
/* 80C653E8  FC 20 00 18 */	frsp f1, f0
/* 80C653EC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C653F0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C653F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C653F8  41 80 00 34 */	blt lbl_80C6542C
/* 80C653FC  38 61 01 18 */	addi r3, r1, 0x118
/* 80C65400  38 81 01 9C */	addi r4, r1, 0x19c
/* 80C65404  4B 60 1A F0 */	b normalize__4cXyzFv
/* 80C65408  38 61 01 9C */	addi r3, r1, 0x19c
/* 80C6540C  7C 64 1B 78 */	mr r4, r3
/* 80C65410  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80C65414  4B 6E 1C C4 */	b PSVECScale
/* 80C65418  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C6541C  7C 60 B2 14 */	add r3, r0, r22
/* 80C65420  38 81 01 9C */	addi r4, r1, 0x19c
/* 80C65424  7C 65 1B 78 */	mr r5, r3
/* 80C65428  4B 6E 1C 68 */	b PSVECAdd
lbl_80C6542C:
/* 80C6542C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C65430  40 82 00 4C */	bne lbl_80C6547C
/* 80C65434  3B A0 00 01 */	li r29, 1
/* 80C65438  88 77 00 74 */	lbz r3, 0x74(r23)
/* 80C6543C  38 80 00 00 */	li r4, 0
/* 80C65440  4B 41 F1 70 */	b getHitSeID__12dCcD_GObjInfFUci
/* 80C65444  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C65448  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6544C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C65450  80 63 00 00 */	lwz r3, 0(r3)
/* 80C65454  38 81 00 18 */	addi r4, r1, 0x18
/* 80C65458  38 BC 1B 20 */	addi r5, r28, 0x1b20
/* 80C6545C  38 C0 00 35 */	li r6, 0x35
/* 80C65460  38 E0 00 00 */	li r7, 0
/* 80C65464  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65468  FC 40 08 90 */	fmr f2, f1
/* 80C6546C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C65470  FC 80 18 90 */	fmr f4, f3
/* 80C65474  39 00 00 00 */	li r8, 0
/* 80C65478  4B 64 65 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6547C:
/* 80C6547C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C65480  2C 1A 00 08 */	cmpwi r26, 8
/* 80C65484  3B 39 01 38 */	addi r25, r25, 0x138
/* 80C65488  3B 18 00 02 */	addi r24, r24, 2
/* 80C6548C  41 80 FC C0 */	blt lbl_80C6514C
/* 80C65490  82 BF 24 18 */	lwz r21, 0x2418(r31)
/* 80C65494  C3 7E 00 E0 */	lfs f27, 0xe0(r30)
/* 80C65498  1F 35 00 28 */	mulli r25, r21, 0x28
/* 80C6549C  48 00 00 54 */	b lbl_80C654F0
lbl_80C654A0:
/* 80C654A0  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C654A4  7C 60 CA 14 */	add r3, r0, r25
/* 80C654A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C654AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C654B0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C654B4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C654B8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C654BC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C654C0  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80C654C4  38 19 00 04 */	addi r0, r25, 4
/* 80C654C8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C654CC  EC 00 D8 2A */	fadds f0, f0, f27
/* 80C654D0  7C 03 05 2E */	stfsx f0, r3, r0
/* 80C654D4  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C654D8  7C 80 CA 14 */	add r4, r0, r25
/* 80C654DC  38 64 00 0C */	addi r3, r4, 0xc
/* 80C654E0  7C 65 1B 78 */	mr r5, r3
/* 80C654E4  4B 6E 1B AC */	b PSVECAdd
/* 80C654E8  3A B5 00 01 */	addi r21, r21, 1
/* 80C654EC  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C654F0:
/* 80C654F0  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 80C654F4  7C 15 00 00 */	cmpw r21, r0
/* 80C654F8  41 80 FF A8 */	blt lbl_80C654A0
/* 80C654FC  82 BF 24 18 */	lwz r21, 0x2418(r31)
/* 80C65500  C3 7E 00 E0 */	lfs f27, 0xe0(r30)
/* 80C65504  1F 35 00 28 */	mulli r25, r21, 0x28
/* 80C65508  48 00 00 54 */	b lbl_80C6555C
lbl_80C6550C:
/* 80C6550C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C65510  7C 60 CA 14 */	add r3, r0, r25
/* 80C65514  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C65518  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C6551C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C65520  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C65524  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C65528  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C6552C  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80C65530  38 19 00 04 */	addi r0, r25, 4
/* 80C65534  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C65538  EC 00 D8 2A */	fadds f0, f0, f27
/* 80C6553C  7C 03 05 2E */	stfsx f0, r3, r0
/* 80C65540  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C65544  7C 80 CA 14 */	add r4, r0, r25
/* 80C65548  38 64 00 0C */	addi r3, r4, 0xc
/* 80C6554C  7C 65 1B 78 */	mr r5, r3
/* 80C65550  4B 6E 1B 40 */	b PSVECAdd
/* 80C65554  3A B5 00 01 */	addi r21, r21, 1
/* 80C65558  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C6555C:
/* 80C6555C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C65560  7C 15 00 00 */	cmpw r21, r0
/* 80C65564  41 80 FF A8 */	blt lbl_80C6550C
/* 80C65568  82 BF 24 18 */	lwz r21, 0x2418(r31)
/* 80C6556C  C3 7E 00 E0 */	lfs f27, 0xe0(r30)
/* 80C65570  1F 35 00 28 */	mulli r25, r21, 0x28
/* 80C65574  48 00 00 54 */	b lbl_80C655C8
lbl_80C65578:
/* 80C65578  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C6557C  7C 60 CA 14 */	add r3, r0, r25
/* 80C65580  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C65584  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C65588  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C6558C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C65590  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80C65594  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C65598  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80C6559C  38 19 00 04 */	addi r0, r25, 4
/* 80C655A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C655A4  EC 00 D8 2A */	fadds f0, f0, f27
/* 80C655A8  7C 03 05 2E */	stfsx f0, r3, r0
/* 80C655AC  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C655B0  7C 80 CA 14 */	add r4, r0, r25
/* 80C655B4  38 64 00 0C */	addi r3, r4, 0xc
/* 80C655B8  7C 65 1B 78 */	mr r5, r3
/* 80C655BC  4B 6E 1A D4 */	b PSVECAdd
/* 80C655C0  3A B5 00 01 */	addi r21, r21, 1
/* 80C655C4  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C655C8:
/* 80C655C8  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80C655CC  7C 15 00 00 */	cmpw r21, r0
/* 80C655D0  41 80 FF A8 */	blt lbl_80C65578
/* 80C655D4  3B 40 00 00 */	li r26, 0
/* 80C655D8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80C655DC  3B 83 0C F4 */	addi r28, r3, Zero__4cXyz@l
/* 80C655E0  C3 BE 00 30 */	lfs f29, 0x30(r30)
/* 80C655E4  C3 DE 00 34 */	lfs f30, 0x34(r30)
/* 80C655E8  C3 FE 00 38 */	lfs f31, 0x38(r30)
/* 80C655EC  C3 7E 00 3C */	lfs f27, 0x3c(r30)
lbl_80C655F0:
/* 80C655F0  83 BF 24 18 */	lwz r29, 0x2418(r31)
/* 80C655F4  1F 3D 00 28 */	mulli r25, r29, 0x28
/* 80C655F8  48 00 00 E8 */	b lbl_80C656E0
lbl_80C655FC:
/* 80C655FC  7C 1D 00 00 */	cmpw r29, r0
/* 80C65600  41 82 00 80 */	beq lbl_80C65680
/* 80C65604  80 DF 06 1C */	lwz r6, 0x61c(r31)
/* 80C65608  38 61 01 0C */	addi r3, r1, 0x10c
/* 80C6560C  38 1D FF FF */	addi r0, r29, -1
/* 80C65610  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65614  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65618  7C 86 22 14 */	add r4, r6, r4
/* 80C6561C  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C65620  7C A6 2A 14 */	add r5, r6, r5
/* 80C65624  4B 60 14 C0 */	b __pl__4cXyzCFRC3Vec
/* 80C65628  38 61 01 00 */	addi r3, r1, 0x100
/* 80C6562C  38 81 01 0C */	addi r4, r1, 0x10c
/* 80C65630  80 DF 06 1C */	lwz r6, 0x61c(r31)
/* 80C65634  38 1D 00 01 */	addi r0, r29, 1
/* 80C65638  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C6563C  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C65640  7C A6 2A 14 */	add r5, r6, r5
/* 80C65644  4B 60 14 A0 */	b __pl__4cXyzCFRC3Vec
/* 80C65648  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80C6564C  38 81 01 00 */	addi r4, r1, 0x100
/* 80C65650  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C65654  4B 60 15 30 */	b __ml__4cXyzCFf
/* 80C65658  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C6565C  38 79 00 0C */	addi r3, r25, 0xc
/* 80C65660  7C 60 1A 14 */	add r3, r0, r3
/* 80C65664  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80C65668  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6566C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80C65670  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C65674  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80C65678  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C6567C  48 00 00 5C */	b lbl_80C656D8
lbl_80C65680:
/* 80C65680  80 DF 06 1C */	lwz r6, 0x61c(r31)
/* 80C65684  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80C65688  38 1D FF FF */	addi r0, r29, -1
/* 80C6568C  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65690  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65694  7C 86 22 14 */	add r4, r6, r4
/* 80C65698  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C6569C  7C A6 2A 14 */	add r5, r6, r5
/* 80C656A0  4B 60 14 44 */	b __pl__4cXyzCFRC3Vec
/* 80C656A4  38 61 00 DC */	addi r3, r1, 0xdc
/* 80C656A8  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80C656AC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80C656B0  4B 60 14 D4 */	b __ml__4cXyzCFf
/* 80C656B4  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C656B8  38 79 00 0C */	addi r3, r25, 0xc
/* 80C656BC  7C 60 1A 14 */	add r3, r0, r3
/* 80C656C0  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80C656C4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C656C8  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80C656CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C656D0  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80C656D4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C656D8:
/* 80C656D8  3B BD 00 01 */	addi r29, r29, 1
/* 80C656DC  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C656E0:
/* 80C656E0  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80C656E4  38 03 FF FF */	addi r0, r3, -1
/* 80C656E8  7C 1D 00 00 */	cmpw r29, r0
/* 80C656EC  41 80 FF 10 */	blt lbl_80C655FC
/* 80C656F0  83 BF 24 18 */	lwz r29, 0x2418(r31)
/* 80C656F4  1F 3D 00 28 */	mulli r25, r29, 0x28
/* 80C656F8  48 00 00 E8 */	b lbl_80C657E0
lbl_80C656FC:
/* 80C656FC  7C 1D 00 00 */	cmpw r29, r0
/* 80C65700  41 82 00 80 */	beq lbl_80C65780
/* 80C65704  80 DF 06 20 */	lwz r6, 0x620(r31)
/* 80C65708  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80C6570C  38 1D FF FF */	addi r0, r29, -1
/* 80C65710  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65714  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65718  7C 86 22 14 */	add r4, r6, r4
/* 80C6571C  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C65720  7C A6 2A 14 */	add r5, r6, r5
/* 80C65724  4B 60 13 C0 */	b __pl__4cXyzCFRC3Vec
/* 80C65728  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80C6572C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80C65730  80 DF 06 20 */	lwz r6, 0x620(r31)
/* 80C65734  38 1D 00 01 */	addi r0, r29, 1
/* 80C65738  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C6573C  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C65740  7C A6 2A 14 */	add r5, r6, r5
/* 80C65744  4B 60 13 A0 */	b __pl__4cXyzCFRC3Vec
/* 80C65748  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80C6574C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80C65750  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C65754  4B 60 14 30 */	b __ml__4cXyzCFf
/* 80C65758  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C6575C  38 79 00 0C */	addi r3, r25, 0xc
/* 80C65760  7C 60 1A 14 */	add r3, r0, r3
/* 80C65764  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80C65768  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6576C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80C65770  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C65774  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80C65778  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C6577C  48 00 00 5C */	b lbl_80C657D8
lbl_80C65780:
/* 80C65780  80 DF 06 20 */	lwz r6, 0x620(r31)
/* 80C65784  38 61 00 AC */	addi r3, r1, 0xac
/* 80C65788  38 1D FF FF */	addi r0, r29, -1
/* 80C6578C  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65790  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65794  7C 86 22 14 */	add r4, r6, r4
/* 80C65798  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C6579C  7C A6 2A 14 */	add r5, r6, r5
/* 80C657A0  4B 60 13 44 */	b __pl__4cXyzCFRC3Vec
/* 80C657A4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C657A8  38 81 00 AC */	addi r4, r1, 0xac
/* 80C657AC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80C657B0  4B 60 13 D4 */	b __ml__4cXyzCFf
/* 80C657B4  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C657B8  38 79 00 0C */	addi r3, r25, 0xc
/* 80C657BC  7C 60 1A 14 */	add r3, r0, r3
/* 80C657C0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80C657C4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C657C8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80C657CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C657D0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80C657D4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C657D8:
/* 80C657D8  3B BD 00 01 */	addi r29, r29, 1
/* 80C657DC  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C657E0:
/* 80C657E0  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80C657E4  38 03 FF FF */	addi r0, r3, -1
/* 80C657E8  7C 1D 00 00 */	cmpw r29, r0
/* 80C657EC  41 80 FF 10 */	blt lbl_80C656FC
/* 80C657F0  83 BF 24 18 */	lwz r29, 0x2418(r31)
/* 80C657F4  1F 3D 00 28 */	mulli r25, r29, 0x28
/* 80C657F8  48 00 00 E8 */	b lbl_80C658E0
lbl_80C657FC:
/* 80C657FC  7C 1D 00 00 */	cmpw r29, r0
/* 80C65800  41 82 00 80 */	beq lbl_80C65880
/* 80C65804  80 DF 06 24 */	lwz r6, 0x624(r31)
/* 80C65808  38 61 00 94 */	addi r3, r1, 0x94
/* 80C6580C  38 1D FF FF */	addi r0, r29, -1
/* 80C65810  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65814  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65818  7C 86 22 14 */	add r4, r6, r4
/* 80C6581C  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C65820  7C A6 2A 14 */	add r5, r6, r5
/* 80C65824  4B 60 12 C0 */	b __pl__4cXyzCFRC3Vec
/* 80C65828  38 61 00 88 */	addi r3, r1, 0x88
/* 80C6582C  38 81 00 94 */	addi r4, r1, 0x94
/* 80C65830  80 DF 06 24 */	lwz r6, 0x624(r31)
/* 80C65834  38 1D 00 01 */	addi r0, r29, 1
/* 80C65838  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C6583C  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C65840  7C A6 2A 14 */	add r5, r6, r5
/* 80C65844  4B 60 12 A0 */	b __pl__4cXyzCFRC3Vec
/* 80C65848  38 61 00 7C */	addi r3, r1, 0x7c
/* 80C6584C  38 81 00 88 */	addi r4, r1, 0x88
/* 80C65850  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C65854  4B 60 13 30 */	b __ml__4cXyzCFf
/* 80C65858  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C6585C  38 79 00 0C */	addi r3, r25, 0xc
/* 80C65860  7C 60 1A 14 */	add r3, r0, r3
/* 80C65864  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C65868  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C6586C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C65870  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C65874  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C65878  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C6587C  48 00 00 5C */	b lbl_80C658D8
lbl_80C65880:
/* 80C65880  80 DF 06 24 */	lwz r6, 0x624(r31)
/* 80C65884  38 61 00 70 */	addi r3, r1, 0x70
/* 80C65888  38 1D FF FF */	addi r0, r29, -1
/* 80C6588C  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C65890  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65894  7C 86 22 14 */	add r4, r6, r4
/* 80C65898  38 B9 00 0C */	addi r5, r25, 0xc
/* 80C6589C  7C A6 2A 14 */	add r5, r6, r5
/* 80C658A0  4B 60 12 44 */	b __pl__4cXyzCFRC3Vec
/* 80C658A4  38 61 00 64 */	addi r3, r1, 0x64
/* 80C658A8  38 81 00 70 */	addi r4, r1, 0x70
/* 80C658AC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80C658B0  4B 60 12 D4 */	b __ml__4cXyzCFf
/* 80C658B4  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C658B8  38 79 00 0C */	addi r3, r25, 0xc
/* 80C658BC  7C 60 1A 14 */	add r3, r0, r3
/* 80C658C0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C658C4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C658C8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C658CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C658D0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C658D4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80C658D8:
/* 80C658D8  3B BD 00 01 */	addi r29, r29, 1
/* 80C658DC  3B 39 00 28 */	addi r25, r25, 0x28
lbl_80C658E0:
/* 80C658E0  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C658E4  38 03 FF FF */	addi r0, r3, -1
/* 80C658E8  7C 1D 00 00 */	cmpw r29, r0
/* 80C658EC  41 80 FF 10 */	blt lbl_80C657FC
/* 80C658F0  7F E3 FB 78 */	mr r3, r31
/* 80C658F4  4B FF DD C1 */	bl setMtx__14daObjLv4Chan_cFv
/* 80C658F8  7F E3 FB 78 */	mr r3, r31
/* 80C658FC  4B FF ED 6D */	bl constraintBase__14daObjLv4Chan_cFv
/* 80C65900  38 60 00 00 */	li r3, 0
/* 80C65904  38 80 00 00 */	li r4, 0
/* 80C65908  48 00 01 5C */	b lbl_80C65A64
lbl_80C6590C:
/* 80C6590C  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C65910  38 A4 00 0C */	addi r5, r4, 0xc
/* 80C65914  7C A0 2A 14 */	add r5, r0, r5
/* 80C65918  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C6591C  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C65920  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C65924  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C65928  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C6592C  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C65930  80 BF 06 1C */	lwz r5, 0x61c(r31)
/* 80C65934  39 04 00 0C */	addi r8, r4, 0xc
/* 80C65938  7C 05 44 2E */	lfsx f0, r5, r8
/* 80C6593C  EC 00 E8 2A */	fadds f0, f0, f29
/* 80C65940  7C 05 45 2E */	stfsx f0, r5, r8
/* 80C65944  80 BF 06 1C */	lwz r5, 0x61c(r31)
/* 80C65948  38 E4 00 10 */	addi r7, r4, 0x10
/* 80C6594C  7C 05 3C 2E */	lfsx f0, r5, r7
/* 80C65950  EC 00 E0 2A */	fadds f0, f0, f28
/* 80C65954  7C 05 3D 2E */	stfsx f0, r5, r7
/* 80C65958  80 BF 06 1C */	lwz r5, 0x61c(r31)
/* 80C6595C  38 C4 00 14 */	addi r6, r4, 0x14
/* 80C65960  7C 05 34 2E */	lfsx f0, r5, r6
/* 80C65964  EC 00 F0 2A */	fadds f0, f0, f30
/* 80C65968  7C 05 35 2E */	stfsx f0, r5, r6
/* 80C6596C  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C65970  7C A0 22 14 */	add r5, r0, r4
/* 80C65974  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C65978  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C6597C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C65980  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C65984  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C65988  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C6598C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C65990  7C A0 42 14 */	add r5, r0, r8
/* 80C65994  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C65998  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C6599C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C659A0  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C659A4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C659A8  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C659AC  80 BF 06 20 */	lwz r5, 0x620(r31)
/* 80C659B0  7C 05 44 2E */	lfsx f0, r5, r8
/* 80C659B4  EC 00 E8 2A */	fadds f0, f0, f29
/* 80C659B8  7C 05 45 2E */	stfsx f0, r5, r8
/* 80C659BC  80 BF 06 20 */	lwz r5, 0x620(r31)
/* 80C659C0  7C 05 3C 2E */	lfsx f0, r5, r7
/* 80C659C4  EC 00 E0 2A */	fadds f0, f0, f28
/* 80C659C8  7C 05 3D 2E */	stfsx f0, r5, r7
/* 80C659CC  80 BF 06 20 */	lwz r5, 0x620(r31)
/* 80C659D0  7C 05 34 2E */	lfsx f0, r5, r6
/* 80C659D4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C659D8  7C 05 35 2E */	stfsx f0, r5, r6
/* 80C659DC  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C659E0  7C A0 22 14 */	add r5, r0, r4
/* 80C659E4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C659E8  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C659EC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C659F0  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C659F4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C659F8  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C659FC  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C65A00  7C A0 42 14 */	add r5, r0, r8
/* 80C65A04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C65A08  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C65A0C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C65A10  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C65A14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C65A18  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C65A1C  80 BF 06 24 */	lwz r5, 0x624(r31)
/* 80C65A20  7C 05 44 2E */	lfsx f0, r5, r8
/* 80C65A24  EC 00 D8 2A */	fadds f0, f0, f27
/* 80C65A28  7C 05 45 2E */	stfsx f0, r5, r8
/* 80C65A2C  80 BF 06 24 */	lwz r5, 0x624(r31)
/* 80C65A30  7C 05 3C 2E */	lfsx f0, r5, r7
/* 80C65A34  EC 00 E0 2A */	fadds f0, f0, f28
/* 80C65A38  7C 05 3D 2E */	stfsx f0, r5, r7
/* 80C65A3C  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C65A40  7C A0 22 14 */	add r5, r0, r4
/* 80C65A44  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C65A48  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C65A4C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C65A50  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C65A54  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C65A58  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C65A5C  38 63 00 01 */	addi r3, r3, 1
/* 80C65A60  38 84 00 28 */	addi r4, r4, 0x28
lbl_80C65A64:
/* 80C65A64  80 1F 24 18 */	lwz r0, 0x2418(r31)
/* 80C65A68  7C 03 00 00 */	cmpw r3, r0
/* 80C65A6C  41 80 FE A0 */	blt lbl_80C6590C
/* 80C65A70  7F E3 FB 78 */	mr r3, r31
/* 80C65A74  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80C65A78  80 BF 06 10 */	lwz r5, 0x610(r31)
/* 80C65A7C  4B FF EA 21 */	bl constraintChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65A80  7F E3 FB 78 */	mr r3, r31
/* 80C65A84  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C65A88  80 BF 06 14 */	lwz r5, 0x614(r31)
/* 80C65A8C  4B FF EA 11 */	bl constraintChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65A90  7F E3 FB 78 */	mr r3, r31
/* 80C65A94  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C65A98  80 BF 06 18 */	lwz r5, 0x618(r31)
/* 80C65A9C  4B FF EA 01 */	bl constraintChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65AA0  3B 5A 00 01 */	addi r26, r26, 1
/* 80C65AA4  2C 1A 00 02 */	cmpwi r26, 2
/* 80C65AA8  41 80 FB 48 */	blt lbl_80C655F0
/* 80C65AAC  7F E3 FB 78 */	mr r3, r31
/* 80C65AB0  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80C65AB4  80 BF 06 10 */	lwz r5, 0x610(r31)
/* 80C65AB8  4B FF ED 45 */	bl calcVec__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65ABC  7F E3 FB 78 */	mr r3, r31
/* 80C65AC0  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C65AC4  80 BF 06 14 */	lwz r5, 0x614(r31)
/* 80C65AC8  4B FF ED 35 */	bl calcVec__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65ACC  7F E3 FB 78 */	mr r3, r31
/* 80C65AD0  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C65AD4  80 BF 06 18 */	lwz r5, 0x618(r31)
/* 80C65AD8  4B FF ED 25 */	bl calcVec__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi
/* 80C65ADC  7F E3 FB 78 */	mr r3, r31
/* 80C65AE0  4B FF DB D5 */	bl setMtx__14daObjLv4Chan_cFv
/* 80C65AE4  3B 40 00 00 */	li r26, 0
/* 80C65AE8  38 A0 00 00 */	li r5, 0
/* 80C65AEC  38 60 00 00 */	li r3, 0
/* 80C65AF0  3C 80 80 45 */	lis r4, G_CM3D_F_ABS_MIN@ha
/* 80C65AF4  C0 04 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r4)
/* 80C65AF8  48 00 00 34 */	b lbl_80C65B2C
lbl_80C65AFC:
/* 80C65AFC  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80C65B00  38 03 00 24 */	addi r0, r3, 0x24
/* 80C65B04  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C65B08  FC 20 0A 10 */	fabs f1, f1
/* 80C65B0C  FC 20 08 18 */	frsp f1, f1
/* 80C65B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65B14  7C 00 00 26 */	mfcr r0
/* 80C65B18  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C65B1C  40 82 00 08 */	bne lbl_80C65B24
/* 80C65B20  3B 40 00 01 */	li r26, 1
lbl_80C65B24:
/* 80C65B24  38 A5 00 01 */	addi r5, r5, 1
/* 80C65B28  38 63 00 28 */	addi r3, r3, 0x28
lbl_80C65B2C:
/* 80C65B2C  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 80C65B30  7C 05 00 00 */	cmpw r5, r0
/* 80C65B34  41 80 FF C8 */	blt lbl_80C65AFC
/* 80C65B38  38 A0 00 00 */	li r5, 0
/* 80C65B3C  38 60 00 00 */	li r3, 0
/* 80C65B40  3C 80 80 45 */	lis r4, G_CM3D_F_ABS_MIN@ha
/* 80C65B44  C0 04 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r4)
/* 80C65B48  48 00 00 34 */	b lbl_80C65B7C
lbl_80C65B4C:
/* 80C65B4C  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80C65B50  38 03 00 24 */	addi r0, r3, 0x24
/* 80C65B54  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C65B58  FC 20 0A 10 */	fabs f1, f1
/* 80C65B5C  FC 20 08 18 */	frsp f1, f1
/* 80C65B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65B64  7C 00 00 26 */	mfcr r0
/* 80C65B68  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C65B6C  40 82 00 08 */	bne lbl_80C65B74
/* 80C65B70  3B 40 00 01 */	li r26, 1
lbl_80C65B74:
/* 80C65B74  38 A5 00 01 */	addi r5, r5, 1
/* 80C65B78  38 63 00 28 */	addi r3, r3, 0x28
lbl_80C65B7C:
/* 80C65B7C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C65B80  7C 05 00 00 */	cmpw r5, r0
/* 80C65B84  41 80 FF C8 */	blt lbl_80C65B4C
/* 80C65B88  38 A0 00 00 */	li r5, 0
/* 80C65B8C  38 60 00 00 */	li r3, 0
/* 80C65B90  3C 80 80 45 */	lis r4, G_CM3D_F_ABS_MIN@ha
/* 80C65B94  C0 04 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r4)
/* 80C65B98  48 00 00 34 */	b lbl_80C65BCC
lbl_80C65B9C:
/* 80C65B9C  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C65BA0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C65BA4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C65BA8  FC 20 0A 10 */	fabs f1, f1
/* 80C65BAC  FC 20 08 18 */	frsp f1, f1
/* 80C65BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65BB4  7C 00 00 26 */	mfcr r0
/* 80C65BB8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C65BBC  40 82 00 08 */	bne lbl_80C65BC4
/* 80C65BC0  3B 40 00 01 */	li r26, 1
lbl_80C65BC4:
/* 80C65BC4  38 A5 00 01 */	addi r5, r5, 1
/* 80C65BC8  38 63 00 28 */	addi r3, r3, 0x28
lbl_80C65BCC:
/* 80C65BCC  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80C65BD0  7C 05 00 00 */	cmpw r5, r0
/* 80C65BD4  41 80 FF C8 */	blt lbl_80C65B9C
/* 80C65BD8  C0 5F 23 D0 */	lfs f2, 0x23d0(r31)
/* 80C65BDC  C0 1F 23 C8 */	lfs f0, 0x23c8(r31)
/* 80C65BE0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C65BE4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C65BE8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C65BEC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80C65BF0  C0 5F 23 C4 */	lfs f2, 0x23c4(r31)
/* 80C65BF4  C0 1F 23 BC */	lfs f0, 0x23bc(r31)
/* 80C65BF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C65BFC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80C65C00  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80C65C04  38 61 00 34 */	addi r3, r1, 0x34
/* 80C65C08  38 81 00 40 */	addi r4, r1, 0x40
/* 80C65C0C  4B 6E 17 90 */	b PSVECSquareDistance
/* 80C65C10  38 61 00 58 */	addi r3, r1, 0x58
/* 80C65C14  38 9F 23 BC */	addi r4, r31, 0x23bc
/* 80C65C18  38 BF 23 C8 */	addi r5, r31, 0x23c8
/* 80C65C1C  4B 60 0F 18 */	b __mi__4cXyzCFRC3Vec
/* 80C65C20  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80C65C24  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80C65C28  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C65C2C  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80C65C30  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C65C34  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80C65C38  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C65C3C  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80C65C40  38 61 01 90 */	addi r3, r1, 0x190
/* 80C65C44  4B 6E 14 F4 */	b PSVECSquareMag
/* 80C65C48  FC 00 0A 10 */	fabs f0, f1
/* 80C65C4C  FC 20 00 18 */	frsp f1, f0
/* 80C65C50  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C65C54  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C65C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65C5C  41 80 01 44 */	blt lbl_80C65DA0
/* 80C65C60  38 61 00 4C */	addi r3, r1, 0x4c
/* 80C65C64  38 81 01 90 */	addi r4, r1, 0x190
/* 80C65C68  4B 60 12 8C */	b normalize__4cXyzFv
/* 80C65C6C  C0 61 01 90 */	lfs f3, 0x190(r1)
/* 80C65C70  C0 1F 24 90 */	lfs f0, 0x2490(r31)
/* 80C65C74  EC 23 00 32 */	fmuls f1, f3, f0
/* 80C65C78  C0 41 01 98 */	lfs f2, 0x198(r1)
/* 80C65C7C  C0 1F 24 94 */	lfs f0, 0x2494(r31)
/* 80C65C80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C65C84  EC 81 00 2A */	fadds f4, f1, f0
/* 80C65C88  C0 1F 24 9C */	lfs f0, 0x249c(r31)
/* 80C65C8C  EC 23 00 32 */	fmuls f1, f3, f0
/* 80C65C90  C0 1F 24 A0 */	lfs f0, 0x24a0(r31)
/* 80C65C94  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C65C98  EF 61 00 2A */	fadds f27, f1, f0
/* 80C65C9C  88 1F 24 8C */	lbz r0, 0x248c(r31)
/* 80C65CA0  28 00 00 00 */	cmplwi r0, 0
/* 80C65CA4  40 82 00 E0 */	bne lbl_80C65D84
/* 80C65CA8  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80C65CAC  28 00 00 01 */	cmplwi r0, 1
/* 80C65CB0  40 82 00 10 */	bne lbl_80C65CC0
/* 80C65CB4  88 1F 24 8D */	lbz r0, 0x248d(r31)
/* 80C65CB8  28 00 00 00 */	cmplwi r0, 0
/* 80C65CBC  41 82 00 6C */	beq lbl_80C65D28
lbl_80C65CC0:
/* 80C65CC0  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80C65CC4  28 00 00 01 */	cmplwi r0, 1
/* 80C65CC8  40 82 00 BC */	bne lbl_80C65D84
/* 80C65CCC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80C65CD0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80C65CD4  41 80 00 40 */	blt lbl_80C65D14
/* 80C65CD8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65CDC  4B 60 1C 78 */	b cM_rndF__Ff
/* 80C65CE0  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80C65CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65CE8  41 80 00 2C */	blt lbl_80C65D14
/* 80C65CEC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C65CF0  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80C65CF4  4C 40 13 82 */	cror 2, 0, 2
/* 80C65CF8  41 82 00 1C */	beq lbl_80C65D14
/* 80C65CFC  88 1F 24 99 */	lbz r0, 0x2499(r31)
/* 80C65D00  28 00 00 00 */	cmplwi r0, 0
/* 80C65D04  40 82 00 80 */	bne lbl_80C65D84
/* 80C65D08  88 1F 24 98 */	lbz r0, 0x2498(r31)
/* 80C65D0C  28 00 00 00 */	cmplwi r0, 0
/* 80C65D10  41 82 00 74 */	beq lbl_80C65D84
lbl_80C65D14:
/* 80C65D14  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65D18  4B 60 1C 3C */	b cM_rndF__Ff
/* 80C65D1C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80C65D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C65D24  40 80 00 60 */	bge lbl_80C65D84
lbl_80C65D28:
/* 80C65D28  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B9@ha */
/* 80C65D2C  38 03 01 B9 */	addi r0, r3, 0x01B9 /* 0x000801B9@l */
/* 80C65D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C65D34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C65D38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C65D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C65D40  38 81 00 14 */	addi r4, r1, 0x14
/* 80C65D44  38 BF 23 BC */	addi r5, r31, 0x23bc
/* 80C65D48  38 C0 00 00 */	li r6, 0
/* 80C65D4C  38 E0 00 00 */	li r7, 0
/* 80C65D50  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C65D54  FC 40 08 90 */	fmr f2, f1
/* 80C65D58  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80C65D5C  FC 80 18 90 */	fmr f4, f3
/* 80C65D60  39 00 00 00 */	li r8, 0
/* 80C65D64  4B 64 5C 20 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C65D68  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 80C65D6C  D0 1F 24 90 */	stfs f0, 0x2490(r31)
/* 80C65D70  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80C65D74  D0 1F 24 94 */	stfs f0, 0x2494(r31)
/* 80C65D78  38 00 00 01 */	li r0, 1
/* 80C65D7C  98 1F 24 8C */	stb r0, 0x248c(r31)
/* 80C65D80  48 00 00 0C */	b lbl_80C65D8C
lbl_80C65D84:
/* 80C65D84  38 00 00 00 */	li r0, 0
/* 80C65D88  98 1F 24 8C */	stb r0, 0x248c(r31)
lbl_80C65D8C:
/* 80C65D8C  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 80C65D90  D0 1F 24 9C */	stfs f0, 0x249c(r31)
/* 80C65D94  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80C65D98  D0 1F 24 A0 */	stfs f0, 0x24a0(r31)
/* 80C65D9C  48 00 00 0C */	b lbl_80C65DA8
lbl_80C65DA0:
/* 80C65DA0  38 00 00 00 */	li r0, 0
/* 80C65DA4  98 1F 24 8C */	stb r0, 0x248c(r31)
lbl_80C65DA8:
/* 80C65DA8  C0 1F 23 BC */	lfs f0, 0x23bc(r31)
/* 80C65DAC  D0 1F 23 C8 */	stfs f0, 0x23c8(r31)
/* 80C65DB0  C0 1F 23 C0 */	lfs f0, 0x23c0(r31)
/* 80C65DB4  D0 1F 23 CC */	stfs f0, 0x23cc(r31)
/* 80C65DB8  C0 1F 23 C4 */	lfs f0, 0x23c4(r31)
/* 80C65DBC  D0 1F 23 D0 */	stfs f0, 0x23d0(r31)
/* 80C65DC0  9B 5F 24 8D */	stb r26, 0x248d(r31)
/* 80C65DC4  88 1F 24 98 */	lbz r0, 0x2498(r31)
/* 80C65DC8  98 1F 24 99 */	stb r0, 0x2499(r31)
/* 80C65DCC  38 00 00 00 */	li r0, 0
/* 80C65DD0  98 1F 24 98 */	stb r0, 0x2498(r31)
/* 80C65DD4  3B 40 00 00 */	li r26, 0
/* 80C65DD8  3B 80 00 00 */	li r28, 0
/* 80C65DDC  3B A0 00 00 */	li r29, 0
/* 80C65DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C65DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C65DE8  3A E3 23 3C */	addi r23, r3, 0x233c
lbl_80C65DEC:
/* 80C65DEC  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80C65DF0  38 03 FF FF */	addi r0, r3, -1
/* 80C65DF4  7C 9D 00 51 */	subf. r4, r29, r0
/* 80C65DF8  41 80 00 2C */	blt lbl_80C65E24
/* 80C65DFC  7E DF E2 14 */	add r22, r31, r28
/* 80C65E00  38 76 07 A0 */	addi r3, r22, 0x7a0
/* 80C65E04  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C65E08  1C 84 00 28 */	mulli r4, r4, 0x28
/* 80C65E0C  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65E10  7C 80 22 14 */	add r4, r0, r4
/* 80C65E14  4B 60 98 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C65E18  7E E3 BB 78 */	mr r3, r23
/* 80C65E1C  38 96 06 7C */	addi r4, r22, 0x67c
/* 80C65E20  4B 5F ED 88 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C65E24:
/* 80C65E24  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80C65E28  38 03 FF FF */	addi r0, r3, -1
/* 80C65E2C  7C 9D 00 51 */	subf. r4, r29, r0
/* 80C65E30  41 80 00 2C */	blt lbl_80C65E5C
/* 80C65E34  7E DF E2 14 */	add r22, r31, r28
/* 80C65E38  38 76 11 60 */	addi r3, r22, 0x1160
/* 80C65E3C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C65E40  1C 84 00 28 */	mulli r4, r4, 0x28
/* 80C65E44  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65E48  7C 80 22 14 */	add r4, r0, r4
/* 80C65E4C  4B 60 97 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 80C65E50  7E E3 BB 78 */	mr r3, r23
/* 80C65E54  38 96 10 3C */	addi r4, r22, 0x103c
/* 80C65E58  4B 5F ED 50 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C65E5C:
/* 80C65E5C  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C65E60  38 03 FF FF */	addi r0, r3, -1
/* 80C65E64  7C 9D 00 51 */	subf. r4, r29, r0
/* 80C65E68  41 80 00 2C */	blt lbl_80C65E94
/* 80C65E6C  7E DF E2 14 */	add r22, r31, r28
/* 80C65E70  38 76 1B 20 */	addi r3, r22, 0x1b20
/* 80C65E74  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C65E78  1C 84 00 28 */	mulli r4, r4, 0x28
/* 80C65E7C  38 84 00 0C */	addi r4, r4, 0xc
/* 80C65E80  7C 80 22 14 */	add r4, r0, r4
/* 80C65E84  4B 60 97 C4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C65E88  7E E3 BB 78 */	mr r3, r23
/* 80C65E8C  38 96 19 FC */	addi r4, r22, 0x19fc
/* 80C65E90  4B 5F ED 18 */	b Set__4cCcSFP8cCcD_Obj
lbl_80C65E94:
/* 80C65E94  3B 5A 00 01 */	addi r26, r26, 1
/* 80C65E98  2C 1A 00 08 */	cmpwi r26, 8
/* 80C65E9C  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80C65EA0  3B BD 00 02 */	addi r29, r29, 2
/* 80C65EA4  41 80 FF 48 */	blt lbl_80C65DEC
/* 80C65EA8  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80C65EAC  4B 41 D9 84 */	b Move__10dCcD_GSttsFv
/* 80C65EB0  38 1F 05 A8 */	addi r0, r31, 0x5a8
/* 80C65EB4  90 1B 00 00 */	stw r0, 0(r27)
/* 80C65EB8  7F E3 FB 78 */	mr r3, r31
/* 80C65EBC  4B FF E9 BD */	bl chkGnd__14daObjLv4Chan_cFv
/* 80C65EC0  38 60 00 01 */	li r3, 1
/* 80C65EC4  E3 E1 02 58 */	psq_l f31, 600(r1), 0, 0 /* qr0 */
/* 80C65EC8  CB E1 02 50 */	lfd f31, 0x250(r1)
/* 80C65ECC  E3 C1 02 48 */	psq_l f30, 584(r1), 0, 0 /* qr0 */
/* 80C65ED0  CB C1 02 40 */	lfd f30, 0x240(r1)
/* 80C65ED4  E3 A1 02 38 */	psq_l f29, 568(r1), 0, 0 /* qr0 */
/* 80C65ED8  CB A1 02 30 */	lfd f29, 0x230(r1)
/* 80C65EDC  E3 81 02 28 */	psq_l f28, 552(r1), 0, 0 /* qr0 */
/* 80C65EE0  CB 81 02 20 */	lfd f28, 0x220(r1)
/* 80C65EE4  E3 61 02 18 */	psq_l f27, 536(r1), 0, 0 /* qr0 */
/* 80C65EE8  CB 61 02 10 */	lfd f27, 0x210(r1)
/* 80C65EEC  39 61 02 10 */	addi r11, r1, 0x210
/* 80C65EF0  4B 6F C3 18 */	b _restgpr_21
/* 80C65EF4  80 01 02 64 */	lwz r0, 0x264(r1)
/* 80C65EF8  7C 08 03 A6 */	mtlr r0
/* 80C65EFC  38 21 02 60 */	addi r1, r1, 0x260
/* 80C65F00  4E 80 00 20 */	blr 
