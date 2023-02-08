lbl_8045FCA4:
/* 8045FCA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045FCA8  7C 08 02 A6 */	mflr r0
/* 8045FCAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045FCB0  39 61 00 50 */	addi r11, r1, 0x50
/* 8045FCB4  4B F0 25 29 */	bl _savegpr_29
/* 8045FCB8  7C 7F 1B 78 */	mr r31, r3
/* 8045FCBC  3C 60 80 46 */	lis r3, lit_3876@ha /* 0x80460668@ha */
/* 8045FCC0  3B C3 06 68 */	addi r30, r3, lit_3876@l /* 0x80460668@l */
/* 8045FCC4  A0 1F 06 0C */	lhz r0, 0x60c(r31)
/* 8045FCC8  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8045FCCC  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 8045FCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045FCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045FCD8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045FCDC  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 8045FCE0  7F E5 FB 78 */	mr r5, r31
/* 8045FCE4  4B C1 4D 25 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8045FCE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8045FCEC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8045FCF0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8045FCF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8045FCF8  7C 64 02 14 */	add r3, r4, r0
/* 8045FCFC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8045FD00  7C 04 04 2E */	lfsx f0, r4, r0
/* 8045FD04  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8045FD08  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8045FD0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8045FD10  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8045FD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045FD18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045FD1C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8045FD20  38 61 00 08 */	addi r3, r1, 8
/* 8045FD24  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8045FD28  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045FD2C  4B E0 6E 09 */	bl __mi__4cXyzCFRC3Vec
/* 8045FD30  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045FD34  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8045FD38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045FD3C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8045FD40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8045FD44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045FD48  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 8045FD4C  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8045FD50  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8045FD54  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8045FD58  EC 81 00 2A */	fadds f4, f1, f0
/* 8045FD5C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8045FD60  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045FD64  40 80 00 0C */	bge lbl_8045FD70
/* 8045FD68  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 8045FD6C  48 00 00 08 */	b lbl_8045FD74
lbl_8045FD70:
/* 8045FD70  C0 BE 00 58 */	lfs f5, 0x58(r30)
lbl_8045FD74:
/* 8045FD74  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8045FD78  EC 05 00 B2 */	fmuls f0, f5, f2
/* 8045FD7C  EC 61 00 28 */	fsubs f3, f1, f0
/* 8045FD80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8045FD84  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8045FD88  EC 05 01 B2 */	fmuls f0, f5, f6
/* 8045FD8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8045FD90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045FD94  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8045FD98  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8045FD9C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8045FDA0  7C 06 07 74 */	extsb r6, r0
/* 8045FDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045FDA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045FDAC  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8045FDB0  38 81 00 14 */	addi r4, r1, 0x14
/* 8045FDB4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8045FDB8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045FDBC  40 81 00 0C */	ble lbl_8045FDC8
/* 8045FDC0  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 8045FDC4  48 00 00 14 */	b lbl_8045FDD8
lbl_8045FDC8:
/* 8045FDC8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 8045FDCC  3C A5 00 01 */	addis r5, r5, 1
/* 8045FDD0  38 05 80 00 */	addi r0, r5, -32768
/* 8045FDD4  7C 05 07 34 */	extsh r5, r0
lbl_8045FDD8:
/* 8045FDD8  4B BD 51 A9 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 8045FDDC  38 60 00 01 */	li r3, 1
/* 8045FDE0  39 61 00 50 */	addi r11, r1, 0x50
/* 8045FDE4  4B F0 24 45 */	bl _restgpr_29
/* 8045FDE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045FDEC  7C 08 03 A6 */	mtlr r0
/* 8045FDF0  38 21 00 50 */	addi r1, r1, 0x50
/* 8045FDF4  4E 80 00 20 */	blr 
