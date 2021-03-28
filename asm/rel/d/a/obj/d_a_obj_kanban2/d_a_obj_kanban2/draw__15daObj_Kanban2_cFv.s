lbl_80581790:
/* 80581790  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80581794  7C 08 02 A6 */	mflr r0
/* 80581798  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058179C  39 61 00 30 */	addi r11, r1, 0x30
/* 805817A0  4B DE 0A 30 */	b _savegpr_26
/* 805817A4  7C 7F 1B 78 */	mr r31, r3
/* 805817A8  3C 60 80 58 */	lis r3, lit_3970@ha
/* 805817AC  3B 83 56 20 */	addi r28, r3, lit_3970@l
/* 805817B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805817B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805817B8  38 80 00 10 */	li r4, 0x10
/* 805817BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805817C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805817C4  4B C2 20 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805817C8  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 805817CC  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 805817D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 805817D4  40 82 00 98 */	bne lbl_8058186C
/* 805817D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805817DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805817E0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 805817E4  80 84 00 04 */	lwz r4, 4(r4)
/* 805817E8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805817EC  4B C2 35 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805817F0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805817F4  4B A8 C4 D0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805817F8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805817FC  38 03 00 24 */	addi r0, r3, 0x24
/* 80581800  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80581804  80 7F 05 04 */	lwz r3, 0x504(r31)
/* 80581808  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8058180C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80581810  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80581814  EC 21 00 28 */	fsubs f1, f1, f0
/* 80581818  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8058181C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80581820  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80581824  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80581828  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8058182C  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80581830  38 80 00 01 */	li r4, 1
/* 80581834  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 80581838  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8058183C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80581840  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 80581844  FC 80 18 90 */	fmr f4, f3
/* 80581848  38 FF 07 60 */	addi r7, r31, 0x760
/* 8058184C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80581850  39 20 00 00 */	li r9, 0
/* 80581854  C0 BC 00 00 */	lfs f5, 0(r28)
/* 80581858  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8058185C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80581860  4B AA D0 B0 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80581864  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80581868  48 00 00 58 */	b lbl_805818C0
lbl_8058186C:
/* 8058186C  3B 40 00 00 */	li r26, 0
/* 80581870  3B C0 00 00 */	li r30, 0
/* 80581874  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80581878  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 8058187C  3B 80 00 01 */	li r28, 1
lbl_80581880:
/* 80581880  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80581884  7F 80 D0 30 */	slw r0, r28, r26
/* 80581888  7C 60 00 39 */	and. r0, r3, r0
/* 8058188C  41 82 00 24 */	beq lbl_805818B0
/* 80581890  7F A3 EB 78 */	mr r3, r29
/* 80581894  3B 7E 05 74 */	addi r27, r30, 0x574
/* 80581898  7C 9F D8 2E */	lwzx r4, r31, r27
/* 8058189C  80 84 00 04 */	lwz r4, 4(r4)
/* 805818A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805818A4  4B C2 34 FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805818A8  7C 7F D8 2E */	lwzx r3, r31, r27
/* 805818AC  4B A8 C4 18 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805818B0:
/* 805818B0  3B 5A 00 01 */	addi r26, r26, 1
/* 805818B4  2C 1A 00 12 */	cmpwi r26, 0x12
/* 805818B8  3B DE 00 04 */	addi r30, r30, 4
/* 805818BC  41 80 FF C4 */	blt lbl_80581880
lbl_805818C0:
/* 805818C0  38 60 00 01 */	li r3, 1
/* 805818C4  39 61 00 30 */	addi r11, r1, 0x30
/* 805818C8  4B DE 09 54 */	b _restgpr_26
/* 805818CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805818D0  7C 08 03 A6 */	mtlr r0
/* 805818D4  38 21 00 30 */	addi r1, r1, 0x30
/* 805818D8  4E 80 00 20 */	blr 
