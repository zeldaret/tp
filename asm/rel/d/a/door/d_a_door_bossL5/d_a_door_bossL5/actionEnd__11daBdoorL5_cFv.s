lbl_80672004:
/* 80672004  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80672008  7C 08 02 A6 */	mflr r0
/* 8067200C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80672010  39 61 00 50 */	addi r11, r1, 0x50
/* 80672014  4B CF 01 C9 */	bl _savegpr_29
/* 80672018  7C 7F 1B 78 */	mr r31, r3
/* 8067201C  3C 60 80 67 */	lis r3, l_door_open_demo@ha /* 0x806724C8@ha */
/* 80672020  3B C3 24 C8 */	addi r30, r3, l_door_open_demo@l /* 0x806724C8@l */
/* 80672024  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80672028  4B BF 61 AD */	bl ChkUsed__9cBgW_BgIdCFv
/* 8067202C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80672030  40 82 00 1C */	bne lbl_8067204C
/* 80672034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80672038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067203C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80672040  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80672044  7F E5 FB 78 */	mr r5, r31
/* 80672048  4B A0 29 C1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_8067204C:
/* 8067204C  38 00 00 00 */	li r0, 0
/* 80672050  98 1F 05 91 */	stb r0, 0x591(r31)
/* 80672054  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80672058  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8067205C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80672060  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80672064  7C 64 02 14 */	add r3, r4, r0
/* 80672068  C0 23 00 04 */	lfs f1, 4(r3)
/* 8067206C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80672070  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80672074  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80672078  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8067207C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80672080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80672084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80672088  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8067208C  38 61 00 08 */	addi r3, r1, 8
/* 80672090  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80672094  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80672098  4B BF 4A 9D */	bl __mi__4cXyzCFRC3Vec
/* 8067209C  C0 21 00 08 */	lfs f1, 8(r1)
/* 806720A0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806720A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806720A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806720AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806720B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806720B4  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 806720B8  EC 21 01 B2 */	fmuls f1, f1, f6
/* 806720BC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 806720C0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806720C4  EC 81 00 2A */	fadds f4, f1, f0
/* 806720C8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806720CC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 806720D0  40 80 00 0C */	bge lbl_806720DC
/* 806720D4  C0 BE 00 78 */	lfs f5, 0x78(r30)
/* 806720D8  48 00 00 08 */	b lbl_806720E0
lbl_806720DC:
/* 806720DC  C0 BE 00 7C */	lfs f5, 0x7c(r30)
lbl_806720E0:
/* 806720E0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 806720E4  EC 05 00 B2 */	fmuls f0, f5, f2
/* 806720E8  EC 61 00 28 */	fsubs f3, f1, f0
/* 806720EC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806720F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806720F4  EC 05 01 B2 */	fmuls f0, f5, f6
/* 806720F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806720FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80672100  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80672104  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80672108  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8067210C  7C 06 07 74 */	extsb r6, r0
/* 80672110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80672114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80672118  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 8067211C  38 81 00 14 */	addi r4, r1, 0x14
/* 80672120  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80672124  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80672128  40 81 00 0C */	ble lbl_80672134
/* 8067212C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80672130  48 00 00 14 */	b lbl_80672144
lbl_80672134:
/* 80672134  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80672138  3C A5 00 01 */	addis r5, r5, 1
/* 8067213C  38 05 80 00 */	addi r0, r5, -32768
/* 80672140  7C 05 07 34 */	extsh r5, r0
lbl_80672144:
/* 80672144  4B 9C 2E 3D */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80672148  38 60 00 01 */	li r3, 1
/* 8067214C  39 61 00 50 */	addi r11, r1, 0x50
/* 80672150  4B CF 00 D9 */	bl _restgpr_29
/* 80672154  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80672158  7C 08 03 A6 */	mtlr r0
/* 8067215C  38 21 00 50 */	addi r1, r1, 0x50
/* 80672160  4E 80 00 20 */	blr 
