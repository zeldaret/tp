lbl_80C7F2A4:
/* 80C7F2A4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80C7F2A8  7C 08 02 A6 */	mflr r0
/* 80C7F2AC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80C7F2B0  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80C7F2B4  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80C7F2B8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80C7F2BC  4B 6E 2F 1D */	bl _savegpr_28
/* 80C7F2C0  7C 7D 1B 78 */	mr r29, r3
/* 80C7F2C4  3C 80 80 C8 */	lis r4, l_eye_offset@ha /* 0x80C81C2C@ha */
/* 80C7F2C8  3B E4 1C 2C */	addi r31, r4, l_eye_offset@l /* 0x80C81C2C@l */
/* 80C7F2CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7F2D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7F2D4  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80C7F2D8  7F C4 F3 78 */	mr r4, r30
/* 80C7F2DC  4B 39 B6 89 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C7F2E0  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C7F2E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C7F2E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C7F2EC  A8 1D 09 B8 */	lha r0, 0x9b8(r29)
/* 80C7F2F0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80C7F2F4  7C 63 02 14 */	add r3, r3, r0
/* 80C7F2F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7F2FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7F300  4B 6C 71 B1 */	bl PSMTXCopy
/* 80C7F304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7F308  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7F30C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80C7F310  D0 1D 09 E4 */	stfs f0, 0x9e4(r29)
/* 80C7F314  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80C7F318  D0 1D 09 E8 */	stfs f0, 0x9e8(r29)
/* 80C7F31C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80C7F320  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 80C7F324  38 7D 09 E4 */	addi r3, r29, 0x9e4
/* 80C7F328  4B 38 DA 3D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C7F32C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7F330  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7F334  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C7F338  A8 1D 09 C2 */	lha r0, 0x9c2(r29)
/* 80C7F33C  7C 04 02 14 */	add r0, r4, r0
/* 80C7F340  7C 04 07 34 */	extsh r4, r0
/* 80C7F344  4B 38 D0 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7F348  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C7F34C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C7F350  38 7F 00 0C */	addi r3, r31, 0xc
/* 80C7F354  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7F358  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C7F35C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7F360  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C7F364  38 61 00 7C */	addi r3, r1, 0x7c
/* 80C7F368  4B 38 DA 6D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C7F36C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80C7F370  D0 1D 09 E4 */	stfs f0, 0x9e4(r29)
/* 80C7F374  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80C7F378  D0 1D 09 E8 */	stfs f0, 0x9e8(r29)
/* 80C7F37C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80C7F380  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 80C7F384  C0 3D 0A 2C */	lfs f1, 0xa2c(r29)
/* 80C7F388  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C7F38C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C7F390  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C7F394  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80C7F398  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C7F39C  4B 38 D9 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C7F3A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7F3A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7F3A8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80C7F3AC  A8 1D 09 C2 */	lha r0, 0x9c2(r29)
/* 80C7F3B0  7C 04 02 14 */	add r0, r4, r0
/* 80C7F3B4  7C 04 07 34 */	extsh r4, r0
/* 80C7F3B8  4B 38 D0 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C7F3BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7F3C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7F3C4  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C7F3C8  38 BD 09 F8 */	addi r5, r29, 0x9f8
/* 80C7F3CC  4B 6C 79 A1 */	bl PSMTXMultVec
/* 80C7F3D0  C0 5D 09 FC */	lfs f2, 0x9fc(r29)
/* 80C7F3D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C7F3D8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C7F3DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C7F3E0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C7F3E4  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80C7F3E8  38 61 00 70 */	addi r3, r1, 0x70
/* 80C7F3EC  38 9D 09 E4 */	addi r4, r29, 0x9e4
/* 80C7F3F0  38 BD 09 F8 */	addi r5, r29, 0x9f8
/* 80C7F3F4  4B 5E 77 41 */	bl __mi__4cXyzCFRC3Vec
/* 80C7F3F8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C7F3FC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C7F400  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C7F404  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C7F408  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C7F40C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C7F410  C0 5D 0A 00 */	lfs f2, 0xa00(r29)
/* 80C7F414  C0 1D 09 F8 */	lfs f0, 0x9f8(r29)
/* 80C7F418  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7F41C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C7F420  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C7F424  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C7F428  C0 5D 09 EC */	lfs f2, 0x9ec(r29)
/* 80C7F42C  C0 1D 09 E4 */	lfs f0, 0x9e4(r29)
/* 80C7F430  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C7F434  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C7F438  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80C7F43C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C7F440  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C7F444  4B 6C 7F 59 */	bl PSVECSquareDistance
/* 80C7F448  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C7F44C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7F450  40 81 00 58 */	ble lbl_80C7F4A8
/* 80C7F454  FC 00 08 34 */	frsqrte f0, f1
/* 80C7F458  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80C7F45C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F460  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80C7F464  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F468  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F46C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F470  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F474  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F478  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F47C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F480  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F484  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F488  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F48C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F490  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F494  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F498  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F49C  FC 41 00 32 */	fmul f2, f1, f0
/* 80C7F4A0  FC 40 10 18 */	frsp f2, f2
/* 80C7F4A4  48 00 00 90 */	b lbl_80C7F534
lbl_80C7F4A8:
/* 80C7F4A8  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80C7F4AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7F4B0  40 80 00 10 */	bge lbl_80C7F4C0
/* 80C7F4B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7F4B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7F4BC  48 00 00 78 */	b lbl_80C7F534
lbl_80C7F4C0:
/* 80C7F4C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C7F4C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C7F4C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7F4CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7F4D0  7C 03 00 00 */	cmpw r3, r0
/* 80C7F4D4  41 82 00 14 */	beq lbl_80C7F4E8
/* 80C7F4D8  40 80 00 40 */	bge lbl_80C7F518
/* 80C7F4DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C7F4E0  41 82 00 20 */	beq lbl_80C7F500
/* 80C7F4E4  48 00 00 34 */	b lbl_80C7F518
lbl_80C7F4E8:
/* 80C7F4E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7F4EC  41 82 00 0C */	beq lbl_80C7F4F8
/* 80C7F4F0  38 00 00 01 */	li r0, 1
/* 80C7F4F4  48 00 00 28 */	b lbl_80C7F51C
lbl_80C7F4F8:
/* 80C7F4F8  38 00 00 02 */	li r0, 2
/* 80C7F4FC  48 00 00 20 */	b lbl_80C7F51C
lbl_80C7F500:
/* 80C7F500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7F504  41 82 00 0C */	beq lbl_80C7F510
/* 80C7F508  38 00 00 05 */	li r0, 5
/* 80C7F50C  48 00 00 10 */	b lbl_80C7F51C
lbl_80C7F510:
/* 80C7F510  38 00 00 03 */	li r0, 3
/* 80C7F514  48 00 00 08 */	b lbl_80C7F51C
lbl_80C7F518:
/* 80C7F518  38 00 00 04 */	li r0, 4
lbl_80C7F51C:
/* 80C7F51C  2C 00 00 01 */	cmpwi r0, 1
/* 80C7F520  40 82 00 10 */	bne lbl_80C7F530
/* 80C7F524  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7F528  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7F52C  48 00 00 08 */	b lbl_80C7F534
lbl_80C7F530:
/* 80C7F530  FC 40 08 90 */	fmr f2, f1
lbl_80C7F534:
/* 80C7F534  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80C7F538  4B 5E 81 3D */	bl cM_atan2s__Fff
/* 80C7F53C  B0 7D 09 F0 */	sth r3, 0x9f0(r29)
/* 80C7F540  A8 1D 09 F0 */	lha r0, 0x9f0(r29)
/* 80C7F544  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80C7F548  40 80 00 0C */	bge lbl_80C7F554
/* 80C7F54C  38 00 0E 38 */	li r0, 0xe38
/* 80C7F550  B0 1D 09 F0 */	sth r0, 0x9f0(r29)
lbl_80C7F554:
/* 80C7F554  A8 7D 09 C2 */	lha r3, 0x9c2(r29)
/* 80C7F558  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C7F55C  7C 03 02 14 */	add r0, r3, r0
/* 80C7F560  B0 1D 09 F2 */	sth r0, 0x9f2(r29)
/* 80C7F564  38 00 00 00 */	li r0, 0
/* 80C7F568  B0 1D 09 F4 */	sth r0, 0x9f4(r29)
/* 80C7F56C  38 61 00 64 */	addi r3, r1, 0x64
/* 80C7F570  38 9D 09 F8 */	addi r4, r29, 0x9f8
/* 80C7F574  38 BD 09 E4 */	addi r5, r29, 0x9e4
/* 80C7F578  4B 5E 75 BD */	bl __mi__4cXyzCFRC3Vec
/* 80C7F57C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C7F580  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C7F584  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C7F588  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C7F58C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C7F590  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C7F594  38 61 00 58 */	addi r3, r1, 0x58
/* 80C7F598  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C7F59C  4B 5E 79 AD */	bl normalizeZP__4cXyzFv
/* 80C7F5A0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80C7F5A4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C7F5A8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80C7F5AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C7F5B0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C7F5B4  FC 00 00 1E */	fctiwz f0, f0
/* 80C7F5B8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80C7F5BC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C7F5C0  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80C7F5C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C7F5C8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80C7F5CC  3C 00 43 30 */	lis r0, 0x4330
/* 80C7F5D0  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80C7F5D4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80C7F5D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7F5DC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80C7F5E0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C7F5E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C7F5E8  40 81 00 08 */	ble lbl_80C7F5F0
/* 80C7F5EC  FF E0 00 90 */	fmr f31, f0
lbl_80C7F5F0:
/* 80C7F5F0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80C7F5F4  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C7F5F8  FC 20 F8 90 */	fmr f1, f31
/* 80C7F5FC  4B 5E 75 89 */	bl __ml__4cXyzCFf
/* 80C7F600  38 61 00 40 */	addi r3, r1, 0x40
/* 80C7F604  38 9D 09 E4 */	addi r4, r29, 0x9e4
/* 80C7F608  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C7F60C  4B 5E 74 D9 */	bl __pl__4cXyzCFRC3Vec
/* 80C7F610  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C7F614  D0 1D 09 F8 */	stfs f0, 0x9f8(r29)
/* 80C7F618  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C7F61C  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80C7F620  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C7F624  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80C7F628  38 7D 09 E4 */	addi r3, r29, 0x9e4
/* 80C7F62C  38 9D 09 F8 */	addi r4, r29, 0x9f8
/* 80C7F630  7F A5 EB 78 */	mr r5, r29
/* 80C7F634  4B 39 E6 35 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C7F638  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7F63C  41 82 01 08 */	beq lbl_80C7F744
/* 80C7F640  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80C7F644  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80C7F648  38 83 00 30 */	addi r4, r3, 0x30
/* 80C7F64C  38 7D 09 E4 */	addi r3, r29, 0x9e4
/* 80C7F650  4B 6C 7D 4D */	bl PSVECSquareDistance
/* 80C7F654  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C7F658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7F65C  40 81 00 58 */	ble lbl_80C7F6B4
/* 80C7F660  FC 00 08 34 */	frsqrte f0, f1
/* 80C7F664  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80C7F668  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F66C  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80C7F670  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F674  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F678  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F67C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F680  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F684  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F688  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F68C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F690  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F694  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7F698  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7F69C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7F6A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7F6A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7F6A8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C7F6AC  FC 20 08 18 */	frsp f1, f1
/* 80C7F6B0  48 00 00 88 */	b lbl_80C7F738
lbl_80C7F6B4:
/* 80C7F6B4  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80C7F6B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7F6BC  40 80 00 10 */	bge lbl_80C7F6CC
/* 80C7F6C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7F6C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7F6C8  48 00 00 70 */	b lbl_80C7F738
lbl_80C7F6CC:
/* 80C7F6CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C7F6D0  80 81 00 08 */	lwz r4, 8(r1)
/* 80C7F6D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7F6D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7F6DC  7C 03 00 00 */	cmpw r3, r0
/* 80C7F6E0  41 82 00 14 */	beq lbl_80C7F6F4
/* 80C7F6E4  40 80 00 40 */	bge lbl_80C7F724
/* 80C7F6E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C7F6EC  41 82 00 20 */	beq lbl_80C7F70C
/* 80C7F6F0  48 00 00 34 */	b lbl_80C7F724
lbl_80C7F6F4:
/* 80C7F6F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7F6F8  41 82 00 0C */	beq lbl_80C7F704
/* 80C7F6FC  38 00 00 01 */	li r0, 1
/* 80C7F700  48 00 00 28 */	b lbl_80C7F728
lbl_80C7F704:
/* 80C7F704  38 00 00 02 */	li r0, 2
/* 80C7F708  48 00 00 20 */	b lbl_80C7F728
lbl_80C7F70C:
/* 80C7F70C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7F710  41 82 00 0C */	beq lbl_80C7F71C
/* 80C7F714  38 00 00 05 */	li r0, 5
/* 80C7F718  48 00 00 10 */	b lbl_80C7F728
lbl_80C7F71C:
/* 80C7F71C  38 00 00 03 */	li r0, 3
/* 80C7F720  48 00 00 08 */	b lbl_80C7F728
lbl_80C7F724:
/* 80C7F724  38 00 00 04 */	li r0, 4
lbl_80C7F728:
/* 80C7F728  2C 00 00 01 */	cmpwi r0, 1
/* 80C7F72C  40 82 00 0C */	bne lbl_80C7F738
/* 80C7F730  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7F734  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C7F738:
/* 80C7F738  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80C7F73C  D0 1D 0A 0C */	stfs f0, 0xa0c(r29)
/* 80C7F740  48 00 00 0C */	b lbl_80C7F74C
lbl_80C7F744:
/* 80C7F744  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C7F748  D0 1D 0A 0C */	stfs f0, 0xa0c(r29)
lbl_80C7F74C:
/* 80C7F74C  C0 3D 0A 0C */	lfs f1, 0xa0c(r29)
/* 80C7F750  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C7F754  EC 01 00 2A */	fadds f0, f1, f0
/* 80C7F758  D0 1D 0A 0C */	stfs f0, 0xa0c(r29)
/* 80C7F75C  38 61 00 34 */	addi r3, r1, 0x34
/* 80C7F760  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C7F764  C0 1D 0A 0C */	lfs f0, 0xa0c(r29)
/* 80C7F768  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C7F76C  4B 5E 74 19 */	bl __ml__4cXyzCFf
/* 80C7F770  38 61 00 28 */	addi r3, r1, 0x28
/* 80C7F774  38 9D 09 E4 */	addi r4, r29, 0x9e4
/* 80C7F778  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C7F77C  4B 5E 73 69 */	bl __pl__4cXyzCFRC3Vec
/* 80C7F780  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C7F784  D0 1D 09 F8 */	stfs f0, 0x9f8(r29)
/* 80C7F788  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C7F78C  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80C7F790  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C7F794  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80C7F798  38 7D 08 5C */	addi r3, r29, 0x85c
/* 80C7F79C  38 9D 09 E4 */	addi r4, r29, 0x9e4
/* 80C7F7A0  38 BD 09 F8 */	addi r5, r29, 0x9f8
/* 80C7F7A4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C7F7A8  4B 5E F8 59 */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80C7F7AC  38 7D 07 38 */	addi r3, r29, 0x738
/* 80C7F7B0  4B 40 50 75 */	bl CalcAtVec__8dCcD_CpsFv
/* 80C7F7B4  88 1D 0A 19 */	lbz r0, 0xa19(r29)
/* 80C7F7B8  7C 00 07 75 */	extsb. r0, r0
/* 80C7F7BC  40 81 00 C0 */	ble lbl_80C7F87C
/* 80C7F7C0  C0 1D 09 F8 */	lfs f0, 0x9f8(r29)
/* 80C7F7C4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C7F7C8  C0 1D 09 FC */	lfs f0, 0x9fc(r29)
/* 80C7F7CC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C7F7D0  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 80C7F7D4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80C7F7D8  38 7D 09 E4 */	addi r3, r29, 0x9e4
/* 80C7F7DC  38 9D 09 F8 */	addi r4, r29, 0x9f8
/* 80C7F7E0  7F A5 EB 78 */	mr r5, r29
/* 80C7F7E4  4B 39 E4 85 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C7F7E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7F7EC  41 82 00 6C */	beq lbl_80C7F858
/* 80C7F7F0  3C 60 80 C8 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C81FA4@ha */
/* 80C7F7F4  38 03 1F A4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C81FA4@l */
/* 80C7F7F8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80C7F7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7F800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7F804  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C7F808  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80C7F80C  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80C7F810  38 84 00 14 */	addi r4, r4, 0x14
/* 80C7F814  38 A1 00 AC */	addi r5, r1, 0xac
/* 80C7F818  4B 3F 4F 2D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C7F81C  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80C7F820  4B 5E 89 C5 */	bl cBgW_CheckBGround__Ff
/* 80C7F824  3C 80 80 C8 */	lis r4, __vt__8cM3dGPla@ha /* 0x80C81FA4@ha */
/* 80C7F828  38 04 1F A4 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80C81FA4@l */
/* 80C7F82C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80C7F830  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C7F834  41 82 00 24 */	beq lbl_80C7F858
/* 80C7F838  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80C7F83C  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80C7F840  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80C7F844  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C7F848  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80C7F84C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C7F850  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80C7F854  D0 01 00 90 */	stfs f0, 0x90(r1)
lbl_80C7F858:
/* 80C7F858  38 7D 0A 64 */	addi r3, r29, 0xa64
/* 80C7F85C  38 81 00 88 */	addi r4, r1, 0x88
/* 80C7F860  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C7F864  4B 5F 0F 49 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C7F868  2C 03 00 00 */	cmpwi r3, 0
/* 80C7F86C  41 82 00 30 */	beq lbl_80C7F89C
/* 80C7F870  38 00 FF FF */	li r0, -1
/* 80C7F874  98 1D 0A 19 */	stb r0, 0xa19(r29)
/* 80C7F878  48 00 00 24 */	b lbl_80C7F89C
lbl_80C7F87C:
/* 80C7F87C  38 7D 0A 64 */	addi r3, r29, 0xa64
/* 80C7F880  38 9D 09 E4 */	addi r4, r29, 0x9e4
/* 80C7F884  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C7F888  4B 5F 0F 25 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C7F88C  2C 03 00 00 */	cmpwi r3, 0
/* 80C7F890  41 82 00 0C */	beq lbl_80C7F89C
/* 80C7F894  38 00 00 01 */	li r0, 1
/* 80C7F898  98 1D 0A 19 */	stb r0, 0xa19(r29)
lbl_80C7F89C:
/* 80C7F89C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80C7F8A0  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80C7F8A4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80C7F8A8  4B 6E 29 7D */	bl _restgpr_28
/* 80C7F8AC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80C7F8B0  7C 08 03 A6 */	mtlr r0
/* 80C7F8B4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80C7F8B8  4E 80 00 20 */	blr 
