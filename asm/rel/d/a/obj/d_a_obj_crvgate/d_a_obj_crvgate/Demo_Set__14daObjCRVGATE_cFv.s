lbl_80BD0A64:
/* 80BD0A64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD0A68  7C 08 02 A6 */	mflr r0
/* 80BD0A6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD0A70  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0A74  4B 79 17 65 */	bl _savegpr_28
/* 80BD0A78  7C 7C 1B 78 */	mr r28, r3
/* 80BD0A7C  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD0A80  3B C3 30 C0 */	addi r30, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD0A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD0A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD0A8C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BD0A90  3B A3 04 D0 */	addi r29, r3, 0x4d0
/* 80BD0A94  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80BD0A98  7F A4 EB 78 */	mr r4, r29
/* 80BD0A9C  4B 6A 01 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BD0AA0  7C 7F 1B 78 */	mr r31, r3
/* 80BD0AA4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80BD0AA8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80BD0AAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD0AB0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80BD0AB4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD0AB8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BD0ABC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80BD0AC0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BD0AC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD0AC8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BD0ACC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BD0AD0  38 61 00 08 */	addi r3, r1, 8
/* 80BD0AD4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD0AD8  4B 77 68 C5 */	bl PSVECSquareDistance
/* 80BD0ADC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80BD0AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD0AE4  40 81 00 08 */	ble lbl_80BD0AEC
/* 80BD0AE8  48 00 00 0C */	b lbl_80BD0AF4
lbl_80BD0AEC:
/* 80BD0AEC  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80BD0AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80BD0AF4:
/* 80BD0AF4  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80BD0AF8  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 80BD0AFC  38 1F 10 00 */	addi r0, r31, 0x1000
/* 80BD0B00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD0B04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD0B08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD0B0C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BD0B10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BD0B14  EC 81 00 28 */	fsubs f4, f1, f0
/* 80BD0B18  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80BD0B1C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BD0B20  EC 61 00 2A */	fadds f3, f1, f0
/* 80BD0B24  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80BD0B28  7C 63 02 14 */	add r3, r3, r0
/* 80BD0B2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD0B30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BD0B34  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD0B38  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 80BD0B3C  D0 7C 05 C4 */	stfs f3, 0x5c4(r28)
/* 80BD0B40  D0 9C 05 C8 */	stfs f4, 0x5c8(r28)
/* 80BD0B44  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80BD0B48  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BD0B4C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BD0B50  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD0B54  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80BD0B58  D0 1C 05 CC */	stfs f0, 0x5cc(r28)
/* 80BD0B5C  D0 3C 05 D0 */	stfs f1, 0x5d0(r28)
/* 80BD0B60  D0 5C 05 D4 */	stfs f2, 0x5d4(r28)
/* 80BD0B64  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0B68  4B 79 16 BD */	bl _restgpr_28
/* 80BD0B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD0B70  7C 08 03 A6 */	mtlr r0
/* 80BD0B74  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD0B78  4E 80 00 20 */	blr 
