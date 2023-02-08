lbl_8026B8A4:
/* 8026B8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026B8A8  7C 08 02 A6 */	mflr r0
/* 8026B8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026B8B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026B8B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026B8B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8026B8BC  48 0F 69 21 */	bl _savegpr_29
/* 8026B8C0  7C 7D 1B 78 */	mr r29, r3
/* 8026B8C4  7C 9E 23 78 */	mr r30, r4
/* 8026B8C8  7C BF 2B 78 */	mr r31, r5
/* 8026B8CC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8026B8D0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026B8D4  EF E1 00 2A */	fadds f31, f1, f0
/* 8026B8D8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026B8DC  C0 44 00 08 */	lfs f2, 8(r4)
/* 8026B8E0  C0 63 00 00 */	lfs f3, 0(r3)
/* 8026B8E4  C0 83 00 08 */	lfs f4, 8(r3)
/* 8026B8E8  4B FF CD 2D */	bl cM3d_Len2dSq__Fffff
/* 8026B8EC  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026B8F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B8F4  40 81 00 58 */	ble lbl_8026B94C
/* 8026B8F8  FC 00 08 34 */	frsqrte f0, f1
/* 8026B8FC  C8 82 B7 20 */	lfd f4, lit_2257(r2)
/* 8026B900  FC 44 00 32 */	fmul f2, f4, f0
/* 8026B904  C8 62 B7 28 */	lfd f3, lit_2258(r2)
/* 8026B908  FC 00 00 32 */	fmul f0, f0, f0
/* 8026B90C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026B910  FC 03 00 28 */	fsub f0, f3, f0
/* 8026B914  FC 02 00 32 */	fmul f0, f2, f0
/* 8026B918  FC 44 00 32 */	fmul f2, f4, f0
/* 8026B91C  FC 00 00 32 */	fmul f0, f0, f0
/* 8026B920  FC 01 00 32 */	fmul f0, f1, f0
/* 8026B924  FC 03 00 28 */	fsub f0, f3, f0
/* 8026B928  FC 02 00 32 */	fmul f0, f2, f0
/* 8026B92C  FC 44 00 32 */	fmul f2, f4, f0
/* 8026B930  FC 00 00 32 */	fmul f0, f0, f0
/* 8026B934  FC 01 00 32 */	fmul f0, f1, f0
/* 8026B938  FC 03 00 28 */	fsub f0, f3, f0
/* 8026B93C  FC 02 00 32 */	fmul f0, f2, f0
/* 8026B940  FC 21 00 32 */	fmul f1, f1, f0
/* 8026B944  FC 20 08 18 */	frsp f1, f1
/* 8026B948  48 00 00 88 */	b lbl_8026B9D0
lbl_8026B94C:
/* 8026B94C  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026B950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B954  40 80 00 10 */	bge lbl_8026B964
/* 8026B958  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026B95C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026B960  48 00 00 70 */	b lbl_8026B9D0
lbl_8026B964:
/* 8026B964  D0 21 00 08 */	stfs f1, 8(r1)
/* 8026B968  80 81 00 08 */	lwz r4, 8(r1)
/* 8026B96C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026B970  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026B974  7C 03 00 00 */	cmpw r3, r0
/* 8026B978  41 82 00 14 */	beq lbl_8026B98C
/* 8026B97C  40 80 00 40 */	bge lbl_8026B9BC
/* 8026B980  2C 03 00 00 */	cmpwi r3, 0
/* 8026B984  41 82 00 20 */	beq lbl_8026B9A4
/* 8026B988  48 00 00 34 */	b lbl_8026B9BC
lbl_8026B98C:
/* 8026B98C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026B990  41 82 00 0C */	beq lbl_8026B99C
/* 8026B994  38 00 00 01 */	li r0, 1
/* 8026B998  48 00 00 28 */	b lbl_8026B9C0
lbl_8026B99C:
/* 8026B99C  38 00 00 02 */	li r0, 2
/* 8026B9A0  48 00 00 20 */	b lbl_8026B9C0
lbl_8026B9A4:
/* 8026B9A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026B9A8  41 82 00 0C */	beq lbl_8026B9B4
/* 8026B9AC  38 00 00 05 */	li r0, 5
/* 8026B9B0  48 00 00 10 */	b lbl_8026B9C0
lbl_8026B9B4:
/* 8026B9B4  38 00 00 03 */	li r0, 3
/* 8026B9B8  48 00 00 08 */	b lbl_8026B9C0
lbl_8026B9BC:
/* 8026B9BC  38 00 00 04 */	li r0, 4
lbl_8026B9C0:
/* 8026B9C0  2C 00 00 01 */	cmpwi r0, 1
/* 8026B9C4  40 82 00 0C */	bne lbl_8026B9D0
/* 8026B9C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026B9CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8026B9D0:
/* 8026B9D0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8026B9D4  40 80 00 0C */	bge lbl_8026B9E0
/* 8026B9D8  38 60 00 00 */	li r3, 0
/* 8026B9DC  48 00 00 4C */	b lbl_8026BA28
lbl_8026B9E0:
/* 8026B9E0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 8026B9E4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8026B9E8  EC 04 10 2A */	fadds f0, f4, f2
/* 8026B9EC  C0 7D 00 04 */	lfs f3, 4(r29)
/* 8026B9F0  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8026B9F4  4C 41 13 82 */	cror 2, 1, 2
/* 8026B9F8  40 82 00 2C */	bne lbl_8026BA24
/* 8026B9FC  EC 44 10 28 */	fsubs f2, f4, f2
/* 8026BA00  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026BA04  EC 03 00 2A */	fadds f0, f3, f0
/* 8026BA08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026BA0C  4C 40 13 82 */	cror 2, 0, 2
/* 8026BA10  40 82 00 14 */	bne lbl_8026BA24
/* 8026BA14  EC 1F 08 28 */	fsubs f0, f31, f1
/* 8026BA18  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026BA1C  38 60 00 01 */	li r3, 1
/* 8026BA20  48 00 00 08 */	b lbl_8026BA28
lbl_8026BA24:
/* 8026BA24  38 60 00 00 */	li r3, 0
lbl_8026BA28:
/* 8026BA28  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026BA2C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026BA30  39 61 00 20 */	addi r11, r1, 0x20
/* 8026BA34  48 0F 67 F5 */	bl _restgpr_29
/* 8026BA38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026BA3C  7C 08 03 A6 */	mtlr r0
/* 8026BA40  38 21 00 30 */	addi r1, r1, 0x30
/* 8026BA44  4E 80 00 20 */	blr 
