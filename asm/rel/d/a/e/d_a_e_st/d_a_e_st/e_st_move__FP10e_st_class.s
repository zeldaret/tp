lbl_8079F4D8:
/* 8079F4D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079F4DC  7C 08 02 A6 */	mflr r0
/* 8079F4E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079F4E4  39 61 00 40 */	addi r11, r1, 0x40
/* 8079F4E8  4B BC 2C F5 */	bl _savegpr_29
/* 8079F4EC  7C 7D 1B 78 */	mr r29, r3
/* 8079F4F0  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 8079F4F4  3B E4 68 24 */	addi r31, r4, lit_3903@l /* 0x807A6824@l */
/* 8079F4F8  3B C0 00 00 */	li r30, 0
/* 8079F4FC  A8 03 06 80 */	lha r0, 0x680(r3)
/* 8079F500  2C 00 00 01 */	cmpwi r0, 1
/* 8079F504  41 82 00 58 */	beq lbl_8079F55C
/* 8079F508  40 80 00 80 */	bge lbl_8079F588
/* 8079F50C  2C 00 00 00 */	cmpwi r0, 0
/* 8079F510  40 80 00 08 */	bge lbl_8079F518
/* 8079F514  48 00 00 74 */	b lbl_8079F588
lbl_8079F518:
/* 8079F518  38 80 00 1F */	li r4, 0x1f
/* 8079F51C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8079F520  38 A0 00 02 */	li r5, 2
/* 8079F524  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F528  4B FF E9 25 */	bl anm_init__FP10e_st_classifUcf
/* 8079F52C  38 00 00 01 */	li r0, 1
/* 8079F530  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079F534  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8079F538  4B AC 84 1D */	bl cM_rndF__Ff
/* 8079F53C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8079F540  EC 00 08 2A */	fadds f0, f0, f1
/* 8079F544  FC 00 00 1E */	fctiwz f0, f0
/* 8079F548  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8079F54C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8079F550  B0 1D 06 82 */	sth r0, 0x682(r29)
/* 8079F554  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8079F558  D0 1D 06 B4 */	stfs f0, 0x6b4(r29)
lbl_8079F55C:
/* 8079F55C  7F A3 EB 78 */	mr r3, r29
/* 8079F560  4B FF F5 49 */	bl move_bg_check__FP10e_st_class
/* 8079F564  2C 03 00 00 */	cmpwi r3, 0
/* 8079F568  41 82 00 10 */	beq lbl_8079F578
/* 8079F56C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079F570  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8079F574  3B C0 00 01 */	li r30, 1
lbl_8079F578:
/* 8079F578  A8 1D 06 82 */	lha r0, 0x682(r29)
/* 8079F57C  2C 00 00 00 */	cmpwi r0, 0
/* 8079F580  40 82 00 08 */	bne lbl_8079F588
/* 8079F584  3B C0 00 01 */	li r30, 1
lbl_8079F588:
/* 8079F588  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8079F58C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8079F590  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079F594  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8079F598  4B AD 04 A5 */	bl cLib_addCalc2__FPffff
/* 8079F59C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8079F5A0  A8 9D 05 C8 */	lha r4, 0x5c8(r29)
/* 8079F5A4  38 A0 00 08 */	li r5, 8
/* 8079F5A8  38 C0 01 00 */	li r6, 0x100
/* 8079F5AC  4B AD 10 5D */	bl cLib_addCalcAngleS2__FPssss
/* 8079F5B0  7F C0 07 75 */	extsb. r0, r30
/* 8079F5B4  41 82 00 14 */	beq lbl_8079F5C8
/* 8079F5B8  38 00 00 00 */	li r0, 0
/* 8079F5BC  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079F5C0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079F5C4  48 00 00 38 */	b lbl_8079F5FC
lbl_8079F5C8:
/* 8079F5C8  7F A3 EB 78 */	mr r3, r29
/* 8079F5CC  3C 80 80 7A */	lis r4, l_HIO@ha /* 0x807A6DF4@ha */
/* 8079F5D0  38 84 6D F4 */	addi r4, r4, l_HIO@l /* 0x807A6DF4@l */
/* 8079F5D4  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8079F5D8  4B FF EF 79 */	bl pl_check__FP10e_st_classf
/* 8079F5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8079F5E0  41 82 00 1C */	beq lbl_8079F5FC
/* 8079F5E4  38 00 00 02 */	li r0, 2
/* 8079F5E8  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079F5EC  38 00 00 01 */	li r0, 1
/* 8079F5F0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079F5F4  38 00 00 00 */	li r0, 0
/* 8079F5F8  B0 1D 06 82 */	sth r0, 0x682(r29)
lbl_8079F5FC:
/* 8079F5FC  7F A3 EB 78 */	mr r3, r29
/* 8079F600  4B FF FB 2D */	bl move_calc__FP10e_st_class
/* 8079F604  C0 3D 07 E0 */	lfs f1, 0x7e0(r29)
/* 8079F608  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8079F60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079F610  40 81 00 78 */	ble lbl_8079F688
/* 8079F614  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079F618  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8079F61C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079F620  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8079F624  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079F628  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079F62C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079F630  A8 9D 07 DE */	lha r4, 0x7de(r29)
/* 8079F634  4B 86 CD A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079F638  38 61 00 14 */	addi r3, r1, 0x14
/* 8079F63C  38 81 00 08 */	addi r4, r1, 8
/* 8079F640  4B AD 18 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079F644  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8079F648  38 81 00 08 */	addi r4, r1, 8
/* 8079F64C  7C 65 1B 78 */	mr r5, r3
/* 8079F650  4B BA 7A 41 */	bl PSVECAdd
/* 8079F654  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8079F658  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 8079F65C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8079F660  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 8079F664  38 7D 07 E0 */	addi r3, r29, 0x7e0
/* 8079F668  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079F66C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8079F670  4B AD 04 11 */	bl cLib_addCalc0__FPfff
/* 8079F674  38 7D 08 40 */	addi r3, r29, 0x840
/* 8079F678  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079F67C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079F680  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8079F684  4B 8D 74 29 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_8079F688:
/* 8079F688  39 61 00 40 */	addi r11, r1, 0x40
/* 8079F68C  4B BC 2B 9D */	bl _restgpr_29
/* 8079F690  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079F694  7C 08 03 A6 */	mtlr r0
/* 8079F698  38 21 00 40 */	addi r1, r1, 0x40
/* 8079F69C  4E 80 00 20 */	blr 
