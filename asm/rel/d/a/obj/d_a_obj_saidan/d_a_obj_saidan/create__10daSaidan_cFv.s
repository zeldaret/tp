lbl_80CC3F1C:
/* 80CC3F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3F20  7C 08 02 A6 */	mflr r0
/* 80CC3F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3F2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC3F30  7C 7F 1B 78 */	mr r31, r3
/* 80CC3F34  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC3F38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC3F3C  40 82 00 28 */	bne lbl_80CC3F64
/* 80CC3F40  28 1F 00 00 */	cmplwi r31, 0
/* 80CC3F44  41 82 00 14 */	beq lbl_80CC3F58
/* 80CC3F48  4B 3B 46 DD */	bl __ct__16dBgS_MoveBgActorFv
/* 80CC3F4C  3C 60 80 CC */	lis r3, __vt__10daSaidan_c@ha /* 0x80CC4604@ha */
/* 80CC3F50  38 03 46 04 */	addi r0, r3, __vt__10daSaidan_c@l /* 0x80CC4604@l */
/* 80CC3F54  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CC3F58:
/* 80CC3F58  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC3F5C  60 00 00 08 */	ori r0, r0, 8
/* 80CC3F60  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC3F64:
/* 80CC3F64  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC3F68  3C 80 80 CC */	lis r4, d_a_obj_saidan__stringBase0@ha /* 0x80CC4540@ha */
/* 80CC3F6C  38 84 45 40 */	addi r4, r4, d_a_obj_saidan__stringBase0@l /* 0x80CC4540@l */
/* 80CC3F70  4B 36 8F 4D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC3F74  7C 7E 1B 78 */	mr r30, r3
/* 80CC3F78  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC3F7C  40 82 00 BC */	bne lbl_80CC4038
/* 80CC3F80  7F E3 FB 78 */	mr r3, r31
/* 80CC3F84  3C 80 80 CC */	lis r4, d_a_obj_saidan__stringBase0@ha /* 0x80CC4540@ha */
/* 80CC3F88  38 84 45 40 */	addi r4, r4, d_a_obj_saidan__stringBase0@l /* 0x80CC4540@l */
/* 80CC3F8C  38 A0 00 07 */	li r5, 7
/* 80CC3F90  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CC3F94  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80CC3F98  38 E0 21 B0 */	li r7, 0x21b0
/* 80CC3F9C  39 00 00 00 */	li r8, 0
/* 80CC3FA0  4B 3B 48 1D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CC3FA4  2C 03 00 05 */	cmpwi r3, 5
/* 80CC3FA8  40 82 00 0C */	bne lbl_80CC3FB4
/* 80CC3FAC  38 60 00 05 */	li r3, 5
/* 80CC3FB0  48 00 00 8C */	b lbl_80CC403C
lbl_80CC3FB4:
/* 80CC3FB4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC3FB8  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC3FBC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CC3FC0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CC3FC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC3FC8  7F E3 FB 78 */	mr r3, r31
/* 80CC3FCC  4B 35 65 AD */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CC3FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC3FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC3FD8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC3FDC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC3FE0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC3FE4  7C 05 07 74 */	extsb r5, r0
/* 80CC3FE8  4B 37 13 79 */	bl isSwitch__10dSv_info_cCFii
/* 80CC3FEC  98 7F 05 AD */	stb r3, 0x5ad(r31)
/* 80CC3FF0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CC3FF4  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80CC3FF8  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80CC3FFC  28 00 00 00 */	cmplwi r0, 0
/* 80CC4000  41 82 00 28 */	beq lbl_80CC4028
/* 80CC4004  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 80CC4008  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CC465C@ha */
/* 80CC400C  38 63 46 5C */	addi r3, r3, l_HIO@l /* 0x80CC465C@l */
/* 80CC4010  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC4014  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CC4018  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CC401C  7F E3 FB 78 */	mr r3, r31
/* 80CC4020  48 00 02 71 */	bl init_modeMoveEnd__10daSaidan_cFv
/* 80CC4024  48 00 00 0C */	b lbl_80CC4030
lbl_80CC4028:
/* 80CC4028  7F E3 FB 78 */	mr r3, r31
/* 80CC402C  48 00 01 1D */	bl init_modeWait__10daSaidan_cFv
lbl_80CC4030:
/* 80CC4030  7F E3 FB 78 */	mr r3, r31
/* 80CC4034  4B FF FD F5 */	bl setBaseMtx__10daSaidan_cFv
lbl_80CC4038:
/* 80CC4038  7F C3 F3 78 */	mr r3, r30
lbl_80CC403C:
/* 80CC403C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4040  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC4044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4048  7C 08 03 A6 */	mtlr r0
/* 80CC404C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4050  4E 80 00 20 */	blr 
