lbl_80C05920:
/* 80C05920  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C05924  7C 08 02 A6 */	mflr r0
/* 80C05928  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C0592C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80C05930  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80C05934  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80C05938  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80C0593C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C05940  4B 75 C8 98 */	b _savegpr_28
/* 80C05944  7C 7D 1B 78 */	mr r29, r3
/* 80C05948  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C0594C  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l
/* 80C05950  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C05954  2C 00 00 01 */	cmpwi r0, 1
/* 80C05958  41 82 00 3C */	beq lbl_80C05994
/* 80C0595C  40 80 05 DC */	bge lbl_80C05F38
/* 80C05960  2C 00 00 00 */	cmpwi r0, 0
/* 80C05964  40 80 00 0C */	bge lbl_80C05970
/* 80C05968  48 00 05 D0 */	b lbl_80C05F38
/* 80C0596C  48 00 05 CC */	b lbl_80C05F38
lbl_80C05970:
/* 80C05970  38 80 00 01 */	li r4, 1
/* 80C05974  38 BF 00 00 */	addi r5, r31, 0
/* 80C05978  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0597C  4B FF BE 11 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C05980  7F A3 EB 78 */	mr r3, r29
/* 80C05984  38 80 00 0D */	li r4, 0xd
/* 80C05988  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C0598C  4B FF BE 21 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C05990  48 00 05 A8 */	b lbl_80C05F38
lbl_80C05994:
/* 80C05994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C05998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0599C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C059A0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C059A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C059A8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C059AC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C059B0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C059B4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C059B8  38 61 00 68 */	addi r3, r1, 0x68
/* 80C059BC  38 81 00 80 */	addi r4, r1, 0x80
/* 80C059C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C059C4  4B 66 11 70 */	b __mi__4cXyzCFRC3Vec
/* 80C059C8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C059CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C059D0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C059D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C059D8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C059DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C059E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C059E4  4B 74 17 54 */	b PSVECSquareMag
/* 80C059E8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C059EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C059F0  40 81 00 58 */	ble lbl_80C05A48
/* 80C059F4  FC 00 08 34 */	frsqrte f0, f1
/* 80C059F8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C059FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05A00  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C05A04  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05A08  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05A0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05A10  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05A14  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05A18  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05A20  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05A28  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05A2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05A30  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05A34  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05A38  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05A3C  FF E1 00 32 */	fmul f31, f1, f0
/* 80C05A40  FF E0 F8 18 */	frsp f31, f31
/* 80C05A44  48 00 00 90 */	b lbl_80C05AD4
lbl_80C05A48:
/* 80C05A48  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C05A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05A50  40 80 00 10 */	bge lbl_80C05A60
/* 80C05A54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05A58  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C05A5C  48 00 00 78 */	b lbl_80C05AD4
lbl_80C05A60:
/* 80C05A60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C05A64  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C05A68  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C05A6C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C05A70  7C 03 00 00 */	cmpw r3, r0
/* 80C05A74  41 82 00 14 */	beq lbl_80C05A88
/* 80C05A78  40 80 00 40 */	bge lbl_80C05AB8
/* 80C05A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C05A80  41 82 00 20 */	beq lbl_80C05AA0
/* 80C05A84  48 00 00 34 */	b lbl_80C05AB8
lbl_80C05A88:
/* 80C05A88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05A8C  41 82 00 0C */	beq lbl_80C05A98
/* 80C05A90  38 00 00 01 */	li r0, 1
/* 80C05A94  48 00 00 28 */	b lbl_80C05ABC
lbl_80C05A98:
/* 80C05A98  38 00 00 02 */	li r0, 2
/* 80C05A9C  48 00 00 20 */	b lbl_80C05ABC
lbl_80C05AA0:
/* 80C05AA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05AA4  41 82 00 0C */	beq lbl_80C05AB0
/* 80C05AA8  38 00 00 05 */	li r0, 5
/* 80C05AAC  48 00 00 10 */	b lbl_80C05ABC
lbl_80C05AB0:
/* 80C05AB0  38 00 00 03 */	li r0, 3
/* 80C05AB4  48 00 00 08 */	b lbl_80C05ABC
lbl_80C05AB8:
/* 80C05AB8  38 00 00 04 */	li r0, 4
lbl_80C05ABC:
/* 80C05ABC  2C 00 00 01 */	cmpwi r0, 1
/* 80C05AC0  40 82 00 10 */	bne lbl_80C05AD0
/* 80C05AC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05AC8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C05ACC  48 00 00 08 */	b lbl_80C05AD4
lbl_80C05AD0:
/* 80C05AD0  FF E0 08 90 */	fmr f31, f1
lbl_80C05AD4:
/* 80C05AD4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C05AD8  38 81 00 80 */	addi r4, r1, 0x80
/* 80C05ADC  4B 66 B1 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C05AE0  7C 7E 1B 78 */	mr r30, r3
/* 80C05AE4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C05AE8  38 9D 05 38 */	addi r4, r29, 0x538
/* 80C05AEC  4B 66 B1 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C05AF0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80C05AF4  7F C0 F0 50 */	subf r30, r0, r30
/* 80C05AF8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80C05AFC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C05B00  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80C05B04  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C05B08  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80C05B0C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C05B10  38 7D 1F DC */	addi r3, r29, 0x1fdc
/* 80C05B14  4B FF F4 29 */	bl func_80C04F3C
/* 80C05B18  80 1D 1F DC */	lwz r0, 0x1fdc(r29)
/* 80C05B1C  2C 00 00 00 */	cmpwi r0, 0
/* 80C05B20  40 82 01 A0 */	bne lbl_80C05CC0
/* 80C05B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C05B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C05B2C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C05B30  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80C05B34  40 82 01 8C */	bne lbl_80C05CC0
/* 80C05B38  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C05B3C  38 81 00 74 */	addi r4, r1, 0x74
/* 80C05B40  38 A1 00 80 */	addi r5, r1, 0x80
/* 80C05B44  4B 66 0F F0 */	b __mi__4cXyzCFRC3Vec
/* 80C05B48  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C05B4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C05B50  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05B54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C05B58  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C05B5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C05B60  38 61 00 20 */	addi r3, r1, 0x20
/* 80C05B64  4B 74 15 D4 */	b PSVECSquareMag
/* 80C05B68  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05B70  40 81 00 58 */	ble lbl_80C05BC8
/* 80C05B74  FC 00 08 34 */	frsqrte f0, f1
/* 80C05B78  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C05B7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05B80  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C05B84  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05B88  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05B8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05B90  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05B94  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05B98  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05B9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05BA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05BA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05BA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05BBC  FF C1 00 32 */	fmul f30, f1, f0
/* 80C05BC0  FF C0 F0 18 */	frsp f30, f30
/* 80C05BC4  48 00 00 90 */	b lbl_80C05C54
lbl_80C05BC8:
/* 80C05BC8  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C05BCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05BD0  40 80 00 10 */	bge lbl_80C05BE0
/* 80C05BD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05BD8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80C05BDC  48 00 00 78 */	b lbl_80C05C54
lbl_80C05BE0:
/* 80C05BE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C05BE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C05BE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C05BEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C05BF0  7C 03 00 00 */	cmpw r3, r0
/* 80C05BF4  41 82 00 14 */	beq lbl_80C05C08
/* 80C05BF8  40 80 00 40 */	bge lbl_80C05C38
/* 80C05BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80C05C00  41 82 00 20 */	beq lbl_80C05C20
/* 80C05C04  48 00 00 34 */	b lbl_80C05C38
lbl_80C05C08:
/* 80C05C08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05C0C  41 82 00 0C */	beq lbl_80C05C18
/* 80C05C10  38 00 00 01 */	li r0, 1
/* 80C05C14  48 00 00 28 */	b lbl_80C05C3C
lbl_80C05C18:
/* 80C05C18  38 00 00 02 */	li r0, 2
/* 80C05C1C  48 00 00 20 */	b lbl_80C05C3C
lbl_80C05C20:
/* 80C05C20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05C24  41 82 00 0C */	beq lbl_80C05C30
/* 80C05C28  38 00 00 05 */	li r0, 5
/* 80C05C2C  48 00 00 10 */	b lbl_80C05C3C
lbl_80C05C30:
/* 80C05C30  38 00 00 03 */	li r0, 3
/* 80C05C34  48 00 00 08 */	b lbl_80C05C3C
lbl_80C05C38:
/* 80C05C38  38 00 00 04 */	li r0, 4
lbl_80C05C3C:
/* 80C05C3C  2C 00 00 01 */	cmpwi r0, 1
/* 80C05C40  40 82 00 10 */	bne lbl_80C05C50
/* 80C05C44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05C48  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80C05C4C  48 00 00 08 */	b lbl_80C05C54
lbl_80C05C50:
/* 80C05C50  FF C0 08 90 */	fmr f30, f1
lbl_80C05C54:
/* 80C05C54  7F A3 EB 78 */	mr r3, r29
/* 80C05C58  4B FF F7 15 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C05C5C  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 80C05C60  EC 00 08 2A */	fadds f0, f0, f1
/* 80C05C64  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80C05C68  4C 40 13 82 */	cror 2, 0, 2
/* 80C05C6C  7C 00 00 26 */	mfcr r0
/* 80C05C70  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80C05C74  41 82 00 4C */	beq lbl_80C05CC0
/* 80C05C78  7F A3 EB 78 */	mr r3, r29
/* 80C05C7C  4B FF F6 F1 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C05C80  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 80C05C84  EC 00 08 2A */	fadds f0, f0, f1
/* 80C05C88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C05C8C  4C 40 13 82 */	cror 2, 0, 2
/* 80C05C90  40 82 00 30 */	bne lbl_80C05CC0
/* 80C05C94  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80C05C98  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C05C9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C05CA0  FC 00 02 10 */	fabs f0, f0
/* 80C05CA4  FC 20 00 18 */	frsp f1, f0
/* 80C05CA8  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80C05CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05CB0  40 80 00 10 */	bge lbl_80C05CC0
/* 80C05CB4  38 00 00 01 */	li r0, 1
/* 80C05CB8  90 1D 15 0C */	stw r0, 0x150c(r29)
/* 80C05CBC  48 00 00 0C */	b lbl_80C05CC8
lbl_80C05CC0:
/* 80C05CC0  38 00 00 00 */	li r0, 0
/* 80C05CC4  90 1D 15 0C */	stw r0, 0x150c(r29)
lbl_80C05CC8:
/* 80C05CC8  80 1D 15 0C */	lwz r0, 0x150c(r29)
/* 80C05CCC  2C 00 00 00 */	cmpwi r0, 0
/* 80C05CD0  41 82 00 B8 */	beq lbl_80C05D88
/* 80C05CD4  7F A3 EB 78 */	mr r3, r29
/* 80C05CD8  38 80 00 01 */	li r4, 1
/* 80C05CDC  4B FF CD F9 */	bl setLookMode__11daObj_GrA_cFi
/* 80C05CE0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C05CE4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C05CE8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C05CEC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C05CF0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80C05CF4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C05CF8  38 7F 00 00 */	addi r3, r31, 0
/* 80C05CFC  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 80C05D00  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C05D04  40 80 01 E8 */	bge lbl_80C05EEC
/* 80C05D08  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 80C05D0C  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80C05D10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C05D14  FC 00 00 1E */	fctiwz f0, f0
/* 80C05D18  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80C05D1C  83 81 00 94 */	lwz r28, 0x94(r1)
/* 80C05D20  7F C3 07 34 */	extsh r3, r30
/* 80C05D24  4B 75 F3 AC */	b abs
/* 80C05D28  7F 80 07 34 */	extsh r0, r28
/* 80C05D2C  7C 03 00 00 */	cmpw r3, r0
/* 80C05D30  40 80 01 BC */	bge lbl_80C05EEC
/* 80C05D34  3C 60 80 C1 */	lis r3, lit_6502@ha
/* 80C05D38  38 83 01 C0 */	addi r4, r3, lit_6502@l
/* 80C05D3C  80 64 00 00 */	lwz r3, 0(r4)
/* 80C05D40  80 04 00 04 */	lwz r0, 4(r4)
/* 80C05D44  90 61 00 50 */	stw r3, 0x50(r1)
/* 80C05D48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C05D4C  80 04 00 08 */	lwz r0, 8(r4)
/* 80C05D50  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C05D54  7F A3 EB 78 */	mr r3, r29
/* 80C05D58  38 81 00 50 */	addi r4, r1, 0x50
/* 80C05D5C  4B FF BB 99 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C05D60  38 7F 00 00 */	addi r3, r31, 0
/* 80C05D64  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80C05D68  D0 1D 10 98 */	stfs f0, 0x1098(r29)
/* 80C05D6C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C05D70  D0 1D 10 8C */	stfs f0, 0x108c(r29)
/* 80C05D74  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C05D78  D0 1D 10 90 */	stfs f0, 0x1090(r29)
/* 80C05D7C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C05D80  D0 1D 10 94 */	stfs f0, 0x1094(r29)
/* 80C05D84  48 00 01 B4 */	b lbl_80C05F38
lbl_80C05D88:
/* 80C05D88  38 61 00 44 */	addi r3, r1, 0x44
/* 80C05D8C  38 81 00 74 */	addi r4, r1, 0x74
/* 80C05D90  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C05D94  4B 66 0D A0 */	b __mi__4cXyzCFRC3Vec
/* 80C05D98  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C05D9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C05DA0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05DA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C05DA8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C05DAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C05DB0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C05DB4  4B 74 13 84 */	b PSVECSquareMag
/* 80C05DB8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05DBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05DC0  40 81 00 58 */	ble lbl_80C05E18
/* 80C05DC4  FC 00 08 34 */	frsqrte f0, f1
/* 80C05DC8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C05DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05DD0  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C05DD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05DD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05DDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05DE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05DE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05DE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05DEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05DF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05DF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05DF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C05DFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C05E00  FC 01 00 32 */	fmul f0, f1, f0
/* 80C05E04  FC 03 00 28 */	fsub f0, f3, f0
/* 80C05E08  FC 02 00 32 */	fmul f0, f2, f0
/* 80C05E0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80C05E10  FC 20 08 18 */	frsp f1, f1
/* 80C05E14  48 00 00 88 */	b lbl_80C05E9C
lbl_80C05E18:
/* 80C05E18  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C05E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05E20  40 80 00 10 */	bge lbl_80C05E30
/* 80C05E24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05E28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C05E2C  48 00 00 70 */	b lbl_80C05E9C
lbl_80C05E30:
/* 80C05E30  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C05E34  80 81 00 08 */	lwz r4, 8(r1)
/* 80C05E38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C05E3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C05E40  7C 03 00 00 */	cmpw r3, r0
/* 80C05E44  41 82 00 14 */	beq lbl_80C05E58
/* 80C05E48  40 80 00 40 */	bge lbl_80C05E88
/* 80C05E4C  2C 03 00 00 */	cmpwi r3, 0
/* 80C05E50  41 82 00 20 */	beq lbl_80C05E70
/* 80C05E54  48 00 00 34 */	b lbl_80C05E88
lbl_80C05E58:
/* 80C05E58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05E5C  41 82 00 0C */	beq lbl_80C05E68
/* 80C05E60  38 00 00 01 */	li r0, 1
/* 80C05E64  48 00 00 28 */	b lbl_80C05E8C
lbl_80C05E68:
/* 80C05E68  38 00 00 02 */	li r0, 2
/* 80C05E6C  48 00 00 20 */	b lbl_80C05E8C
lbl_80C05E70:
/* 80C05E70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C05E74  41 82 00 0C */	beq lbl_80C05E80
/* 80C05E78  38 00 00 05 */	li r0, 5
/* 80C05E7C  48 00 00 10 */	b lbl_80C05E8C
lbl_80C05E80:
/* 80C05E80  38 00 00 03 */	li r0, 3
/* 80C05E84  48 00 00 08 */	b lbl_80C05E8C
lbl_80C05E88:
/* 80C05E88  38 00 00 04 */	li r0, 4
lbl_80C05E8C:
/* 80C05E8C  2C 00 00 01 */	cmpwi r0, 1
/* 80C05E90  40 82 00 0C */	bne lbl_80C05E9C
/* 80C05E94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C05E98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C05E9C:
/* 80C05E9C  C0 1F 02 80 */	lfs f0, 0x280(r31)
/* 80C05EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C05EA4  40 80 00 48 */	bge lbl_80C05EEC
/* 80C05EA8  7F A3 EB 78 */	mr r3, r29
/* 80C05EAC  38 80 00 01 */	li r4, 1
/* 80C05EB0  4B FF CC 25 */	bl setLookMode__11daObj_GrA_cFi
/* 80C05EB4  3C 60 80 C1 */	lis r3, lit_6507@ha
/* 80C05EB8  38 83 01 CC */	addi r4, r3, lit_6507@l
/* 80C05EBC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C05EC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80C05EC4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80C05EC8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C05ECC  80 04 00 08 */	lwz r0, 8(r4)
/* 80C05ED0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C05ED4  7F A3 EB 78 */	mr r3, r29
/* 80C05ED8  38 81 00 38 */	addi r4, r1, 0x38
/* 80C05EDC  4B FF BA 19 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C05EE0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C05EE4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C05EE8  48 00 00 50 */	b lbl_80C05F38
lbl_80C05EEC:
/* 80C05EEC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C05EF0  38 9F 00 00 */	addi r4, r31, 0
/* 80C05EF4  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80C05EF8  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 80C05EFC  C0 7F 02 50 */	lfs f3, 0x250(r31)
/* 80C05F00  4B 66 9B 3C */	b cLib_addCalc2__FPffff
/* 80C05F04  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C05F08  38 81 00 74 */	addi r4, r1, 0x74
/* 80C05F0C  4B 66 AC F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C05F10  7C 64 1B 78 */	mr r4, r3
/* 80C05F14  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C05F18  38 A0 00 01 */	li r5, 1
/* 80C05F1C  38 DF 00 00 */	addi r6, r31, 0
/* 80C05F20  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C05F24  4B 66 A6 E4 */	b cLib_addCalcAngleS2__FPssss
/* 80C05F28  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C05F2C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C05F30  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C05F34  B0 1D 09 1C */	sth r0, 0x91c(r29)
lbl_80C05F38:
/* 80C05F38  38 60 00 01 */	li r3, 1
/* 80C05F3C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80C05F40  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80C05F44  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80C05F48  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80C05F4C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C05F50  4B 75 C2 D4 */	b _restgpr_28
/* 80C05F54  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C05F58  7C 08 03 A6 */	mtlr r0
/* 80C05F5C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C05F60  4E 80 00 20 */	blr 
