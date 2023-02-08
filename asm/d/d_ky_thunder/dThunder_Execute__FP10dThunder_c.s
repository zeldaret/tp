lbl_801AE19C:
/* 801AE19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AE1A0  7C 08 02 A6 */	mflr r0
/* 801AE1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AE1AC  93 C1 00 08 */	stw r30, 8(r1)
/* 801AE1B0  7C 7F 1B 78 */	mr r31, r3
/* 801AE1B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AE1B8  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AE1BC  88 1E 0E D5 */	lbz r0, 0xed5(r30)
/* 801AE1C0  28 00 00 0A */	cmplwi r0, 0xa
/* 801AE1C4  40 80 00 1C */	bge lbl_801AE1E0
/* 801AE1C8  38 7F 01 64 */	addi r3, r31, 0x164
/* 801AE1CC  C0 22 A4 80 */	lfs f1, lit_3923(r2)
/* 801AE1D0  C0 42 A4 84 */	lfs f2, lit_3924(r2)
/* 801AE1D4  C0 62 A4 88 */	lfs f3, lit_3925(r2)
/* 801AE1D8  C0 82 A4 8C */	lfs f4, lit_3926(r2)
/* 801AE1DC  48 0C 17 A1 */	bl cLib_addCalc__FPfffff
lbl_801AE1E0:
/* 801AE1E0  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 801AE1E4  D0 1F 01 14 */	stfs f0, 0x114(r31)
/* 801AE1E8  38 7F 01 08 */	addi r3, r31, 0x108
/* 801AE1EC  4B E5 F2 3D */	bl play__14mDoExt_baseAnmFv
/* 801AE1F0  2C 03 00 00 */	cmpwi r3, 0
/* 801AE1F4  41 82 00 20 */	beq lbl_801AE214
/* 801AE1F8  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 801AE1FC  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 801AE200  38 9F 01 44 */	addi r4, r31, 0x144
/* 801AE204  38 A0 00 00 */	li r5, 0
/* 801AE208  48 11 9C 61 */	bl startFarThunderSe__10Z2EnvSeMgrFP3VecSc
/* 801AE20C  7F E3 FB 78 */	mr r3, r31
/* 801AE210  4B E7 15 39 */	bl fopKyM_Delete__FPv
lbl_801AE214:
/* 801AE214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AE218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AE21C  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 801AE220  28 03 00 00 */	cmplwi r3, 0
/* 801AE224  41 82 00 30 */	beq lbl_801AE254
/* 801AE228  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 801AE22C  C0 02 A4 90 */	lfs f0, lit_3927(r2)
/* 801AE230  EC 61 00 24 */	fdivs f3, f1, f0
/* 801AE234  C0 02 A4 7C */	lfs f0, lit_3885(r2)
/* 801AE238  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801AE23C  4C 41 13 82 */	cror 2, 1, 2
/* 801AE240  40 82 00 08 */	bne lbl_801AE248
/* 801AE244  FC 60 00 90 */	fmr f3, f0
lbl_801AE248:
/* 801AE248  EC 03 00 F2 */	fmuls f0, f3, f3
/* 801AE24C  EC 63 00 32 */	fmuls f3, f3, f0
/* 801AE250  48 00 00 08 */	b lbl_801AE258
lbl_801AE254:
/* 801AE254  C0 62 A4 7C */	lfs f3, lit_3885(r2)
lbl_801AE258:
/* 801AE258  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 801AE25C  EC 63 00 32 */	fmuls f3, f3, f0
/* 801AE260  88 1E 0E D5 */	lbz r0, 0xed5(r30)
/* 801AE264  28 00 00 0A */	cmplwi r0, 0xa
/* 801AE268  40 80 00 78 */	bge lbl_801AE2E0
/* 801AE26C  A8 1F 01 6A */	lha r0, 0x16a(r31)
/* 801AE270  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801AE274  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801AE278  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801AE27C  7C 83 04 2E */	lfsx f4, r3, r0
/* 801AE280  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 801AE284  C0 42 A4 94 */	lfs f2, lit_3928(r2)
/* 801AE288  EC 03 00 72 */	fmuls f0, f3, f1
/* 801AE28C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801AE290  EC 00 01 32 */	fmuls f0, f0, f4
/* 801AE294  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE298  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 801AE29C  A8 1F 01 6C */	lha r0, 0x16c(r31)
/* 801AE2A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801AE2A4  7C 63 02 14 */	add r3, r3, r0
/* 801AE2A8  C0 83 00 04 */	lfs f4, 4(r3)
/* 801AE2AC  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 801AE2B0  EC 03 00 72 */	fmuls f0, f3, f1
/* 801AE2B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801AE2B8  EC 00 01 32 */	fmuls f0, f0, f4
/* 801AE2BC  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE2C0  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 801AE2C4  A8 7F 01 6A */	lha r3, 0x16a(r31)
/* 801AE2C8  38 03 9E 58 */	addi r0, r3, -25000
/* 801AE2CC  B0 1F 01 6A */	sth r0, 0x16a(r31)
/* 801AE2D0  A8 7F 01 6C */	lha r3, 0x16c(r31)
/* 801AE2D4  38 03 70 E4 */	addi r0, r3, 0x70e4
/* 801AE2D8  B0 1F 01 6C */	sth r0, 0x16c(r31)
/* 801AE2DC  48 00 00 7C */	b lbl_801AE358
lbl_801AE2E0:
/* 801AE2E0  A8 1F 01 6A */	lha r0, 0x16a(r31)
/* 801AE2E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801AE2E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 801AE2EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 801AE2F0  7C 83 04 2E */	lfsx f4, r3, r0
/* 801AE2F4  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 801AE2F8  C0 42 A4 98 */	lfs f2, lit_3929(r2)
/* 801AE2FC  EC 03 00 72 */	fmuls f0, f3, f1
/* 801AE300  EC 02 00 32 */	fmuls f0, f2, f0
/* 801AE304  EC 00 01 32 */	fmuls f0, f0, f4
/* 801AE308  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE30C  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 801AE310  A8 1F 01 6C */	lha r0, 0x16c(r31)
/* 801AE314  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801AE318  7C 63 02 14 */	add r3, r3, r0
/* 801AE31C  C0 83 00 04 */	lfs f4, 4(r3)
/* 801AE320  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 801AE324  EC 03 00 72 */	fmuls f0, f3, f1
/* 801AE328  EC 02 00 32 */	fmuls f0, f2, f0
/* 801AE32C  EC 00 01 32 */	fmuls f0, f0, f4
/* 801AE330  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE334  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 801AE338  A8 7F 01 6A */	lha r3, 0x16a(r31)
/* 801AE33C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 801AE340  38 03 77 48 */	addi r0, r3, 0x7748
/* 801AE344  B0 1F 01 6A */	sth r0, 0x16a(r31)
/* 801AE348  A8 7F 01 6C */	lha r3, 0x16c(r31)
/* 801AE34C  3C 63 00 01 */	addis r3, r3, 1
/* 801AE350  38 03 97 F4 */	addi r0, r3, -26636
/* 801AE354  B0 1F 01 6C */	sth r0, 0x16c(r31)
lbl_801AE358:
/* 801AE358  38 60 00 01 */	li r3, 1
/* 801AE35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AE360  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AE364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AE368  7C 08 03 A6 */	mtlr r0
/* 801AE36C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AE370  4E 80 00 20 */	blr 
