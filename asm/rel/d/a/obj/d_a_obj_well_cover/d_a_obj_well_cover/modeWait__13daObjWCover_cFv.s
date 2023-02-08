lbl_80D365B8:
/* 80D365B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D365BC  7C 08 02 A6 */	mflr r0
/* 80D365C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D365C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D365C8  4B 62 BC 15 */	bl _savegpr_29
/* 80D365CC  7C 7F 1B 78 */	mr r31, r3
/* 80D365D0  3C 60 80 D3 */	lis r3, lit_3794@ha /* 0x80D36A0C@ha */
/* 80D365D4  3B C3 6A 0C */	addi r30, r3, lit_3794@l /* 0x80D36A0C@l */
/* 80D365D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D365DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D365E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D365E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D365E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D365EC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D365F0  4B 2D 67 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D365F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D365F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D365FC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D36600  4B 2D 5E 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D36604  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D36608  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3660C  38 81 00 24 */	addi r4, r1, 0x24
/* 80D36610  7C 85 23 78 */	mr r5, r4
/* 80D36614  4B 61 07 59 */	bl PSMTXMultVec
/* 80D36618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3661C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D36620  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80D36624  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80D36628  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D3662C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D36630  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80D36634  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D36638  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D3663C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D36640  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D36644  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D36648  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D3664C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D36650  38 61 00 0C */	addi r3, r1, 0xc
/* 80D36654  38 81 00 18 */	addi r4, r1, 0x18
/* 80D36658  4B 61 0D 45 */	bl PSVECSquareDistance
/* 80D3665C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D36660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D36664  40 81 00 58 */	ble lbl_80D366BC
/* 80D36668  FC 00 08 34 */	frsqrte f0, f1
/* 80D3666C  C8 9E 00 08 */	lfd f4, 8(r30)
/* 80D36670  FC 44 00 32 */	fmul f2, f4, f0
/* 80D36674  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 80D36678  FC 00 00 32 */	fmul f0, f0, f0
/* 80D3667C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D36680  FC 03 00 28 */	fsub f0, f3, f0
/* 80D36684  FC 02 00 32 */	fmul f0, f2, f0
/* 80D36688  FC 44 00 32 */	fmul f2, f4, f0
/* 80D3668C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D36690  FC 01 00 32 */	fmul f0, f1, f0
/* 80D36694  FC 03 00 28 */	fsub f0, f3, f0
/* 80D36698  FC 02 00 32 */	fmul f0, f2, f0
/* 80D3669C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D366A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D366A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D366A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D366AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D366B0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D366B4  FC 20 08 18 */	frsp f1, f1
/* 80D366B8  48 00 00 88 */	b lbl_80D36740
lbl_80D366BC:
/* 80D366BC  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 80D366C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D366C4  40 80 00 10 */	bge lbl_80D366D4
/* 80D366C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D366CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D366D0  48 00 00 70 */	b lbl_80D36740
lbl_80D366D4:
/* 80D366D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D366D8  80 81 00 08 */	lwz r4, 8(r1)
/* 80D366DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D366E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D366E4  7C 03 00 00 */	cmpw r3, r0
/* 80D366E8  41 82 00 14 */	beq lbl_80D366FC
/* 80D366EC  40 80 00 40 */	bge lbl_80D3672C
/* 80D366F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D366F4  41 82 00 20 */	beq lbl_80D36714
/* 80D366F8  48 00 00 34 */	b lbl_80D3672C
lbl_80D366FC:
/* 80D366FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D36700  41 82 00 0C */	beq lbl_80D3670C
/* 80D36704  38 00 00 01 */	li r0, 1
/* 80D36708  48 00 00 28 */	b lbl_80D36730
lbl_80D3670C:
/* 80D3670C  38 00 00 02 */	li r0, 2
/* 80D36710  48 00 00 20 */	b lbl_80D36730
lbl_80D36714:
/* 80D36714  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D36718  41 82 00 0C */	beq lbl_80D36724
/* 80D3671C  38 00 00 05 */	li r0, 5
/* 80D36720  48 00 00 10 */	b lbl_80D36730
lbl_80D36724:
/* 80D36724  38 00 00 03 */	li r0, 3
/* 80D36728  48 00 00 08 */	b lbl_80D36730
lbl_80D3672C:
/* 80D3672C  38 00 00 04 */	li r0, 4
lbl_80D36730:
/* 80D36730  2C 00 00 01 */	cmpwi r0, 1
/* 80D36734  40 82 00 0C */	bne lbl_80D36740
/* 80D36738  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D3673C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D36740:
/* 80D36740  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80D36744  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D36748  EC 42 00 28 */	fsubs f2, f2, f0
/* 80D3674C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D36750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D36754  40 80 00 24 */	bge lbl_80D36778
/* 80D36758  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D3675C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D36760  40 81 00 18 */	ble lbl_80D36778
/* 80D36764  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D36768  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D3676C  40 80 00 0C */	bge lbl_80D36778
/* 80D36770  7F E3 FB 78 */	mr r3, r31
/* 80D36774  48 00 00 1D */	bl init_modeBreak__13daObjWCover_cFv
lbl_80D36778:
/* 80D36778  39 61 00 40 */	addi r11, r1, 0x40
/* 80D3677C  4B 62 BA AD */	bl _restgpr_29
/* 80D36780  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D36784  7C 08 03 A6 */	mtlr r0
/* 80D36788  38 21 00 40 */	addi r1, r1, 0x40
/* 80D3678C  4E 80 00 20 */	blr 
