lbl_80AB898C:
/* 80AB898C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AB8990  7C 08 02 A6 */	mflr r0
/* 80AB8994  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AB8998  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AB899C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AB89A0  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB89A4  4B 8A 98 38 */	b _savegpr_29
/* 80AB89A8  7C 7F 1B 78 */	mr r31, r3
/* 80AB89AC  7C 80 23 78 */	mr r0, r4
/* 80AB89B0  FF E0 08 90 */	fmr f31, f1
/* 80AB89B4  7C BD 2B 78 */	mr r29, r5
/* 80AB89B8  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha
/* 80AB89BC  3B C3 8E C8 */	addi r30, r3, m__18daNpc_Raca_Param_c@l
/* 80AB89C0  38 A0 00 00 */	li r5, 0
/* 80AB89C4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80AB89C8  28 04 00 00 */	cmplwi r4, 0
/* 80AB89CC  41 82 01 40 */	beq lbl_80AB8B0C
/* 80AB89D0  38 61 00 18 */	addi r3, r1, 0x18
/* 80AB89D4  7C 05 03 78 */	mr r5, r0
/* 80AB89D8  4B 7A E1 5C */	b __mi__4cXyzCFRC3Vec
/* 80AB89DC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80AB89E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80AB89E4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AB89E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AB89EC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80AB89F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80AB89F4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80AB89F8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB89FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB8A00  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AB8A04  38 61 00 0C */	addi r3, r1, 0xc
/* 80AB8A08  4B 88 E7 30 */	b PSVECSquareMag
/* 80AB8A0C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB8A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB8A14  40 81 00 58 */	ble lbl_80AB8A6C
/* 80AB8A18  FC 00 08 34 */	frsqrte f0, f1
/* 80AB8A1C  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80AB8A20  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB8A24  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80AB8A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB8A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB8A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB8A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB8A38  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB8A3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB8A40  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB8A44  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB8A48  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB8A4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AB8A50  FC 00 00 32 */	fmul f0, f0, f0
/* 80AB8A54  FC 01 00 32 */	fmul f0, f1, f0
/* 80AB8A58  FC 03 00 28 */	fsub f0, f3, f0
/* 80AB8A5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AB8A60  FC 41 00 32 */	fmul f2, f1, f0
/* 80AB8A64  FC 40 10 18 */	frsp f2, f2
/* 80AB8A68  48 00 00 90 */	b lbl_80AB8AF8
lbl_80AB8A6C:
/* 80AB8A6C  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80AB8A70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB8A74  40 80 00 10 */	bge lbl_80AB8A84
/* 80AB8A78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AB8A7C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AB8A80  48 00 00 78 */	b lbl_80AB8AF8
lbl_80AB8A84:
/* 80AB8A84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AB8A88  80 81 00 08 */	lwz r4, 8(r1)
/* 80AB8A8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AB8A90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AB8A94  7C 03 00 00 */	cmpw r3, r0
/* 80AB8A98  41 82 00 14 */	beq lbl_80AB8AAC
/* 80AB8A9C  40 80 00 40 */	bge lbl_80AB8ADC
/* 80AB8AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB8AA4  41 82 00 20 */	beq lbl_80AB8AC4
/* 80AB8AA8  48 00 00 34 */	b lbl_80AB8ADC
lbl_80AB8AAC:
/* 80AB8AAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AB8AB0  41 82 00 0C */	beq lbl_80AB8ABC
/* 80AB8AB4  38 00 00 01 */	li r0, 1
/* 80AB8AB8  48 00 00 28 */	b lbl_80AB8AE0
lbl_80AB8ABC:
/* 80AB8ABC  38 00 00 02 */	li r0, 2
/* 80AB8AC0  48 00 00 20 */	b lbl_80AB8AE0
lbl_80AB8AC4:
/* 80AB8AC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AB8AC8  41 82 00 0C */	beq lbl_80AB8AD4
/* 80AB8ACC  38 00 00 05 */	li r0, 5
/* 80AB8AD0  48 00 00 10 */	b lbl_80AB8AE0
lbl_80AB8AD4:
/* 80AB8AD4  38 00 00 03 */	li r0, 3
/* 80AB8AD8  48 00 00 08 */	b lbl_80AB8AE0
lbl_80AB8ADC:
/* 80AB8ADC  38 00 00 04 */	li r0, 4
lbl_80AB8AE0:
/* 80AB8AE0  2C 00 00 01 */	cmpwi r0, 1
/* 80AB8AE4  40 82 00 10 */	bne lbl_80AB8AF4
/* 80AB8AE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AB8AEC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80AB8AF0  48 00 00 08 */	b lbl_80AB8AF8
lbl_80AB8AF4:
/* 80AB8AF4  FC 40 08 90 */	fmr f2, f1
lbl_80AB8AF8:
/* 80AB8AF8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80AB8AFC  4B 7A EB 78 */	b cM_atan2s__Fff
/* 80AB8B00  7C 03 00 D0 */	neg r0, r3
/* 80AB8B04  7C 05 07 34 */	extsh r5, r0
/* 80AB8B08  7C A5 EA 14 */	add r5, r5, r29
lbl_80AB8B0C:
/* 80AB8B0C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80AB8B10  7C A5 02 14 */	add r5, r5, r0
/* 80AB8B14  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 80AB8B18  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AB8B1C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80AB8B20  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80AB8B24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB8B28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB8B2C  3C 60 43 30 */	lis r3, 0x4330
/* 80AB8B30  90 61 00 30 */	stw r3, 0x30(r1)
/* 80AB8B34  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AB8B38  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AB8B3C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AB8B40  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AB8B44  7C A0 07 34 */	extsh r0, r5
/* 80AB8B48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB8B4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AB8B50  90 61 00 38 */	stw r3, 0x38(r1)
/* 80AB8B54  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AB8B58  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AB8B5C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AB8B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80AB8B64  FC 00 00 1E */	fctiwz f0, f0
/* 80AB8B68  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80AB8B6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB8B70  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80AB8B74  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AB8B78  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AB8B7C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB8B80  4B 8A 96 A8 */	b _restgpr_29
/* 80AB8B84  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AB8B88  7C 08 03 A6 */	mtlr r0
/* 80AB8B8C  38 21 00 70 */	addi r1, r1, 0x70
/* 80AB8B90  4E 80 00 20 */	blr 
