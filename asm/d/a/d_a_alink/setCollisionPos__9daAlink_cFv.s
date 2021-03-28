lbl_800ABB84:
/* 800ABB84  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800ABB88  7C 08 02 A6 */	mflr r0
/* 800ABB8C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800ABB90  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800ABB94  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 800ABB98  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800ABB9C  7C 7F 1B 78 */	mr r31, r3
/* 800ABBA0  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800ABBA4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ABBA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ABBAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800ABBB0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800ABBB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800ABBB8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800ABBBC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800ABBC0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800ABBC4  38 61 00 5C */	addi r3, r1, 0x5c
/* 800ABBC8  38 81 00 74 */	addi r4, r1, 0x74
/* 800ABBCC  38 BF 05 A4 */	addi r5, r31, 0x5a4
/* 800ABBD0  48 1B AF 15 */	bl __pl__4cXyzCFRC3Vec
/* 800ABBD4  38 61 00 50 */	addi r3, r1, 0x50
/* 800ABBD8  38 81 00 5C */	addi r4, r1, 0x5c
/* 800ABBDC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABBE0  48 1B AF A5 */	bl __ml__4cXyzCFf
/* 800ABBE4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800ABBE8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800ABBEC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800ABBF0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABBF4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800ABBF8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800ABBFC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 800ABC00  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 800ABC04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800ABC08  40 81 00 10 */	ble lbl_800ABC18
/* 800ABC0C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABC10  EF E1 00 28 */	fsubs f31, f1, f0
/* 800ABC14  48 00 00 0C */	b lbl_800ABC20
lbl_800ABC18:
/* 800ABC18  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 800ABC1C  EF E0 08 28 */	fsubs f31, f0, f1
lbl_800ABC20:
/* 800ABC20  C0 62 93 B4 */	lfs f3, lit_10040(r2)
/* 800ABC24  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 800ABC28  40 80 00 20 */	bge lbl_800ABC48
/* 800ABC2C  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 800ABC30  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABC34  EC 03 F8 28 */	fsubs f0, f3, f31
/* 800ABC38  EC 01 00 32 */	fmuls f0, f1, f0
/* 800ABC3C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800ABC40  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABC44  FF E0 18 90 */	fmr f31, f3
lbl_800ABC48:
/* 800ABC48  38 7F 0B EC */	addi r3, r31, 0xbec
/* 800ABC4C  38 81 00 68 */	addi r4, r1, 0x68
/* 800ABC50  48 1C 35 8D */	bl SetC__8cM3dGCylFRC4cXyz
/* 800ABC54  38 7F 0B EC */	addi r3, r31, 0xbec
/* 800ABC58  FC 20 F8 90 */	fmr f1, f31
/* 800ABC5C  48 1C 35 9D */	bl SetH__8cM3dGCylFf
/* 800ABC60  38 61 00 44 */	addi r3, r1, 0x44
/* 800ABC64  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 800ABC68  38 BF 05 EC */	addi r5, r31, 0x5ec
/* 800ABC6C  48 1B AE 79 */	bl __pl__4cXyzCFRC3Vec
/* 800ABC70  38 61 00 38 */	addi r3, r1, 0x38
/* 800ABC74  38 81 00 44 */	addi r4, r1, 0x44
/* 800ABC78  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABC7C  48 1B AF 09 */	bl __ml__4cXyzCFf
/* 800ABC80  38 61 00 2C */	addi r3, r1, 0x2c
/* 800ABC84  38 81 00 38 */	addi r4, r1, 0x38
/* 800ABC88  38 A1 00 74 */	addi r5, r1, 0x74
/* 800ABC8C  48 1B AE 59 */	bl __pl__4cXyzCFRC3Vec
/* 800ABC90  38 61 00 20 */	addi r3, r1, 0x20
/* 800ABC94  38 81 00 2C */	addi r4, r1, 0x2c
/* 800ABC98  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABC9C  48 1B AE E9 */	bl __ml__4cXyzCFf
/* 800ABCA0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800ABCA4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800ABCA8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800ABCAC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABCB0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800ABCB4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800ABCB8  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 800ABCBC  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 800ABCC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800ABCC4  40 81 00 08 */	ble lbl_800ABCCC
/* 800ABCC8  48 00 00 08 */	b lbl_800ABCD0
lbl_800ABCCC:
/* 800ABCCC  FC 00 08 90 */	fmr f0, f1
lbl_800ABCD0:
/* 800ABCD0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 800ABCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800ABCD8  40 81 00 10 */	ble lbl_800ABCE8
/* 800ABCDC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABCE0  EF E1 00 28 */	fsubs f31, f1, f0
/* 800ABCE4  48 00 00 0C */	b lbl_800ABCF0
lbl_800ABCE8:
/* 800ABCE8  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 800ABCEC  EF E0 08 28 */	fsubs f31, f0, f1
lbl_800ABCF0:
/* 800ABCF0  C0 62 93 B4 */	lfs f3, lit_10040(r2)
/* 800ABCF4  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 800ABCF8  40 80 00 20 */	bge lbl_800ABD18
/* 800ABCFC  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 800ABD00  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABD04  EC 03 F8 28 */	fsubs f0, f3, f31
/* 800ABD08  EC 01 00 32 */	fmuls f0, f1, f0
/* 800ABD0C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800ABD10  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABD14  FF E0 18 90 */	fmr f31, f3
lbl_800ABD18:
/* 800ABD18  38 7F 09 74 */	addi r3, r31, 0x974
/* 800ABD1C  38 81 00 68 */	addi r4, r1, 0x68
/* 800ABD20  48 1C 34 BD */	bl SetC__8cM3dGCylFRC4cXyz
/* 800ABD24  38 7F 09 74 */	addi r3, r31, 0x974
/* 800ABD28  FC 20 F8 90 */	fmr f1, f31
/* 800ABD2C  48 1C 34 CD */	bl SetH__8cM3dGCylFf
/* 800ABD30  38 61 00 14 */	addi r3, r1, 0x14
/* 800ABD34  38 9F 09 74 */	addi r4, r31, 0x974
/* 800ABD38  38 BF 0B EC */	addi r5, r31, 0xbec
/* 800ABD3C  48 1B AD A9 */	bl __pl__4cXyzCFRC3Vec
/* 800ABD40  38 61 00 08 */	addi r3, r1, 8
/* 800ABD44  38 81 00 14 */	addi r4, r1, 0x14
/* 800ABD48  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800ABD4C  48 1B AE 39 */	bl __ml__4cXyzCFf
/* 800ABD50  C0 01 00 08 */	lfs f0, 8(r1)
/* 800ABD54  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800ABD58  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800ABD5C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800ABD60  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800ABD64  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800ABD68  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800ABD6C  C0 3F 09 84 */	lfs f1, 0x984(r31)
/* 800ABD70  C0 1F 0B FC */	lfs f0, 0xbfc(r31)
/* 800ABD74  EC 01 00 2A */	fadds f0, f1, f0
/* 800ABD78  EF E2 00 32 */	fmuls f31, f2, f0
/* 800ABD7C  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 800ABD80  38 81 00 68 */	addi r4, r1, 0x68
/* 800ABD84  48 1C 34 59 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800ABD88  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 800ABD8C  FC 20 F8 90 */	fmr f1, f31
/* 800ABD90  48 1C 34 69 */	bl SetH__8cM3dGCylFf
/* 800ABD94  C0 1F 38 38 */	lfs f0, 0x3838(r31)
/* 800ABD98  D0 1F 34 54 */	stfs f0, 0x3454(r31)
/* 800ABD9C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 800ABDA0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800ABDA4  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800ABDA8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800ABDAC  7C 08 03 A6 */	mtlr r0
/* 800ABDB0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800ABDB4  4E 80 00 20 */	blr 
