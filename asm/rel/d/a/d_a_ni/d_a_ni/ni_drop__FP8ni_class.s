lbl_8094D8EC:
/* 8094D8EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094D8F0  7C 08 02 A6 */	mflr r0
/* 8094D8F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094D8F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D8FC  4B A1 48 E0 */	b _savegpr_29
/* 8094D900  7C 7F 1B 78 */	mr r31, r3
/* 8094D904  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094D908  3B C4 11 C0 */	addi r30, r4, lit_3958@l
/* 8094D90C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8094D910  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8094D914  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8094D918  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094D91C  2C 00 00 01 */	cmpwi r0, 1
/* 8094D920  41 82 00 34 */	beq lbl_8094D954
/* 8094D924  40 80 00 40 */	bge lbl_8094D964
/* 8094D928  2C 00 00 00 */	cmpwi r0, 0
/* 8094D92C  40 80 00 08 */	bge lbl_8094D934
/* 8094D930  48 00 00 34 */	b lbl_8094D964
lbl_8094D934:
/* 8094D934  38 80 00 05 */	li r4, 5
/* 8094D938  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8094D93C  38 A0 00 00 */	li r5, 0
/* 8094D940  FC 40 08 90 */	fmr f2, f1
/* 8094D944  4B FF E3 65 */	bl anm_init__FP8ni_classifUcf
/* 8094D948  A8 7F 05 FC */	lha r3, 0x5fc(r31)
/* 8094D94C  38 03 00 01 */	addi r0, r3, 1
/* 8094D950  B0 1F 05 FC */	sth r0, 0x5fc(r31)
lbl_8094D954:
/* 8094D954  7F E3 FB 78 */	mr r3, r31
/* 8094D958  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8094D95C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8094D960  4B FF E4 09 */	bl hane_set__FP8ni_classff
lbl_8094D964:
/* 8094D964  3C 60 80 95 */	lis r3, l_HIO@ha
/* 8094D968  38 63 15 9C */	addi r3, r3, l_HIO@l
/* 8094D96C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8094D970  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8094D974  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 8094D978  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8094D97C  40 82 00 10 */	bne lbl_8094D98C
/* 8094D980  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 8094D984  7C 00 07 75 */	extsb. r0, r0
/* 8094D988  41 82 00 10 */	beq lbl_8094D998
lbl_8094D98C:
/* 8094D98C  38 00 00 00 */	li r0, 0
/* 8094D990  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094D994  B0 1F 05 FC */	sth r0, 0x5fc(r31)
lbl_8094D998:
/* 8094D998  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 8094D99C  2C 00 00 03 */	cmpwi r0, 3
/* 8094D9A0  40 82 00 54 */	bne lbl_8094D9F4
/* 8094D9A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8094D9A8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8094D9AC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8094D9B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8094D9B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094D9B8  40 80 00 3C */	bge lbl_8094D9F4
/* 8094D9BC  C0 3F 07 08 */	lfs f1, 0x708(r31)
/* 8094D9C0  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8094D9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094D9C8  40 80 00 2C */	bge lbl_8094D9F4
/* 8094D9CC  38 00 00 06 */	li r0, 6
/* 8094D9D0  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094D9D4  38 00 00 00 */	li r0, 0
/* 8094D9D8  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 8094D9DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8094D9E0  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 8094D9E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8094D9E8  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 8094D9EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8094D9F0  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
lbl_8094D9F4:
/* 8094D9F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D9F8  4B A1 48 30 */	b _restgpr_29
/* 8094D9FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094DA00  7C 08 03 A6 */	mtlr r0
/* 8094DA04  38 21 00 20 */	addi r1, r1, 0x20
/* 8094DA08  4E 80 00 20 */	blr 
