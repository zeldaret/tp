lbl_80A7A8B0:
/* 80A7A8B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A7A8B4  7C 08 02 A6 */	mflr r0
/* 80A7A8B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A7A8BC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A7A8C0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A7A8C4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7A8C8  4B 8E 79 15 */	bl _savegpr_29
/* 80A7A8CC  7C 7F 1B 78 */	mr r31, r3
/* 80A7A8D0  7C 80 23 78 */	mr r0, r4
/* 80A7A8D4  FF E0 08 90 */	fmr f31, f1
/* 80A7A8D8  7C BD 2B 78 */	mr r29, r5
/* 80A7A8DC  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A7A8E0  3B C3 AE F0 */	addi r30, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A7A8E4  38 A0 00 00 */	li r5, 0
/* 80A7A8E8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A7A8EC  28 04 00 00 */	cmplwi r4, 0
/* 80A7A8F0  41 82 01 40 */	beq lbl_80A7AA30
/* 80A7A8F4  38 61 00 18 */	addi r3, r1, 0x18
/* 80A7A8F8  7C 05 03 78 */	mr r5, r0
/* 80A7A8FC  4B 7E C2 39 */	bl __mi__4cXyzCFRC3Vec
/* 80A7A900  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A7A904  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A7A908  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A7A90C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A7A910  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A7A914  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A7A918  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A7A91C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80A7A920  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A7A924  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A7A928  38 61 00 0C */	addi r3, r1, 0xc
/* 80A7A92C  4B 8C C8 0D */	bl PSVECSquareMag
/* 80A7A930  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80A7A934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A7A938  40 81 00 58 */	ble lbl_80A7A990
/* 80A7A93C  FC 00 08 34 */	frsqrte f0, f1
/* 80A7A940  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80A7A944  FC 44 00 32 */	fmul f2, f4, f0
/* 80A7A948  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80A7A94C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A7A950  FC 01 00 32 */	fmul f0, f1, f0
/* 80A7A954  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7A958  FC 02 00 32 */	fmul f0, f2, f0
/* 80A7A95C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A7A960  FC 00 00 32 */	fmul f0, f0, f0
/* 80A7A964  FC 01 00 32 */	fmul f0, f1, f0
/* 80A7A968  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7A96C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A7A970  FC 44 00 32 */	fmul f2, f4, f0
/* 80A7A974  FC 00 00 32 */	fmul f0, f0, f0
/* 80A7A978  FC 01 00 32 */	fmul f0, f1, f0
/* 80A7A97C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A7A980  FC 02 00 32 */	fmul f0, f2, f0
/* 80A7A984  FC 41 00 32 */	fmul f2, f1, f0
/* 80A7A988  FC 40 10 18 */	frsp f2, f2
/* 80A7A98C  48 00 00 90 */	b lbl_80A7AA1C
lbl_80A7A990:
/* 80A7A990  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80A7A994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A7A998  40 80 00 10 */	bge lbl_80A7A9A8
/* 80A7A99C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A7A9A0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A7A9A4  48 00 00 78 */	b lbl_80A7AA1C
lbl_80A7A9A8:
/* 80A7A9A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A7A9AC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A7A9B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A7A9B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A7A9B8  7C 03 00 00 */	cmpw r3, r0
/* 80A7A9BC  41 82 00 14 */	beq lbl_80A7A9D0
/* 80A7A9C0  40 80 00 40 */	bge lbl_80A7AA00
/* 80A7A9C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7A9C8  41 82 00 20 */	beq lbl_80A7A9E8
/* 80A7A9CC  48 00 00 34 */	b lbl_80A7AA00
lbl_80A7A9D0:
/* 80A7A9D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A7A9D4  41 82 00 0C */	beq lbl_80A7A9E0
/* 80A7A9D8  38 00 00 01 */	li r0, 1
/* 80A7A9DC  48 00 00 28 */	b lbl_80A7AA04
lbl_80A7A9E0:
/* 80A7A9E0  38 00 00 02 */	li r0, 2
/* 80A7A9E4  48 00 00 20 */	b lbl_80A7AA04
lbl_80A7A9E8:
/* 80A7A9E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A7A9EC  41 82 00 0C */	beq lbl_80A7A9F8
/* 80A7A9F0  38 00 00 05 */	li r0, 5
/* 80A7A9F4  48 00 00 10 */	b lbl_80A7AA04
lbl_80A7A9F8:
/* 80A7A9F8  38 00 00 03 */	li r0, 3
/* 80A7A9FC  48 00 00 08 */	b lbl_80A7AA04
lbl_80A7AA00:
/* 80A7AA00  38 00 00 04 */	li r0, 4
lbl_80A7AA04:
/* 80A7AA04  2C 00 00 01 */	cmpwi r0, 1
/* 80A7AA08  40 82 00 10 */	bne lbl_80A7AA18
/* 80A7AA0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A7AA10  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A7AA14  48 00 00 08 */	b lbl_80A7AA1C
lbl_80A7AA18:
/* 80A7AA18  FC 40 08 90 */	fmr f2, f1
lbl_80A7AA1C:
/* 80A7AA1C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A7AA20  4B 7E CC 55 */	bl cM_atan2s__Fff
/* 80A7AA24  7C 03 00 D0 */	neg r0, r3
/* 80A7AA28  7C 05 07 34 */	extsh r5, r0
/* 80A7AA2C  7C A5 EA 14 */	add r5, r5, r29
lbl_80A7AA30:
/* 80A7AA30  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A7AA34  7C A5 02 14 */	add r5, r5, r0
/* 80A7AA38  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 80A7AA3C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A7AA40  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A7AA44  C8 5E 01 48 */	lfd f2, 0x148(r30)
/* 80A7AA48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7AA4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7AA50  3C 60 43 30 */	lis r3, 0x4330
/* 80A7AA54  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A7AA58  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A7AA5C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A7AA60  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A7AA64  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A7AA68  7C A0 07 34 */	extsh r0, r5
/* 80A7AA6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7AA70  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A7AA74  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A7AA78  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A7AA7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A7AA80  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A7AA84  EC 01 00 2A */	fadds f0, f1, f0
/* 80A7AA88  FC 00 00 1E */	fctiwz f0, f0
/* 80A7AA8C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A7AA90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7AA94  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A7AA98  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A7AA9C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A7AAA0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7AAA4  4B 8E 77 85 */	bl _restgpr_29
/* 80A7AAA8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A7AAAC  7C 08 03 A6 */	mtlr r0
/* 80A7AAB0  38 21 00 70 */	addi r1, r1, 0x70
/* 80A7AAB4  4E 80 00 20 */	blr 
