lbl_80BEB1B4:
/* 80BEB1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB1B8  7C 08 02 A6 */	mflr r0
/* 80BEB1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEB1C4  7C 7F 1B 78 */	mr r31, r3
/* 80BEB1C8  A0 03 09 7A */	lhz r0, 0x97a(r3)
/* 80BEB1CC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEB1D0  28 00 00 01 */	cmplwi r0, 1
/* 80BEB1D4  40 82 00 8C */	bne lbl_80BEB260
/* 80BEB1D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BEB1DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BEB1E0  38 80 00 00 */	li r4, 0
/* 80BEB1E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BEB1E8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BEB1EC  4B 5B 85 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BEB1F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BEB1F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BEB1F8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BEB1FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BEB200  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BEB204  4B 5B 9B 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BEB208  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BEB20C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BEB210  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80BEB214  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BEB218  38 84 00 58 */	addi r4, r4, 0x58
/* 80BEB21C  4B 42 24 BC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BEB220  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BEB224  80 83 00 04 */	lwz r4, 4(r3)
/* 80BEB228  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BEB22C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BEB230  4B 42 27 9C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BEB234  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BEB238  4B 42 2A 8C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BEB23C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BEB240  80 63 00 04 */	lwz r3, 4(r3)
/* 80BEB244  4B 42 2B AC */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80BEB248  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BEB24C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BEB250  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BEB254  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEB258  38 00 00 00 */	li r0, 0
/* 80BEB25C  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80BEB260:
/* 80BEB260  38 60 00 01 */	li r3, 1
/* 80BEB264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEB268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB26C  7C 08 03 A6 */	mtlr r0
/* 80BEB270  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB274  4E 80 00 20 */	blr 
