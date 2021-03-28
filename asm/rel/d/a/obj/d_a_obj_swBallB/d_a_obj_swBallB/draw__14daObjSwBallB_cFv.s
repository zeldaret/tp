lbl_80CF56A4:
/* 80CF56A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CF56A8  7C 08 02 A6 */	mflr r0
/* 80CF56AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CF56B0  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF56B4  4B 66 CB 24 */	b _savegpr_28
/* 80CF56B8  7C 7E 1B 78 */	mr r30, r3
/* 80CF56BC  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF56C0  3B 83 59 D0 */	addi r28, r3, l_color@l
/* 80CF56C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF56C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF56CC  38 80 00 00 */	li r4, 0
/* 80CF56D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CF56D4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CF56D8  4B 4A E0 EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF56DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF56E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF56E4  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80CF56E8  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF56EC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CF56F0  4B 4A F6 B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF56F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF56F8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CF56FC  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80CF5700  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CF5704  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CF5708  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF570C  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80CF5710  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF5714  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF5718  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF571C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF5720  83 A3 00 00 */	lwz r29, 0(r3)
/* 80CF5724  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF5728  38 80 00 01 */	li r4, 1
/* 80CF572C  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF5730  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF5734  7D 89 03 A6 */	mtctr r12
/* 80CF5738  4E 80 04 21 */	bctrl 
/* 80CF573C  28 03 00 00 */	cmplwi r3, 0
/* 80CF5740  41 82 00 8C */	beq lbl_80CF57CC
/* 80CF5744  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF5748  38 80 00 01 */	li r4, 1
/* 80CF574C  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF5750  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF5754  7D 89 03 A6 */	mtctr r12
/* 80CF5758  4E 80 04 21 */	bctrl 
/* 80CF575C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CF5760  41 82 00 6C */	beq lbl_80CF57CC
/* 80CF5764  38 61 00 08 */	addi r3, r1, 8
/* 80CF5768  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 80CF576C  C0 5C 00 24 */	lfs f2, 0x24(r28)
/* 80CF5770  FC 60 10 90 */	fmr f3, f2
/* 80CF5774  FC 80 08 90 */	fmr f4, f1
/* 80CF5778  C0 BC 00 38 */	lfs f5, 0x38(r28)
/* 80CF577C  FC C0 28 90 */	fmr f6, f5
/* 80CF5780  C0 FC 00 28 */	lfs f7, 0x28(r28)
/* 80CF5784  FD 00 38 90 */	fmr f8, f7
/* 80CF5788  4B 65 15 5C */	b C_MTXLightOrtho
/* 80CF578C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF5790  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF5794  38 80 40 00 */	li r4, 0x4000
/* 80CF5798  4B 31 6B AC */	b mDoMtx_XrotS__FPA4_fs
/* 80CF579C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF57A0  FC 20 00 50 */	fneg f1, f0
/* 80CF57A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CF57A8  FC 40 00 50 */	fneg f2, f0
/* 80CF57AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CF57B0  FC 60 00 50 */	fneg f3, f0
/* 80CF57B4  4B 31 75 E8 */	b transM__14mDoMtx_stack_cFfff
/* 80CF57B8  38 61 00 08 */	addi r3, r1, 8
/* 80CF57BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CF57C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CF57C4  38 BD 00 24 */	addi r5, r29, 0x24
/* 80CF57C8  4B 65 0D 1C */	b PSMTXConcat
lbl_80CF57CC:
/* 80CF57CC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF57D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF57D4  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80CF57D8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CF57DC  38 84 00 58 */	addi r4, r4, 0x58
/* 80CF57E0  4B 31 7E F8 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CF57E4  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF57E8  4B 31 84 DC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CF57EC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF57F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF57F4  4B 31 85 FC */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80CF57F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF57FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF5800  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CF5804  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF5808  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CF580C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF5810  38 60 00 01 */	li r3, 1
/* 80CF5814  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF5818  4B 66 CA 0C */	b _restgpr_28
/* 80CF581C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CF5820  7C 08 03 A6 */	mtlr r0
/* 80CF5824  38 21 00 50 */	addi r1, r1, 0x50
/* 80CF5828  4E 80 00 20 */	blr 
