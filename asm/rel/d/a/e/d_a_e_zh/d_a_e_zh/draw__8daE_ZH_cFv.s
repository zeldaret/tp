lbl_8082907C:
/* 8082907C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80829080  7C 08 02 A6 */	mflr r0
/* 80829084  90 01 00 54 */	stw r0, 0x54(r1)
/* 80829088  39 61 00 50 */	addi r11, r1, 0x50
/* 8082908C  4B B3 91 45 */	bl _savegpr_26
/* 80829090  7C 7D 1B 78 */	mr r29, r3
/* 80829094  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 80829098  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082909C  88 7D 07 AB */	lbz r3, 0x7ab(r29)
/* 808290A0  28 03 00 02 */	cmplwi r3, 2
/* 808290A4  40 82 00 0C */	bne lbl_808290B0
/* 808290A8  38 60 00 01 */	li r3, 1
/* 808290AC  48 00 02 88 */	b lbl_80829334
lbl_808290B0:
/* 808290B0  88 1D 07 AE */	lbz r0, 0x7ae(r29)
/* 808290B4  28 00 00 00 */	cmplwi r0, 0
/* 808290B8  41 82 00 0C */	beq lbl_808290C4
/* 808290BC  38 60 00 01 */	li r3, 1
/* 808290C0  48 00 02 74 */	b lbl_80829334
lbl_808290C4:
/* 808290C4  28 03 00 01 */	cmplwi r3, 1
/* 808290C8  40 82 00 B8 */	bne lbl_80829180
/* 808290CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808290D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808290D4  38 80 00 08 */	li r4, 8
/* 808290D8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 808290DC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 808290E0  4B 97 A6 E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 808290E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808290E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808290EC  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 808290F0  80 84 00 04 */	lwz r4, 4(r4)
/* 808290F4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 808290F8  4B 97 BC A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 808290FC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80829100  83 C3 00 04 */	lwz r30, 4(r3)
/* 80829104  3B 60 00 00 */	li r27, 0
/* 80829108  48 00 00 48 */	b lbl_80829150
lbl_8082910C:
/* 8082910C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80829110  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80829114  7C 63 00 2E */	lwzx r3, r3, r0
/* 80829118  28 03 00 00 */	cmplwi r3, 0
/* 8082911C  41 82 00 30 */	beq lbl_8082914C
/* 80829120  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80829124  38 80 00 03 */	li r4, 3
/* 80829128  81 83 00 00 */	lwz r12, 0(r3)
/* 8082912C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80829130  7D 89 03 A6 */	mtctr r12
/* 80829134  4E 80 04 21 */	bctrl 
/* 80829138  C0 1D 07 7C */	lfs f0, 0x77c(r29)
/* 8082913C  FC 00 00 1E */	fctiwz f0, f0
/* 80829140  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80829144  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80829148  98 03 00 03 */	stb r0, 3(r3)
lbl_8082914C:
/* 8082914C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80829150:
/* 80829150  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80829154  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80829158  7C 03 00 40 */	cmplw r3, r0
/* 8082915C  41 80 FF B0 */	blt lbl_8082910C
/* 80829160  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80829164  4B 7E 4B 61 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80829168  3C 60 80 83 */	lis r3, mStartFlag@ha /* 0x8082F750@ha */
/* 8082916C  80 03 F7 50 */	lwz r0, mStartFlag@l(r3)  /* 0x8082F750@l */
/* 80829170  2C 00 00 00 */	cmpwi r0, 0
/* 80829174  40 82 00 0C */	bne lbl_80829180
/* 80829178  38 60 00 01 */	li r3, 1
/* 8082917C  48 00 01 B8 */	b lbl_80829334
lbl_80829180:
/* 80829180  80 7D 07 80 */	lwz r3, 0x780(r29)
/* 80829184  2C 03 00 02 */	cmpwi r3, 2
/* 80829188  40 82 00 10 */	bne lbl_80829198
/* 8082918C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80829190  2C 00 00 02 */	cmpwi r0, 2
/* 80829194  41 80 00 18 */	blt lbl_808291AC
lbl_80829198:
/* 80829198  2C 03 00 0B */	cmpwi r3, 0xb
/* 8082919C  40 82 00 18 */	bne lbl_808291B4
/* 808291A0  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 808291A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 808291A8  40 82 00 0C */	bne lbl_808291B4
lbl_808291AC:
/* 808291AC  38 60 00 01 */	li r3, 1
/* 808291B0  48 00 01 84 */	b lbl_80829334
lbl_808291B4:
/* 808291B4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808291B8  83 C3 00 04 */	lwz r30, 4(r3)
/* 808291BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808291C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808291C4  38 80 00 08 */	li r4, 8
/* 808291C8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 808291CC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 808291D0  4B 97 A5 F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 808291D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808291D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808291DC  80 9E 00 04 */	lwz r4, 4(r30)
/* 808291E0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 808291E4  4B 97 BB BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 808291E8  83 9E 00 04 */	lwz r28, 4(r30)
/* 808291EC  3B 40 00 00 */	li r26, 0
/* 808291F0  48 00 00 AC */	b lbl_8082929C
lbl_808291F4:
/* 808291F4  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 808291F8  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 808291FC  7F 63 00 2E */	lwzx r27, r3, r0
/* 80829200  28 1B 00 00 */	cmplwi r27, 0
/* 80829204  41 82 00 94 */	beq lbl_80829298
/* 80829208  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8082920C  38 80 00 01 */	li r4, 1
/* 80829210  81 83 00 00 */	lwz r12, 0(r3)
/* 80829214  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80829218  7D 89 03 A6 */	mtctr r12
/* 8082921C  4E 80 04 21 */	bctrl 
/* 80829220  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 80829224  FC 00 00 1E */	fctiwz f0, f0
/* 80829228  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8082922C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80829230  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80829234  B0 03 00 00 */	sth r0, 0(r3)
/* 80829238  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8082923C  38 80 00 01 */	li r4, 1
/* 80829240  81 83 00 00 */	lwz r12, 0(r3)
/* 80829244  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80829248  7D 89 03 A6 */	mtctr r12
/* 8082924C  4E 80 04 21 */	bctrl 
/* 80829250  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 80829254  FC 00 00 1E */	fctiwz f0, f0
/* 80829258  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8082925C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80829260  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80829264  B0 03 00 02 */	sth r0, 2(r3)
/* 80829268  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8082926C  38 80 00 01 */	li r4, 1
/* 80829270  81 83 00 00 */	lwz r12, 0(r3)
/* 80829274  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80829278  7D 89 03 A6 */	mtctr r12
/* 8082927C  4E 80 04 21 */	bctrl 
/* 80829280  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 80829284  FC 00 00 1E */	fctiwz f0, f0
/* 80829288  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8082928C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80829290  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80829294  B0 03 00 04 */	sth r0, 4(r3)
lbl_80829298:
/* 80829298  3B 5A 00 01 */	addi r26, r26, 1
lbl_8082929C:
/* 8082929C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 808292A0  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 808292A4  7C 03 00 40 */	cmplw r3, r0
/* 808292A8  41 80 FF 4C */	blt lbl_808291F4
/* 808292AC  80 9E 00 04 */	lwz r4, 4(r30)
/* 808292B0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 808292B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 808292B8  38 84 00 58 */	addi r4, r4, 0x58
/* 808292BC  4B 7E 44 1D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 808292C0  7F A3 EB 78 */	mr r3, r29
/* 808292C4  80 9E 00 04 */	lwz r4, 4(r30)
/* 808292C8  4B 7F 41 65 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 808292CC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808292D0  4B 7E 7E F1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 808292D4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 808292D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808292DC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 808292E0  EC 20 18 2A */	fadds f1, f0, f3
/* 808292E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808292E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 808292EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 808292F0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 808292F4  80 7D 07 88 */	lwz r3, 0x788(r29)
/* 808292F8  38 80 00 00 */	li r4, 0
/* 808292FC  7F C5 F3 78 */	mr r5, r30
/* 80829300  38 C1 00 08 */	addi r6, r1, 8
/* 80829304  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80829308  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8082930C  C0 9D 08 8C */	lfs f4, 0x88c(r29)
/* 80829310  38 FD 08 E4 */	addi r7, r29, 0x8e4
/* 80829314  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80829318  39 20 00 00 */	li r9, 0
/* 8082931C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80829320  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80829324  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80829328  4B 80 55 E9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8082932C  90 7D 07 88 */	stw r3, 0x788(r29)
/* 80829330  38 60 00 01 */	li r3, 1
lbl_80829334:
/* 80829334  39 61 00 50 */	addi r11, r1, 0x50
/* 80829338  4B B3 8E E5 */	bl _restgpr_26
/* 8082933C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80829340  7C 08 03 A6 */	mtlr r0
/* 80829344  38 21 00 50 */	addi r1, r1, 0x50
/* 80829348  4E 80 00 20 */	blr 
