lbl_800F3998:
/* 800F3998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F399C  7C 08 02 A6 */	mflr r0
/* 800F39A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F39A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800F39A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800F39AC  7C 7E 1B 78 */	mr r30, r3
/* 800F39B0  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 800F39B4  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 800F39B8  2C 00 00 00 */	cmpwi r0, 0
/* 800F39BC  40 82 00 30 */	bne lbl_800F39EC
/* 800F39C0  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800F39C4  48 06 AB 09 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F39C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F39CC  41 82 00 20 */	beq lbl_800F39EC
/* 800F39D0  7F C3 F3 78 */	mr r3, r30
/* 800F39D4  38 80 00 60 */	li r4, 0x60
/* 800F39D8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F39DC  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800F39E0  4B FB 96 01 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800F39E4  38 00 00 01 */	li r0, 1
/* 800F39E8  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800F39EC:
/* 800F39EC  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F39F0  2C 00 00 00 */	cmpwi r0, 0
/* 800F39F4  41 82 00 14 */	beq lbl_800F3A08
/* 800F39F8  7F C3 F3 78 */	mr r3, r30
/* 800F39FC  4B FF 9F 11 */	bl setSyncBoarRunPos__9daAlink_cFv
/* 800F3A00  2C 03 00 00 */	cmpwi r3, 0
/* 800F3A04  41 82 00 20 */	beq lbl_800F3A24
lbl_800F3A08:
/* 800F3A08  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F3A0C  2C 00 00 00 */	cmpwi r0, 0
/* 800F3A10  40 82 00 1C */	bne lbl_800F3A2C
/* 800F3A14  7F C3 F3 78 */	mr r3, r30
/* 800F3A18  4B FF 9D 75 */	bl setSyncBoarPos__9daAlink_cFv
/* 800F3A1C  2C 03 00 00 */	cmpwi r3, 0
/* 800F3A20  40 82 00 0C */	bne lbl_800F3A2C
lbl_800F3A24:
/* 800F3A24  38 60 00 01 */	li r3, 1
/* 800F3A28  48 00 01 70 */	b lbl_800F3B98
lbl_800F3A2C:
/* 800F3A2C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 800F3A30  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F3A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F3A38  40 81 01 28 */	ble lbl_800F3B60
/* 800F3A3C  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800F3A40  2C 00 00 00 */	cmpwi r0, 0
/* 800F3A44  41 82 01 1C */	beq lbl_800F3B60
/* 800F3A48  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800F3A4C  A8 03 00 14 */	lha r0, 0x14(r3)
/* 800F3A50  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F3A54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F3A58  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F3A5C  3C 00 43 30 */	lis r0, 0x4330
/* 800F3A60  90 01 00 08 */	stw r0, 8(r1)
/* 800F3A64  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F3A68  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F3A6C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 800F3A70  C0 42 95 04 */	lfs f2, lit_20402(r2)
/* 800F3A74  EC 21 00 24 */	fdivs f1, f1, f0
/* 800F3A78  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 800F3A7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F3A80  EC 22 00 32 */	fmuls f1, f2, f0
/* 800F3A84  48 17 3B 61 */	bl cM_rad2s__Ff
/* 800F3A88  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F3A8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F3A90  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F3A94  7C 43 04 2E */	lfsx f2, r3, r0
/* 800F3A98  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800F3A9C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F3AA0  EC 00 10 2A */	fadds f0, f0, f2
/* 800F3AA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F3AA8  C0 02 94 4C */	lfs f0, lit_14782(r2)
/* 800F3AAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F3AB0  FC 00 00 1E */	fctiwz f0, f0
/* 800F3AB4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800F3AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3ABC  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800F3AC0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800F3AC4  A8 03 00 14 */	lha r0, 0x14(r3)
/* 800F3AC8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F3ACC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F3AD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800F3AD4  3C 00 43 30 */	lis r0, 0x4330
/* 800F3AD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 800F3ADC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800F3AE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F3AE4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 800F3AE8  C0 42 95 04 */	lfs f2, lit_20402(r2)
/* 800F3AEC  EC 21 00 24 */	fdivs f1, f1, f0
/* 800F3AF0  C0 02 93 FC */	lfs f0, lit_13701(r2)
/* 800F3AF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F3AF8  EC 22 00 32 */	fmuls f1, f2, f0
/* 800F3AFC  48 17 3A E9 */	bl cM_rad2s__Ff
/* 800F3B00  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F3B04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800F3B08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800F3B0C  7C 43 04 2E */	lfsx f2, r3, r0
/* 800F3B10  C0 3E 34 78 */	lfs f1, 0x3478(r30)
/* 800F3B14  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F3B18  EC 00 10 2A */	fadds f0, f0, f2
/* 800F3B1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F3B20  FC 00 00 1E */	fctiwz f0, f0
/* 800F3B24  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800F3B28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F3B2C  B0 1E 30 88 */	sth r0, 0x3088(r30)
/* 800F3B30  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800F3B34  38 63 00 0C */	addi r3, r3, 0xc
/* 800F3B38  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F3B3C  48 23 48 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 800F3B40  2C 03 00 00 */	cmpwi r3, 0
/* 800F3B44  41 82 00 50 */	beq lbl_800F3B94
/* 800F3B48  C0 22 95 0C */	lfs f1, lit_20496(r2)
/* 800F3B4C  48 17 3E 09 */	bl cM_rndF__Ff
/* 800F3B50  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800F3B54  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F3B58  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800F3B5C  48 00 00 38 */	b lbl_800F3B94
lbl_800F3B60:
/* 800F3B60  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F3B64  2C 00 00 00 */	cmpwi r0, 0
/* 800F3B68  40 82 00 2C */	bne lbl_800F3B94
/* 800F3B6C  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800F3B70  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800F3B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F3B78  4C 41 13 82 */	cror 2, 1, 2
/* 800F3B7C  40 82 00 18 */	bne lbl_800F3B94
/* 800F3B80  38 00 00 FE */	li r0, 0xfe
/* 800F3B84  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F3B88  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800F3B8C  38 00 00 01 */	li r0, 1
/* 800F3B90  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800F3B94:
/* 800F3B94  38 60 00 01 */	li r3, 1
lbl_800F3B98:
/* 800F3B98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800F3B9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800F3BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F3BA4  7C 08 03 A6 */	mtlr r0
/* 800F3BA8  38 21 00 30 */	addi r1, r1, 0x30
/* 800F3BAC  4E 80 00 20 */	blr 
