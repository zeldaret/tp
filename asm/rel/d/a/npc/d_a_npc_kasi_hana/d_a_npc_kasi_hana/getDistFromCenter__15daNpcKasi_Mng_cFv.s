lbl_80A1B1C8:
/* 80A1B1C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A1B1CC  7C 08 02 A6 */	mflr r0
/* 80A1B1D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A1B1D4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80A1B1D8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80A1B1DC  7C 7E 1B 78 */	mr r30, r3
/* 80A1B1E0  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1B1E4  3B E4 10 80 */	addi r31, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1B1E8  4B FF FE F1 */	bl calcCenterPos__15daNpcKasi_Mng_cFv
/* 80A1B1EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1B1F0  40 82 00 0C */	bne lbl_80A1B1FC
/* 80A1B1F4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A1B1F8  48 00 01 4C */	b lbl_80A1B344
lbl_80A1B1FC:
/* 80A1B1FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1B200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1B204  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A1B208  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A1B20C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1B210  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A1B214  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1B218  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A1B21C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1B220  38 61 00 18 */	addi r3, r1, 0x18
/* 80A1B224  38 81 00 30 */	addi r4, r1, 0x30
/* 80A1B228  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80A1B22C  4B 84 B9 09 */	bl __mi__4cXyzCFRC3Vec
/* 80A1B230  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A1B234  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A1B238  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1B23C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A1B240  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A1B244  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A1B248  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A1B24C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1B250  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1B254  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A1B258  38 61 00 0C */	addi r3, r1, 0xc
/* 80A1B25C  4B 92 BE DD */	bl PSVECSquareMag
/* 80A1B260  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1B264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1B268  40 81 00 58 */	ble lbl_80A1B2C0
/* 80A1B26C  FC 00 08 34 */	frsqrte f0, f1
/* 80A1B270  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80A1B274  FC 44 00 32 */	fmul f2, f4, f0
/* 80A1B278  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80A1B27C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1B280  FC 01 00 32 */	fmul f0, f1, f0
/* 80A1B284  FC 03 00 28 */	fsub f0, f3, f0
/* 80A1B288  FC 02 00 32 */	fmul f0, f2, f0
/* 80A1B28C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A1B290  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1B294  FC 01 00 32 */	fmul f0, f1, f0
/* 80A1B298  FC 03 00 28 */	fsub f0, f3, f0
/* 80A1B29C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A1B2A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A1B2A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A1B2A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A1B2AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A1B2B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A1B2B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A1B2B8  FC 20 08 18 */	frsp f1, f1
/* 80A1B2BC  48 00 00 88 */	b lbl_80A1B344
lbl_80A1B2C0:
/* 80A1B2C0  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80A1B2C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1B2C8  40 80 00 10 */	bge lbl_80A1B2D8
/* 80A1B2CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A1B2D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A1B2D4  48 00 00 70 */	b lbl_80A1B344
lbl_80A1B2D8:
/* 80A1B2D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A1B2DC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A1B2E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A1B2E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A1B2E8  7C 03 00 00 */	cmpw r3, r0
/* 80A1B2EC  41 82 00 14 */	beq lbl_80A1B300
/* 80A1B2F0  40 80 00 40 */	bge lbl_80A1B330
/* 80A1B2F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1B2F8  41 82 00 20 */	beq lbl_80A1B318
/* 80A1B2FC  48 00 00 34 */	b lbl_80A1B330
lbl_80A1B300:
/* 80A1B300  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A1B304  41 82 00 0C */	beq lbl_80A1B310
/* 80A1B308  38 00 00 01 */	li r0, 1
/* 80A1B30C  48 00 00 28 */	b lbl_80A1B334
lbl_80A1B310:
/* 80A1B310  38 00 00 02 */	li r0, 2
/* 80A1B314  48 00 00 20 */	b lbl_80A1B334
lbl_80A1B318:
/* 80A1B318  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A1B31C  41 82 00 0C */	beq lbl_80A1B328
/* 80A1B320  38 00 00 05 */	li r0, 5
/* 80A1B324  48 00 00 10 */	b lbl_80A1B334
lbl_80A1B328:
/* 80A1B328  38 00 00 03 */	li r0, 3
/* 80A1B32C  48 00 00 08 */	b lbl_80A1B334
lbl_80A1B330:
/* 80A1B330  38 00 00 04 */	li r0, 4
lbl_80A1B334:
/* 80A1B334  2C 00 00 01 */	cmpwi r0, 1
/* 80A1B338  40 82 00 0C */	bne lbl_80A1B344
/* 80A1B33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A1B340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A1B344:
/* 80A1B344  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A1B348  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80A1B34C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A1B350  7C 08 03 A6 */	mtlr r0
/* 80A1B354  38 21 00 50 */	addi r1, r1, 0x50
/* 80A1B358  4E 80 00 20 */	blr 
