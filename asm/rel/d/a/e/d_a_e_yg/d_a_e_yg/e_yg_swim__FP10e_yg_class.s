lbl_807F99D0:
/* 807F99D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807F99D4  7C 08 02 A6 */	mflr r0
/* 807F99D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 807F99DC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807F99E0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807F99E4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 807F99E8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 807F99EC  39 61 00 30 */	addi r11, r1, 0x30
/* 807F99F0  4B B6 87 ED */	bl _savegpr_29
/* 807F99F4  7C 7F 1B 78 */	mr r31, r3
/* 807F99F8  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F99FC  3B C4 CC B4 */	addi r30, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807F9A00  3B A0 00 00 */	li r29, 0
/* 807F9A04  3C 80 80 80 */	lis r4, l_HIO@ha /* 0x807FD06C@ha */
/* 807F9A08  38 84 D0 6C */	addi r4, r4, l_HIO@l /* 0x807FD06C@l */
/* 807F9A0C  C3 E4 00 14 */	lfs f31, 0x14(r4)
/* 807F9A10  C3 DE 00 08 */	lfs f30, 8(r30)
/* 807F9A14  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807F9A18  2C 00 00 01 */	cmpwi r0, 1
/* 807F9A1C  41 82 00 4C */	beq lbl_807F9A68
/* 807F9A20  40 80 00 D4 */	bge lbl_807F9AF4
/* 807F9A24  2C 00 00 00 */	cmpwi r0, 0
/* 807F9A28  40 80 00 08 */	bge lbl_807F9A30
/* 807F9A2C  48 00 00 C8 */	b lbl_807F9AF4
lbl_807F9A30:
/* 807F9A30  38 80 00 0E */	li r4, 0xe
/* 807F9A34  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 807F9A38  38 A0 00 02 */	li r5, 2
/* 807F9A3C  FC 40 F0 90 */	fmr f2, f30
/* 807F9A40  4B FF E9 55 */	bl anm_init__FP10e_yg_classifUcf
/* 807F9A44  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 807F9A48  38 03 00 01 */	addi r0, r3, 1
/* 807F9A4C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807F9A50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F9A54  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807F9A58  7F E3 FB 78 */	mr r3, r31
/* 807F9A5C  4B FF FA 8D */	bl search_ground_1__FP10e_yg_class
/* 807F9A60  38 00 00 32 */	li r0, 0x32
/* 807F9A64  B0 1F 06 88 */	sth r0, 0x688(r31)
lbl_807F9A68:
/* 807F9A68  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 807F9A6C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 807F9A70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F9A74  40 80 00 24 */	bge lbl_807F9A98
/* 807F9A78  3B A0 08 00 */	li r29, 0x800
/* 807F9A7C  C3 DE 00 A8 */	lfs f30, 0xa8(r30)
/* 807F9A80  C3 FE 00 AC */	lfs f31, 0xac(r30)
/* 807F9A84  A8 1F 06 84 */	lha r0, 0x684(r31)
/* 807F9A88  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 807F9A8C  38 00 00 01 */	li r0, 1
/* 807F9A90  98 1F 0B 84 */	stb r0, 0xb84(r31)
/* 807F9A94  48 00 00 60 */	b lbl_807F9AF4
lbl_807F9A98:
/* 807F9A98  3B A0 03 00 */	li r29, 0x300
/* 807F9A9C  A8 1F 06 7C */	lha r0, 0x67c(r31)
/* 807F9AA0  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 807F9AA4  40 82 00 20 */	bne lbl_807F9AC4
/* 807F9AA8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F9AAC  4B A6 DE A9 */	bl cM_rndF__Ff
/* 807F9AB0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807F9AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F9AB8  40 80 00 0C */	bge lbl_807F9AC4
/* 807F9ABC  7F E3 FB 78 */	mr r3, r31
/* 807F9AC0  4B FF FA 29 */	bl search_ground_1__FP10e_yg_class
lbl_807F9AC4:
/* 807F9AC4  38 61 00 08 */	addi r3, r1, 8
/* 807F9AC8  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 807F9ACC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807F9AD0  4B A6 D0 65 */	bl __mi__4cXyzCFRC3Vec
/* 807F9AD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 807F9AD8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807F9ADC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807F9AE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F9AE4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807F9AE8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 807F9AEC  4B A6 DB 89 */	bl cM_atan2s__Fff
/* 807F9AF0  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
lbl_807F9AF4:
/* 807F9AF4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807F9AF8  FC 20 F8 90 */	fmr f1, f31
/* 807F9AFC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F9B00  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 807F9B04  4B A7 5F 39 */	bl cLib_addCalc2__FPffff
/* 807F9B08  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807F9B0C  D3 C3 00 18 */	stfs f30, 0x18(r3)
/* 807F9B10  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807F9B14  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 807F9B18  38 A0 00 08 */	li r5, 8
/* 807F9B1C  7F A6 EB 78 */	mr r6, r29
/* 807F9B20  4B A7 6A E9 */	bl cLib_addCalcAngleS2__FPssss
/* 807F9B24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F9B28  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807F9B2C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807F9B30  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 807F9B34  C0 3F 06 90 */	lfs f1, 0x690(r31)
/* 807F9B38  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807F9B3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807F9B40  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807F9B44  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 807F9B48  4B A7 5E F5 */	bl cLib_addCalc2__FPffff
/* 807F9B4C  A8 1F 06 88 */	lha r0, 0x688(r31)
/* 807F9B50  2C 00 00 00 */	cmpwi r0, 0
/* 807F9B54  40 82 00 3C */	bne lbl_807F9B90
/* 807F9B58  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 807F9B5C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807F9B60  41 82 00 30 */	beq lbl_807F9B90
/* 807F9B64  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807F9B68  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807F9B6C  EC 01 00 2A */	fadds f0, f1, f0
/* 807F9B70  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807F9B74  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807F9B78  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807F9B7C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807F9B80  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807F9B84  38 00 00 00 */	li r0, 0
/* 807F9B88  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807F9B8C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807F9B90:
/* 807F9B90  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807F9B94  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807F9B98  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 807F9B9C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 807F9BA0  39 61 00 30 */	addi r11, r1, 0x30
/* 807F9BA4  4B B6 86 85 */	bl _restgpr_29
/* 807F9BA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807F9BAC  7C 08 03 A6 */	mtlr r0
/* 807F9BB0  38 21 00 50 */	addi r1, r1, 0x50
/* 807F9BB4  4E 80 00 20 */	blr 
