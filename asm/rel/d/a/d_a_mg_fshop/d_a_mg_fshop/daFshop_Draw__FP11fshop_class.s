lbl_8086C310:
/* 8086C310  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8086C314  7C 08 02 A6 */	mflr r0
/* 8086C318  90 01 00 54 */	stw r0, 0x54(r1)
/* 8086C31C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8086C320  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8086C324  39 61 00 40 */	addi r11, r1, 0x40
/* 8086C328  4B AF 5E 8C */	b _savegpr_19
/* 8086C32C  7C 7A 1B 78 */	mr r26, r3
/* 8086C330  3C 60 80 87 */	lis r3, lit_3829@ha
/* 8086C334  3B E3 00 94 */	addi r31, r3, lit_3829@l
/* 8086C338  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C33C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C340  38 80 00 10 */	li r4, 0x10
/* 8086C344  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 8086C348  38 DA 01 0C */	addi r6, r26, 0x10c
/* 8086C34C  4B 93 74 78 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8086C350  80 9A 40 70 */	lwz r4, 0x4070(r26)
/* 8086C354  28 04 00 00 */	cmplwi r4, 0
/* 8086C358  41 82 00 84 */	beq lbl_8086C3DC
/* 8086C35C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C360  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C364  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C368  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C36C  4B 93 8A 34 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C370  80 7A 40 70 */	lwz r3, 0x4070(r26)
/* 8086C374  80 63 00 04 */	lwz r3, 4(r3)
/* 8086C378  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8086C37C  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C380  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8086C384  38 80 00 01 */	li r4, 1
/* 8086C388  81 83 00 00 */	lwz r12, 0(r3)
/* 8086C38C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8086C390  7D 89 03 A6 */	mtctr r12
/* 8086C394  4E 80 04 21 */	bctrl 
/* 8086C398  38 00 00 00 */	li r0, 0
/* 8086C39C  98 03 00 00 */	stb r0, 0(r3)
/* 8086C3A0  80 7A 40 70 */	lwz r3, 0x4070(r26)
/* 8086C3A4  4B 7A 19 20 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C3A8  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8086C3AC  C0 3A 41 4C */	lfs f1, 0x414c(r26)
/* 8086C3B0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8086C3B4  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 8086C3B8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8086C3BC  38 9A 41 A4 */	addi r4, r26, 0x41a4
/* 8086C3C0  38 A0 00 00 */	li r5, 0
/* 8086C3C4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8086C3C8  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8086C3CC  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8086C3D0  4B 7C 0C E4 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 8086C3D4  38 60 00 01 */	li r3, 1
/* 8086C3D8  48 00 02 EC */	b lbl_8086C6C4
lbl_8086C3DC:
/* 8086C3DC  88 1A 40 0E */	lbz r0, 0x400e(r26)
/* 8086C3E0  28 00 00 00 */	cmplwi r0, 0
/* 8086C3E4  41 82 00 28 */	beq lbl_8086C40C
/* 8086C3E8  88 1A 40 0D */	lbz r0, 0x400d(r26)
/* 8086C3EC  28 00 00 00 */	cmplwi r0, 0
/* 8086C3F0  40 82 00 14 */	bne lbl_8086C404
/* 8086C3F4  7F 43 D3 78 */	mr r3, r26
/* 8086C3F8  4B FF FE 1D */	bl koro2_draw__FP11fshop_class
/* 8086C3FC  38 00 00 01 */	li r0, 1
/* 8086C400  98 1A 40 0D */	stb r0, 0x400d(r26)
lbl_8086C404:
/* 8086C404  38 60 00 01 */	li r3, 1
/* 8086C408  48 00 02 BC */	b lbl_8086C6C4
lbl_8086C40C:
/* 8086C40C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8086C410  7C 00 07 74 */	extsb r0, r0
/* 8086C414  7C 1C 03 78 */	mr r28, r0
/* 8086C418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8086C41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8086C420  82 83 5D 74 */	lwz r20, 0x5d74(r3)
/* 8086C424  3B 20 00 00 */	li r25, 0
/* 8086C428  3A E0 00 00 */	li r23, 0
/* 8086C42C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8086C430  C3 FF 00 14 */	lfs f31, 0x14(r31)
lbl_8086C434:
/* 8086C434  7E DA BA 14 */	add r22, r26, r23
/* 8086C438  C0 36 05 74 */	lfs f1, 0x574(r22)
/* 8086C43C  C0 14 00 D8 */	lfs f0, 0xd8(r20)
/* 8086C440  EC 41 00 28 */	fsubs f2, f1, f0
/* 8086C444  C0 36 05 7C */	lfs f1, 0x57c(r22)
/* 8086C448  C0 14 00 E0 */	lfs f0, 0xe0(r20)
/* 8086C44C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086C450  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8086C454  EC 00 00 32 */	fmuls f0, f0, f0
/* 8086C458  EC 01 00 2A */	fadds f0, f1, f0
/* 8086C45C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8086C460  40 81 00 60 */	ble lbl_8086C4C0
/* 8086C464  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C468  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C46C  80 96 05 88 */	lwz r4, 0x588(r22)
/* 8086C470  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C474  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C478  4B 93 89 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C47C  80 76 05 88 */	lwz r3, 0x588(r22)
/* 8086C480  4B 7A 18 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C484  80 16 05 98 */	lwz r0, 0x598(r22)
/* 8086C488  2C 00 00 03 */	cmpwi r0, 3
/* 8086C48C  41 82 00 34 */	beq lbl_8086C4C0
/* 8086C490  3B 60 00 00 */	li r27, 0
/* 8086C494  3B 00 00 00 */	li r24, 0
/* 8086C498  7F D5 F3 78 */	mr r21, r30
lbl_8086C49C:
/* 8086C49C  7E A3 AB 78 */	mr r3, r21
/* 8086C4A0  38 18 05 8C */	addi r0, r24, 0x58c
/* 8086C4A4  7C 96 00 2E */	lwzx r4, r22, r0
/* 8086C4A8  7F 85 E3 78 */	mr r5, r28
/* 8086C4AC  4B 7C 06 BC */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 8086C4B0  3B 7B 00 01 */	addi r27, r27, 1
/* 8086C4B4  2C 1B 00 02 */	cmpwi r27, 2
/* 8086C4B8  3B 18 00 04 */	addi r24, r24, 4
/* 8086C4BC  41 80 FF E0 */	blt lbl_8086C49C
lbl_8086C4C0:
/* 8086C4C0  3B 39 00 01 */	addi r25, r25, 1
/* 8086C4C4  2C 19 00 30 */	cmpwi r25, 0x30
/* 8086C4C8  3A F7 00 40 */	addi r23, r23, 0x40
/* 8086C4CC  41 80 FF 68 */	blt lbl_8086C434
/* 8086C4D0  3B 60 00 00 */	li r27, 0
/* 8086C4D4  3B 20 00 00 */	li r25, 0
/* 8086C4D8  3B 00 00 00 */	li r24, 0
/* 8086C4DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8086C4E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8086C4E4  3B A3 5F 64 */	addi r29, r3, 0x5f64
/* 8086C4E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C4EC  3A A3 CA 54 */	addi r21, r3, g_env_light@l
/* 8086C4F0  3C 60 80 87 */	lis r3, rod_color@ha
/* 8086C4F4  3A C3 07 1C */	addi r22, r3, rod_color@l
lbl_8086C4F8:
/* 8086C4F8  7E A3 AB 78 */	mr r3, r21
/* 8086C4FC  7E 9A C2 14 */	add r20, r26, r24
/* 8086C500  80 94 11 88 */	lwz r4, 0x1188(r20)
/* 8086C504  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C508  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C50C  4B 93 88 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C510  80 74 11 88 */	lwz r3, 0x1188(r20)
/* 8086C514  4B 7A 17 B0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C518  3A F4 11 A4 */	addi r23, r20, 0x11a4
/* 8086C51C  7E E3 BB 78 */	mr r3, r23
/* 8086C520  38 80 00 08 */	li r4, 8
/* 8086C524  7C B6 CA 14 */	add r5, r22, r25
/* 8086C528  38 DA 01 0C */	addi r6, r26, 0x10c
/* 8086C52C  4B 7A 69 10 */	b update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8086C530  7E E3 BB 78 */	mr r3, r23
/* 8086C534  81 97 00 00 */	lwz r12, 0(r23)
/* 8086C538  81 8C 00 08 */	lwz r12, 8(r12)
/* 8086C53C  7D 89 03 A6 */	mtctr r12
/* 8086C540  4E 80 04 21 */	bctrl 
/* 8086C544  1C 63 00 14 */	mulli r3, r3, 0x14
/* 8086C548  3C 63 00 01 */	addis r3, r3, 1
/* 8086C54C  38 63 61 54 */	addi r3, r3, 0x6154
/* 8086C550  7C 7D 1A 14 */	add r3, r29, r3
/* 8086C554  7E E4 BB 78 */	mr r4, r23
/* 8086C558  4B 7A 81 E0 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8086C55C  3A 60 00 00 */	li r19, 0
/* 8086C560  3A E0 00 00 */	li r23, 0
lbl_8086C564:
/* 8086C564  7F C3 F3 78 */	mr r3, r30
/* 8086C568  38 17 11 8C */	addi r0, r23, 0x118c
/* 8086C56C  7C 94 00 2E */	lwzx r4, r20, r0
/* 8086C570  7F 85 E3 78 */	mr r5, r28
/* 8086C574  4B 7C 05 F4 */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 8086C578  3A 73 00 01 */	addi r19, r19, 1
/* 8086C57C  2C 13 00 06 */	cmpwi r19, 6
/* 8086C580  3A F7 00 04 */	addi r23, r23, 4
/* 8086C584  41 80 FF E0 */	blt lbl_8086C564
/* 8086C588  3B 7B 00 01 */	addi r27, r27, 1
/* 8086C58C  2C 1B 00 03 */	cmpwi r27, 3
/* 8086C590  3B 39 00 04 */	addi r25, r25, 4
/* 8086C594  3B 18 00 5C */	addi r24, r24, 0x5c
/* 8086C598  41 80 FF 60 */	blt lbl_8086C4F8
/* 8086C59C  3A 60 00 00 */	li r19, 0
/* 8086C5A0  3B 60 00 00 */	li r27, 0
/* 8086C5A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C5A8  3A E3 CA 54 */	addi r23, r3, g_env_light@l
lbl_8086C5AC:
/* 8086C5AC  7E E3 BB 78 */	mr r3, r23
/* 8086C5B0  3A 9B 3F B8 */	addi r20, r27, 0x3fb8
/* 8086C5B4  7C 9A A0 2E */	lwzx r4, r26, r20
/* 8086C5B8  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C5BC  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C5C0  4B 93 87 E0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C5C4  7C 7A A0 2E */	lwzx r3, r26, r20
/* 8086C5C8  4B 7A 16 FC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C5CC  3A 73 00 01 */	addi r19, r19, 1
/* 8086C5D0  2C 13 00 02 */	cmpwi r19, 2
/* 8086C5D4  3B 7B 00 28 */	addi r27, r27, 0x28
/* 8086C5D8  41 80 FF D4 */	blt lbl_8086C5AC
/* 8086C5DC  38 7A 3F 88 */	addi r3, r26, 0x3f88
/* 8086C5E0  38 80 00 0F */	li r4, 0xf
/* 8086C5E4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8086C5E8  3C A0 80 87 */	lis r5, l_color@ha
/* 8086C5EC  38 A5 07 28 */	addi r5, r5, l_color@l
/* 8086C5F0  38 C0 00 02 */	li r6, 2
/* 8086C5F4  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8086C5F8  4B 7A 62 7C */	b update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c
/* 8086C5FC  38 7A 3F 88 */	addi r3, r26, 0x3f88
/* 8086C600  81 9A 3F 88 */	lwz r12, 0x3f88(r26)
/* 8086C604  81 8C 00 08 */	lwz r12, 8(r12)
/* 8086C608  7D 89 03 A6 */	mtctr r12
/* 8086C60C  4E 80 04 21 */	bctrl 
/* 8086C610  1C 63 00 14 */	mulli r3, r3, 0x14
/* 8086C614  3C 63 00 01 */	addis r3, r3, 1
/* 8086C618  38 63 61 54 */	addi r3, r3, 0x6154
/* 8086C61C  7C 7D 1A 14 */	add r3, r29, r3
/* 8086C620  38 9A 3F 88 */	addi r4, r26, 0x3f88
/* 8086C624  4B 7A 81 14 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8086C628  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C62C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C630  80 9A 6B 30 */	lwz r4, 0x6b30(r26)
/* 8086C634  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C638  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C63C  4B 93 87 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C640  80 7A 6B 30 */	lwz r3, 0x6b30(r26)
/* 8086C644  4B 7A 16 80 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C648  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C64C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C650  80 9A 3F F4 */	lwz r4, 0x3ff4(r26)
/* 8086C654  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C658  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C65C  4B 93 87 44 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C660  80 7A 3F F4 */	lwz r3, 0x3ff4(r26)
/* 8086C664  4B 7A 16 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C668  80 1A 40 04 */	lwz r0, 0x4004(r26)
/* 8086C66C  28 00 00 00 */	cmplwi r0, 0
/* 8086C670  41 82 00 50 */	beq lbl_8086C6C0
/* 8086C674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086C678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086C67C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8086C680  FC 40 08 90 */	fmr f2, f1
/* 8086C684  FC 60 08 90 */	fmr f3, f1
/* 8086C688  4B AD A2 60 */	b PSMTXTrans
/* 8086C68C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086C690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086C694  80 9A 40 04 */	lwz r4, 0x4004(r26)
/* 8086C698  38 84 00 24 */	addi r4, r4, 0x24
/* 8086C69C  4B AD 9E 14 */	b PSMTXCopy
/* 8086C6A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8086C6A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8086C6A8  80 9A 40 04 */	lwz r4, 0x4004(r26)
/* 8086C6AC  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C6B0  38 BA 01 0C */	addi r5, r26, 0x10c
/* 8086C6B4  4B 93 86 EC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C6B8  80 7A 40 04 */	lwz r3, 0x4004(r26)
/* 8086C6BC  4B 7A 16 08 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8086C6C0:
/* 8086C6C0  38 60 00 01 */	li r3, 1
lbl_8086C6C4:
/* 8086C6C4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8086C6C8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8086C6CC  39 61 00 40 */	addi r11, r1, 0x40
/* 8086C6D0  4B AF 5B 30 */	b _restgpr_19
/* 8086C6D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8086C6D8  7C 08 03 A6 */	mtlr r0
/* 8086C6DC  38 21 00 50 */	addi r1, r1, 0x50
/* 8086C6E0  4E 80 00 20 */	blr 
