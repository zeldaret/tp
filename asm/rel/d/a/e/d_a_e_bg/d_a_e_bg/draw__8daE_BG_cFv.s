lbl_80685994:
/* 80685994  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80685998  7C 08 02 A6 */	mflr r0
/* 8068599C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806859A0  39 61 00 40 */	addi r11, r1, 0x40
/* 806859A4  4B CD C8 38 */	b _savegpr_29
/* 806859A8  7C 7D 1B 78 */	mr r29, r3
/* 806859AC  3C 60 80 69 */	lis r3, lit_3768@ha
/* 806859B0  3B E3 A2 44 */	addi r31, r3, lit_3768@l
/* 806859B4  88 1D 06 AF */	lbz r0, 0x6af(r29)
/* 806859B8  28 00 00 00 */	cmplwi r0, 0
/* 806859BC  41 82 00 0C */	beq lbl_806859C8
/* 806859C0  38 60 00 01 */	li r3, 1
/* 806859C4  48 00 01 74 */	b lbl_80685B38
lbl_806859C8:
/* 806859C8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806859CC  83 C3 00 04 */	lwz r30, 4(r3)
/* 806859D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806859D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806859D8  38 80 00 00 */	li r4, 0
/* 806859DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806859E0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806859E4  4B B1 DD E0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806859E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806859EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806859F0  80 9E 00 04 */	lwz r4, 4(r30)
/* 806859F4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806859F8  4B B1 F3 A8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806859FC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80685A00  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80685A04  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80685A08  38 84 00 58 */	addi r4, r4, 0x58
/* 80685A0C  4B 98 7D 9C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80685A10  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 80685A14  2C 00 00 03 */	cmpwi r0, 3
/* 80685A18  41 82 00 0C */	beq lbl_80685A24
/* 80685A1C  2C 00 00 04 */	cmpwi r0, 4
/* 80685A20  40 82 00 B0 */	bne lbl_80685AD0
lbl_80685A24:
/* 80685A24  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80685A28  2C 00 00 00 */	cmpwi r0, 0
/* 80685A2C  41 82 00 A4 */	beq lbl_80685AD0
/* 80685A30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80685A34  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80685A38  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 80685A3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80685A40  7C 63 02 14 */	add r3, r3, r0
/* 80685A44  C0 23 00 04 */	lfs f1, 4(r3)
/* 80685A48  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80685A4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80685A50  FC 00 02 10 */	fabs f0, f0
/* 80685A54  FC 20 00 18 */	frsp f1, f0
/* 80685A58  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80685A5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80685A60  FC 00 00 1E */	fctiwz f0, f0
/* 80685A64  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80685A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80685A6C  B0 01 00 08 */	sth r0, 8(r1)
/* 80685A70  38 00 00 00 */	li r0, 0
/* 80685A74  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80685A78  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80685A7C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80685A80  80 7E 00 04 */	lwz r3, 4(r30)
/* 80685A84  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80685A88  80 63 00 00 */	lwz r3, 0(r3)
/* 80685A8C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80685A90  38 80 00 00 */	li r4, 0
/* 80685A94  38 A1 00 08 */	addi r5, r1, 8
/* 80685A98  81 83 00 00 */	lwz r12, 0(r3)
/* 80685A9C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80685AA0  7D 89 03 A6 */	mtctr r12
/* 80685AA4  4E 80 04 21 */	bctrl 
/* 80685AA8  80 7E 00 04 */	lwz r3, 4(r30)
/* 80685AAC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80685AB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80685AB4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80685AB8  38 80 00 00 */	li r4, 0
/* 80685ABC  38 A1 00 08 */	addi r5, r1, 8
/* 80685AC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80685AC4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80685AC8  7D 89 03 A6 */	mtctr r12
/* 80685ACC  4E 80 04 21 */	bctrl 
lbl_80685AD0:
/* 80685AD0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80685AD4  4B 98 B6 EC */	b entryDL__16mDoExt_McaMorfSOFv
/* 80685AD8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80685ADC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80685AE0  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80685AE4  EC 20 18 2A */	fadds f1, f0, f3
/* 80685AE8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80685AEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80685AF0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80685AF4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80685AF8  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 80685AFC  38 80 00 01 */	li r4, 1
/* 80685B00  7F C5 F3 78 */	mr r5, r30
/* 80685B04  38 C1 00 10 */	addi r6, r1, 0x10
/* 80685B08  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80685B0C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80685B10  C0 9D 07 8C */	lfs f4, 0x78c(r29)
/* 80685B14  38 FD 07 E4 */	addi r7, r29, 0x7e4
/* 80685B18  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80685B1C  39 20 00 00 */	li r9, 0
/* 80685B20  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 80685B24  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80685B28  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80685B2C  4B 9A 8D E4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80685B30  90 7D 06 78 */	stw r3, 0x678(r29)
/* 80685B34  38 60 00 01 */	li r3, 1
lbl_80685B38:
/* 80685B38  39 61 00 40 */	addi r11, r1, 0x40
/* 80685B3C  4B CD C6 EC */	b _restgpr_29
/* 80685B40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80685B44  7C 08 03 A6 */	mtlr r0
/* 80685B48  38 21 00 40 */	addi r1, r1, 0x40
/* 80685B4C  4E 80 00 20 */	blr 
