lbl_80C1CCDC:
/* 80C1CCDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1CCE0  7C 08 02 A6 */	mflr r0
/* 80C1CCE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1CCE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1CCEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C1CCF0  7C 7E 1B 78 */	mr r30, r3
/* 80C1CCF4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C1CCF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1CCFC  40 82 00 64 */	bne lbl_80C1CD60
/* 80C1CD00  7F C0 F3 79 */	or. r0, r30, r30
/* 80C1CD04  41 82 00 50 */	beq lbl_80C1CD54
/* 80C1CD08  7C 1F 03 78 */	mr r31, r0
/* 80C1CD0C  4B 45 B9 19 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C1CD10  3C 60 80 C2 */	lis r3, __vt__11daHeavySw_c@ha /* 0x80C1DC00@ha */
/* 80C1CD14  38 03 DC 00 */	addi r0, r3, __vt__11daHeavySw_c@l /* 0x80C1DC00@l */
/* 80C1CD18  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80C1CD1C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80C1CD20  4B 45 91 8D */	bl __ct__12dBgS_AcchCirFv
/* 80C1CD24  3B FF 06 20 */	addi r31, r31, 0x620
/* 80C1CD28  7F E3 FB 78 */	mr r3, r31
/* 80C1CD2C  4B 45 93 75 */	bl __ct__9dBgS_AcchFv
/* 80C1CD30  3C 60 80 C2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C1DBDC@ha */
/* 80C1CD34  38 63 DB DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C1DBDC@l */
/* 80C1CD38  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80C1CD3C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C1CD40  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C1CD44  38 03 00 18 */	addi r0, r3, 0x18
/* 80C1CD48  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80C1CD4C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80C1CD50  4B 45 C1 19 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80C1CD54:
/* 80C1CD54  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C1CD58  60 00 00 08 */	ori r0, r0, 8
/* 80C1CD5C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C1CD60:
/* 80C1CD60  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C1CD64  3C 80 80 C2 */	lis r4, d_a_obj_heavySw__stringBase0@ha /* 0x80C1DAE0@ha */
/* 80C1CD68  38 84 DA E0 */	addi r4, r4, d_a_obj_heavySw__stringBase0@l /* 0x80C1DAE0@l */
/* 80C1CD6C  4B 41 01 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1CD70  7C 7F 1B 78 */	mr r31, r3
/* 80C1CD74  2C 1F 00 04 */	cmpwi r31, 4
/* 80C1CD78  40 82 01 1C */	bne lbl_80C1CE94
/* 80C1CD7C  7F C3 F3 78 */	mr r3, r30
/* 80C1CD80  3C 80 80 C2 */	lis r4, d_a_obj_heavySw__stringBase0@ha /* 0x80C1DAE0@ha */
/* 80C1CD84  38 84 DA E0 */	addi r4, r4, d_a_obj_heavySw__stringBase0@l /* 0x80C1DAE0@l */
/* 80C1CD88  38 A0 00 07 */	li r5, 7
/* 80C1CD8C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C1CD90  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C1CD94  38 E0 0C 80 */	li r7, 0xc80
/* 80C1CD98  39 00 00 00 */	li r8, 0
/* 80C1CD9C  4B 45 BA 21 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C1CDA0  2C 03 00 05 */	cmpwi r3, 5
/* 80C1CDA4  40 82 00 0C */	bne lbl_80C1CDB0
/* 80C1CDA8  38 60 00 05 */	li r3, 5
/* 80C1CDAC  48 00 00 EC */	b lbl_80C1CE98
lbl_80C1CDB0:
/* 80C1CDB0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C1CDB4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1CDB8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C1CDBC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C1CDC0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C1CDC4  7F C3 F3 78 */	mr r3, r30
/* 80C1CDC8  4B 3F D7 B1 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C1CDCC  3C 60 80 C2 */	lis r3, rideCallBack__11daHeavySw_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C1CF90@ha */
/* 80C1CDD0  38 03 CF 90 */	addi r0, r3, rideCallBack__11daHeavySw_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C1CF90@l */
/* 80C1CDD4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C1CDD8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C1CDDC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C1CDE0  3C 80 80 C2 */	lis r4, lit_3652@ha /* 0x80C1DAA8@ha */
/* 80C1CDE4  C0 24 DA A8 */	lfs f1, lit_3652@l(r4)  /* 0x80C1DAA8@l */
/* 80C1CDE8  FC 40 08 90 */	fmr f2, f1
/* 80C1CDEC  4B 45 91 6D */	bl SetWall__12dBgS_AcchCirFff
/* 80C1CDF0  38 00 00 00 */	li r0, 0
/* 80C1CDF4  90 01 00 08 */	stw r0, 8(r1)
/* 80C1CDF8  38 7E 06 20 */	addi r3, r30, 0x620
/* 80C1CDFC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1CE00  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C1CE04  7F C6 F3 78 */	mr r6, r30
/* 80C1CE08  38 E0 00 01 */	li r7, 1
/* 80C1CE0C  39 1E 05 E0 */	addi r8, r30, 0x5e0
/* 80C1CE10  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C1CE14  39 40 00 00 */	li r10, 0
/* 80C1CE18  4B 45 94 31 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C1CE1C  3C 60 80 C2 */	lis r3, lit_3652@ha /* 0x80C1DAA8@ha */
/* 80C1CE20  C0 03 DA A8 */	lfs f0, lit_3652@l(r3)  /* 0x80C1DAA8@l */
/* 80C1CE24  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80C1CE28  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C1CE2C  38 00 00 00 */	li r0, 0
/* 80C1CE30  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C1CE34  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 80C1CE38  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80C1CE3C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80C1CE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1CE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1CE48  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1CE4C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C1CE50  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C1CE54  7C 05 07 74 */	extsb r5, r0
/* 80C1CE58  4B 41 85 09 */	bl isSwitch__10dSv_info_cCFii
/* 80C1CE5C  2C 03 00 00 */	cmpwi r3, 0
/* 80C1CE60  41 82 00 1C */	beq lbl_80C1CE7C
/* 80C1CE64  3C 60 80 C2 */	lis r3, lit_3741@ha /* 0x80C1DAB4@ha */
/* 80C1CE68  C0 03 DA B4 */	lfs f0, lit_3741@l(r3)  /* 0x80C1DAB4@l */
/* 80C1CE6C  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80C1CE70  7F C3 F3 78 */	mr r3, r30
/* 80C1CE74  48 00 08 15 */	bl init_modeMoveEnd__11daHeavySw_cFv
/* 80C1CE78  48 00 00 14 */	b lbl_80C1CE8C
lbl_80C1CE7C:
/* 80C1CE7C  38 00 00 00 */	li r0, 0
/* 80C1CE80  98 1E 05 C5 */	stb r0, 0x5c5(r30)
/* 80C1CE84  7F C3 F3 78 */	mr r3, r30
/* 80C1CE88  48 00 03 ED */	bl init_modeWait__11daHeavySw_cFv
lbl_80C1CE8C:
/* 80C1CE8C  7F C3 F3 78 */	mr r3, r30
/* 80C1CE90  4B FF FD 39 */	bl setBaseMtx__11daHeavySw_cFv
lbl_80C1CE94:
/* 80C1CE94  7F E3 FB 78 */	mr r3, r31
lbl_80C1CE98:
/* 80C1CE98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C1CE9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C1CEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1CEA4  7C 08 03 A6 */	mtlr r0
/* 80C1CEA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1CEAC  4E 80 00 20 */	blr 
