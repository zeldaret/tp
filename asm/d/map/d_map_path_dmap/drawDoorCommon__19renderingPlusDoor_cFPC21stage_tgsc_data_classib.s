lbl_800405FC:
/* 800405FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80040600  7C 08 02 A6 */	mflr r0
/* 80040604  90 01 00 34 */	stw r0, 0x34(r1)
/* 80040608  39 61 00 30 */	addi r11, r1, 0x30
/* 8004060C  48 32 1B C1 */	bl _savegpr_25
/* 80040610  7C 79 1B 78 */	mr r25, r3
/* 80040614  7C 9A 23 78 */	mr r26, r4
/* 80040618  7C BB 2B 78 */	mr r27, r5
/* 8004061C  7C DC 33 78 */	mr r28, r6
/* 80040620  48 31 AF 6D */	bl GXClearVtxDesc
/* 80040624  38 60 00 09 */	li r3, 9
/* 80040628  38 80 00 01 */	li r4, 1
/* 8004062C  48 31 A8 8D */	bl GXSetVtxDesc
/* 80040630  38 60 00 0D */	li r3, 0xd
/* 80040634  38 80 00 02 */	li r4, 2
/* 80040638  48 31 A8 81 */	bl GXSetVtxDesc
/* 8004063C  38 60 00 00 */	li r3, 0
/* 80040640  38 80 00 09 */	li r4, 9
/* 80040644  38 A0 00 01 */	li r5, 1
/* 80040648  38 C0 00 04 */	li r6, 4
/* 8004064C  38 E0 00 00 */	li r7, 0
/* 80040650  48 31 AF 75 */	bl GXSetVtxAttrFmt
/* 80040654  38 60 00 00 */	li r3, 0
/* 80040658  38 80 00 0D */	li r4, 0xd
/* 8004065C  38 A0 00 01 */	li r5, 1
/* 80040660  38 C0 00 00 */	li r6, 0
/* 80040664  38 E0 00 00 */	li r7, 0
/* 80040668  48 31 AF 5D */	bl GXSetVtxAttrFmt
/* 8004066C  38 60 00 0D */	li r3, 0xd
/* 80040670  38 82 84 68 */	la r4, l_tex0(r2) /* 80451E68-_SDA2_BASE_ */
/* 80040674  38 A0 00 02 */	li r5, 2
/* 80040678  48 31 B4 B1 */	bl GXSetArray
/* 8004067C  7F 23 CB 78 */	mr r3, r25
/* 80040680  4B FF C8 C1 */	bl setTevSettingIntensityTextureToCI__18dRenderingFDAmap_cCFv
/* 80040684  3B A0 00 00 */	li r29, 0
/* 80040688  48 00 00 60 */	b lbl_800406E8
lbl_8004068C:
/* 8004068C  80 1A 00 08 */	lwz r0, 8(r26)
/* 80040690  54 1F 9E BE */	rlwinm r31, r0, 0x13, 0x1a, 0x1f
/* 80040694  54 1E 6E BE */	rlwinm r30, r0, 0xd, 0x1a, 0x1f
/* 80040698  7F 23 CB 78 */	mr r3, r25
/* 8004069C  7F E4 FB 78 */	mr r4, r31
/* 800406A0  7F C5 F3 78 */	mr r5, r30
/* 800406A4  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 800406A8  48 00 00 69 */	bl checkDispDoorS__19renderingPlusDoor_cFiif
/* 800406AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800406B0  41 82 00 30 */	beq lbl_800406E0
/* 800406B4  3C 60 80 42 */	lis r3, m_texObjAgg__8dMpath_n@ha /* 0x80424684@ha */
/* 800406B8  38 63 46 84 */	addi r3, r3, m_texObjAgg__8dMpath_n@l /* 0x80424684@l */
/* 800406BC  80 63 00 00 */	lwz r3, 0(r3)
/* 800406C0  38 80 00 00 */	li r4, 0
/* 800406C4  48 31 DD 51 */	bl GXLoadTexObj
/* 800406C8  7F 23 CB 78 */	mr r3, r25
/* 800406CC  7F 44 D3 78 */	mr r4, r26
/* 800406D0  7F E5 FB 78 */	mr r5, r31
/* 800406D4  7F C6 F3 78 */	mr r6, r30
/* 800406D8  7F 87 E3 78 */	mr r7, r28
/* 800406DC  48 00 01 5D */	bl drawNormalDoorS__19renderingPlusDoor_cFPC21stage_tgsc_data_classiib
lbl_800406E0:
/* 800406E0  3B BD 00 01 */	addi r29, r29, 1
/* 800406E4  3B 5A 00 24 */	addi r26, r26, 0x24
lbl_800406E8:
/* 800406E8  7C 1D D8 00 */	cmpw r29, r27
/* 800406EC  41 80 FF A0 */	blt lbl_8004068C
/* 800406F0  7F 23 CB 78 */	mr r3, r25
/* 800406F4  4B FF C7 85 */	bl setTevSettingNonTextureDirectColor__18dRenderingFDAmap_cCFv
/* 800406F8  39 61 00 30 */	addi r11, r1, 0x30
/* 800406FC  48 32 1B 1D */	bl _restgpr_25
/* 80040700  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80040704  7C 08 03 A6 */	mtlr r0
/* 80040708  38 21 00 30 */	addi r1, r1, 0x30
/* 8004070C  4E 80 00 20 */	blr 
