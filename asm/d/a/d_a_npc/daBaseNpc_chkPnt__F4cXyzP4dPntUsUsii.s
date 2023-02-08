lbl_8014FB28:
/* 8014FB28  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8014FB2C  7C 08 02 A6 */	mflr r0
/* 8014FB30  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8014FB34  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8014FB38  48 21 26 99 */	bl _savegpr_26
/* 8014FB3C  7C 7E 1B 78 */	mr r30, r3
/* 8014FB40  7C 9A 23 78 */	mr r26, r4
/* 8014FB44  7C BB 2B 78 */	mr r27, r5
/* 8014FB48  7C FC 3B 78 */	mr r28, r7
/* 8014FB4C  7D 1F 43 78 */	mr r31, r8
/* 8014FB50  B3 61 00 08 */	sth r27, 8(r1)
/* 8014FB54  B3 61 00 0A */	sth r27, 0xa(r1)
/* 8014FB58  54 DD 04 3E */	clrlwi r29, r6, 0x10
/* 8014FB5C  7F A3 EB 78 */	mr r3, r29
/* 8014FB60  38 81 00 08 */	addi r4, r1, 8
/* 8014FB64  7F 85 E3 78 */	mr r5, r28
/* 8014FB68  38 C0 00 01 */	li r6, 1
/* 8014FB6C  4B FF DA 59 */	bl daBaseNpc_incIdx__FiPUsii
/* 8014FB70  7F A3 EB 78 */	mr r3, r29
/* 8014FB74  38 81 00 0A */	addi r4, r1, 0xa
/* 8014FB78  7F 85 E3 78 */	mr r5, r28
/* 8014FB7C  38 C0 00 01 */	li r6, 1
/* 8014FB80  4B FF DA A1 */	bl daBaseNpc_decIdx__FiPUsii
/* 8014FB84  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8014FB88  54 80 23 36 */	rlwinm r0, r4, 4, 0xc, 0x1b
/* 8014FB8C  7C 7A 02 14 */	add r3, r26, r0
/* 8014FB90  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8014FB94  C0 23 00 08 */	lfs f1, 8(r3)
/* 8014FB98  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014FB9C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8014FBA0  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8014FBA4  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8014FBA8  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8014FBAC  57 63 23 36 */	rlwinm r3, r27, 4, 0xc, 0x1b
/* 8014FBB0  7C 7A 1A 14 */	add r3, r26, r3
/* 8014FBB4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8014FBB8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8014FBBC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014FBC0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8014FBC4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8014FBC8  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8014FBCC  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8014FBD0  54 A3 23 36 */	rlwinm r3, r5, 4, 0xc, 0x1b
/* 8014FBD4  7C 7A 1A 14 */	add r3, r26, r3
/* 8014FBD8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8014FBDC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8014FBE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014FBE4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8014FBE8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8014FBEC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8014FBF0  7C 04 00 40 */	cmplw r4, r0
/* 8014FBF4  40 82 00 0C */	bne lbl_8014FC00
/* 8014FBF8  7C 00 28 40 */	cmplw r0, r5
/* 8014FBFC  41 82 05 2C */	beq lbl_80150128
lbl_8014FC00:
/* 8014FC00  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8014FC04  7C 04 00 40 */	cmplw r4, r0
/* 8014FC08  40 80 01 B8 */	bge lbl_8014FDC0
/* 8014FC0C  7C 00 28 40 */	cmplw r0, r5
/* 8014FC10  40 80 01 B0 */	bge lbl_8014FDC0
/* 8014FC14  38 61 00 68 */	addi r3, r1, 0x68
/* 8014FC18  38 81 00 74 */	addi r4, r1, 0x74
/* 8014FC1C  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8014FC20  48 11 6F 15 */	bl __mi__4cXyzCFRC3Vec
/* 8014FC24  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8014FC28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8014FC2C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FC30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8014FC34  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8014FC38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8014FC3C  38 61 00 44 */	addi r3, r1, 0x44
/* 8014FC40  48 1F 74 F9 */	bl PSVECSquareMag
/* 8014FC44  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014FC4C  40 81 00 58 */	ble lbl_8014FCA4
/* 8014FC50  FC 00 08 34 */	frsqrte f0, f1
/* 8014FC54  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014FC58  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FC5C  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014FC60  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FC64  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FC68  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FC6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FC70  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FC74  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FC78  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FC7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FC80  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FC84  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FC88  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FC8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FC90  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FC94  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FC98  FC 21 00 32 */	fmul f1, f1, f0
/* 8014FC9C  FC 20 08 18 */	frsp f1, f1
/* 8014FCA0  48 00 00 88 */	b lbl_8014FD28
lbl_8014FCA4:
/* 8014FCA4  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014FCA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014FCAC  40 80 00 10 */	bge lbl_8014FCBC
/* 8014FCB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014FCB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014FCB8  48 00 00 70 */	b lbl_8014FD28
lbl_8014FCBC:
/* 8014FCBC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014FCC0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8014FCC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014FCC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014FCCC  7C 03 00 00 */	cmpw r3, r0
/* 8014FCD0  41 82 00 14 */	beq lbl_8014FCE4
/* 8014FCD4  40 80 00 40 */	bge lbl_8014FD14
/* 8014FCD8  2C 03 00 00 */	cmpwi r3, 0
/* 8014FCDC  41 82 00 20 */	beq lbl_8014FCFC
/* 8014FCE0  48 00 00 34 */	b lbl_8014FD14
lbl_8014FCE4:
/* 8014FCE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014FCE8  41 82 00 0C */	beq lbl_8014FCF4
/* 8014FCEC  38 00 00 01 */	li r0, 1
/* 8014FCF0  48 00 00 28 */	b lbl_8014FD18
lbl_8014FCF4:
/* 8014FCF4  38 00 00 02 */	li r0, 2
/* 8014FCF8  48 00 00 20 */	b lbl_8014FD18
lbl_8014FCFC:
/* 8014FCFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014FD00  41 82 00 0C */	beq lbl_8014FD0C
/* 8014FD04  38 00 00 05 */	li r0, 5
/* 8014FD08  48 00 00 10 */	b lbl_8014FD18
lbl_8014FD0C:
/* 8014FD0C  38 00 00 03 */	li r0, 3
/* 8014FD10  48 00 00 08 */	b lbl_8014FD18
lbl_8014FD14:
/* 8014FD14  38 00 00 04 */	li r0, 4
lbl_8014FD18:
/* 8014FD18  2C 00 00 01 */	cmpwi r0, 1
/* 8014FD1C  40 82 00 0C */	bne lbl_8014FD28
/* 8014FD20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014FD24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8014FD28:
/* 8014FD28  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8014FD2C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8014FD30  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8014FD34  EC 21 00 28 */	fsubs f1, f1, f0
/* 8014FD38  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8014FD3C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8014FD40  EC 42 00 28 */	fsubs f2, f2, f0
/* 8014FD44  48 11 79 31 */	bl cM_atan2s__Fff
/* 8014FD48  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 8014FD4C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8014FD50  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8014FD54  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8014FD58  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 8014FD5C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8014FD60  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014FD64  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 8014FD68  EC 60 01 72 */	fmuls f3, f0, f5
/* 8014FD6C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8014FD70  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8014FD74  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8014FD78  7C 83 04 2E */	lfsx f4, r3, r0
/* 8014FD7C  EC 03 01 32 */	fmuls f0, f3, f4
/* 8014FD80  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FD84  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8014FD88  7C 63 02 14 */	add r3, r3, r0
/* 8014FD8C  C0 C3 00 04 */	lfs f6, 4(r3)
/* 8014FD90  EC 03 01 B2 */	fmuls f0, f3, f6
/* 8014FD94  EC 01 00 2A */	fadds f0, f1, f0
/* 8014FD98  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8014FD9C  C0 02 99 F0 */	lfs f0, lit_4672(r2)
/* 8014FDA0  EC 60 01 72 */	fmuls f3, f0, f5
/* 8014FDA4  EC 03 01 32 */	fmuls f0, f3, f4
/* 8014FDA8  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FDAC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8014FDB0  EC 03 01 B2 */	fmuls f0, f3, f6
/* 8014FDB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8014FDB8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8014FDBC  48 00 03 6C */	b lbl_80150128
lbl_8014FDC0:
/* 8014FDC0  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8014FDC4  7C 04 00 40 */	cmplw r4, r0
/* 8014FDC8  40 80 01 B0 */	bge lbl_8014FF78
/* 8014FDCC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8014FDD0  38 81 00 80 */	addi r4, r1, 0x80
/* 8014FDD4  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8014FDD8  48 11 6D 5D */	bl __mi__4cXyzCFRC3Vec
/* 8014FDDC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8014FDE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8014FDE4  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FDE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8014FDEC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8014FDF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014FDF4  38 61 00 38 */	addi r3, r1, 0x38
/* 8014FDF8  48 1F 73 41 */	bl PSVECSquareMag
/* 8014FDFC  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FE00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014FE04  40 81 00 58 */	ble lbl_8014FE5C
/* 8014FE08  FC 00 08 34 */	frsqrte f0, f1
/* 8014FE0C  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014FE10  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FE14  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014FE18  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FE1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FE20  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FE24  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FE28  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FE2C  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FE30  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FE34  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FE38  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FE3C  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FE40  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FE44  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FE48  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FE4C  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FE50  FC 21 00 32 */	fmul f1, f1, f0
/* 8014FE54  FC 20 08 18 */	frsp f1, f1
/* 8014FE58  48 00 00 88 */	b lbl_8014FEE0
lbl_8014FE5C:
/* 8014FE5C  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014FE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014FE64  40 80 00 10 */	bge lbl_8014FE74
/* 8014FE68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014FE6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014FE70  48 00 00 70 */	b lbl_8014FEE0
lbl_8014FE74:
/* 8014FE74  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8014FE78  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8014FE7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014FE80  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014FE84  7C 03 00 00 */	cmpw r3, r0
/* 8014FE88  41 82 00 14 */	beq lbl_8014FE9C
/* 8014FE8C  40 80 00 40 */	bge lbl_8014FECC
/* 8014FE90  2C 03 00 00 */	cmpwi r3, 0
/* 8014FE94  41 82 00 20 */	beq lbl_8014FEB4
/* 8014FE98  48 00 00 34 */	b lbl_8014FECC
lbl_8014FE9C:
/* 8014FE9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014FEA0  41 82 00 0C */	beq lbl_8014FEAC
/* 8014FEA4  38 00 00 01 */	li r0, 1
/* 8014FEA8  48 00 00 28 */	b lbl_8014FED0
lbl_8014FEAC:
/* 8014FEAC  38 00 00 02 */	li r0, 2
/* 8014FEB0  48 00 00 20 */	b lbl_8014FED0
lbl_8014FEB4:
/* 8014FEB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014FEB8  41 82 00 0C */	beq lbl_8014FEC4
/* 8014FEBC  38 00 00 05 */	li r0, 5
/* 8014FEC0  48 00 00 10 */	b lbl_8014FED0
lbl_8014FEC4:
/* 8014FEC4  38 00 00 03 */	li r0, 3
/* 8014FEC8  48 00 00 08 */	b lbl_8014FED0
lbl_8014FECC:
/* 8014FECC  38 00 00 04 */	li r0, 4
lbl_8014FED0:
/* 8014FED0  2C 00 00 01 */	cmpwi r0, 1
/* 8014FED4  40 82 00 0C */	bne lbl_8014FEE0
/* 8014FED8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014FEDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8014FEE0:
/* 8014FEE0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8014FEE4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8014FEE8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8014FEEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8014FEF0  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8014FEF4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8014FEF8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8014FEFC  48 11 77 79 */	bl cM_atan2s__Fff
/* 8014FF00  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8014FF04  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8014FF08  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8014FF0C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8014FF10  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8014FF14  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8014FF18  C0 02 99 F8 */	lfs f0, lit_4674(r2)
/* 8014FF1C  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 8014FF20  EC 60 01 72 */	fmuls f3, f0, f5
/* 8014FF24  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8014FF28  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8014FF2C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8014FF30  7C 83 04 2E */	lfsx f4, r3, r0
/* 8014FF34  EC 03 01 32 */	fmuls f0, f3, f4
/* 8014FF38  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FF3C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8014FF40  7C 63 02 14 */	add r3, r3, r0
/* 8014FF44  C0 C3 00 04 */	lfs f6, 4(r3)
/* 8014FF48  EC 03 01 B2 */	fmuls f0, f3, f6
/* 8014FF4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8014FF50  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8014FF54  C0 02 99 F0 */	lfs f0, lit_4672(r2)
/* 8014FF58  EC 60 01 72 */	fmuls f3, f0, f5
/* 8014FF5C  EC 03 01 32 */	fmuls f0, f3, f4
/* 8014FF60  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FF64  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8014FF68  EC 03 01 B2 */	fmuls f0, f3, f6
/* 8014FF6C  EC 01 00 2A */	fadds f0, f1, f0
/* 8014FF70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8014FF74  48 00 01 B4 */	b lbl_80150128
lbl_8014FF78:
/* 8014FF78  7C 00 28 40 */	cmplw r0, r5
/* 8014FF7C  40 80 01 AC */	bge lbl_80150128
/* 8014FF80  38 61 00 50 */	addi r3, r1, 0x50
/* 8014FF84  38 81 00 74 */	addi r4, r1, 0x74
/* 8014FF88  38 A1 00 80 */	addi r5, r1, 0x80
/* 8014FF8C  48 11 6B A9 */	bl __mi__4cXyzCFRC3Vec
/* 8014FF90  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8014FF94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014FF98  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FF9C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8014FFA0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8014FFA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014FFA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014FFAC  48 1F 71 8D */	bl PSVECSquareMag
/* 8014FFB0  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014FFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014FFB8  40 81 00 58 */	ble lbl_80150010
/* 8014FFBC  FC 00 08 34 */	frsqrte f0, f1
/* 8014FFC0  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014FFC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FFC8  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014FFCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FFD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FFD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FFD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FFDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FFE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FFE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FFE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8014FFEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8014FFF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8014FFF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8014FFF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8014FFFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80150000  FC 02 00 32 */	fmul f0, f2, f0
/* 80150004  FC 21 00 32 */	fmul f1, f1, f0
/* 80150008  FC 20 08 18 */	frsp f1, f1
/* 8015000C  48 00 00 88 */	b lbl_80150094
lbl_80150010:
/* 80150010  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 80150014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80150018  40 80 00 10 */	bge lbl_80150028
/* 8015001C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80150020  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80150024  48 00 00 70 */	b lbl_80150094
lbl_80150028:
/* 80150028  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8015002C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80150030  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80150034  3C 00 7F 80 */	lis r0, 0x7f80
/* 80150038  7C 03 00 00 */	cmpw r3, r0
/* 8015003C  41 82 00 14 */	beq lbl_80150050
/* 80150040  40 80 00 40 */	bge lbl_80150080
/* 80150044  2C 03 00 00 */	cmpwi r3, 0
/* 80150048  41 82 00 20 */	beq lbl_80150068
/* 8015004C  48 00 00 34 */	b lbl_80150080
lbl_80150050:
/* 80150050  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80150054  41 82 00 0C */	beq lbl_80150060
/* 80150058  38 00 00 01 */	li r0, 1
/* 8015005C  48 00 00 28 */	b lbl_80150084
lbl_80150060:
/* 80150060  38 00 00 02 */	li r0, 2
/* 80150064  48 00 00 20 */	b lbl_80150084
lbl_80150068:
/* 80150068  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015006C  41 82 00 0C */	beq lbl_80150078
/* 80150070  38 00 00 05 */	li r0, 5
/* 80150074  48 00 00 10 */	b lbl_80150084
lbl_80150078:
/* 80150078  38 00 00 03 */	li r0, 3
/* 8015007C  48 00 00 08 */	b lbl_80150084
lbl_80150080:
/* 80150080  38 00 00 04 */	li r0, 4
lbl_80150084:
/* 80150084  2C 00 00 01 */	cmpwi r0, 1
/* 80150088  40 82 00 0C */	bne lbl_80150094
/* 8015008C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80150090  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80150094:
/* 80150094  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80150098  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8015009C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801500A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801500A4  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 801500A8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801500AC  EC 42 00 28 */	fsubs f2, f2, f0
/* 801500B0  48 11 75 C5 */	bl cM_atan2s__Fff
/* 801500B4  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 801500B8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801500BC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 801500C0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801500C4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 801500C8  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 801500CC  C0 02 99 F8 */	lfs f0, lit_4674(r2)
/* 801500D0  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 801500D4  EC 60 01 72 */	fmuls f3, f0, f5
/* 801500D8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 801500DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801500E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801500E4  7C 83 04 2E */	lfsx f4, r3, r0
/* 801500E8  EC 03 01 32 */	fmuls f0, f3, f4
/* 801500EC  EC 02 00 2A */	fadds f0, f2, f0
/* 801500F0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801500F4  7C 63 02 14 */	add r3, r3, r0
/* 801500F8  C0 C3 00 04 */	lfs f6, 4(r3)
/* 801500FC  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80150100  EC 01 00 2A */	fadds f0, f1, f0
/* 80150104  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80150108  C0 02 99 F0 */	lfs f0, lit_4672(r2)
/* 8015010C  EC 60 01 72 */	fmuls f3, f0, f5
/* 80150110  EC 03 01 32 */	fmuls f0, f3, f4
/* 80150114  EC 02 00 2A */	fadds f0, f2, f0
/* 80150118  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8015011C  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80150120  EC 01 00 2A */	fadds f0, f1, f0
/* 80150124  D0 01 00 7C */	stfs f0, 0x7c(r1)
lbl_80150128:
/* 80150128  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8015012C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80150130  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 80150134  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 80150138  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 8015013C  C0 C1 00 7C */	lfs f6, 0x7c(r1)
/* 80150140  38 61 00 24 */	addi r3, r1, 0x24
/* 80150144  38 81 00 20 */	addi r4, r1, 0x20
/* 80150148  38 A1 00 28 */	addi r5, r1, 0x28
/* 8015014C  4B FF F6 D1 */	bl daBaseNpc_PntVsLineSegmentLengthSquare2D__FffffffPfPfPf
/* 80150150  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80150154  FC 00 02 10 */	fabs f0, f0
/* 80150158  FC 20 00 18 */	frsp f1, f0
/* 8015015C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80150160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80150164  40 80 00 0C */	bge lbl_80150170
/* 80150168  38 60 00 00 */	li r3, 0
/* 8015016C  48 00 00 AC */	b lbl_80150218
lbl_80150170:
/* 80150170  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80150174  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 80150178  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 8015017C  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 80150180  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 80150184  C0 C1 00 7C */	lfs f6, 0x7c(r1)
/* 80150188  38 61 00 1C */	addi r3, r1, 0x1c
/* 8015018C  38 81 00 18 */	addi r4, r1, 0x18
/* 80150190  38 A1 00 28 */	addi r5, r1, 0x28
/* 80150194  4B FF F6 89 */	bl daBaseNpc_PntVsLineSegmentLengthSquare2D__FffffffPfPfPf
/* 80150198  2C 1F 00 00 */	cmpwi r31, 0
/* 8015019C  40 80 00 28 */	bge lbl_801501C4
/* 801501A0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 801501A4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801501A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801501AC  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 801501B0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 801501B4  EC 42 00 28 */	fsubs f2, f2, f0
/* 801501B8  48 11 74 BD */	bl cM_atan2s__Fff
/* 801501BC  7C 7E 1B 78 */	mr r30, r3
/* 801501C0  48 00 00 24 */	b lbl_801501E4
lbl_801501C4:
/* 801501C4  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801501C8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801501CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801501D0  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 801501D4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 801501D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 801501DC  48 11 74 99 */	bl cM_atan2s__Fff
/* 801501E0  7C 7E 1B 78 */	mr r30, r3
lbl_801501E4:
/* 801501E4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801501E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801501EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801501F0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801501F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801501F8  EC 42 00 28 */	fsubs f2, f2, f0
/* 801501FC  48 11 74 79 */	bl cM_atan2s__Fff
/* 80150200  7C 03 F0 50 */	subf r0, r3, r30
/* 80150204  7C 03 07 34 */	extsh r3, r0
/* 80150208  48 21 4E C9 */	bl abs
/* 8015020C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80150210  20 00 40 00 */	subfic r0, r0, 0x4000
/* 80150214  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80150218:
/* 80150218  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8015021C  48 21 20 01 */	bl _restgpr_26
/* 80150220  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80150224  7C 08 03 A6 */	mtlr r0
/* 80150228  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8015022C  4E 80 00 20 */	blr 
