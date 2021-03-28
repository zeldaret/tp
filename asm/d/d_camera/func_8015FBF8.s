lbl_8015FBF8:
/* 8015FBF8  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8015FBFC  7C 08 02 A6 */	mflr r0
/* 8015FC00  90 01 01 44 */	stw r0, 0x144(r1)
/* 8015FC04  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8015FC08  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 8015FC0C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8015FC10  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8015FC14  39 61 01 20 */	addi r11, r1, 0x120
/* 8015FC18  48 20 25 BD */	bl _savegpr_27
/* 8015FC1C  7C 7F 1B 78 */	mr r31, r3
/* 8015FC20  7C 9B 23 79 */	or. r27, r4, r4
/* 8015FC24  7C BC 2B 78 */	mr r28, r5
/* 8015FC28  7C DD 33 78 */	mr r29, r6
/* 8015FC2C  FF E0 08 90 */	fmr f31, f1
/* 8015FC30  7C FE 3B 78 */	mr r30, r7
/* 8015FC34  41 82 00 0C */	beq lbl_8015FC40
/* 8015FC38  28 1C 00 00 */	cmplwi r28, 0
/* 8015FC3C  40 82 00 24 */	bne lbl_8015FC60
lbl_8015FC40:
/* 8015FC40  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8015FC44  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8015FC48  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8015FC4C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015FC50  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8015FC54  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015FC58  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8015FC5C  48 00 02 34 */	b lbl_8015FE90
lbl_8015FC60:
/* 8015FC60  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 8015FC64  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8015FC68  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8015FC6C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8015FC70  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 8015FC74  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8015FC78  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 8015FC7C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8015FC80  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 8015FC84  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8015FC88  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 8015FC8C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8015FC90  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8015FC94  38 81 00 DC */	addi r4, r1, 0xdc
/* 8015FC98  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8015FC9C  48 10 6E 99 */	bl __mi__4cXyzCFRC3Vec
/* 8015FCA0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8015FCA4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8015FCA8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8015FCAC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8015FCB0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8015FCB4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8015FCB8  38 61 00 20 */	addi r3, r1, 0x20
/* 8015FCBC  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8015FCC0  48 11 1B C1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8015FCC4  38 61 00 94 */	addi r3, r1, 0x94
/* 8015FCC8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8015FCCC  48 10 72 29 */	bl normalize__4cXyzFv
/* 8015FCD0  38 61 00 88 */	addi r3, r1, 0x88
/* 8015FCD4  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8015FCD8  A8 1B 05 4E */	lha r0, 0x54e(r27)
/* 8015FCDC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8015FCE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015FCE4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8015FCE8  3C 00 43 30 */	lis r0, 0x4330
/* 8015FCEC  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8015FCF0  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8015FCF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8015FCF8  48 10 6E 8D */	bl __ml__4cXyzCFf
/* 8015FCFC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8015FD00  38 81 00 88 */	addi r4, r1, 0x88
/* 8015FD04  7C 65 1B 78 */	mr r5, r3
/* 8015FD08  48 1E 73 AD */	bl PSVECSubtract
/* 8015FD0C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8015FD10  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8015FD14  A8 1C 05 4E */	lha r0, 0x54e(r28)
/* 8015FD18  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8015FD1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015FD20  90 01 01 04 */	stw r0, 0x104(r1)
/* 8015FD24  3C 00 43 30 */	lis r0, 0x4330
/* 8015FD28  90 01 01 00 */	stw r0, 0x100(r1)
/* 8015FD2C  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 8015FD30  EC 20 08 28 */	fsubs f1, f0, f1
/* 8015FD34  48 10 6E 51 */	bl __ml__4cXyzCFf
/* 8015FD38  38 61 00 DC */	addi r3, r1, 0xdc
/* 8015FD3C  38 81 00 7C */	addi r4, r1, 0x7c
/* 8015FD40  7C 65 1B 78 */	mr r5, r3
/* 8015FD44  48 1E 73 4D */	bl PSVECAdd
/* 8015FD48  38 61 00 70 */	addi r3, r1, 0x70
/* 8015FD4C  38 81 00 DC */	addi r4, r1, 0xdc
/* 8015FD50  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8015FD54  48 10 6D E1 */	bl __mi__4cXyzCFRC3Vec
/* 8015FD58  38 61 00 64 */	addi r3, r1, 0x64
/* 8015FD5C  38 81 00 70 */	addi r4, r1, 0x70
/* 8015FD60  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 8015FD64  48 10 6E 21 */	bl __ml__4cXyzCFf
/* 8015FD68  38 61 00 58 */	addi r3, r1, 0x58
/* 8015FD6C  38 81 00 E8 */	addi r4, r1, 0xe8
/* 8015FD70  38 A1 00 64 */	addi r5, r1, 0x64
/* 8015FD74  48 10 6D 71 */	bl __pl__4cXyzCFRC3Vec
/* 8015FD78  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8015FD7C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8015FD80  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8015FD84  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8015FD88  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8015FD8C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8015FD90  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8015FD94  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8015FD98  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8015FD9C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8015FDA0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8015FDA4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8015FDA8  38 61 00 10 */	addi r3, r1, 0x10
/* 8015FDAC  7F C4 F3 78 */	mr r4, r30
/* 8015FDB0  3B C1 00 26 */	addi r30, r1, 0x26
/* 8015FDB4  7F C5 F3 78 */	mr r5, r30
/* 8015FDB8  48 11 13 ED */	bl __mi__7cSAngleCFRC7cSAngle
/* 8015FDBC  38 61 00 14 */	addi r3, r1, 0x14
/* 8015FDC0  38 81 00 10 */	addi r4, r1, 0x10
/* 8015FDC4  48 11 11 A5 */	bl __ct__7cSAngleFRC7cSAngle
/* 8015FDC8  A8 61 00 14 */	lha r3, 0x14(r1)
/* 8015FDCC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8015FDD0  7C 03 00 00 */	cmpw r3, r0
/* 8015FDD4  40 80 00 10 */	bge lbl_8015FDE4
/* 8015FDD8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8015FDDC  FC 00 00 50 */	fneg f0, f0
/* 8015FDE0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_8015FDE4:
/* 8015FDE4  38 61 00 18 */	addi r3, r1, 0x18
/* 8015FDE8  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8015FDEC  48 11 1A 95 */	bl __ct__7cSGlobeFRC4cXyz
/* 8015FDF0  38 61 00 0C */	addi r3, r1, 0xc
/* 8015FDF4  7F C4 F3 78 */	mr r4, r30
/* 8015FDF8  38 A1 00 1E */	addi r5, r1, 0x1e
/* 8015FDFC  48 11 13 79 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8015FE00  38 61 00 08 */	addi r3, r1, 8
/* 8015FE04  A8 81 00 0C */	lha r4, 0xc(r1)
/* 8015FE08  48 11 11 91 */	bl __ct__7cSAngleFs
/* 8015FE0C  A8 01 00 08 */	lha r0, 8(r1)
/* 8015FE10  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8015FE14  C3 C1 00 20 */	lfs f30, 0x20(r1)
/* 8015FE18  38 61 00 14 */	addi r3, r1, 0x14
/* 8015FE1C  48 11 13 05 */	bl Cos__7cSAngleCFv
/* 8015FE20  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8015FE24  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8015FE28  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015FE2C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8015FE30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8015FE34  38 61 00 4C */	addi r3, r1, 0x4c
/* 8015FE38  38 81 00 20 */	addi r4, r1, 0x20
/* 8015FE3C  48 11 1C 79 */	bl Xyz__7cSGlobeCFv
/* 8015FE40  38 61 00 40 */	addi r3, r1, 0x40
/* 8015FE44  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8015FE48  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8015FE4C  48 10 6C 99 */	bl __pl__4cXyzCFRC3Vec
/* 8015FE50  38 61 00 34 */	addi r3, r1, 0x34
/* 8015FE54  38 81 00 18 */	addi r4, r1, 0x18
/* 8015FE58  48 11 1C 5D */	bl Xyz__7cSGlobeCFv
/* 8015FE5C  38 61 00 28 */	addi r3, r1, 0x28
/* 8015FE60  38 81 00 40 */	addi r4, r1, 0x40
/* 8015FE64  38 A1 00 34 */	addi r5, r1, 0x34
/* 8015FE68  48 10 6C 7D */	bl __pl__4cXyzCFRC3Vec
/* 8015FE6C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8015FE70  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8015FE74  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8015FE78  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8015FE7C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8015FE80  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8015FE84  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8015FE88  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8015FE8C  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8015FE90:
/* 8015FE90  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8015FE94  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8015FE98  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 8015FE9C  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8015FEA0  39 61 01 20 */	addi r11, r1, 0x120
/* 8015FEA4  48 20 23 7D */	bl _restgpr_27
/* 8015FEA8  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8015FEAC  7C 08 03 A6 */	mtlr r0
/* 8015FEB0  38 21 01 40 */	addi r1, r1, 0x140
/* 8015FEB4  4E 80 00 20 */	blr 
