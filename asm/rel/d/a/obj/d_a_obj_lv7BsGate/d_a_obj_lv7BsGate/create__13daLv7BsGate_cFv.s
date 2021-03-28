lbl_80C84A4C:
/* 80C84A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84A50  7C 08 02 A6 */	mflr r0
/* 80C84A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C84A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C84A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C84A60  7C 7E 1B 78 */	mr r30, r3
/* 80C84A64  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C84A68  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C84A6C  40 82 00 28 */	bne lbl_80C84A94
/* 80C84A70  28 1E 00 00 */	cmplwi r30, 0
/* 80C84A74  41 82 00 14 */	beq lbl_80C84A88
/* 80C84A78  4B 3F 3B AC */	b __ct__16dBgS_MoveBgActorFv
/* 80C84A7C  3C 60 80 C8 */	lis r3, __vt__13daLv7BsGate_c@ha
/* 80C84A80  38 03 53 14 */	addi r0, r3, __vt__13daLv7BsGate_c@l
/* 80C84A84  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C84A88:
/* 80C84A88  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C84A8C  60 00 00 08 */	ori r0, r0, 8
/* 80C84A90  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C84A94:
/* 80C84A94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C84A98  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C84A9C  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80C84AA0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C84AA4  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C84AA8  54 00 10 3A */	slwi r0, r0, 2
/* 80C84AAC  3C 80 80 C8 */	lis r4, l_type@ha
/* 80C84AB0  38 84 52 64 */	addi r4, r4, l_type@l
/* 80C84AB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C84AB8  4B 3A 84 04 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C84ABC  7C 7F 1B 78 */	mr r31, r3
/* 80C84AC0  2C 1F 00 04 */	cmpwi r31, 4
/* 80C84AC4  40 82 00 EC */	bne lbl_80C84BB0
/* 80C84AC8  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C84ACC  54 00 10 3A */	slwi r0, r0, 2
/* 80C84AD0  7F C3 F3 78 */	mr r3, r30
/* 80C84AD4  3C 80 80 C8 */	lis r4, l_type@ha
/* 80C84AD8  38 84 52 64 */	addi r4, r4, l_type@l
/* 80C84ADC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C84AE0  3C A0 80 C8 */	lis r5, l_dzbIdx@ha
/* 80C84AE4  38 A5 52 74 */	addi r5, r5, l_dzbIdx@l
/* 80C84AE8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C84AEC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C84AF0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C84AF4  38 E0 26 00 */	li r7, 0x2600
/* 80C84AF8  39 00 00 00 */	li r8, 0
/* 80C84AFC  4B 3F 3C C0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C84B00  2C 03 00 05 */	cmpwi r3, 5
/* 80C84B04  40 82 00 0C */	bne lbl_80C84B10
/* 80C84B08  38 60 00 05 */	li r3, 5
/* 80C84B0C  48 00 00 A8 */	b lbl_80C84BB4
lbl_80C84B10:
/* 80C84B10  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C84B14  38 03 00 24 */	addi r0, r3, 0x24
/* 80C84B18  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C84B1C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C84B20  80 83 00 04 */	lwz r4, 4(r3)
/* 80C84B24  7F C3 F3 78 */	mr r3, r30
/* 80C84B28  4B 39 5A 50 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C84B2C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C84B30  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80C84B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C84B38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C84B3C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C84B40  7C 05 07 74 */	extsb r5, r0
/* 80C84B44  4B 3B 08 1C */	b isSwitch__10dSv_info_cCFii
/* 80C84B48  98 7E 05 AF */	stb r3, 0x5af(r30)
/* 80C84B4C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C84B50  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C84B54  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80C84B58  3C 60 80 C8 */	lis r3, lit_3722@ha
/* 80C84B5C  C0 03 52 1C */	lfs f0, lit_3722@l(r3)
/* 80C84B60  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C84B64  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C84B68  28 00 00 01 */	cmplwi r0, 1
/* 80C84B6C  40 82 00 14 */	bne lbl_80C84B80
/* 80C84B70  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80C84B74  3C 63 00 01 */	addis r3, r3, 1
/* 80C84B78  38 03 80 00 */	addi r0, r3, -32768
/* 80C84B7C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80C84B80:
/* 80C84B80  3C 60 80 C8 */	lis r3, lit_3650@ha
/* 80C84B84  C0 03 52 18 */	lfs f0, lit_3650@l(r3)
/* 80C84B88  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80C84B8C  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C84B90  28 00 00 00 */	cmplwi r0, 0
/* 80C84B94  41 82 00 0C */	beq lbl_80C84BA0
/* 80C84B98  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C84B9C  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
lbl_80C84BA0:
/* 80C84BA0  7F C3 F3 78 */	mr r3, r30
/* 80C84BA4  48 00 01 81 */	bl init_modeWait__13daLv7BsGate_cFv
/* 80C84BA8  7F C3 F3 78 */	mr r3, r30
/* 80C84BAC  4B FF FD 85 */	bl setBaseMtx__13daLv7BsGate_cFv
lbl_80C84BB0:
/* 80C84BB0  7F E3 FB 78 */	mr r3, r31
lbl_80C84BB4:
/* 80C84BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84BB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C84BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84BC0  7C 08 03 A6 */	mtlr r0
/* 80C84BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84BC8  4E 80 00 20 */	blr 
