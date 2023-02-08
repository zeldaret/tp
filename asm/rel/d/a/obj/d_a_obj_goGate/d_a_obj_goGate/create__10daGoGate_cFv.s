lbl_80BFD82C:
/* 80BFD82C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFD830  7C 08 02 A6 */	mflr r0
/* 80BFD834  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFD838  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFD83C  4B 76 49 A1 */	bl _savegpr_29
/* 80BFD840  7C 7D 1B 78 */	mr r29, r3
/* 80BFD844  3C 80 80 C0 */	lis r4, lit_3627@ha /* 0x80BFDFE8@ha */
/* 80BFD848  3B E4 DF E8 */	addi r31, r4, lit_3627@l /* 0x80BFDFE8@l */
/* 80BFD84C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BFD850  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BFD854  40 82 00 28 */	bne lbl_80BFD87C
/* 80BFD858  28 1D 00 00 */	cmplwi r29, 0
/* 80BFD85C  41 82 00 14 */	beq lbl_80BFD870
/* 80BFD860  4B 47 AD C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BFD864  3C 60 80 C0 */	lis r3, __vt__10daGoGate_c@ha /* 0x80BFE0C8@ha */
/* 80BFD868  38 03 E0 C8 */	addi r0, r3, __vt__10daGoGate_c@l /* 0x80BFE0C8@l */
/* 80BFD86C  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_80BFD870:
/* 80BFD870  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BFD874  60 00 00 08 */	ori r0, r0, 8
/* 80BFD878  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BFD87C:
/* 80BFD87C  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80BFD880  3C 80 80 C0 */	lis r4, d_a_obj_goGate__stringBase0@ha /* 0x80BFE008@ha */
/* 80BFD884  38 84 E0 08 */	addi r4, r4, d_a_obj_goGate__stringBase0@l /* 0x80BFE008@l */
/* 80BFD888  4B 42 F6 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BFD88C  7C 7E 1B 78 */	mr r30, r3
/* 80BFD890  2C 1E 00 04 */	cmpwi r30, 4
/* 80BFD894  40 82 00 D4 */	bne lbl_80BFD968
/* 80BFD898  7F A3 EB 78 */	mr r3, r29
/* 80BFD89C  3C 80 80 C0 */	lis r4, d_a_obj_goGate__stringBase0@ha /* 0x80BFE008@ha */
/* 80BFD8A0  38 84 E0 08 */	addi r4, r4, d_a_obj_goGate__stringBase0@l /* 0x80BFE008@l */
/* 80BFD8A4  38 A0 00 07 */	li r5, 7
/* 80BFD8A8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BFD8AC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BFD8B0  38 E0 1C 00 */	li r7, 0x1c00
/* 80BFD8B4  39 00 00 00 */	li r8, 0
/* 80BFD8B8  4B 47 AF 05 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BFD8BC  2C 03 00 05 */	cmpwi r3, 5
/* 80BFD8C0  40 82 00 0C */	bne lbl_80BFD8CC
/* 80BFD8C4  38 60 00 05 */	li r3, 5
/* 80BFD8C8  48 00 00 A4 */	b lbl_80BFD96C
lbl_80BFD8CC:
/* 80BFD8CC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BFD8D0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BFD8D4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BFD8D8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BFD8DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BFD8E0  7F A3 EB 78 */	mr r3, r29
/* 80BFD8E4  4B 41 CC 95 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BFD8E8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BFD8EC  98 1D 05 AD */	stb r0, 0x5ad(r29)
/* 80BFD8F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFD8F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFD8F8  88 9D 05 AD */	lbz r4, 0x5ad(r29)
/* 80BFD8FC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80BFD900  7C 05 07 74 */	extsb r5, r0
/* 80BFD904  4B 43 7A 5D */	bl isSwitch__10dSv_info_cCFii
/* 80BFD908  98 7D 05 AE */	stb r3, 0x5ae(r29)
/* 80BFD90C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BFD910  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BFD914  98 1D 05 AF */	stb r0, 0x5af(r29)
/* 80BFD918  88 1D 05 AF */	lbz r0, 0x5af(r29)
/* 80BFD91C  28 00 00 00 */	cmplwi r0, 0
/* 80BFD920  40 82 00 0C */	bne lbl_80BFD92C
/* 80BFD924  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BFD928  48 00 00 08 */	b lbl_80BFD930
lbl_80BFD92C:
/* 80BFD92C  C0 1F 00 0C */	lfs f0, 0xc(r31)
lbl_80BFD930:
/* 80BFD930  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 80BFD934  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFD938  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80BFD93C  88 1D 05 AE */	lbz r0, 0x5ae(r29)
/* 80BFD940  28 00 00 00 */	cmplwi r0, 0
/* 80BFD944  41 82 00 0C */	beq lbl_80BFD950
/* 80BFD948  C0 1D 05 B0 */	lfs f0, 0x5b0(r29)
/* 80BFD94C  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
lbl_80BFD950:
/* 80BFD950  7F A3 EB 78 */	mr r3, r29
/* 80BFD954  4B 47 AF FD */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BFD958  7F A3 EB 78 */	mr r3, r29
/* 80BFD95C  48 00 01 7D */	bl init_modeWait__10daGoGate_cFv
/* 80BFD960  7F A3 EB 78 */	mr r3, r29
/* 80BFD964  4B FF FD C1 */	bl setBaseMtx__10daGoGate_cFv
lbl_80BFD968:
/* 80BFD968  7F C3 F3 78 */	mr r3, r30
lbl_80BFD96C:
/* 80BFD96C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFD970  4B 76 48 B9 */	bl _restgpr_29
/* 80BFD974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFD978  7C 08 03 A6 */	mtlr r0
/* 80BFD97C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFD980  4E 80 00 20 */	blr 
