lbl_809FB2CC:
/* 809FB2CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809FB2D0  7C 08 02 A6 */	mflr r0
/* 809FB2D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 809FB2D8  39 61 00 50 */	addi r11, r1, 0x50
/* 809FB2DC  4B 96 6E F4 */	b _savegpr_26
/* 809FB2E0  7C 7F 1B 78 */	mr r31, r3
/* 809FB2E4  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FB2E8  3B C3 06 00 */	addi r30, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FB2EC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809FB2F0  83 A3 00 04 */	lwz r29, 4(r3)
/* 809FB2F4  3B 60 00 00 */	li r27, 0
/* 809FB2F8  3B 40 00 00 */	li r26, 0
lbl_809FB2FC:
/* 809FB2FC  7F 9F D2 14 */	add r28, r31, r26
/* 809FB300  80 9C 11 10 */	lwz r4, 0x1110(r28)
/* 809FB304  28 04 00 00 */	cmplwi r4, 0
/* 809FB308  41 82 00 18 */	beq lbl_809FB320
/* 809FB30C  80 7C 12 80 */	lwz r3, 0x1280(r28)
/* 809FB310  30 03 FF FF */	addic r0, r3, -1
/* 809FB314  7C 00 19 10 */	subfe r0, r0, r3
/* 809FB318  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FB31C  48 00 00 08 */	b lbl_809FB324
lbl_809FB320:
/* 809FB320  38 00 00 00 */	li r0, 0
lbl_809FB324:
/* 809FB324  2C 00 00 00 */	cmpwi r0, 0
/* 809FB328  41 82 00 D0 */	beq lbl_809FB3F8
/* 809FB32C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809FB330  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809FB334  80 84 00 04 */	lwz r4, 4(r4)
/* 809FB338  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809FB33C  4B 7A 9A 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809FB340  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809FB344  80 63 00 04 */	lwz r3, 4(r3)
/* 809FB348  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809FB34C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809FB350  38 63 03 60 */	addi r3, r3, 0x360
/* 809FB354  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809FB358  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809FB35C  4B 94 B1 54 */	b PSMTXCopy
/* 809FB360  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FB364  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FB368  38 81 00 08 */	addi r4, r1, 8
/* 809FB36C  4B 94 B1 44 */	b PSMTXCopy
/* 809FB370  80 1C 11 10 */	lwz r0, 0x1110(r28)
/* 809FB374  28 00 00 00 */	cmplwi r0, 0
/* 809FB378  41 82 00 18 */	beq lbl_809FB390
/* 809FB37C  80 7C 12 80 */	lwz r3, 0x1280(r28)
/* 809FB380  30 03 FF FF */	addic r0, r3, -1
/* 809FB384  7C 00 19 10 */	subfe r0, r0, r3
/* 809FB388  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FB38C  48 00 00 08 */	b lbl_809FB394
lbl_809FB390:
/* 809FB390  38 00 00 00 */	li r0, 0
lbl_809FB394:
/* 809FB394  2C 00 00 00 */	cmpwi r0, 0
/* 809FB398  41 82 00 58 */	beq lbl_809FB3F0
/* 809FB39C  C0 1C 12 78 */	lfs f0, 0x1278(r28)
/* 809FB3A0  FC 00 02 10 */	fabs f0, f0
/* 809FB3A4  FC 20 00 18 */	frsp f1, f0
/* 809FB3A8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 809FB3AC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 809FB3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FB3B4  40 80 00 18 */	bge lbl_809FB3CC
/* 809FB3B8  38 61 00 08 */	addi r3, r1, 8
/* 809FB3BC  80 9C 11 10 */	lwz r4, 0x1110(r28)
/* 809FB3C0  38 84 00 24 */	addi r4, r4, 0x24
/* 809FB3C4  4B 94 B0 EC */	b PSMTXCopy
/* 809FB3C8  48 00 00 28 */	b lbl_809FB3F0
lbl_809FB3CC:
/* 809FB3CC  38 7C 11 20 */	addi r3, r28, 0x1120
/* 809FB3D0  4B 61 19 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809FB3D4  38 7C 11 38 */	addi r3, r28, 0x1138
/* 809FB3D8  4B 61 1B 6C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 809FB3DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FB3E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FB3E4  80 9C 11 10 */	lwz r4, 0x1110(r28)
/* 809FB3E8  38 84 00 24 */	addi r4, r4, 0x24
/* 809FB3EC  4B 94 B0 C4 */	b PSMTXCopy
lbl_809FB3F0:
/* 809FB3F0  80 7C 11 10 */	lwz r3, 0x1110(r28)
/* 809FB3F4  4B 61 28 D0 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_809FB3F8:
/* 809FB3F8  3B 7B 00 01 */	addi r27, r27, 1
/* 809FB3FC  2C 1B 00 04 */	cmpwi r27, 4
/* 809FB400  3B 5A 01 74 */	addi r26, r26, 0x174
/* 809FB404  41 80 FE F8 */	blt lbl_809FB2FC
/* 809FB408  80 1F 0E 48 */	lwz r0, 0xe48(r31)
/* 809FB40C  28 00 00 00 */	cmplwi r0, 0
/* 809FB410  41 82 00 D0 */	beq lbl_809FB4E0
/* 809FB414  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809FB418  28 00 00 01 */	cmplwi r0, 1
/* 809FB41C  41 82 00 0C */	beq lbl_809FB428
/* 809FB420  28 00 00 02 */	cmplwi r0, 2
/* 809FB424  40 82 00 BC */	bne lbl_809FB4E0
lbl_809FB428:
/* 809FB428  7F E3 FB 78 */	mr r3, r31
/* 809FB42C  3C 80 80 A0 */	lis r4, l_motionAnmData@ha
/* 809FB430  38 A4 0B 34 */	addi r5, r4, l_motionAnmData@l
/* 809FB434  80 05 01 90 */	lwz r0, 0x190(r5)
/* 809FB438  54 00 10 3A */	slwi r0, r0, 2
/* 809FB43C  3C 80 80 A0 */	lis r4, l_resNameList@ha
/* 809FB440  38 84 09 D8 */	addi r4, r4, l_resNameList@l
/* 809FB444  7C 84 00 2E */	lwzx r4, r4, r0
/* 809FB448  80 A5 01 88 */	lwz r5, 0x188(r5)
/* 809FB44C  4B 74 CC 48 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 809FB450  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 809FB454  80 04 00 08 */	lwz r0, 8(r4)
/* 809FB458  7C 03 00 40 */	cmplw r3, r0
/* 809FB45C  40 82 00 84 */	bne lbl_809FB4E0
/* 809FB460  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809FB464  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809FB468  80 9F 0E 48 */	lwz r4, 0xe48(r31)
/* 809FB46C  80 84 00 04 */	lwz r4, 4(r4)
/* 809FB470  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809FB474  4B 7A 99 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809FB478  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 809FB47C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809FB480  38 63 03 60 */	addi r3, r3, 0x360
/* 809FB484  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809FB488  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809FB48C  4B 94 B0 24 */	b PSMTXCopy
/* 809FB490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FB494  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FB498  38 80 17 2F */	li r4, 0x172f
/* 809FB49C  38 A0 10 80 */	li r5, 0x1080
/* 809FB4A0  38 C0 23 83 */	li r6, 0x2383
/* 809FB4A4  4B 61 0C C0 */	b mDoMtx_XYZrotM__FPA4_fsss
/* 809FB4A8  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 809FB4AC  C0 5E 01 80 */	lfs f2, 0x180(r30)
/* 809FB4B0  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 809FB4B4  4B 61 18 E8 */	b transM__14mDoMtx_stack_cFfff
/* 809FB4B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FB4BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FB4C0  38 81 00 08 */	addi r4, r1, 8
/* 809FB4C4  4B 94 AF EC */	b PSMTXCopy
/* 809FB4C8  38 61 00 08 */	addi r3, r1, 8
/* 809FB4CC  80 9F 0E 48 */	lwz r4, 0xe48(r31)
/* 809FB4D0  38 84 00 24 */	addi r4, r4, 0x24
/* 809FB4D4  4B 94 AF DC */	b PSMTXCopy
/* 809FB4D8  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 809FB4DC  4B 61 27 E8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_809FB4E0:
/* 809FB4E0  80 9F 0E 44 */	lwz r4, 0xe44(r31)
/* 809FB4E4  28 04 00 00 */	cmplwi r4, 0
/* 809FB4E8  41 82 00 9C */	beq lbl_809FB584
/* 809FB4EC  C0 1F 17 18 */	lfs f0, 0x1718(r31)
/* 809FB4F0  FC 00 02 10 */	fabs f0, f0
/* 809FB4F4  FC 20 00 18 */	frsp f1, f0
/* 809FB4F8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 809FB4FC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 809FB500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FB504  7C 00 00 26 */	mfcr r0
/* 809FB508  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 809FB50C  40 82 00 78 */	bne lbl_809FB584
/* 809FB510  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809FB514  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809FB518  80 84 00 04 */	lwz r4, 4(r4)
/* 809FB51C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809FB520  4B 7A 98 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809FB524  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 809FB528  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809FB52C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809FB530  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809FB534  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809FB538  4B 94 AF 78 */	b PSMTXCopy
/* 809FB53C  C0 3F 17 18 */	lfs f1, 0x1718(r31)
/* 809FB540  FC 40 08 90 */	fmr f2, f1
/* 809FB544  FC 60 08 90 */	fmr f3, f1
/* 809FB548  4B 61 18 F0 */	b scaleM__14mDoMtx_stack_cFfff
/* 809FB54C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FB550  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FB554  38 81 00 08 */	addi r4, r1, 8
/* 809FB558  4B 94 AF 58 */	b PSMTXCopy
/* 809FB55C  38 61 00 08 */	addi r3, r1, 8
/* 809FB560  80 9F 0E 44 */	lwz r4, 0xe44(r31)
/* 809FB564  38 84 00 24 */	addi r4, r4, 0x24
/* 809FB568  4B 94 AF 48 */	b PSMTXCopy
/* 809FB56C  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 809FB570  4B 61 27 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809FB574  38 7F 17 18 */	addi r3, r31, 0x1718
/* 809FB578  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 809FB57C  C0 5E 01 88 */	lfs f2, 0x188(r30)
/* 809FB580  4B 87 51 C0 */	b cLib_chaseF__FPfff
lbl_809FB584:
/* 809FB584  39 61 00 50 */	addi r11, r1, 0x50
/* 809FB588  4B 96 6C 94 */	b _restgpr_26
/* 809FB58C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809FB590  7C 08 03 A6 */	mtlr r0
/* 809FB594  38 21 00 50 */	addi r1, r1, 0x50
/* 809FB598  4E 80 00 20 */	blr 
