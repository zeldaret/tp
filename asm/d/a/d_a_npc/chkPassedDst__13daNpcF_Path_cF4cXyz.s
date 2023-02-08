lbl_80150A7C:
/* 80150A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80150A80  7C 08 02 A6 */	mflr r0
/* 80150A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80150A88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80150A8C  7C 7F 1B 78 */	mr r31, r3
/* 80150A90  7C 85 23 78 */	mr r5, r4
/* 80150A94  38 61 00 0C */	addi r3, r1, 0xc
/* 80150A98  38 9F 00 14 */	addi r4, r31, 0x14
/* 80150A9C  48 11 60 99 */	bl __mi__4cXyzCFRC3Vec
/* 80150AA0  38 61 00 0C */	addi r3, r1, 0xc
/* 80150AA4  48 1F 66 95 */	bl PSVECSquareMag
/* 80150AA8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80150AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80150AB0  40 81 00 58 */	ble lbl_80150B08
/* 80150AB4  FC 00 08 34 */	frsqrte f0, f1
/* 80150AB8  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 80150ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80150AC0  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 80150AC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80150AC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80150ACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80150AD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80150AD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80150AD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80150ADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80150AE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80150AE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80150AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80150AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80150AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80150AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80150AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80150AFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80150B00  FC 20 08 18 */	frsp f1, f1
/* 80150B04  48 00 00 88 */	b lbl_80150B8C
lbl_80150B08:
/* 80150B08  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 80150B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80150B10  40 80 00 10 */	bge lbl_80150B20
/* 80150B14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80150B18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80150B1C  48 00 00 70 */	b lbl_80150B8C
lbl_80150B20:
/* 80150B20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80150B24  80 81 00 08 */	lwz r4, 8(r1)
/* 80150B28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80150B2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80150B30  7C 03 00 00 */	cmpw r3, r0
/* 80150B34  41 82 00 14 */	beq lbl_80150B48
/* 80150B38  40 80 00 40 */	bge lbl_80150B78
/* 80150B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80150B40  41 82 00 20 */	beq lbl_80150B60
/* 80150B44  48 00 00 34 */	b lbl_80150B78
lbl_80150B48:
/* 80150B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80150B4C  41 82 00 0C */	beq lbl_80150B58
/* 80150B50  38 00 00 01 */	li r0, 1
/* 80150B54  48 00 00 28 */	b lbl_80150B7C
lbl_80150B58:
/* 80150B58  38 00 00 02 */	li r0, 2
/* 80150B5C  48 00 00 20 */	b lbl_80150B7C
lbl_80150B60:
/* 80150B60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80150B64  41 82 00 0C */	beq lbl_80150B70
/* 80150B68  38 00 00 05 */	li r0, 5
/* 80150B6C  48 00 00 10 */	b lbl_80150B7C
lbl_80150B70:
/* 80150B70  38 00 00 03 */	li r0, 3
/* 80150B74  48 00 00 08 */	b lbl_80150B7C
lbl_80150B78:
/* 80150B78  38 00 00 04 */	li r0, 4
lbl_80150B7C:
/* 80150B7C  2C 00 00 01 */	cmpwi r0, 1
/* 80150B80  40 82 00 0C */	bne lbl_80150B8C
/* 80150B84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80150B88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80150B8C:
/* 80150B8C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80150B90  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80150B94  EC 02 00 2A */	fadds f0, f2, f0
/* 80150B98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80150B9C  4C 40 13 82 */	cror 2, 0, 2
/* 80150BA0  7C 00 00 26 */	mfcr r0
/* 80150BA4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80150BA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80150BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80150BB0  7C 08 03 A6 */	mtlr r0
/* 80150BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80150BB8  4E 80 00 20 */	blr 
