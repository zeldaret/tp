lbl_80B2C854:
/* 80B2C854  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B2C858  7C 08 02 A6 */	mflr r0
/* 80B2C85C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B2C860  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B2C864  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B2C868  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2C86C  4B 83 59 71 */	bl _savegpr_29
/* 80B2C870  7C 7F 1B 78 */	mr r31, r3
/* 80B2C874  7C 80 23 78 */	mr r0, r4
/* 80B2C878  FF E0 08 90 */	fmr f31, f1
/* 80B2C87C  7C BD 2B 78 */	mr r29, r5
/* 80B2C880  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B2C884  3B C3 CE 14 */	addi r30, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B2C888  38 A0 00 00 */	li r5, 0
/* 80B2C88C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B2C890  28 04 00 00 */	cmplwi r4, 0
/* 80B2C894  41 82 01 40 */	beq lbl_80B2C9D4
/* 80B2C898  38 61 00 18 */	addi r3, r1, 0x18
/* 80B2C89C  7C 05 03 78 */	mr r5, r0
/* 80B2C8A0  4B 73 A2 95 */	bl __mi__4cXyzCFRC3Vec
/* 80B2C8A4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B2C8A8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B2C8AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B2C8B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B2C8B4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B2C8B8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B2C8BC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B2C8C0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2C8C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2C8C8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B2C8CC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B2C8D0  4B 81 A8 69 */	bl PSVECSquareMag
/* 80B2C8D4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2C8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2C8DC  40 81 00 58 */	ble lbl_80B2C934
/* 80B2C8E0  FC 00 08 34 */	frsqrte f0, f1
/* 80B2C8E4  C8 9E 01 18 */	lfd f4, 0x118(r30)
/* 80B2C8E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2C8EC  C8 7E 01 20 */	lfd f3, 0x120(r30)
/* 80B2C8F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2C8F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2C8F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2C8FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2C900  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2C904  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2C908  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2C90C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2C910  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2C914  FC 44 00 32 */	fmul f2, f4, f0
/* 80B2C918  FC 00 00 32 */	fmul f0, f0, f0
/* 80B2C91C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B2C920  FC 03 00 28 */	fsub f0, f3, f0
/* 80B2C924  FC 02 00 32 */	fmul f0, f2, f0
/* 80B2C928  FC 41 00 32 */	fmul f2, f1, f0
/* 80B2C92C  FC 40 10 18 */	frsp f2, f2
/* 80B2C930  48 00 00 90 */	b lbl_80B2C9C0
lbl_80B2C934:
/* 80B2C934  C8 1E 01 28 */	lfd f0, 0x128(r30)
/* 80B2C938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2C93C  40 80 00 10 */	bge lbl_80B2C94C
/* 80B2C940  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B2C944  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B2C948  48 00 00 78 */	b lbl_80B2C9C0
lbl_80B2C94C:
/* 80B2C94C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B2C950  80 81 00 08 */	lwz r4, 8(r1)
/* 80B2C954  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B2C958  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B2C95C  7C 03 00 00 */	cmpw r3, r0
/* 80B2C960  41 82 00 14 */	beq lbl_80B2C974
/* 80B2C964  40 80 00 40 */	bge lbl_80B2C9A4
/* 80B2C968  2C 03 00 00 */	cmpwi r3, 0
/* 80B2C96C  41 82 00 20 */	beq lbl_80B2C98C
/* 80B2C970  48 00 00 34 */	b lbl_80B2C9A4
lbl_80B2C974:
/* 80B2C974  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B2C978  41 82 00 0C */	beq lbl_80B2C984
/* 80B2C97C  38 00 00 01 */	li r0, 1
/* 80B2C980  48 00 00 28 */	b lbl_80B2C9A8
lbl_80B2C984:
/* 80B2C984  38 00 00 02 */	li r0, 2
/* 80B2C988  48 00 00 20 */	b lbl_80B2C9A8
lbl_80B2C98C:
/* 80B2C98C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B2C990  41 82 00 0C */	beq lbl_80B2C99C
/* 80B2C994  38 00 00 05 */	li r0, 5
/* 80B2C998  48 00 00 10 */	b lbl_80B2C9A8
lbl_80B2C99C:
/* 80B2C99C  38 00 00 03 */	li r0, 3
/* 80B2C9A0  48 00 00 08 */	b lbl_80B2C9A8
lbl_80B2C9A4:
/* 80B2C9A4  38 00 00 04 */	li r0, 4
lbl_80B2C9A8:
/* 80B2C9A8  2C 00 00 01 */	cmpwi r0, 1
/* 80B2C9AC  40 82 00 10 */	bne lbl_80B2C9BC
/* 80B2C9B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B2C9B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B2C9B8  48 00 00 08 */	b lbl_80B2C9C0
lbl_80B2C9BC:
/* 80B2C9BC  FC 40 08 90 */	fmr f2, f1
lbl_80B2C9C0:
/* 80B2C9C0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B2C9C4  4B 73 AC B1 */	bl cM_atan2s__Fff
/* 80B2C9C8  7C 03 00 D0 */	neg r0, r3
/* 80B2C9CC  7C 05 07 34 */	extsh r5, r0
/* 80B2C9D0  7C A5 EA 14 */	add r5, r5, r29
lbl_80B2C9D4:
/* 80B2C9D4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B2C9D8  7C A5 02 14 */	add r5, r5, r0
/* 80B2C9DC  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 80B2C9E0  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B2C9E4  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B2C9E8  C8 5E 01 10 */	lfd f2, 0x110(r30)
/* 80B2C9EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B2C9F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2C9F4  3C 60 43 30 */	lis r3, 0x4330
/* 80B2C9F8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B2C9FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B2CA00  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B2CA04  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B2CA08  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2CA0C  7C A0 07 34 */	extsh r0, r5
/* 80B2CA10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B2CA14  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B2CA18  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B2CA1C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B2CA20  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B2CA24  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B2CA28  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2CA2C  FC 00 00 1E */	fctiwz f0, f0
/* 80B2CA30  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B2CA34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B2CA38  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B2CA3C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B2CA40  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B2CA44  39 61 00 60 */	addi r11, r1, 0x60
/* 80B2CA48  4B 83 57 E1 */	bl _restgpr_29
/* 80B2CA4C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B2CA50  7C 08 03 A6 */	mtlr r0
/* 80B2CA54  38 21 00 70 */	addi r1, r1, 0x70
/* 80B2CA58  4E 80 00 20 */	blr 
