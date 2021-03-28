lbl_809D69E4:
/* 809D69E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809D69E8  7C 08 02 A6 */	mflr r0
/* 809D69EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 809D69F0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809D69F4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809D69F8  39 61 00 60 */	addi r11, r1, 0x60
/* 809D69FC  4B 98 B7 E0 */	b _savegpr_29
/* 809D6A00  7C 7F 1B 78 */	mr r31, r3
/* 809D6A04  7C 80 23 78 */	mr r0, r4
/* 809D6A08  FF E0 08 90 */	fmr f31, f1
/* 809D6A0C  7C BD 2B 78 */	mr r29, r5
/* 809D6A10  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha
/* 809D6A14  3B C3 6D 70 */	addi r30, r3, m__17daNpc_grM_Param_c@l
/* 809D6A18  38 A0 00 00 */	li r5, 0
/* 809D6A1C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809D6A20  28 04 00 00 */	cmplwi r4, 0
/* 809D6A24  41 82 01 40 */	beq lbl_809D6B64
/* 809D6A28  38 61 00 18 */	addi r3, r1, 0x18
/* 809D6A2C  7C 05 03 78 */	mr r5, r0
/* 809D6A30  4B 89 01 04 */	b __mi__4cXyzCFRC3Vec
/* 809D6A34  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809D6A38  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809D6A3C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809D6A40  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809D6A44  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809D6A48  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809D6A4C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809D6A50  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809D6A54  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D6A58  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809D6A5C  38 61 00 0C */	addi r3, r1, 0xc
/* 809D6A60  4B 97 06 D8 */	b PSVECSquareMag
/* 809D6A64  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809D6A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D6A6C  40 81 00 58 */	ble lbl_809D6AC4
/* 809D6A70  FC 00 08 34 */	frsqrte f0, f1
/* 809D6A74  C8 9E 00 D8 */	lfd f4, 0xd8(r30)
/* 809D6A78  FC 44 00 32 */	fmul f2, f4, f0
/* 809D6A7C  C8 7E 00 E0 */	lfd f3, 0xe0(r30)
/* 809D6A80  FC 00 00 32 */	fmul f0, f0, f0
/* 809D6A84  FC 01 00 32 */	fmul f0, f1, f0
/* 809D6A88  FC 03 00 28 */	fsub f0, f3, f0
/* 809D6A8C  FC 02 00 32 */	fmul f0, f2, f0
/* 809D6A90  FC 44 00 32 */	fmul f2, f4, f0
/* 809D6A94  FC 00 00 32 */	fmul f0, f0, f0
/* 809D6A98  FC 01 00 32 */	fmul f0, f1, f0
/* 809D6A9C  FC 03 00 28 */	fsub f0, f3, f0
/* 809D6AA0  FC 02 00 32 */	fmul f0, f2, f0
/* 809D6AA4  FC 44 00 32 */	fmul f2, f4, f0
/* 809D6AA8  FC 00 00 32 */	fmul f0, f0, f0
/* 809D6AAC  FC 01 00 32 */	fmul f0, f1, f0
/* 809D6AB0  FC 03 00 28 */	fsub f0, f3, f0
/* 809D6AB4  FC 02 00 32 */	fmul f0, f2, f0
/* 809D6AB8  FC 41 00 32 */	fmul f2, f1, f0
/* 809D6ABC  FC 40 10 18 */	frsp f2, f2
/* 809D6AC0  48 00 00 90 */	b lbl_809D6B50
lbl_809D6AC4:
/* 809D6AC4  C8 1E 00 E8 */	lfd f0, 0xe8(r30)
/* 809D6AC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809D6ACC  40 80 00 10 */	bge lbl_809D6ADC
/* 809D6AD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809D6AD4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809D6AD8  48 00 00 78 */	b lbl_809D6B50
lbl_809D6ADC:
/* 809D6ADC  D0 21 00 08 */	stfs f1, 8(r1)
/* 809D6AE0  80 81 00 08 */	lwz r4, 8(r1)
/* 809D6AE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809D6AE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 809D6AEC  7C 03 00 00 */	cmpw r3, r0
/* 809D6AF0  41 82 00 14 */	beq lbl_809D6B04
/* 809D6AF4  40 80 00 40 */	bge lbl_809D6B34
/* 809D6AF8  2C 03 00 00 */	cmpwi r3, 0
/* 809D6AFC  41 82 00 20 */	beq lbl_809D6B1C
/* 809D6B00  48 00 00 34 */	b lbl_809D6B34
lbl_809D6B04:
/* 809D6B04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D6B08  41 82 00 0C */	beq lbl_809D6B14
/* 809D6B0C  38 00 00 01 */	li r0, 1
/* 809D6B10  48 00 00 28 */	b lbl_809D6B38
lbl_809D6B14:
/* 809D6B14  38 00 00 02 */	li r0, 2
/* 809D6B18  48 00 00 20 */	b lbl_809D6B38
lbl_809D6B1C:
/* 809D6B1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809D6B20  41 82 00 0C */	beq lbl_809D6B2C
/* 809D6B24  38 00 00 05 */	li r0, 5
/* 809D6B28  48 00 00 10 */	b lbl_809D6B38
lbl_809D6B2C:
/* 809D6B2C  38 00 00 03 */	li r0, 3
/* 809D6B30  48 00 00 08 */	b lbl_809D6B38
lbl_809D6B34:
/* 809D6B34  38 00 00 04 */	li r0, 4
lbl_809D6B38:
/* 809D6B38  2C 00 00 01 */	cmpwi r0, 1
/* 809D6B3C  40 82 00 10 */	bne lbl_809D6B4C
/* 809D6B40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809D6B44  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809D6B48  48 00 00 08 */	b lbl_809D6B50
lbl_809D6B4C:
/* 809D6B4C  FC 40 08 90 */	fmr f2, f1
lbl_809D6B50:
/* 809D6B50  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809D6B54  4B 89 0B 20 */	b cM_atan2s__Fff
/* 809D6B58  7C 03 00 D0 */	neg r0, r3
/* 809D6B5C  7C 05 07 34 */	extsh r5, r0
/* 809D6B60  7C A5 EA 14 */	add r5, r5, r29
lbl_809D6B64:
/* 809D6B64  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809D6B68  7C A5 02 14 */	add r5, r5, r0
/* 809D6B6C  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 809D6B70  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809D6B74  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809D6B78  C8 5E 00 D0 */	lfd f2, 0xd0(r30)
/* 809D6B7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D6B80  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D6B84  3C 60 43 30 */	lis r3, 0x4330
/* 809D6B88  90 61 00 30 */	stw r3, 0x30(r1)
/* 809D6B8C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809D6B90  EC 20 10 28 */	fsubs f1, f0, f2
/* 809D6B94  EC 03 20 28 */	fsubs f0, f3, f4
/* 809D6B98  EC 21 00 32 */	fmuls f1, f1, f0
/* 809D6B9C  7C A0 07 34 */	extsh r0, r5
/* 809D6BA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D6BA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809D6BA8  90 61 00 38 */	stw r3, 0x38(r1)
/* 809D6BAC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809D6BB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 809D6BB4  EC 00 01 32 */	fmuls f0, f0, f4
/* 809D6BB8  EC 01 00 2A */	fadds f0, f1, f0
/* 809D6BBC  FC 00 00 1E */	fctiwz f0, f0
/* 809D6BC0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809D6BC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D6BC8  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809D6BCC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809D6BD0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809D6BD4  39 61 00 60 */	addi r11, r1, 0x60
/* 809D6BD8  4B 98 B6 50 */	b _restgpr_29
/* 809D6BDC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809D6BE0  7C 08 03 A6 */	mtlr r0
/* 809D6BE4  38 21 00 70 */	addi r1, r1, 0x70
/* 809D6BE8  4E 80 00 20 */	blr 
