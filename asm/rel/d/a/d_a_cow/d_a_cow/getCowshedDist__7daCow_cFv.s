lbl_8065B8D8:
/* 8065B8D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8065B8DC  7C 08 02 A6 */	mflr r0
/* 8065B8E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065B8E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8065B8E8  7C 65 1B 78 */	mr r5, r3
/* 8065B8EC  3C 60 80 66 */	lis r3, lit_3987@ha
/* 8065B8F0  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 8065B8F4  38 61 00 18 */	addi r3, r1, 0x18
/* 8065B8F8  3C 80 80 66 */	lis r4, data_806634AC@ha
/* 8065B8FC  38 84 34 AC */	addi r4, r4, data_806634AC@l
/* 8065B900  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8065B904  4B C0 B2 30 */	b __mi__4cXyzCFRC3Vec
/* 8065B908  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8065B90C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8065B910  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8065B914  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065B918  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8065B91C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8065B920  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8065B924  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065B928  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065B92C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8065B930  38 61 00 0C */	addi r3, r1, 0xc
/* 8065B934  4B CE B8 04 */	b PSVECSquareMag
/* 8065B938  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065B93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065B940  40 81 00 58 */	ble lbl_8065B998
/* 8065B944  FC 00 08 34 */	frsqrte f0, f1
/* 8065B948  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065B94C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065B950  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065B954  FC 00 00 32 */	fmul f0, f0, f0
/* 8065B958  FC 01 00 32 */	fmul f0, f1, f0
/* 8065B95C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065B960  FC 02 00 32 */	fmul f0, f2, f0
/* 8065B964  FC 44 00 32 */	fmul f2, f4, f0
/* 8065B968  FC 00 00 32 */	fmul f0, f0, f0
/* 8065B96C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065B970  FC 03 00 28 */	fsub f0, f3, f0
/* 8065B974  FC 02 00 32 */	fmul f0, f2, f0
/* 8065B978  FC 44 00 32 */	fmul f2, f4, f0
/* 8065B97C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065B980  FC 01 00 32 */	fmul f0, f1, f0
/* 8065B984  FC 03 00 28 */	fsub f0, f3, f0
/* 8065B988  FC 02 00 32 */	fmul f0, f2, f0
/* 8065B98C  FC 21 00 32 */	fmul f1, f1, f0
/* 8065B990  FC 20 08 18 */	frsp f1, f1
/* 8065B994  48 00 00 88 */	b lbl_8065BA1C
lbl_8065B998:
/* 8065B998  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065B99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065B9A0  40 80 00 10 */	bge lbl_8065B9B0
/* 8065B9A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065B9A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8065B9AC  48 00 00 70 */	b lbl_8065BA1C
lbl_8065B9B0:
/* 8065B9B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065B9B4  80 81 00 08 */	lwz r4, 8(r1)
/* 8065B9B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065B9BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065B9C0  7C 03 00 00 */	cmpw r3, r0
/* 8065B9C4  41 82 00 14 */	beq lbl_8065B9D8
/* 8065B9C8  40 80 00 40 */	bge lbl_8065BA08
/* 8065B9CC  2C 03 00 00 */	cmpwi r3, 0
/* 8065B9D0  41 82 00 20 */	beq lbl_8065B9F0
/* 8065B9D4  48 00 00 34 */	b lbl_8065BA08
lbl_8065B9D8:
/* 8065B9D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065B9DC  41 82 00 0C */	beq lbl_8065B9E8
/* 8065B9E0  38 00 00 01 */	li r0, 1
/* 8065B9E4  48 00 00 28 */	b lbl_8065BA0C
lbl_8065B9E8:
/* 8065B9E8  38 00 00 02 */	li r0, 2
/* 8065B9EC  48 00 00 20 */	b lbl_8065BA0C
lbl_8065B9F0:
/* 8065B9F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065B9F4  41 82 00 0C */	beq lbl_8065BA00
/* 8065B9F8  38 00 00 05 */	li r0, 5
/* 8065B9FC  48 00 00 10 */	b lbl_8065BA0C
lbl_8065BA00:
/* 8065BA00  38 00 00 03 */	li r0, 3
/* 8065BA04  48 00 00 08 */	b lbl_8065BA0C
lbl_8065BA08:
/* 8065BA08  38 00 00 04 */	li r0, 4
lbl_8065BA0C:
/* 8065BA0C  2C 00 00 01 */	cmpwi r0, 1
/* 8065BA10  40 82 00 0C */	bne lbl_8065BA1C
/* 8065BA14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065BA18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8065BA1C:
/* 8065BA1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8065BA20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8065BA24  7C 08 03 A6 */	mtlr r0
/* 8065BA28  38 21 00 40 */	addi r1, r1, 0x40
/* 8065BA2C  4E 80 00 20 */	blr 
