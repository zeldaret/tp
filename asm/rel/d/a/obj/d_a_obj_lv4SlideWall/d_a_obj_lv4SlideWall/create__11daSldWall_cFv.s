lbl_80C61FB8:
/* 80C61FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61FBC  7C 08 02 A6 */	mflr r0
/* 80C61FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C61FCC  7C 7E 1B 78 */	mr r30, r3
/* 80C61FD0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C61FD4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C61FD8  40 82 00 28 */	bne lbl_80C62000
/* 80C61FDC  28 1E 00 00 */	cmplwi r30, 0
/* 80C61FE0  41 82 00 14 */	beq lbl_80C61FF4
/* 80C61FE4  4B 41 66 41 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C61FE8  3C 60 80 C6 */	lis r3, __vt__11daSldWall_c@ha /* 0x80C62788@ha */
/* 80C61FEC  38 03 27 88 */	addi r0, r3, __vt__11daSldWall_c@l /* 0x80C62788@l */
/* 80C61FF0  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C61FF4:
/* 80C61FF4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C61FF8  60 00 00 08 */	ori r0, r0, 8
/* 80C61FFC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C62000:
/* 80C62000  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C62004  3C 80 80 C6 */	lis r4, d_a_obj_lv4SlideWall__stringBase0@ha /* 0x80C626C4@ha */
/* 80C62008  38 84 26 C4 */	addi r4, r4, d_a_obj_lv4SlideWall__stringBase0@l /* 0x80C626C4@l */
/* 80C6200C  4B 3C AE B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C62010  7C 7F 1B 78 */	mr r31, r3
/* 80C62014  2C 1F 00 04 */	cmpwi r31, 4
/* 80C62018  40 82 00 B0 */	bne lbl_80C620C8
/* 80C6201C  7F C3 F3 78 */	mr r3, r30
/* 80C62020  3C 80 80 C6 */	lis r4, d_a_obj_lv4SlideWall__stringBase0@ha /* 0x80C626C4@ha */
/* 80C62024  38 84 26 C4 */	addi r4, r4, d_a_obj_lv4SlideWall__stringBase0@l /* 0x80C626C4@l */
/* 80C62028  38 A0 00 07 */	li r5, 7
/* 80C6202C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C62030  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C62034  38 E0 13 00 */	li r7, 0x1300
/* 80C62038  39 00 00 00 */	li r8, 0
/* 80C6203C  4B 41 67 81 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C62040  2C 03 00 05 */	cmpwi r3, 5
/* 80C62044  40 82 00 0C */	bne lbl_80C62050
/* 80C62048  38 60 00 05 */	li r3, 5
/* 80C6204C  48 00 00 80 */	b lbl_80C620CC
lbl_80C62050:
/* 80C62050  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C62054  38 03 00 24 */	addi r0, r3, 0x24
/* 80C62058  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C6205C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C62060  80 83 00 04 */	lwz r4, 4(r3)
/* 80C62064  7F C3 F3 78 */	mr r3, r30
/* 80C62068  4B 3B 85 11 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C6206C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C62070  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C62074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62078  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6207C  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C62080  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C62084  7C 05 07 74 */	extsb r5, r0
/* 80C62088  4B 3D 32 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80C6208C  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C62090  3C 60 80 C6 */	lis r3, lit_3649@ha /* 0x80C626B0@ha */
/* 80C62094  C0 03 26 B0 */	lfs f0, lit_3649@l(r3)  /* 0x80C626B0@l */
/* 80C62098  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C6209C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C620A0  28 00 00 00 */	cmplwi r0, 0
/* 80C620A4  41 82 00 14 */	beq lbl_80C620B8
/* 80C620A8  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C627DC@ha */
/* 80C620AC  38 63 27 DC */	addi r3, r3, l_HIO@l /* 0x80C627DC@l */
/* 80C620B0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C620B4  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
lbl_80C620B8:
/* 80C620B8  7F C3 F3 78 */	mr r3, r30
/* 80C620BC  48 00 01 7D */	bl init_modeWait__11daSldWall_cFv
/* 80C620C0  7F C3 F3 78 */	mr r3, r30
/* 80C620C4  4B FF FD ED */	bl setBaseMtx__11daSldWall_cFv
lbl_80C620C8:
/* 80C620C8  7F E3 FB 78 */	mr r3, r31
lbl_80C620CC:
/* 80C620CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C620D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C620D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C620D8  7C 08 03 A6 */	mtlr r0
/* 80C620DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C620E0  4E 80 00 20 */	blr 
