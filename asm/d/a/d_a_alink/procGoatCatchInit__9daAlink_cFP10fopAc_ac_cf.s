lbl_800E9894:
/* 800E9894  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E9898  7C 08 02 A6 */	mflr r0
/* 800E989C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E98A0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E98A4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800E98A8  39 61 00 30 */	addi r11, r1, 0x30
/* 800E98AC  48 27 89 31 */	bl _savegpr_29
/* 800E98B0  7C 7E 1B 78 */	mr r30, r3
/* 800E98B4  7C 9F 23 78 */	mr r31, r4
/* 800E98B8  FF E0 08 90 */	fmr f31, f1
/* 800E98BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E98C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800E98C4  48 18 73 41 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800E98C8  7C 7D 1B 78 */	mr r29, r3
/* 800E98CC  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800E98D0  28 00 00 2A */	cmplwi r0, 0x2a
/* 800E98D4  41 82 00 FC */	beq lbl_800E99D0
/* 800E98D8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800E98DC  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800E98E0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E98E4  EC 21 00 2A */	fadds f1, f1, f0
/* 800E98E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E98EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E98F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E98F4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E98F8  C0 42 92 D0 */	lfs f2, lit_6238(r2)
/* 800E98FC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800E9900  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800E9904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9908  40 81 00 08 */	ble lbl_800E9910
/* 800E990C  EC 42 10 2A */	fadds f2, f2, f2
lbl_800E9910:
/* 800E9910  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800E9914  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 800E9918  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800E991C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800E9920  7C 03 04 2E */	lfsx f0, r3, r0
/* 800E9924  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E9928  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E992C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E9930  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800E9934  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E9938  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800E993C  7C 63 02 14 */	add r3, r3, r0
/* 800E9940  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E9944  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E9948  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E994C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E9950  38 61 00 14 */	addi r3, r1, 0x14
/* 800E9954  38 81 00 08 */	addi r4, r1, 8
/* 800E9958  7F E5 FB 78 */	mr r5, r31
/* 800E995C  4B F3 43 0D */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E9960  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E9964  41 82 00 18 */	beq lbl_800E997C
/* 800E9968  7F C3 F3 78 */	mr r3, r30
/* 800E996C  38 80 00 00 */	li r4, 0
/* 800E9970  4B FC 98 E1 */	bl setDoStatus__9daAlink_cFUc
/* 800E9974  38 60 00 00 */	li r3, 0
/* 800E9978  48 00 02 38 */	b lbl_800E9BB0
lbl_800E997C:
/* 800E997C  7F C3 F3 78 */	mr r3, r30
/* 800E9980  38 80 00 01 */	li r4, 1
/* 800E9984  38 A0 00 00 */	li r5, 0
/* 800E9988  4B FD 79 55 */	bl deleteEquipItem__9daAlink_cFii
/* 800E998C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E9990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E9994  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800E9998  7F C4 F3 78 */	mr r4, r30
/* 800E999C  38 A0 00 00 */	li r5, 0
/* 800E99A0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFEF@ha */
/* 800E99A4  38 C6 FF EF */	addi r6, r6, 0xFFEF /* 0x0000FFEF@l */
/* 800E99A8  4B F5 97 C5 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800E99AC  2C 03 00 00 */	cmpwi r3, 0
/* 800E99B0  40 82 00 0C */	bne lbl_800E99BC
/* 800E99B4  38 60 00 00 */	li r3, 0
/* 800E99B8  48 00 01 F8 */	b lbl_800E9BB0
lbl_800E99BC:
/* 800E99BC  38 00 00 05 */	li r0, 5
/* 800E99C0  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 800E99C4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 800E99C8  60 00 08 00 */	ori r0, r0, 0x800
/* 800E99CC  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_800E99D0:
/* 800E99D0  7F C3 F3 78 */	mr r3, r30
/* 800E99D4  38 80 00 C0 */	li r4, 0xc0
/* 800E99D8  4B FD 85 95 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E99DC  38 7E 28 0C */	addi r3, r30, 0x280c
/* 800E99E0  7F E4 FB 78 */	mr r4, r31
/* 800E99E4  48 07 52 D5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800E99E8  38 00 00 00 */	li r0, 0
/* 800E99EC  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800E99F0  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800E99F4  28 00 00 2A */	cmplwi r0, 0x2a
/* 800E99F8  41 82 00 34 */	beq lbl_800E9A2C
/* 800E99FC  B3 BE 04 E6 */	sth r29, 0x4e6(r30)
/* 800E9A00  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800E9A04  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800E9A08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9A0C  40 80 00 14 */	bge lbl_800E9A20
/* 800E9A10  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800E9A14  38 00 00 01 */	li r0, 1
/* 800E9A18  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800E9A1C  48 00 00 18 */	b lbl_800E9A34
lbl_800E9A20:
/* 800E9A20  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800E9A24  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800E9A28  48 00 00 0C */	b lbl_800E9A34
lbl_800E9A2C:
/* 800E9A2C  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800E9A30  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800E9A34:
/* 800E9A34  7F C3 F3 78 */	mr r3, r30
/* 800E9A38  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E9A3C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800E9A40  7D 89 03 A6 */	mtctr r12
/* 800E9A44  4E 80 04 21 */	bctrl 
/* 800E9A48  2C 03 00 00 */	cmpwi r3, 0
/* 800E9A4C  41 82 00 14 */	beq lbl_800E9A60
/* 800E9A50  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800E9A54  C0 02 94 AC */	lfs f0, lit_16641(r2)
/* 800E9A58  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E9A5C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800E9A60:
/* 800E9A60  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 800E9A64  2C 00 00 00 */	cmpwi r0, 0
/* 800E9A68  40 82 00 3C */	bne lbl_800E9AA4
/* 800E9A6C  7F C3 F3 78 */	mr r3, r30
/* 800E9A70  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010013@ha */
/* 800E9A74  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00010013@l */
/* 800E9A78  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E9A7C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E9A80  7D 89 03 A6 */	mtctr r12
/* 800E9A84  4E 80 04 21 */	bctrl 
/* 800E9A88  7F C3 F3 78 */	mr r3, r30
/* 800E9A8C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020016@ha */
/* 800E9A90  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x00020016@l */
/* 800E9A94  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E9A98  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800E9A9C  7D 89 03 A6 */	mtctr r12
/* 800E9AA0  4E 80 04 21 */	bctrl 
lbl_800E9AA4:
/* 800E9AA4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800E9AA8  3C 63 00 01 */	addis r3, r3, 1
/* 800E9AAC  38 03 80 00 */	addi r0, r3, -32768
/* 800E9AB0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E9AB4  38 00 00 04 */	li r0, 4
/* 800E9AB8  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 800E9ABC  7F C3 F3 78 */	mr r3, r30
/* 800E9AC0  38 80 01 1B */	li r4, 0x11b
/* 800E9AC4  4B FC 34 BD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E9AC8  A8 1F 00 08 */	lha r0, 8(r31)
/* 800E9ACC  2C 00 00 21 */	cmpwi r0, 0x21
/* 800E9AD0  40 82 00 14 */	bne lbl_800E9AE4
/* 800E9AD4  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 800E9AD8  60 00 00 02 */	ori r0, r0, 2
/* 800E9ADC  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 800E9AE0  48 00 00 28 */	b lbl_800E9B08
lbl_800E9AE4:
/* 800E9AE4  2C 00 01 06 */	cmpwi r0, 0x106
/* 800E9AE8  40 82 00 14 */	bne lbl_800E9AFC
/* 800E9AEC  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 800E9AF0  60 00 00 02 */	ori r0, r0, 2
/* 800E9AF4  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 800E9AF8  48 00 00 10 */	b lbl_800E9B08
lbl_800E9AFC:
/* 800E9AFC  88 1F 05 8D */	lbz r0, 0x58d(r31)
/* 800E9B00  60 00 00 02 */	ori r0, r0, 2
/* 800E9B04  98 1F 05 8D */	stb r0, 0x58d(r31)
lbl_800E9B08:
/* 800E9B08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E9B0C  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 800E9B10  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E9B14  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 800E9B18  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800E9B1C  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 800E9B20  38 00 00 5F */	li r0, 0x5f
/* 800E9B24  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800E9B28  38 00 00 00 */	li r0, 0
/* 800E9B2C  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 800E9B30  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800E9B34  38 00 FF F9 */	li r0, -7
/* 800E9B38  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800E9B3C  7F C3 F3 78 */	mr r3, r30
/* 800E9B40  38 80 00 01 */	li r4, 1
/* 800E9B44  48 03 76 7D */	bl setFootEffectProcType__9daAlink_cFi
/* 800E9B48  38 00 00 60 */	li r0, 0x60
/* 800E9B4C  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800E9B50  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 800E9B54  38 63 55 44 */	addi r3, r3, l_halfAtnWaitBaseAnime@l
/* 800E9B58  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E9B5C  FC 40 00 50 */	fneg f2, f0
/* 800E9B60  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E9B64  C0 03 00 00 */	lfs f0, 0(r3)
/* 800E9B68  FC 00 00 50 */	fneg f0, f0
/* 800E9B6C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800E9B70  D0 3E 35 8C */	stfs f1, 0x358c(r30)
/* 800E9B74  D0 5E 35 90 */	stfs f2, 0x3590(r30)
/* 800E9B78  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E9B7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800E9B80  4C 41 13 82 */	cror 2, 1, 2
/* 800E9B84  40 82 00 10 */	bne lbl_800E9B94
/* 800E9B88  38 00 00 03 */	li r0, 3
/* 800E9B8C  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E9B90  48 00 00 0C */	b lbl_800E9B9C
lbl_800E9B94:
/* 800E9B94  38 00 00 02 */	li r0, 2
/* 800E9B98  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800E9B9C:
/* 800E9B9C  38 00 00 00 */	li r0, 0
/* 800E9BA0  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800E9BA4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800E9BA8  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800E9BAC  38 60 00 01 */	li r3, 1
lbl_800E9BB0:
/* 800E9BB0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800E9BB4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E9BB8  39 61 00 30 */	addi r11, r1, 0x30
/* 800E9BBC  48 27 86 6D */	bl _restgpr_29
/* 800E9BC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E9BC4  7C 08 03 A6 */	mtlr r0
/* 800E9BC8  38 21 00 40 */	addi r1, r1, 0x40
/* 800E9BCC  4E 80 00 20 */	blr 
