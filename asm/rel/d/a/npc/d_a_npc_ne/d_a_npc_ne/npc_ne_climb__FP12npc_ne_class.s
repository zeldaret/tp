lbl_80A8E428:
/* 80A8E428  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80A8E42C  7C 08 02 A6 */	mflr r0
/* 80A8E430  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A8E434  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A8E438  4B 8D 3D A1 */	bl _savegpr_28
/* 80A8E43C  7C 7E 1B 78 */	mr r30, r3
/* 80A8E440  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8E444  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8E448  3B A0 00 00 */	li r29, 0
/* 80A8E44C  38 00 00 0A */	li r0, 0xa
/* 80A8E450  B0 03 06 56 */	sth r0, 0x656(r3)
/* 80A8E454  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8E458  2C 00 00 03 */	cmpwi r0, 3
/* 80A8E45C  41 82 02 B4 */	beq lbl_80A8E710
/* 80A8E460  40 80 00 1C */	bge lbl_80A8E47C
/* 80A8E464  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E468  41 82 00 4C */	beq lbl_80A8E4B4
/* 80A8E46C  40 80 02 3C */	bge lbl_80A8E6A8
/* 80A8E470  2C 00 00 00 */	cmpwi r0, 0
/* 80A8E474  40 80 00 18 */	bge lbl_80A8E48C
/* 80A8E478  48 00 05 CC */	b lbl_80A8EA44
lbl_80A8E47C:
/* 80A8E47C  2C 00 00 05 */	cmpwi r0, 5
/* 80A8E480  41 82 05 30 */	beq lbl_80A8E9B0
/* 80A8E484  40 80 05 C0 */	bge lbl_80A8EA44
/* 80A8E488  48 00 03 90 */	b lbl_80A8E818
lbl_80A8E48C:
/* 80A8E48C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8E490  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8E494  38 80 00 11 */	li r4, 0x11
/* 80A8E498  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8E49C  38 A0 00 02 */	li r5, 2
/* 80A8E4A0  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8E4A4  4B FF A8 71 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E4A8  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E4AC  38 03 00 01 */	addi r0, r3, 1
/* 80A8E4B0  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8E4B4:
/* 80A8E4B4  3B A0 00 01 */	li r29, 1
/* 80A8E4B8  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8E4BC  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8E4C0  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8E4C4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8E4C8  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8E4CC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8E4D0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E4D4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8E4D8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8E4DC  4B 7E 15 61 */	bl cLib_addCalc2__FPffff
/* 80A8E4E0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A8E4E4  38 9E 06 E4 */	addi r4, r30, 0x6e4
/* 80A8E4E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8E4EC  4B 7D 86 49 */	bl __mi__4cXyzCFRC3Vec
/* 80A8E4F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A8E4F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8E4F8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A8E4FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8E500  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A8E504  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A8E508  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8E50C  4B 8B 8C 2D */	bl PSVECSquareMag
/* 80A8E510  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E518  40 81 00 58 */	ble lbl_80A8E570
/* 80A8E51C  FC 00 08 34 */	frsqrte f0, f1
/* 80A8E520  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8E524  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E528  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8E52C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E530  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E534  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E538  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E53C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E540  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E544  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E548  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E54C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E550  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E554  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E558  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E55C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E560  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E564  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8E568  FC 20 08 18 */	frsp f1, f1
/* 80A8E56C  48 00 00 88 */	b lbl_80A8E5F4
lbl_80A8E570:
/* 80A8E570  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8E574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E578  40 80 00 10 */	bge lbl_80A8E588
/* 80A8E57C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8E580  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8E584  48 00 00 70 */	b lbl_80A8E5F4
lbl_80A8E588:
/* 80A8E588  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A8E58C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A8E590  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8E594  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8E598  7C 03 00 00 */	cmpw r3, r0
/* 80A8E59C  41 82 00 14 */	beq lbl_80A8E5B0
/* 80A8E5A0  40 80 00 40 */	bge lbl_80A8E5E0
/* 80A8E5A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A8E5A8  41 82 00 20 */	beq lbl_80A8E5C8
/* 80A8E5AC  48 00 00 34 */	b lbl_80A8E5E0
lbl_80A8E5B0:
/* 80A8E5B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E5B4  41 82 00 0C */	beq lbl_80A8E5C0
/* 80A8E5B8  38 00 00 01 */	li r0, 1
/* 80A8E5BC  48 00 00 28 */	b lbl_80A8E5E4
lbl_80A8E5C0:
/* 80A8E5C0  38 00 00 02 */	li r0, 2
/* 80A8E5C4  48 00 00 20 */	b lbl_80A8E5E4
lbl_80A8E5C8:
/* 80A8E5C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E5CC  41 82 00 0C */	beq lbl_80A8E5D8
/* 80A8E5D0  38 00 00 05 */	li r0, 5
/* 80A8E5D4  48 00 00 10 */	b lbl_80A8E5E4
lbl_80A8E5D8:
/* 80A8E5D8  38 00 00 03 */	li r0, 3
/* 80A8E5DC  48 00 00 08 */	b lbl_80A8E5E4
lbl_80A8E5E0:
/* 80A8E5E0  38 00 00 04 */	li r0, 4
lbl_80A8E5E4:
/* 80A8E5E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E5E8  40 82 00 0C */	bne lbl_80A8E5F4
/* 80A8E5EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8E5F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A8E5F4:
/* 80A8E5F4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A8E5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E5FC  41 80 00 38 */	blt lbl_80A8E634
/* 80A8E600  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8E604  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8E608  40 82 00 2C */	bne lbl_80A8E634
/* 80A8E60C  7F C3 F3 78 */	mr r3, r30
/* 80A8E610  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80A8E614  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A8E618  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A8E61C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80A8E620  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 80A8E624  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A8E628  4B 58 E8 A9 */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 80A8E62C  2C 03 00 00 */	cmpwi r3, 0
/* 80A8E630  41 82 04 14 */	beq lbl_80A8EA44
lbl_80A8E634:
/* 80A8E634  7F C3 F3 78 */	mr r3, r30
/* 80A8E638  4B FF EF D1 */	bl wall_angle_get__FP12npc_ne_class
/* 80A8E63C  7C 7C 1B 78 */	mr r28, r3
/* 80A8E640  7F 80 07 34 */	extsh r0, r28
/* 80A8E644  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E648  41 82 00 50 */	beq lbl_80A8E698
/* 80A8E64C  7F C3 F3 78 */	mr r3, r30
/* 80A8E650  38 80 00 15 */	li r4, 0x15
/* 80A8E654  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8E658  38 A0 00 00 */	li r5, 0
/* 80A8E65C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E660  4B FF A6 B5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E664  B3 9E 04 DE */	sth r28, 0x4de(r30)
/* 80A8E668  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80A8E66C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8E670  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80A8E674  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8E678  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80A8E67C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A8E680  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E684  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A8E688  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E68C  38 03 00 01 */	addi r0, r3, 1
/* 80A8E690  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E694  48 00 03 B0 */	b lbl_80A8EA44
lbl_80A8E698:
/* 80A8E698  38 00 00 00 */	li r0, 0
/* 80A8E69C  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8E6A0  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E6A4  48 00 03 A0 */	b lbl_80A8EA44
lbl_80A8E6A8:
/* 80A8E6A8  38 00 00 02 */	li r0, 2
/* 80A8E6AC  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 80A8E6B0  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8E6B4  38 80 00 01 */	li r4, 1
/* 80A8E6B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8E6BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8E6C0  40 82 00 18 */	bne lbl_80A8E6D8
/* 80A8E6C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8E6C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8E6CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8E6D0  41 82 00 08 */	beq lbl_80A8E6D8
/* 80A8E6D4  38 80 00 00 */	li r4, 0
lbl_80A8E6D8:
/* 80A8E6D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8E6DC  41 82 03 68 */	beq lbl_80A8EA44
/* 80A8E6E0  7F C3 F3 78 */	mr r3, r30
/* 80A8E6E4  38 80 00 11 */	li r4, 0x11
/* 80A8E6E8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8E6EC  38 A0 00 02 */	li r5, 2
/* 80A8E6F0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80A8E6F4  4B FF A6 21 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E6F8  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8E6FC  38 03 00 01 */	addi r0, r3, 1
/* 80A8E700  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E704  38 00 00 32 */	li r0, 0x32
/* 80A8E708  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8E70C  48 00 03 38 */	b lbl_80A8EA44
lbl_80A8E710:
/* 80A8E710  4B FF B0 B1 */	bl climb_angle_get__FP12npc_ne_class
/* 80A8E714  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80A8E718  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8E71C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80A8E720  41 80 00 0C */	blt lbl_80A8E72C
/* 80A8E724  38 00 C8 00 */	li r0, -14336
/* 80A8E728  B0 1E 04 DC */	sth r0, 0x4dc(r30)
lbl_80A8E72C:
/* 80A8E72C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80A8E730  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E734  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E738  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E73C  4B 7E 13 01 */	bl cLib_addCalc2__FPffff
/* 80A8E740  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A8E744  2C 00 E0 00 */	cmpwi r0, -8192
/* 80A8E748  41 81 00 30 */	bgt lbl_80A8E778
/* 80A8E74C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8E750  C0 3E 06 E4 */	lfs f1, 0x6e4(r30)
/* 80A8E754  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E758  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E75C  4B 7E 12 E1 */	bl cLib_addCalc2__FPffff
/* 80A8E760  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80A8E764  C0 3E 06 EC */	lfs f1, 0x6ec(r30)
/* 80A8E768  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E76C  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E770  4B 7E 12 CD */	bl cLib_addCalc2__FPffff
/* 80A8E774  48 00 02 D0 */	b lbl_80A8EA44
lbl_80A8E778:
/* 80A8E778  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A8E77C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A8E780  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8E784  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A8E788  4B 57 DC 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A8E78C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E790  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A8E794  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8E798  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8E79C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A8E7A0  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A8E7A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8E7A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A8E7AC  38 61 00 40 */	addi r3, r1, 0x40
/* 80A8E7B0  38 81 00 34 */	addi r4, r1, 0x34
/* 80A8E7B4  4B 7E 27 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A8E7B8  38 61 00 34 */	addi r3, r1, 0x34
/* 80A8E7BC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A8E7C0  7C 65 1B 78 */	mr r5, r3
/* 80A8E7C4  4B 8B 88 CD */	bl PSVECAdd
/* 80A8E7C8  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8E7CC  4B 5E 8D B1 */	bl __ct__11dBgS_GndChkFv
/* 80A8E7D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8E7D4  38 81 00 34 */	addi r4, r1, 0x34
/* 80A8E7D8  4B 7D 95 51 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8E7DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8E7E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8E7E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A8E7E8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A8E7EC  4B 5E 5C B5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8E7F0  D0 3E 05 C8 */	stfs f1, 0x5c8(r30)
/* 80A8E7F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A8E7F8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80A8E7FC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A8E800  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80A8E804  38 00 00 04 */	li r0, 4
/* 80A8E808  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E80C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8E810  38 80 FF FF */	li r4, -1
/* 80A8E814  4B 5E 8D DD */	bl __dt__11dBgS_GndChkFv
lbl_80A8E818:
/* 80A8E818  7F C3 F3 78 */	mr r3, r30
/* 80A8E81C  4B FF AF A5 */	bl climb_angle_get__FP12npc_ne_class
/* 80A8E820  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80A8E824  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8E828  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 80A8E82C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E830  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E834  4B 7E 12 09 */	bl cLib_addCalc2__FPffff
/* 80A8E838  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80A8E83C  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E840  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E844  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E848  4B 7E 11 F5 */	bl cLib_addCalc2__FPffff
/* 80A8E84C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80A8E850  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80A8E854  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E858  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E85C  4B 7E 11 E1 */	bl cLib_addCalc2__FPffff
/* 80A8E860  38 61 00 10 */	addi r3, r1, 0x10
/* 80A8E864  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 80A8E868  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8E86C  4B 7D 82 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80A8E870  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8E874  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8E878  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8E87C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8E880  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A8E884  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A8E888  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8E88C  4B 8B 88 AD */	bl PSVECSquareMag
/* 80A8E890  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8E894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E898  40 81 00 58 */	ble lbl_80A8E8F0
/* 80A8E89C  FC 00 08 34 */	frsqrte f0, f1
/* 80A8E8A0  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8E8A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E8A8  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8E8AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E8B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E8B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E8B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E8BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E8C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E8C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E8C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E8CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E8D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8E8D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8E8D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8E8DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8E8E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8E8E4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8E8E8  FC 20 08 18 */	frsp f1, f1
/* 80A8E8EC  48 00 00 88 */	b lbl_80A8E974
lbl_80A8E8F0:
/* 80A8E8F0  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8E8F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E8F8  40 80 00 10 */	bge lbl_80A8E908
/* 80A8E8FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8E900  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8E904  48 00 00 70 */	b lbl_80A8E974
lbl_80A8E908:
/* 80A8E908  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8E90C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8E910  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8E914  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8E918  7C 03 00 00 */	cmpw r3, r0
/* 80A8E91C  41 82 00 14 */	beq lbl_80A8E930
/* 80A8E920  40 80 00 40 */	bge lbl_80A8E960
/* 80A8E924  2C 03 00 00 */	cmpwi r3, 0
/* 80A8E928  41 82 00 20 */	beq lbl_80A8E948
/* 80A8E92C  48 00 00 34 */	b lbl_80A8E960
lbl_80A8E930:
/* 80A8E930  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E934  41 82 00 0C */	beq lbl_80A8E940
/* 80A8E938  38 00 00 01 */	li r0, 1
/* 80A8E93C  48 00 00 28 */	b lbl_80A8E964
lbl_80A8E940:
/* 80A8E940  38 00 00 02 */	li r0, 2
/* 80A8E944  48 00 00 20 */	b lbl_80A8E964
lbl_80A8E948:
/* 80A8E948  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8E94C  41 82 00 0C */	beq lbl_80A8E958
/* 80A8E950  38 00 00 05 */	li r0, 5
/* 80A8E954  48 00 00 10 */	b lbl_80A8E964
lbl_80A8E958:
/* 80A8E958  38 00 00 03 */	li r0, 3
/* 80A8E95C  48 00 00 08 */	b lbl_80A8E964
lbl_80A8E960:
/* 80A8E960  38 00 00 04 */	li r0, 4
lbl_80A8E964:
/* 80A8E964  2C 00 00 01 */	cmpwi r0, 1
/* 80A8E968  40 82 00 0C */	bne lbl_80A8E974
/* 80A8E96C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8E970  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A8E974:
/* 80A8E974  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8E978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8E97C  41 80 00 10 */	blt lbl_80A8E98C
/* 80A8E980  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8E984  2C 00 00 00 */	cmpwi r0, 0
/* 80A8E988  40 82 00 BC */	bne lbl_80A8EA44
lbl_80A8E98C:
/* 80A8E98C  7F C3 F3 78 */	mr r3, r30
/* 80A8E990  38 80 00 0C */	li r4, 0xc
/* 80A8E994  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8E998  38 A0 00 00 */	li r5, 0
/* 80A8E99C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E9A0  4B FF A3 75 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8E9A4  38 00 00 05 */	li r0, 5
/* 80A8E9A8  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8E9AC  48 00 00 98 */	b lbl_80A8EA44
lbl_80A8E9B0:
/* 80A8E9B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8E9B4  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 80A8E9B8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80A8E9BC  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E9C0  4B 7E 10 7D */	bl cLib_addCalc2__FPffff
/* 80A8E9C4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80A8E9C8  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80A8E9CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8E9D0  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E9D4  4B 7E 10 69 */	bl cLib_addCalc2__FPffff
/* 80A8E9D8  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80A8E9DC  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80A8E9E0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80A8E9E4  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80A8E9E8  4B 7E 10 55 */	bl cLib_addCalc2__FPffff
/* 80A8E9EC  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8E9F0  38 80 00 01 */	li r4, 1
/* 80A8E9F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8E9F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8E9FC  40 82 00 18 */	bne lbl_80A8EA14
/* 80A8EA00  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8EA04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8EA08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8EA0C  41 82 00 08 */	beq lbl_80A8EA14
/* 80A8EA10  38 80 00 00 */	li r4, 0
lbl_80A8EA14:
/* 80A8EA14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8EA18  41 82 00 2C */	beq lbl_80A8EA44
/* 80A8EA1C  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A8EA20  28 00 00 02 */	cmplwi r0, 2
/* 80A8EA24  40 82 00 10 */	bne lbl_80A8EA34
/* 80A8EA28  38 00 00 04 */	li r0, 4
/* 80A8EA2C  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8EA30  48 00 00 0C */	b lbl_80A8EA3C
lbl_80A8EA34:
/* 80A8EA34  38 00 00 00 */	li r0, 0
/* 80A8EA38  B0 1E 06 42 */	sth r0, 0x642(r30)
lbl_80A8EA3C:
/* 80A8EA3C  38 00 00 00 */	li r0, 0
/* 80A8EA40  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8EA44:
/* 80A8EA44  2C 1D 00 00 */	cmpwi r29, 0
/* 80A8EA48  40 82 00 14 */	bne lbl_80A8EA5C
/* 80A8EA4C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8EA50  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8EA54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A8EA58  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80A8EA5C:
/* 80A8EA5C  7F A3 EB 78 */	mr r3, r29
/* 80A8EA60  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A8EA64  4B 8D 37 C1 */	bl _restgpr_28
/* 80A8EA68  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80A8EA6C  7C 08 03 A6 */	mtlr r0
/* 80A8EA70  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80A8EA74  4E 80 00 20 */	blr 
