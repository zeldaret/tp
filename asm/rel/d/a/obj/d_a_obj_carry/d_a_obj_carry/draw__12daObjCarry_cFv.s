lbl_80472460:
/* 80472460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80472464  7C 08 02 A6 */	mflr r0
/* 80472468  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047246C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80472470  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80472474  39 61 00 30 */	addi r11, r1, 0x30
/* 80472478  4B EE FD 55 */	bl _savegpr_25
/* 8047247C  7C 7A 1B 78 */	mr r26, r3
/* 80472480  4B FF FE BD */	bl checkCulling__12daObjCarry_cFv
/* 80472484  2C 03 00 00 */	cmpwi r3, 0
/* 80472488  41 82 00 0C */	beq lbl_80472494
/* 8047248C  38 60 00 01 */	li r3, 1
/* 80472490  48 00 02 80 */	b lbl_80472710
lbl_80472494:
/* 80472494  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80472498  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8047249C  38 80 00 08 */	li r4, 8
/* 804724A0  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804724A4  38 DA 01 0C */	addi r6, r26, 0x10c
/* 804724A8  4B D3 13 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804724AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804724B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804724B4  80 9A 05 70 */	lwz r4, 0x570(r26)
/* 804724B8  80 84 00 04 */	lwz r4, 4(r4)
/* 804724BC  38 BA 01 0C */	addi r5, r26, 0x10c
/* 804724C0  4B D3 28 E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804724C4  88 7A 0C F0 */	lbz r3, 0xcf0(r26)
/* 804724C8  28 03 00 06 */	cmplwi r3, 6
/* 804724CC  40 82 00 58 */	bne lbl_80472524
/* 804724D0  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 804724D4  83 23 00 04 */	lwz r25, 4(r3)
/* 804724D8  3B 60 00 00 */	li r27, 0
/* 804724DC  48 00 00 34 */	b lbl_80472510
lbl_804724E0:
/* 804724E0  80 79 00 60 */	lwz r3, 0x60(r25)
/* 804724E4  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 804724E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 804724EC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804724F0  38 80 00 01 */	li r4, 1
/* 804724F4  81 83 00 00 */	lwz r12, 0(r3)
/* 804724F8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 804724FC  7D 89 03 A6 */	mtctr r12
/* 80472500  4E 80 04 21 */	bctrl 
/* 80472504  88 1A 0D 76 */	lbz r0, 0xd76(r26)
/* 80472508  98 03 00 03 */	stb r0, 3(r3)
/* 8047250C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80472510:
/* 80472510  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80472514  A0 19 00 5C */	lhz r0, 0x5c(r25)
/* 80472518  7C 03 00 40 */	cmplw r3, r0
/* 8047251C  41 80 FF C4 */	blt lbl_804724E0
/* 80472520  48 00 01 44 */	b lbl_80472664
lbl_80472524:
/* 80472524  38 00 00 00 */	li r0, 0
/* 80472528  2C 03 00 08 */	cmpwi r3, 8
/* 8047252C  41 82 00 0C */	beq lbl_80472538
/* 80472530  2C 03 00 09 */	cmpwi r3, 9
/* 80472534  40 82 00 08 */	bne lbl_8047253C
lbl_80472538:
/* 80472538  38 00 00 01 */	li r0, 1
lbl_8047253C:
/* 8047253C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80472540  41 82 01 24 */	beq lbl_80472664
/* 80472544  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80472548  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8047254C  7C 00 07 75 */	extsb. r0, r0
/* 80472550  40 82 01 14 */	bne lbl_80472664
/* 80472554  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80472558  83 A3 00 04 */	lwz r29, 4(r3)
/* 8047255C  83 9D 00 64 */	lwz r28, 0x64(r29)
/* 80472560  3B 60 00 00 */	li r27, 0
/* 80472564  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 80472568  3B E3 A4 BC */	addi r31, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 8047256C  48 00 00 E8 */	b lbl_80472654
lbl_80472570:
/* 80472570  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80472574  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80472578  7F 23 00 2E */	lwzx r25, r3, r0
/* 8047257C  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 80472580  38 80 00 01 */	li r4, 1
/* 80472584  81 83 00 00 */	lwz r12, 0(r3)
/* 80472588  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8047258C  7D 89 03 A6 */	mtctr r12
/* 80472590  4E 80 04 21 */	bctrl 
/* 80472594  7C 7E 1B 78 */	mr r30, r3
/* 80472598  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 8047259C  38 80 00 01 */	li r4, 1
/* 804725A0  81 83 00 00 */	lwz r12, 0(r3)
/* 804725A4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804725A8  7D 89 03 A6 */	mtctr r12
/* 804725AC  4E 80 04 21 */	bctrl 
/* 804725B0  7C 79 1B 78 */	mr r25, r3
/* 804725B4  7F 83 E3 78 */	mr r3, r28
/* 804725B8  7F 64 DB 78 */	mr r4, r27
/* 804725BC  4B E6 C5 3D */	bl getName__10JUTNameTabCFUs
/* 804725C0  38 9F 01 3B */	addi r4, r31, 0x13b
/* 804725C4  4B EF 63 D1 */	bl strcmp
/* 804725C8  2C 03 00 00 */	cmpwi r3, 0
/* 804725CC  40 82 00 44 */	bne lbl_80472610
/* 804725D0  38 00 00 82 */	li r0, 0x82
/* 804725D4  B0 19 00 00 */	sth r0, 0(r25)
/* 804725D8  38 00 00 C8 */	li r0, 0xc8
/* 804725DC  B0 19 00 02 */	sth r0, 2(r25)
/* 804725E0  38 00 00 FA */	li r0, 0xfa
/* 804725E4  B0 19 00 04 */	sth r0, 4(r25)
/* 804725E8  38 60 00 FF */	li r3, 0xff
/* 804725EC  B0 79 00 06 */	sth r3, 6(r25)
/* 804725F0  38 00 00 00 */	li r0, 0
/* 804725F4  98 1E 00 00 */	stb r0, 0(r30)
/* 804725F8  38 00 00 3C */	li r0, 0x3c
/* 804725FC  98 1E 00 01 */	stb r0, 1(r30)
/* 80472600  38 00 00 8C */	li r0, 0x8c
/* 80472604  98 1E 00 02 */	stb r0, 2(r30)
/* 80472608  98 7E 00 03 */	stb r3, 3(r30)
/* 8047260C  48 00 00 44 */	b lbl_80472650
lbl_80472610:
/* 80472610  7F 83 E3 78 */	mr r3, r28
/* 80472614  7F 64 DB 78 */	mr r4, r27
/* 80472618  4B E6 C4 E1 */	bl getName__10JUTNameTabCFUs
/* 8047261C  3C 80 80 48 */	lis r4, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 80472620  38 84 A4 BC */	addi r4, r4, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80472624  38 84 01 43 */	addi r4, r4, 0x143
/* 80472628  4B EF 63 6D */	bl strcmp
/* 8047262C  2C 03 00 00 */	cmpwi r3, 0
/* 80472630  40 82 00 20 */	bne lbl_80472650
/* 80472634  38 00 00 8C */	li r0, 0x8c
/* 80472638  98 1E 00 00 */	stb r0, 0(r30)
/* 8047263C  38 00 00 D2 */	li r0, 0xd2
/* 80472640  98 1E 00 01 */	stb r0, 1(r30)
/* 80472644  38 00 00 FF */	li r0, 0xff
/* 80472648  98 1E 00 02 */	stb r0, 2(r30)
/* 8047264C  98 1E 00 03 */	stb r0, 3(r30)
lbl_80472650:
/* 80472650  3B 7B 00 01 */	addi r27, r27, 1
lbl_80472654:
/* 80472654  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80472658  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 8047265C  7C 03 00 40 */	cmplw r3, r0
/* 80472660  41 80 FF 10 */	blt lbl_80472570
lbl_80472664:
/* 80472664  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80472668  4B B9 B6 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8047266C  88 1A 0C F0 */	lbz r0, 0xcf0(r26)
/* 80472670  28 00 00 03 */	cmplwi r0, 3
/* 80472674  40 82 00 0C */	bne lbl_80472680
/* 80472678  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 8047267C  4B BB F2 D1 */	bl entry__10daMirror_cFP8J3DModel
lbl_80472680:
/* 80472680  80 1A 05 24 */	lwz r0, 0x524(r26)
/* 80472684  28 00 00 00 */	cmplwi r0, 0
/* 80472688  40 82 00 7C */	bne lbl_80472704
/* 8047268C  7F 43 D3 78 */	mr r3, r26
/* 80472690  4B FF D0 15 */	bl data__12daObjCarry_cFv
/* 80472694  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 80472698  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 8047269C  EF E0 00 72 */	fmuls f31, f0, f1
/* 804726A0  7F 43 D3 78 */	mr r3, r26
/* 804726A4  38 80 00 01 */	li r4, 1
/* 804726A8  4B FF D0 45 */	bl checkFlag__12daObjCarry_cFUc
/* 804726AC  2C 03 00 00 */	cmpwi r3, 0
/* 804726B0  41 82 00 2C */	beq lbl_804726DC
/* 804726B4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804726B8  C0 3A 06 0C */	lfs f1, 0x60c(r26)
/* 804726BC  FC 40 F8 90 */	fmr f2, f31
/* 804726C0  38 9A 06 64 */	addi r4, r26, 0x664
/* 804726C4  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 804726C8  3C C0 80 48 */	lis r6, lit_4685@ha /* 0x8047A3CC@ha */
/* 804726CC  C0 66 A3 CC */	lfs f3, lit_4685@l(r6)  /* 0x8047A3CC@l */
/* 804726D0  38 C0 00 00 */	li r6, 0
/* 804726D4  4B BB A9 E1 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 804726D8  48 00 00 2C */	b lbl_80472704
lbl_804726DC:
/* 804726DC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804726E0  C0 3A 06 0C */	lfs f1, 0x60c(r26)
/* 804726E4  FC 40 F8 90 */	fmr f2, f31
/* 804726E8  38 9A 06 64 */	addi r4, r26, 0x664
/* 804726EC  38 A0 00 00 */	li r5, 0
/* 804726F0  3C C0 80 48 */	lis r6, lit_4685@ha /* 0x8047A3CC@ha */
/* 804726F4  C0 66 A3 CC */	lfs f3, lit_4685@l(r6)  /* 0x8047A3CC@l */
/* 804726F8  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 804726FC  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80472700  4B BB A9 B5 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80472704:
/* 80472704  7F 43 D3 78 */	mr r3, r26
/* 80472708  48 00 00 29 */	bl debugDraw__12daObjCarry_cFv
/* 8047270C  38 60 00 01 */	li r3, 1
lbl_80472710:
/* 80472710  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80472714  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80472718  39 61 00 30 */	addi r11, r1, 0x30
/* 8047271C  4B EE FA FD */	bl _restgpr_25
/* 80472720  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80472724  7C 08 03 A6 */	mtlr r0
/* 80472728  38 21 00 40 */	addi r1, r1, 0x40
/* 8047272C  4E 80 00 20 */	blr 
