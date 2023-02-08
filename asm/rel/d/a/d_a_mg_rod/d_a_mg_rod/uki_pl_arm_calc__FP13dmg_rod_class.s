lbl_804B31D8:
/* 804B31D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B31DC  7C 08 02 A6 */	mflr r0
/* 804B31E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B31E4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804B31E8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804B31EC  7C 7E 1B 78 */	mr r30, r3
/* 804B31F0  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B31F4  3B E3 B5 34 */	addi r31, r3, lit_3879@l /* 0x804BB534@l */
/* 804B31F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B31FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B3200  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804B3204  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B3208  2C 00 00 01 */	cmpwi r0, 1
/* 804B320C  40 82 00 68 */	bne lbl_804B3274
/* 804B3210  C0 1E 10 64 */	lfs f0, 0x1064(r30)
/* 804B3214  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804B3218  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B321C  40 80 00 08 */	bge lbl_804B3224
/* 804B3220  FC 00 08 90 */	fmr f0, f1
lbl_804B3224:
/* 804B3224  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 804B3228  EC 62 00 28 */	fsubs f3, f2, f0
/* 804B322C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804B3230  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B3234  40 81 00 28 */	ble lbl_804B325C
/* 804B3238  EC 22 08 28 */	fsubs f1, f2, f1
/* 804B323C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804B3240  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B3244  EC 21 00 32 */	fmuls f1, f1, f0
/* 804B3248  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804B324C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B3250  40 81 00 10 */	ble lbl_804B3260
/* 804B3254  FC 20 00 90 */	fmr f1, f0
/* 804B3258  48 00 00 08 */	b lbl_804B3260
lbl_804B325C:
/* 804B325C  C0 3F 00 58 */	lfs f1, 0x58(r31)
lbl_804B3260:
/* 804B3260  38 7E 15 04 */	addi r3, r30, 0x1504
/* 804B3264  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804B3268  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 804B326C  4B DB C7 D1 */	bl cLib_addCalc2__FPffff
/* 804B3270  48 00 00 0C */	b lbl_804B327C
lbl_804B3274:
/* 804B3274  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804B3278  D0 1E 15 04 */	stfs f0, 0x1504(r30)
lbl_804B327C:
/* 804B327C  38 00 00 00 */	li r0, 0
/* 804B3280  B0 01 00 08 */	sth r0, 8(r1)
/* 804B3284  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 804B3288  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804B328C  C0 5E 15 04 */	lfs f2, 0x1504(r30)
/* 804B3290  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B3294  EC 01 00 2A */	fadds f0, f1, f0
/* 804B3298  FC 00 00 1E */	fctiwz f0, f0
/* 804B329C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804B32A0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804B32A4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804B32A8  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 804B32AC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804B32B0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B32B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B32B8  FC 00 00 1E */	fctiwz f0, f0
/* 804B32BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804B32C0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804B32C4  B0 81 00 0C */	sth r4, 0xc(r1)
/* 804B32C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 804B32CC  38 00 EC 78 */	li r0, -5000
/* 804B32D0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 804B32D4  38 00 07 D0 */	li r0, 0x7d0
/* 804B32D8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 804B32DC  7C 63 07 34 */	extsh r3, r3
/* 804B32E0  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 804B32E4  C0 7E 15 08 */	lfs f3, 0x1508(r30)
/* 804B32E8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B32EC  FC 00 00 1E */	fctiwz f0, f0
/* 804B32F0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804B32F4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B32F8  7C E3 02 14 */	add r7, r3, r0
/* 804B32FC  B0 E1 00 0A */	sth r7, 0xa(r1)
/* 804B3300  7C 83 07 34 */	extsh r3, r4
/* 804B3304  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 804B3308  EC 40 00 F2 */	fmuls f2, f0, f3
/* 804B330C  FC 00 10 1E */	fctiwz f0, f2
/* 804B3310  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B3314  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B3318  7C C3 02 14 */	add r6, r3, r0
/* 804B331C  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 804B3320  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 804B3324  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B3328  FC 00 00 1E */	fctiwz f0, f0
/* 804B332C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804B3330  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 804B3334  38 03 EC 78 */	addi r0, r3, -5000
/* 804B3338  B0 01 00 12 */	sth r0, 0x12(r1)
/* 804B333C  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 804B3340  C0 1E 15 0C */	lfs f0, 0x150c(r30)
/* 804B3344  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804B3348  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B334C  EC 02 00 2A */	fadds f0, f2, f0
/* 804B3350  FC 00 00 1E */	fctiwz f0, f0
/* 804B3354  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804B3358  80 61 00 44 */	lwz r3, 0x44(r1)
/* 804B335C  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 804B3360  B0 01 00 14 */	sth r0, 0x14(r1)
/* 804B3364  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804B3368  2C 00 00 05 */	cmpwi r0, 5
/* 804B336C  40 82 00 98 */	bne lbl_804B3404
/* 804B3370  C0 3E 0F 60 */	lfs f1, 0xf60(r30)
/* 804B3374  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 804B3378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B337C  40 81 00 88 */	ble lbl_804B3404
/* 804B3380  A8 BE 05 78 */	lha r5, 0x578(r30)
/* 804B3384  1C 05 62 00 */	mulli r0, r5, 0x6200
/* 804B3388  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B338C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B3390  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B3394  7C 04 04 2E */	lfsx f0, r4, r0
/* 804B3398  7C E3 07 34 */	extsh r3, r7
/* 804B339C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804B33A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B33A4  FC 00 00 1E */	fctiwz f0, f0
/* 804B33A8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804B33AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B33B0  7C 03 02 14 */	add r0, r3, r0
/* 804B33B4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804B33B8  1C 05 65 00 */	mulli r0, r5, 0x6500
/* 804B33BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B33C0  7C 04 04 2E */	lfsx f0, r4, r0
/* 804B33C4  7C C3 07 34 */	extsh r3, r6
/* 804B33C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B33CC  FC 00 00 1E */	fctiwz f0, f0
/* 804B33D0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804B33D4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804B33D8  7C 03 02 14 */	add r0, r3, r0
/* 804B33DC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804B33E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B33E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B33E8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B33EC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002007F@ha */
/* 804B33F0  38 84 00 7F */	addi r4, r4, 0x007F /* 0x0002007F@l */
/* 804B33F4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B33F8  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 804B33FC  7D 89 03 A6 */	mtctr r12
/* 804B3400  4E 80 04 21 */	bctrl 
lbl_804B3404:
/* 804B3404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B3408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B340C  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 804B3410  A8 01 00 08 */	lha r0, 8(r1)
/* 804B3414  B0 04 31 5A */	sth r0, 0x315a(r4)
/* 804B3418  A8 01 00 0A */	lha r0, 0xa(r1)
/* 804B341C  B0 04 31 5C */	sth r0, 0x315c(r4)
/* 804B3420  A8 01 00 0C */	lha r0, 0xc(r1)
/* 804B3424  B0 04 31 5E */	sth r0, 0x315e(r4)
/* 804B3428  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B342C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 804B3430  B0 03 31 60 */	sth r0, 0x3160(r3)
/* 804B3434  A8 01 00 12 */	lha r0, 0x12(r1)
/* 804B3438  B0 03 31 62 */	sth r0, 0x3162(r3)
/* 804B343C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 804B3440  B0 03 31 64 */	sth r0, 0x3164(r3)
/* 804B3444  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804B3448  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804B344C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B3450  7C 08 03 A6 */	mtlr r0
/* 804B3454  38 21 00 50 */	addi r1, r1, 0x50
/* 804B3458  4E 80 00 20 */	blr 
