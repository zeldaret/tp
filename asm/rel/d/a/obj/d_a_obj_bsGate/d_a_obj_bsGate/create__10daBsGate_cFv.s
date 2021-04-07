lbl_80BC2A18:
/* 80BC2A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2A1C  7C 08 02 A6 */	mflr r0
/* 80BC2A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC2A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC2A28  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC2A2C  7C 7E 1B 78 */	mr r30, r3
/* 80BC2A30  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC2A34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC2A38  40 82 00 28 */	bne lbl_80BC2A60
/* 80BC2A3C  28 1E 00 00 */	cmplwi r30, 0
/* 80BC2A40  41 82 00 14 */	beq lbl_80BC2A54
/* 80BC2A44  4B 4B 5B E1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BC2A48  3C 60 80 BC */	lis r3, __vt__10daBsGate_c@ha /* 0x80BC3284@ha */
/* 80BC2A4C  38 03 32 84 */	addi r0, r3, __vt__10daBsGate_c@l /* 0x80BC3284@l */
/* 80BC2A50  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80BC2A54:
/* 80BC2A54  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BC2A58  60 00 00 08 */	ori r0, r0, 8
/* 80BC2A5C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BC2A60:
/* 80BC2A60  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80BC2A64  3C 80 80 BC */	lis r4, d_a_obj_bsGate__stringBase0@ha /* 0x80BC31C4@ha */
/* 80BC2A68  38 84 31 C4 */	addi r4, r4, d_a_obj_bsGate__stringBase0@l /* 0x80BC31C4@l */
/* 80BC2A6C  4B 46 A4 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC2A70  7C 7F 1B 78 */	mr r31, r3
/* 80BC2A74  2C 1F 00 04 */	cmpwi r31, 4
/* 80BC2A78  40 82 00 D8 */	bne lbl_80BC2B50
/* 80BC2A7C  7F C3 F3 78 */	mr r3, r30
/* 80BC2A80  3C 80 80 BC */	lis r4, d_a_obj_bsGate__stringBase0@ha /* 0x80BC31C4@ha */
/* 80BC2A84  38 84 31 C4 */	addi r4, r4, d_a_obj_bsGate__stringBase0@l /* 0x80BC31C4@l */
/* 80BC2A88  38 A0 00 07 */	li r5, 7
/* 80BC2A8C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BC2A90  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BC2A94  38 E0 0F 00 */	li r7, 0xf00
/* 80BC2A98  39 00 00 00 */	li r8, 0
/* 80BC2A9C  4B 4B 5D 21 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BC2AA0  2C 03 00 05 */	cmpwi r3, 5
/* 80BC2AA4  40 82 00 0C */	bne lbl_80BC2AB0
/* 80BC2AA8  38 60 00 05 */	li r3, 5
/* 80BC2AAC  48 00 00 A8 */	b lbl_80BC2B54
lbl_80BC2AB0:
/* 80BC2AB0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC2AB4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC2AB8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BC2ABC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC2AC0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC2AC4  7F C3 F3 78 */	mr r3, r30
/* 80BC2AC8  4B 45 7A B1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BC2ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC2AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC2AD4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC2AD8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC2ADC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC2AE0  7C 05 07 74 */	extsb r5, r0
/* 80BC2AE4  4B 47 28 7D */	bl isSwitch__10dSv_info_cCFii
/* 80BC2AE8  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80BC2AEC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC2AF0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BC2AF4  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80BC2AF8  3C 60 80 BC */	lis r3, lit_3710@ha /* 0x80BC31AC@ha */
/* 80BC2AFC  C0 03 31 AC */	lfs f0, lit_3710@l(r3)  /* 0x80BC31AC@l */
/* 80BC2B00  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80BC2B04  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80BC2B08  28 00 00 01 */	cmplwi r0, 1
/* 80BC2B0C  40 82 00 14 */	bne lbl_80BC2B20
/* 80BC2B10  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BC2B14  3C 63 00 01 */	addis r3, r3, 1
/* 80BC2B18  38 03 80 00 */	addi r0, r3, -32768
/* 80BC2B1C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80BC2B20:
/* 80BC2B20  3C 60 80 BC */	lis r3, lit_3647@ha /* 0x80BC31A8@ha */
/* 80BC2B24  C0 03 31 A8 */	lfs f0, lit_3647@l(r3)  /* 0x80BC31A8@l */
/* 80BC2B28  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80BC2B2C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC2B30  28 00 00 00 */	cmplwi r0, 0
/* 80BC2B34  41 82 00 0C */	beq lbl_80BC2B40
/* 80BC2B38  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80BC2B3C  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
lbl_80BC2B40:
/* 80BC2B40  7F C3 F3 78 */	mr r3, r30
/* 80BC2B44  48 00 01 81 */	bl init_modeWait__10daBsGate_cFv
/* 80BC2B48  7F C3 F3 78 */	mr r3, r30
/* 80BC2B4C  4B FF FD C5 */	bl setBaseMtx__10daBsGate_cFv
lbl_80BC2B50:
/* 80BC2B50  7F E3 FB 78 */	mr r3, r31
lbl_80BC2B54:
/* 80BC2B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC2B58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC2B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC2B60  7C 08 03 A6 */	mtlr r0
/* 80BC2B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2B68  4E 80 00 20 */	blr 
