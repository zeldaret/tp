lbl_80C5ECEC:
/* 80C5ECEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5ECF0  7C 08 02 A6 */	mflr r0
/* 80C5ECF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5ECF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5ECFC  4B 70 34 E0 */	b _savegpr_29
/* 80C5ED00  7C 7D 1B 78 */	mr r29, r3
/* 80C5ED04  3C 80 80 C6 */	lis r4, lit_3625@ha
/* 80C5ED08  3B E4 F3 F4 */	addi r31, r4, lit_3625@l
/* 80C5ED0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5ED10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5ED14  40 82 00 28 */	bne lbl_80C5ED3C
/* 80C5ED18  28 1D 00 00 */	cmplwi r29, 0
/* 80C5ED1C  41 82 00 14 */	beq lbl_80C5ED30
/* 80C5ED20  4B 41 99 04 */	b __ct__16dBgS_MoveBgActorFv
/* 80C5ED24  3C 60 80 C6 */	lis r3, __vt__11daLv4Gate_c@ha
/* 80C5ED28  38 03 F4 D4 */	addi r0, r3, __vt__11daLv4Gate_c@l
/* 80C5ED2C  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_80C5ED30:
/* 80C5ED30  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C5ED34  60 00 00 08 */	ori r0, r0, 8
/* 80C5ED38  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C5ED3C:
/* 80C5ED3C  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C5ED40  3C 80 80 C6 */	lis r4, stringBase0@ha
/* 80C5ED44  38 84 F4 14 */	addi r4, r4, stringBase0@l
/* 80C5ED48  4B 3C E1 74 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5ED4C  7C 7E 1B 78 */	mr r30, r3
/* 80C5ED50  2C 1E 00 04 */	cmpwi r30, 4
/* 80C5ED54  40 82 00 E4 */	bne lbl_80C5EE38
/* 80C5ED58  7F A3 EB 78 */	mr r3, r29
/* 80C5ED5C  3C 80 80 C6 */	lis r4, stringBase0@ha
/* 80C5ED60  38 84 F4 14 */	addi r4, r4, stringBase0@l
/* 80C5ED64  38 A0 00 07 */	li r5, 7
/* 80C5ED68  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C5ED6C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C5ED70  38 E0 23 00 */	li r7, 0x2300
/* 80C5ED74  39 00 00 00 */	li r8, 0
/* 80C5ED78  4B 41 9A 44 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5ED7C  2C 03 00 05 */	cmpwi r3, 5
/* 80C5ED80  40 82 00 0C */	bne lbl_80C5ED8C
/* 80C5ED84  38 60 00 05 */	li r3, 5
/* 80C5ED88  48 00 00 B4 */	b lbl_80C5EE3C
lbl_80C5ED8C:
/* 80C5ED8C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C5ED90  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5ED94  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C5ED98  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C5ED9C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5EDA0  7F A3 EB 78 */	mr r3, r29
/* 80C5EDA4  4B 3B B7 D4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C5EDA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5EDAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5EDB0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C5EDB4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5EDB8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C5EDBC  7C 05 07 74 */	extsb r5, r0
/* 80C5EDC0  4B 3D 65 A0 */	b isSwitch__10dSv_info_cCFii
/* 80C5EDC4  98 7D 05 AE */	stb r3, 0x5ae(r29)
/* 80C5EDC8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C5EDCC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C5EDD0  98 1D 05 AF */	stb r0, 0x5af(r29)
/* 80C5EDD4  88 1D 05 AF */	lbz r0, 0x5af(r29)
/* 80C5EDD8  28 00 00 00 */	cmplwi r0, 0
/* 80C5EDDC  40 82 00 0C */	bne lbl_80C5EDE8
/* 80C5EDE0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C5EDE4  48 00 00 08 */	b lbl_80C5EDEC
lbl_80C5EDE8:
/* 80C5EDE8  C0 1F 00 0C */	lfs f0, 0xc(r31)
lbl_80C5EDEC:
/* 80C5EDEC  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 80C5EDF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C5EDF4  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80C5EDF8  38 00 00 00 */	li r0, 0
/* 80C5EDFC  98 1D 05 AD */	stb r0, 0x5ad(r29)
/* 80C5EE00  88 1D 05 AE */	lbz r0, 0x5ae(r29)
/* 80C5EE04  28 00 00 00 */	cmplwi r0, 0
/* 80C5EE08  41 82 00 20 */	beq lbl_80C5EE28
/* 80C5EE0C  C0 1D 05 B0 */	lfs f0, 0x5b0(r29)
/* 80C5EE10  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 80C5EE14  38 00 00 01 */	li r0, 1
/* 80C5EE18  98 1D 05 AD */	stb r0, 0x5ad(r29)
/* 80C5EE1C  7F A3 EB 78 */	mr r3, r29
/* 80C5EE20  48 00 02 A5 */	bl init_modeMoveEnd__11daLv4Gate_cFv
/* 80C5EE24  48 00 00 0C */	b lbl_80C5EE30
lbl_80C5EE28:
/* 80C5EE28  7F A3 EB 78 */	mr r3, r29
/* 80C5EE2C  48 00 01 1D */	bl init_modeWait__11daLv4Gate_cFv
lbl_80C5EE30:
/* 80C5EE30  7F A3 EB 78 */	mr r3, r29
/* 80C5EE34  4B FF FD B1 */	bl setBaseMtx__11daLv4Gate_cFv
lbl_80C5EE38:
/* 80C5EE38  7F C3 F3 78 */	mr r3, r30
lbl_80C5EE3C:
/* 80C5EE3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5EE40  4B 70 33 E8 */	b _restgpr_29
/* 80C5EE44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5EE48  7C 08 03 A6 */	mtlr r0
/* 80C5EE4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5EE50  4E 80 00 20 */	blr 
