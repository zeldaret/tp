lbl_80D4BAA4:
/* 80D4BAA4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D4BAA8  7C 08 02 A6 */	mflr r0
/* 80D4BAAC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D4BAB0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80D4BAB4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80D4BAB8  39 61 00 60 */	addi r11, r1, 0x60
/* 80D4BABC  4B 61 67 21 */	bl _savegpr_29
/* 80D4BAC0  7C 7F 1B 78 */	mr r31, r3
/* 80D4BAC4  7C 80 23 78 */	mr r0, r4
/* 80D4BAC8  FF E0 08 90 */	fmr f31, f1
/* 80D4BACC  7C BD 2B 78 */	mr r29, r5
/* 80D4BAD0  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D4BAD4  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D4BAD8  38 A0 00 00 */	li r5, 0
/* 80D4BADC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80D4BAE0  28 04 00 00 */	cmplwi r4, 0
/* 80D4BAE4  41 82 01 40 */	beq lbl_80D4BC24
/* 80D4BAE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80D4BAEC  7C 05 03 78 */	mr r5, r0
/* 80D4BAF0  4B 51 B0 45 */	bl __mi__4cXyzCFRC3Vec
/* 80D4BAF4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D4BAF8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D4BAFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D4BB00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D4BB04  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D4BB08  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D4BB0C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80D4BB10  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4BB14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4BB18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D4BB1C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D4BB20  4B 5F B6 19 */	bl PSVECSquareMag
/* 80D4BB24  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4BB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4BB2C  40 81 00 58 */	ble lbl_80D4BB84
/* 80D4BB30  FC 00 08 34 */	frsqrte f0, f1
/* 80D4BB34  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 80D4BB38  FC 44 00 32 */	fmul f2, f4, f0
/* 80D4BB3C  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 80D4BB40  FC 00 00 32 */	fmul f0, f0, f0
/* 80D4BB44  FC 01 00 32 */	fmul f0, f1, f0
/* 80D4BB48  FC 03 00 28 */	fsub f0, f3, f0
/* 80D4BB4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D4BB50  FC 44 00 32 */	fmul f2, f4, f0
/* 80D4BB54  FC 00 00 32 */	fmul f0, f0, f0
/* 80D4BB58  FC 01 00 32 */	fmul f0, f1, f0
/* 80D4BB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D4BB60  FC 02 00 32 */	fmul f0, f2, f0
/* 80D4BB64  FC 44 00 32 */	fmul f2, f4, f0
/* 80D4BB68  FC 00 00 32 */	fmul f0, f0, f0
/* 80D4BB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D4BB70  FC 03 00 28 */	fsub f0, f3, f0
/* 80D4BB74  FC 02 00 32 */	fmul f0, f2, f0
/* 80D4BB78  FC 41 00 32 */	fmul f2, f1, f0
/* 80D4BB7C  FC 40 10 18 */	frsp f2, f2
/* 80D4BB80  48 00 00 90 */	b lbl_80D4BC10
lbl_80D4BB84:
/* 80D4BB84  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 80D4BB88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4BB8C  40 80 00 10 */	bge lbl_80D4BB9C
/* 80D4BB90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D4BB94  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D4BB98  48 00 00 78 */	b lbl_80D4BC10
lbl_80D4BB9C:
/* 80D4BB9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D4BBA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80D4BBA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D4BBA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D4BBAC  7C 03 00 00 */	cmpw r3, r0
/* 80D4BBB0  41 82 00 14 */	beq lbl_80D4BBC4
/* 80D4BBB4  40 80 00 40 */	bge lbl_80D4BBF4
/* 80D4BBB8  2C 03 00 00 */	cmpwi r3, 0
/* 80D4BBBC  41 82 00 20 */	beq lbl_80D4BBDC
/* 80D4BBC0  48 00 00 34 */	b lbl_80D4BBF4
lbl_80D4BBC4:
/* 80D4BBC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D4BBC8  41 82 00 0C */	beq lbl_80D4BBD4
/* 80D4BBCC  38 00 00 01 */	li r0, 1
/* 80D4BBD0  48 00 00 28 */	b lbl_80D4BBF8
lbl_80D4BBD4:
/* 80D4BBD4  38 00 00 02 */	li r0, 2
/* 80D4BBD8  48 00 00 20 */	b lbl_80D4BBF8
lbl_80D4BBDC:
/* 80D4BBDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D4BBE0  41 82 00 0C */	beq lbl_80D4BBEC
/* 80D4BBE4  38 00 00 05 */	li r0, 5
/* 80D4BBE8  48 00 00 10 */	b lbl_80D4BBF8
lbl_80D4BBEC:
/* 80D4BBEC  38 00 00 03 */	li r0, 3
/* 80D4BBF0  48 00 00 08 */	b lbl_80D4BBF8
lbl_80D4BBF4:
/* 80D4BBF4  38 00 00 04 */	li r0, 4
lbl_80D4BBF8:
/* 80D4BBF8  2C 00 00 01 */	cmpwi r0, 1
/* 80D4BBFC  40 82 00 10 */	bne lbl_80D4BC0C
/* 80D4BC00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D4BC04  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D4BC08  48 00 00 08 */	b lbl_80D4BC10
lbl_80D4BC0C:
/* 80D4BC0C  FC 40 08 90 */	fmr f2, f1
lbl_80D4BC10:
/* 80D4BC10  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80D4BC14  4B 51 BA 61 */	bl cM_atan2s__Fff
/* 80D4BC18  7C 03 00 D0 */	neg r0, r3
/* 80D4BC1C  7C 05 07 34 */	extsh r5, r0
/* 80D4BC20  7C A5 EA 14 */	add r5, r5, r29
lbl_80D4BC24:
/* 80D4BC24  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80D4BC28  7C A5 02 14 */	add r5, r5, r0
/* 80D4BC2C  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80D4BC30  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80D4BC34  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80D4BC38  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 80D4BC3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4BC40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4BC44  3C 60 43 30 */	lis r3, 0x4330
/* 80D4BC48  90 61 00 30 */	stw r3, 0x30(r1)
/* 80D4BC4C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80D4BC50  EC 20 10 28 */	fsubs f1, f0, f2
/* 80D4BC54  EC 03 20 28 */	fsubs f0, f3, f4
/* 80D4BC58  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D4BC5C  7C A0 07 34 */	extsh r0, r5
/* 80D4BC60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4BC64  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80D4BC68  90 61 00 38 */	stw r3, 0x38(r1)
/* 80D4BC6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80D4BC70  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D4BC74  EC 00 01 32 */	fmuls f0, f0, f4
/* 80D4BC78  EC 01 00 2A */	fadds f0, f1, f0
/* 80D4BC7C  FC 00 00 1E */	fctiwz f0, f0
/* 80D4BC80  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80D4BC84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D4BC88  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80D4BC8C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80D4BC90  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80D4BC94  39 61 00 60 */	addi r11, r1, 0x60
/* 80D4BC98  4B 61 65 91 */	bl _restgpr_29
/* 80D4BC9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D4BCA0  7C 08 03 A6 */	mtlr r0
/* 80D4BCA4  38 21 00 70 */	addi r1, r1, 0x70
/* 80D4BCA8  4E 80 00 20 */	blr 
