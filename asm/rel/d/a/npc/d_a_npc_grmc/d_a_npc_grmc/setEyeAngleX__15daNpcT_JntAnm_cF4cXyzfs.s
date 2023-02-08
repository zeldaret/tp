lbl_809D9A10:
/* 809D9A10  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809D9A14  7C 08 02 A6 */	mflr r0
/* 809D9A18  90 01 00 74 */	stw r0, 0x74(r1)
/* 809D9A1C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809D9A20  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809D9A24  39 61 00 60 */	addi r11, r1, 0x60
/* 809D9A28  4B 98 87 B5 */	bl _savegpr_29
/* 809D9A2C  7C 7F 1B 78 */	mr r31, r3
/* 809D9A30  7C 80 23 78 */	mr r0, r4
/* 809D9A34  FF E0 08 90 */	fmr f31, f1
/* 809D9A38  7C BD 2B 78 */	mr r29, r5
/* 809D9A3C  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D9A40  3B C3 9D 70 */	addi r30, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D9A44  38 A0 00 00 */	li r5, 0
/* 809D9A48  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809D9A4C  28 04 00 00 */	cmplwi r4, 0
/* 809D9A50  41 82 01 40 */	beq lbl_809D9B90
/* 809D9A54  38 61 00 18 */	addi r3, r1, 0x18
/* 809D9A58  7C 05 03 78 */	mr r5, r0
/* 809D9A5C  4B 88 D0 D9 */	bl __mi__4cXyzCFRC3Vec
/* 809D9A60  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809D9A64  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809D9A68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809D9A6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809D9A70  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809D9A74  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809D9A78  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809D9A7C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809D9A80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D9A84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809D9A88  38 61 00 0C */	addi r3, r1, 0xc
/* 809D9A8C  4B 96 D6 AD */	bl PSVECSquareMag
/* 809D9A90  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809D9A94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D9A98  40 81 00 58 */	ble lbl_809D9AF0
/* 809D9A9C  FC 00 08 34 */	frsqrte f0, f1
/* 809D9AA0  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 809D9AA4  FC 44 00 32 */	fmul f2, f4, f0
/* 809D9AA8  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 809D9AAC  FC 00 00 32 */	fmul f0, f0, f0
/* 809D9AB0  FC 01 00 32 */	fmul f0, f1, f0
/* 809D9AB4  FC 03 00 28 */	fsub f0, f3, f0
/* 809D9AB8  FC 02 00 32 */	fmul f0, f2, f0
/* 809D9ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 809D9AC0  FC 00 00 32 */	fmul f0, f0, f0
/* 809D9AC4  FC 01 00 32 */	fmul f0, f1, f0
/* 809D9AC8  FC 03 00 28 */	fsub f0, f3, f0
/* 809D9ACC  FC 02 00 32 */	fmul f0, f2, f0
/* 809D9AD0  FC 44 00 32 */	fmul f2, f4, f0
/* 809D9AD4  FC 00 00 32 */	fmul f0, f0, f0
/* 809D9AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 809D9ADC  FC 03 00 28 */	fsub f0, f3, f0
/* 809D9AE0  FC 02 00 32 */	fmul f0, f2, f0
/* 809D9AE4  FC 41 00 32 */	fmul f2, f1, f0
/* 809D9AE8  FC 40 10 18 */	frsp f2, f2
/* 809D9AEC  48 00 00 90 */	b lbl_809D9B7C
lbl_809D9AF0:
/* 809D9AF0  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 809D9AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D9AF8  40 80 00 10 */	bge lbl_809D9B08
/* 809D9AFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809D9B00  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809D9B04  48 00 00 78 */	b lbl_809D9B7C
lbl_809D9B08:
/* 809D9B08  D0 21 00 08 */	stfs f1, 8(r1)
/* 809D9B0C  80 81 00 08 */	lwz r4, 8(r1)
/* 809D9B10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809D9B14  3C 00 7F 80 */	lis r0, 0x7f80
/* 809D9B18  7C 03 00 00 */	cmpw r3, r0
/* 809D9B1C  41 82 00 14 */	beq lbl_809D9B30
/* 809D9B20  40 80 00 40 */	bge lbl_809D9B60
/* 809D9B24  2C 03 00 00 */	cmpwi r3, 0
/* 809D9B28  41 82 00 20 */	beq lbl_809D9B48
/* 809D9B2C  48 00 00 34 */	b lbl_809D9B60
lbl_809D9B30:
/* 809D9B30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D9B34  41 82 00 0C */	beq lbl_809D9B40
/* 809D9B38  38 00 00 01 */	li r0, 1
/* 809D9B3C  48 00 00 28 */	b lbl_809D9B64
lbl_809D9B40:
/* 809D9B40  38 00 00 02 */	li r0, 2
/* 809D9B44  48 00 00 20 */	b lbl_809D9B64
lbl_809D9B48:
/* 809D9B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D9B4C  41 82 00 0C */	beq lbl_809D9B58
/* 809D9B50  38 00 00 05 */	li r0, 5
/* 809D9B54  48 00 00 10 */	b lbl_809D9B64
lbl_809D9B58:
/* 809D9B58  38 00 00 03 */	li r0, 3
/* 809D9B5C  48 00 00 08 */	b lbl_809D9B64
lbl_809D9B60:
/* 809D9B60  38 00 00 04 */	li r0, 4
lbl_809D9B64:
/* 809D9B64  2C 00 00 01 */	cmpwi r0, 1
/* 809D9B68  40 82 00 10 */	bne lbl_809D9B78
/* 809D9B6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809D9B70  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809D9B74  48 00 00 08 */	b lbl_809D9B7C
lbl_809D9B78:
/* 809D9B78  FC 40 08 90 */	fmr f2, f1
lbl_809D9B7C:
/* 809D9B7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809D9B80  4B 88 DA F5 */	bl cM_atan2s__Fff
/* 809D9B84  7C 03 00 D0 */	neg r0, r3
/* 809D9B88  7C 05 07 34 */	extsh r5, r0
/* 809D9B8C  7C A5 EA 14 */	add r5, r5, r29
lbl_809D9B90:
/* 809D9B90  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809D9B94  7C A5 02 14 */	add r5, r5, r0
/* 809D9B98  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 809D9B9C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809D9BA0  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809D9BA4  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 809D9BA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D9BAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D9BB0  3C 60 43 30 */	lis r3, 0x4330
/* 809D9BB4  90 61 00 30 */	stw r3, 0x30(r1)
/* 809D9BB8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809D9BBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 809D9BC0  EC 03 20 28 */	fsubs f0, f3, f4
/* 809D9BC4  EC 21 00 32 */	fmuls f1, f1, f0
/* 809D9BC8  7C A0 07 34 */	extsh r0, r5
/* 809D9BCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D9BD0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809D9BD4  90 61 00 38 */	stw r3, 0x38(r1)
/* 809D9BD8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809D9BDC  EC 00 10 28 */	fsubs f0, f0, f2
/* 809D9BE0  EC 00 01 32 */	fmuls f0, f0, f4
/* 809D9BE4  EC 01 00 2A */	fadds f0, f1, f0
/* 809D9BE8  FC 00 00 1E */	fctiwz f0, f0
/* 809D9BEC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809D9BF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D9BF4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809D9BF8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809D9BFC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809D9C00  39 61 00 60 */	addi r11, r1, 0x60
/* 809D9C04  4B 98 86 25 */	bl _restgpr_29
/* 809D9C08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809D9C0C  7C 08 03 A6 */	mtlr r0
/* 809D9C10  38 21 00 70 */	addi r1, r1, 0x70
/* 809D9C14  4E 80 00 20 */	blr 
