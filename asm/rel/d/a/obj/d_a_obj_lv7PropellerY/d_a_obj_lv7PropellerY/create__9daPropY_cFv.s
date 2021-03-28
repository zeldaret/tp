lbl_80C85624:
/* 80C85624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85628  7C 08 02 A6 */	mflr r0
/* 80C8562C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C85634  93 C1 00 08 */	stw r30, 8(r1)
/* 80C85638  7C 7E 1B 78 */	mr r30, r3
/* 80C8563C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C85640  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C85644  40 82 00 28 */	bne lbl_80C8566C
/* 80C85648  28 1E 00 00 */	cmplwi r30, 0
/* 80C8564C  41 82 00 14 */	beq lbl_80C85660
/* 80C85650  4B 3F 2F D4 */	b __ct__16dBgS_MoveBgActorFv
/* 80C85654  3C 60 80 C8 */	lis r3, __vt__9daPropY_c@ha
/* 80C85658  38 03 62 74 */	addi r0, r3, __vt__9daPropY_c@l
/* 80C8565C  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C85660:
/* 80C85660  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C85664  60 00 00 08 */	ori r0, r0, 8
/* 80C85668  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C8566C:
/* 80C8566C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C85670  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C85674  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80C85678  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C8567C  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C85680  54 00 10 3A */	slwi r0, r0, 2
/* 80C85684  3C 80 80 C8 */	lis r4, l_type@ha
/* 80C85688  38 84 61 94 */	addi r4, r4, l_type@l
/* 80C8568C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C85690  4B 3A 78 2C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C85694  7C 7F 1B 78 */	mr r31, r3
/* 80C85698  2C 1F 00 04 */	cmpwi r31, 4
/* 80C8569C  40 82 01 58 */	bne lbl_80C857F4
/* 80C856A0  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C856A4  54 00 10 3A */	slwi r0, r0, 2
/* 80C856A8  7F C3 F3 78 */	mr r3, r30
/* 80C856AC  3C 80 80 C8 */	lis r4, l_type@ha
/* 80C856B0  38 84 61 94 */	addi r4, r4, l_type@l
/* 80C856B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C856B8  3C A0 80 C8 */	lis r5, l_dzbIdx@ha
/* 80C856BC  38 A5 61 A4 */	addi r5, r5, l_dzbIdx@l
/* 80C856C0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C856C4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C856C8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C856CC  38 E0 2A 40 */	li r7, 0x2a40
/* 80C856D0  39 00 00 00 */	li r8, 0
/* 80C856D4  4B 3F 30 E8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C856D8  2C 03 00 05 */	cmpwi r3, 5
/* 80C856DC  40 82 00 0C */	bne lbl_80C856E8
/* 80C856E0  38 60 00 05 */	li r3, 5
/* 80C856E4  48 00 01 14 */	b lbl_80C857F8
lbl_80C856E8:
/* 80C856E8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C856EC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C856F0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C856F4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C856F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80C856FC  7F C3 F3 78 */	mr r3, r30
/* 80C85700  4B 39 4E 78 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C85704  7F C3 F3 78 */	mr r3, r30
/* 80C85708  4B FF FE 05 */	bl setBaseMtx__9daPropY_cFv
/* 80C8570C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C85710  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C85714  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C85718  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8571C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80C85720  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80C85724  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C85728  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80C8572C  98 1E 05 B1 */	stb r0, 0x5b1(r30)
/* 80C85730  88 1E 05 B1 */	lbz r0, 0x5b1(r30)
/* 80C85734  28 00 00 01 */	cmplwi r0, 1
/* 80C85738  40 81 00 0C */	ble lbl_80C85744
/* 80C8573C  38 00 00 00 */	li r0, 0
/* 80C85740  98 1E 05 B1 */	stb r0, 0x5b1(r30)
lbl_80C85744:
/* 80C85744  88 1E 05 B1 */	lbz r0, 0x5b1(r30)
/* 80C85748  28 00 00 00 */	cmplwi r0, 0
/* 80C8574C  40 82 00 18 */	bne lbl_80C85764
/* 80C85750  38 00 FF FF */	li r0, -1
/* 80C85754  98 1E 05 B2 */	stb r0, 0x5b2(r30)
/* 80C85758  38 00 80 00 */	li r0, -32768
/* 80C8575C  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 80C85760  48 00 00 14 */	b lbl_80C85774
lbl_80C85764:
/* 80C85764  38 00 00 01 */	li r0, 1
/* 80C85768  98 1E 05 B2 */	stb r0, 0x5b2(r30)
/* 80C8576C  38 00 00 00 */	li r0, 0
/* 80C85770  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
lbl_80C85774:
/* 80C85774  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C85778  28 04 00 FF */	cmplwi r4, 0xff
/* 80C8577C  40 82 00 28 */	bne lbl_80C857A4
/* 80C85780  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C85784  28 00 00 00 */	cmplwi r0, 0
/* 80C85788  40 82 00 10 */	bne lbl_80C85798
/* 80C8578C  7F C3 F3 78 */	mr r3, r30
/* 80C85790  48 00 02 35 */	bl init_modeMove__9daPropY_cFv
/* 80C85794  48 00 00 60 */	b lbl_80C857F4
lbl_80C85798:
/* 80C85798  7F C3 F3 78 */	mr r3, r30
/* 80C8579C  48 00 03 6D */	bl init_modeWait__9daPropY_cFv
/* 80C857A0  48 00 00 54 */	b lbl_80C857F4
lbl_80C857A4:
/* 80C857A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C857A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C857AC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C857B0  7C 05 07 74 */	extsb r5, r0
/* 80C857B4  4B 3A FB AC */	b isSwitch__10dSv_info_cCFii
/* 80C857B8  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C857BC  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C857C0  28 00 00 00 */	cmplwi r0, 0
/* 80C857C4  41 82 00 28 */	beq lbl_80C857EC
/* 80C857C8  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C857CC  28 00 00 00 */	cmplwi r0, 0
/* 80C857D0  40 82 00 10 */	bne lbl_80C857E0
/* 80C857D4  7F C3 F3 78 */	mr r3, r30
/* 80C857D8  48 00 01 ED */	bl init_modeMove__9daPropY_cFv
/* 80C857DC  48 00 00 18 */	b lbl_80C857F4
lbl_80C857E0:
/* 80C857E0  7F C3 F3 78 */	mr r3, r30
/* 80C857E4  48 00 03 25 */	bl init_modeWait__9daPropY_cFv
/* 80C857E8  48 00 00 0C */	b lbl_80C857F4
lbl_80C857EC:
/* 80C857EC  7F C3 F3 78 */	mr r3, r30
/* 80C857F0  48 00 01 C5 */	bl init_modeMoveWait__9daPropY_cFv
lbl_80C857F4:
/* 80C857F4  7F E3 FB 78 */	mr r3, r31
lbl_80C857F8:
/* 80C857F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C857FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C85800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85804  7C 08 03 A6 */	mtlr r0
/* 80C85808  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8580C  4E 80 00 20 */	blr 
