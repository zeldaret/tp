lbl_809E9324:
/* 809E9324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E9328  7C 08 02 A6 */	mflr r0
/* 809E932C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E9330  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9334  4B 97 8E 9C */	b _savegpr_26
/* 809E9338  7C 7C 1B 78 */	mr r28, r3
/* 809E933C  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha
/* 809E9340  3B E3 F1 F4 */	addi r31, r3, m__17daNpc_Grz_Param_c@l
/* 809E9344  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809E9348  83 A3 00 04 */	lwz r29, 4(r3)
/* 809E934C  83 DD 00 04 */	lwz r30, 4(r29)
/* 809E9350  3B 60 00 00 */	li r27, 0
/* 809E9354  88 1C 09 F2 */	lbz r0, 0x9f2(r28)
/* 809E9358  28 00 00 00 */	cmplwi r0, 0
/* 809E935C  40 82 00 1C */	bne lbl_809E9378
/* 809E9360  88 1C 09 F4 */	lbz r0, 0x9f4(r28)
/* 809E9364  28 00 00 00 */	cmplwi r0, 0
/* 809E9368  41 82 00 14 */	beq lbl_809E937C
/* 809E936C  4B 64 66 E8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 809E9370  2C 03 00 00 */	cmpwi r3, 0
/* 809E9374  40 82 00 08 */	bne lbl_809E937C
lbl_809E9378:
/* 809E9378  3B 60 00 01 */	li r27, 1
lbl_809E937C:
/* 809E937C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 809E9380  41 82 00 0C */	beq lbl_809E938C
/* 809E9384  38 60 00 01 */	li r3, 1
/* 809E9388  48 00 01 C8 */	b lbl_809E9550
lbl_809E938C:
/* 809E938C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809E9390  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809E9394  38 80 00 00 */	li r4, 0
/* 809E9398  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 809E939C  38 DC 01 0C */	addi r6, r28, 0x10c
/* 809E93A0  4B 7B A4 24 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809E93A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809E93A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809E93AC  80 9D 00 04 */	lwz r4, 4(r29)
/* 809E93B0  38 BC 01 0C */	addi r5, r28, 0x10c
/* 809E93B4  4B 7B B9 EC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809E93B8  3B 40 00 00 */	li r26, 0
/* 809E93BC  48 00 00 5C */	b lbl_809E9418
lbl_809E93C0:
/* 809E93C0  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 809E93C4  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 809E93C8  7F 63 00 2E */	lwzx r27, r3, r0
/* 809E93CC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 809E93D0  38 80 00 00 */	li r4, 0
/* 809E93D4  81 83 00 00 */	lwz r12, 0(r3)
/* 809E93D8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 809E93DC  7D 89 03 A6 */	mtctr r12
/* 809E93E0  4E 80 04 21 */	bctrl 
/* 809E93E4  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 809E93E8  28 00 00 01 */	cmplwi r0, 1
/* 809E93EC  41 82 00 20 */	beq lbl_809E940C
/* 809E93F0  A8 1C 1A 90 */	lha r0, 0x1a90(r28)
/* 809E93F4  B0 03 00 00 */	sth r0, 0(r3)
/* 809E93F8  A8 1C 1A 92 */	lha r0, 0x1a92(r28)
/* 809E93FC  B0 03 00 02 */	sth r0, 2(r3)
/* 809E9400  A8 1C 1A 94 */	lha r0, 0x1a94(r28)
/* 809E9404  B0 03 00 04 */	sth r0, 4(r3)
/* 809E9408  48 00 00 0C */	b lbl_809E9414
lbl_809E940C:
/* 809E940C  80 1C 0B D8 */	lwz r0, 0xbd8(r28)
/* 809E9410  90 1B 00 3C */	stw r0, 0x3c(r27)
lbl_809E9414:
/* 809E9414  3B 5A 00 01 */	addi r26, r26, 1
lbl_809E9418:
/* 809E9418  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 809E941C  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 809E9420  7C 03 00 40 */	cmplw r3, r0
/* 809E9424  41 80 FF 9C */	blt lbl_809E93C0
/* 809E9428  7F 83 E3 78 */	mr r3, r28
/* 809E942C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809E9430  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 809E9434  7D 89 03 A6 */	mtctr r12
/* 809E9438  4E 80 04 21 */	bctrl 
/* 809E943C  2C 03 00 00 */	cmpwi r3, 0
/* 809E9440  40 82 01 0C */	bne lbl_809E954C
/* 809E9444  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E9448  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 809E944C  41 82 00 20 */	beq lbl_809E946C
/* 809E9450  38 7C 05 88 */	addi r3, r28, 0x588
/* 809E9454  38 9E 00 58 */	addi r4, r30, 0x58
/* 809E9458  C0 1C 05 98 */	lfs f0, 0x598(r28)
/* 809E945C  FC 00 00 1E */	fctiwz f0, f0
/* 809E9460  D8 01 00 08 */	stfd f0, 8(r1)
/* 809E9464  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 809E9468  4B 62 41 80 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_809E946C:
/* 809E946C  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E9470  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809E9474  41 82 00 14 */	beq lbl_809E9488
/* 809E9478  C0 3C 05 B0 */	lfs f1, 0x5b0(r28)
/* 809E947C  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 809E9480  38 9E 00 58 */	addi r4, r30, 0x58
/* 809E9484  4B 62 42 54 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_809E9488:
/* 809E9488  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E948C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809E9490  41 82 00 14 */	beq lbl_809E94A4
/* 809E9494  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 809E9498  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 809E949C  38 9E 00 58 */	addi r4, r30, 0x58
/* 809E94A0  4B 62 43 08 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_809E94A4:
/* 809E94A4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809E94A8  4B 62 7D 18 */	b entryDL__16mDoExt_McaMorfSOFv
/* 809E94AC  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E94B0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 809E94B4  41 82 00 10 */	beq lbl_809E94C4
/* 809E94B8  38 7E 00 58 */	addi r3, r30, 0x58
/* 809E94BC  80 9C 05 9C */	lwz r4, 0x59c(r28)
/* 809E94C0  4B 94 62 38 */	b removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_809E94C4:
/* 809E94C4  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E94C8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809E94CC  41 82 00 10 */	beq lbl_809E94DC
/* 809E94D0  38 7E 00 58 */	addi r3, r30, 0x58
/* 809E94D4  80 9C 05 B4 */	lwz r4, 0x5b4(r28)
/* 809E94D8  4B 94 62 DC */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_809E94DC:
/* 809E94DC  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 809E94E0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809E94E4  41 82 00 10 */	beq lbl_809E94F4
/* 809E94E8  38 7E 00 58 */	addi r3, r30, 0x58
/* 809E94EC  80 9C 05 CC */	lwz r4, 0x5cc(r28)
/* 809E94F0  4B 94 63 90 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_809E94F4:
/* 809E94F4  80 7C 09 A0 */	lwz r3, 0x9a0(r28)
/* 809E94F8  38 80 00 01 */	li r4, 1
/* 809E94FC  7F A5 EB 78 */	mr r5, r29
/* 809E9500  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 809E9504  38 FF 00 00 */	addi r7, r31, 0
/* 809E9508  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 809E950C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 809E9510  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 809E9514  C0 9C 09 80 */	lfs f4, 0x980(r28)
/* 809E9518  38 FC 0A 58 */	addi r7, r28, 0xa58
/* 809E951C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 809E9520  39 20 00 00 */	li r9, 0
/* 809E9524  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 809E9528  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 809E952C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 809E9530  4B 64 53 E0 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809E9534  90 7C 09 A0 */	stw r3, 0x9a0(r28)
/* 809E9538  7F 83 E3 78 */	mr r3, r28
/* 809E953C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809E9540  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809E9544  7D 89 03 A6 */	mtctr r12
/* 809E9548  4E 80 04 21 */	bctrl 
lbl_809E954C:
/* 809E954C  38 60 00 01 */	li r3, 1
lbl_809E9550:
/* 809E9550  39 61 00 30 */	addi r11, r1, 0x30
/* 809E9554  4B 97 8C C8 */	b _restgpr_26
/* 809E9558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E955C  7C 08 03 A6 */	mtlr r0
/* 809E9560  38 21 00 30 */	addi r1, r1, 0x30
/* 809E9564  4E 80 00 20 */	blr 
