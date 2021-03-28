lbl_80B4C8D4:
/* 80B4C8D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B4C8D8  7C 08 02 A6 */	mflr r0
/* 80B4C8DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B4C8E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B4C8E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B4C8E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80B4C8EC  4B 81 58 F0 */	b _savegpr_29
/* 80B4C8F0  7C 7F 1B 78 */	mr r31, r3
/* 80B4C8F4  7C 80 23 78 */	mr r0, r4
/* 80B4C8F8  FF E0 08 90 */	fmr f31, f1
/* 80B4C8FC  7C BD 2B 78 */	mr r29, r5
/* 80B4C900  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha
/* 80B4C904  3B C3 CD A4 */	addi r30, r3, m__19daNpc_yamiT_Param_c@l
/* 80B4C908  38 A0 00 00 */	li r5, 0
/* 80B4C90C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B4C910  28 04 00 00 */	cmplwi r4, 0
/* 80B4C914  41 82 01 40 */	beq lbl_80B4CA54
/* 80B4C918  38 61 00 18 */	addi r3, r1, 0x18
/* 80B4C91C  7C 05 03 78 */	mr r5, r0
/* 80B4C920  4B 71 A2 14 */	b __mi__4cXyzCFRC3Vec
/* 80B4C924  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B4C928  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B4C92C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B4C930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B4C934  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B4C938  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B4C93C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B4C940  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B4C944  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B4C948  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B4C94C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B4C950  4B 7F A7 E8 */	b PSVECSquareMag
/* 80B4C954  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B4C958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B4C95C  40 81 00 58 */	ble lbl_80B4C9B4
/* 80B4C960  FC 00 08 34 */	frsqrte f0, f1
/* 80B4C964  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80B4C968  FC 44 00 32 */	fmul f2, f4, f0
/* 80B4C96C  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80B4C970  FC 00 00 32 */	fmul f0, f0, f0
/* 80B4C974  FC 01 00 32 */	fmul f0, f1, f0
/* 80B4C978  FC 03 00 28 */	fsub f0, f3, f0
/* 80B4C97C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B4C980  FC 44 00 32 */	fmul f2, f4, f0
/* 80B4C984  FC 00 00 32 */	fmul f0, f0, f0
/* 80B4C988  FC 01 00 32 */	fmul f0, f1, f0
/* 80B4C98C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B4C990  FC 02 00 32 */	fmul f0, f2, f0
/* 80B4C994  FC 44 00 32 */	fmul f2, f4, f0
/* 80B4C998  FC 00 00 32 */	fmul f0, f0, f0
/* 80B4C99C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B4C9A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B4C9A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B4C9A8  FC 41 00 32 */	fmul f2, f1, f0
/* 80B4C9AC  FC 40 10 18 */	frsp f2, f2
/* 80B4C9B0  48 00 00 90 */	b lbl_80B4CA40
lbl_80B4C9B4:
/* 80B4C9B4  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80B4C9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B4C9BC  40 80 00 10 */	bge lbl_80B4C9CC
/* 80B4C9C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B4C9C4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B4C9C8  48 00 00 78 */	b lbl_80B4CA40
lbl_80B4C9CC:
/* 80B4C9CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B4C9D0  80 81 00 08 */	lwz r4, 8(r1)
/* 80B4C9D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B4C9D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B4C9DC  7C 03 00 00 */	cmpw r3, r0
/* 80B4C9E0  41 82 00 14 */	beq lbl_80B4C9F4
/* 80B4C9E4  40 80 00 40 */	bge lbl_80B4CA24
/* 80B4C9E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B4C9EC  41 82 00 20 */	beq lbl_80B4CA0C
/* 80B4C9F0  48 00 00 34 */	b lbl_80B4CA24
lbl_80B4C9F4:
/* 80B4C9F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B4C9F8  41 82 00 0C */	beq lbl_80B4CA04
/* 80B4C9FC  38 00 00 01 */	li r0, 1
/* 80B4CA00  48 00 00 28 */	b lbl_80B4CA28
lbl_80B4CA04:
/* 80B4CA04  38 00 00 02 */	li r0, 2
/* 80B4CA08  48 00 00 20 */	b lbl_80B4CA28
lbl_80B4CA0C:
/* 80B4CA0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B4CA10  41 82 00 0C */	beq lbl_80B4CA1C
/* 80B4CA14  38 00 00 05 */	li r0, 5
/* 80B4CA18  48 00 00 10 */	b lbl_80B4CA28
lbl_80B4CA1C:
/* 80B4CA1C  38 00 00 03 */	li r0, 3
/* 80B4CA20  48 00 00 08 */	b lbl_80B4CA28
lbl_80B4CA24:
/* 80B4CA24  38 00 00 04 */	li r0, 4
lbl_80B4CA28:
/* 80B4CA28  2C 00 00 01 */	cmpwi r0, 1
/* 80B4CA2C  40 82 00 10 */	bne lbl_80B4CA3C
/* 80B4CA30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B4CA34  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B4CA38  48 00 00 08 */	b lbl_80B4CA40
lbl_80B4CA3C:
/* 80B4CA3C  FC 40 08 90 */	fmr f2, f1
lbl_80B4CA40:
/* 80B4CA40  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B4CA44  4B 71 AC 30 */	b cM_atan2s__Fff
/* 80B4CA48  7C 03 00 D0 */	neg r0, r3
/* 80B4CA4C  7C 05 07 34 */	extsh r5, r0
/* 80B4CA50  7C A5 EA 14 */	add r5, r5, r29
lbl_80B4CA54:
/* 80B4CA54  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B4CA58  7C A5 02 14 */	add r5, r5, r0
/* 80B4CA5C  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80B4CA60  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B4CA64  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B4CA68  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80B4CA6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4CA70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4CA74  3C 60 43 30 */	lis r3, 0x4330
/* 80B4CA78  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B4CA7C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B4CA80  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B4CA84  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B4CA88  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B4CA8C  7C A0 07 34 */	extsh r0, r5
/* 80B4CA90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4CA94  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B4CA98  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B4CA9C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B4CAA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B4CAA4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B4CAA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B4CAAC  FC 00 00 1E */	fctiwz f0, f0
/* 80B4CAB0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B4CAB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B4CAB8  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B4CABC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B4CAC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B4CAC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B4CAC8  4B 81 57 60 */	b _restgpr_29
/* 80B4CACC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B4CAD0  7C 08 03 A6 */	mtlr r0
/* 80B4CAD4  38 21 00 70 */	addi r1, r1, 0x70
/* 80B4CAD8  4E 80 00 20 */	blr 
