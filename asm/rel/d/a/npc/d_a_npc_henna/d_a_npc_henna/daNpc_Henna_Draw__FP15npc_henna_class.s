lbl_80543350:
/* 80543350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80543354  7C 08 02 A6 */	mflr r0
/* 80543358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054335C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80543360  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80543364  7C 7F 1B 78 */	mr r31, r3
/* 80543368  3C 60 80 55 */	lis r3, lit_3905@ha
/* 8054336C  3B C3 A9 64 */	addi r30, r3, lit_3905@l
/* 80543370  88 1F 07 34 */	lbz r0, 0x734(r31)
/* 80543374  28 00 00 00 */	cmplwi r0, 0
/* 80543378  41 82 00 0C */	beq lbl_80543384
/* 8054337C  38 60 00 01 */	li r3, 1
/* 80543380  48 00 01 28 */	b lbl_805434A8
lbl_80543384:
/* 80543384  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80543388  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8054338C  38 80 00 00 */	li r4, 0
/* 80543390  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80543394  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80543398  4B C6 04 2C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8054339C  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 805433A0  7C 00 07 75 */	extsb. r0, r0
/* 805433A4  40 82 00 D4 */	bne lbl_80543478
/* 805433A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805433AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805433B0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 805433B4  C0 23 00 D8 */	lfs f1, 0xd8(r3)
/* 805433B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805433BC  EC 41 00 28 */	fsubs f2, f1, f0
/* 805433C0  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 805433C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805433C8  EC 61 00 28 */	fsubs f3, f1, f0
/* 805433CC  C0 23 00 E0 */	lfs f1, 0xe0(r3)
/* 805433D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805433D4  EC 81 00 28 */	fsubs f4, f1, f0
/* 805433D8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805433DC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805433E0  41 81 00 28 */	bgt lbl_80543408
/* 805433E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805433E8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805433EC  41 80 00 1C */	blt lbl_80543408
/* 805433F0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805433F4  EC 04 01 32 */	fmuls f0, f4, f4
/* 805433F8  EC 21 00 2A */	fadds f1, f1, f0
/* 805433FC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80543400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80543404  40 81 00 74 */	ble lbl_80543478
lbl_80543408:
/* 80543408  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 8054340C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80543410  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80543414  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80543418  80 9E 00 04 */	lwz r4, 4(r30)
/* 8054341C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80543420  4B C6 19 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80543424  80 9E 00 04 */	lwz r4, 4(r30)
/* 80543428  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 8054342C  54 00 10 3A */	slwi r0, r0, 2
/* 80543430  7C 7F 02 14 */	add r3, r31, r0
/* 80543434  80 63 06 28 */	lwz r3, 0x628(r3)
/* 80543438  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8054343C  38 84 00 58 */	addi r4, r4, 0x58
/* 80543440  4B AC A2 98 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80543444  80 9E 00 04 */	lwz r4, 4(r30)
/* 80543448  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 8054344C  54 00 10 3A */	slwi r0, r0, 2
/* 80543450  7C 7F 02 14 */	add r3, r31, r0
/* 80543454  80 63 06 34 */	lwz r3, 0x634(r3)
/* 80543458  38 84 00 58 */	addi r4, r4, 0x58
/* 8054345C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80543460  FC 00 00 1E */	fctiwz f0, f0
/* 80543464  D8 01 00 08 */	stfd f0, 8(r1)
/* 80543468  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8054346C  4B AC A1 7C */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80543470  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80543474  4B AC D2 0C */	b entryDL__14mDoExt_McaMorfFv
lbl_80543478:
/* 80543478  88 1F 06 93 */	lbz r0, 0x693(r31)
/* 8054347C  7C 00 07 75 */	extsb. r0, r0
/* 80543480  41 82 00 24 */	beq lbl_805434A4
/* 80543484  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80543488  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8054348C  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80543490  80 84 00 04 */	lwz r4, 4(r4)
/* 80543494  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80543498  4B C6 19 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8054349C  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 805434A0  4B AC A8 24 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805434A4:
/* 805434A4  38 60 00 01 */	li r3, 1
lbl_805434A8:
/* 805434A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805434AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805434B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805434B4  7C 08 03 A6 */	mtlr r0
/* 805434B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805434BC  4E 80 00 20 */	blr 
