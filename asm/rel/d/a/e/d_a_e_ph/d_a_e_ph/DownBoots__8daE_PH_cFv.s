lbl_8073E924:
/* 8073E924  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073E928  7C 08 02 A6 */	mflr r0
/* 8073E92C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073E930  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8073E934  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8073E938  7C 7E 1B 78 */	mr r30, r3
/* 8073E93C  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073E940  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073E944  A8 7E 06 66 */	lha r3, 0x666(r30)
/* 8073E948  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8073E94C  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 8073E950  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073E958  3C 80 43 30 */	lis r4, 0x4330
/* 8073E95C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8073E960  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073E964  EC 20 10 28 */	fsubs f1, f0, f2
/* 8073E968  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073E96C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073E970  FC 00 00 1E */	fctiwz f0, f0
/* 8073E974  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073E978  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073E97C  7C 03 02 14 */	add r0, r3, r0
/* 8073E980  B0 1E 06 66 */	sth r0, 0x666(r30)
/* 8073E984  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070462@ha */
/* 8073E988  38 03 04 62 */	addi r0, r3, 0x0462 /* 0x00070462@l */
/* 8073E98C  90 01 00 08 */	stw r0, 8(r1)
/* 8073E990  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8073E994  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E998  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073E99C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8073E9A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8073E9A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8073E9A8  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073E9AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8073E9B0  4B C2 36 FD */	bl __cvt_fp2unsigned
/* 8073E9B4  7C 65 1B 78 */	mr r5, r3
/* 8073E9B8  38 7E 06 74 */	addi r3, r30, 0x674
/* 8073E9BC  38 81 00 08 */	addi r4, r1, 8
/* 8073E9C0  38 C0 FF FF */	li r6, -1
/* 8073E9C4  81 9E 06 74 */	lwz r12, 0x674(r30)
/* 8073E9C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073E9CC  7D 89 03 A6 */	mtctr r12
/* 8073E9D0  4E 80 04 21 */	bctrl 
/* 8073E9D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E9D8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073E9DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073E9E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073E9E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8073E9E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073E9EC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8073E9F0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8073E9F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8073E9F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8073E9FC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8073EA00  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073EA04  41 82 00 10 */	beq lbl_8073EA14
/* 8073EA08  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 8073EA0C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073EA10  41 82 00 1C */	beq lbl_8073EA2C
lbl_8073EA14:
/* 8073EA14  88 7E 05 B0 */	lbz r3, 0x5b0(r30)
/* 8073EA18  38 03 00 01 */	addi r0, r3, 1
/* 8073EA1C  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 8073EA20  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8073EA24  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 8073EA28  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_8073EA2C:
/* 8073EA2C  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073EA30  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073EA34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073EA38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8073EA3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8073EA40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073EA44  7C 08 03 A6 */	mtlr r0
/* 8073EA48  38 21 00 30 */	addi r1, r1, 0x30
/* 8073EA4C  4E 80 00 20 */	blr 
