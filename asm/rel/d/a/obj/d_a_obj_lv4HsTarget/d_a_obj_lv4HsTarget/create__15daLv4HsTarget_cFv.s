lbl_80C5F784:
/* 80C5F784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F788  7C 08 02 A6 */	mflr r0
/* 80C5F78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F794  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5F798  7C 7F 1B 78 */	mr r31, r3
/* 80C5F79C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5F7A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5F7A4  40 82 00 28 */	bne lbl_80C5F7CC
/* 80C5F7A8  28 1F 00 00 */	cmplwi r31, 0
/* 80C5F7AC  41 82 00 14 */	beq lbl_80C5F7C0
/* 80C5F7B0  4B 41 8E 75 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C5F7B4  3C 60 80 C6 */	lis r3, __vt__15daLv4HsTarget_c@ha /* 0x80C5FA98@ha */
/* 80C5F7B8  38 03 FA 98 */	addi r0, r3, __vt__15daLv4HsTarget_c@l /* 0x80C5FA98@l */
/* 80C5F7BC  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C5F7C0:
/* 80C5F7C0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5F7C4  60 00 00 08 */	ori r0, r0, 8
/* 80C5F7C8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5F7CC:
/* 80C5F7CC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C5F7D0  3C 80 80 C6 */	lis r4, d_a_obj_lv4HsTarget__stringBase0@ha /* 0x80C5FA3C@ha */
/* 80C5F7D4  38 84 FA 3C */	addi r4, r4, d_a_obj_lv4HsTarget__stringBase0@l /* 0x80C5FA3C@l */
/* 80C5F7D8  4B 3C D6 E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5F7DC  7C 7E 1B 78 */	mr r30, r3
/* 80C5F7E0  2C 1E 00 04 */	cmpwi r30, 4
/* 80C5F7E4  40 82 00 5C */	bne lbl_80C5F840
/* 80C5F7E8  7F E3 FB 78 */	mr r3, r31
/* 80C5F7EC  3C 80 80 C6 */	lis r4, d_a_obj_lv4HsTarget__stringBase0@ha /* 0x80C5FA3C@ha */
/* 80C5F7F0  38 84 FA 3C */	addi r4, r4, d_a_obj_lv4HsTarget__stringBase0@l /* 0x80C5FA3C@l */
/* 80C5F7F4  38 A0 00 07 */	li r5, 7
/* 80C5F7F8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C5F7FC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C5F800  38 E0 12 00 */	li r7, 0x1200
/* 80C5F804  39 00 00 00 */	li r8, 0
/* 80C5F808  4B 41 8F B5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5F80C  2C 03 00 05 */	cmpwi r3, 5
/* 80C5F810  40 82 00 0C */	bne lbl_80C5F81C
/* 80C5F814  38 60 00 05 */	li r3, 5
/* 80C5F818  48 00 00 2C */	b lbl_80C5F844
lbl_80C5F81C:
/* 80C5F81C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5F820  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5F824  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C5F828  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5F82C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5F830  7F E3 FB 78 */	mr r3, r31
/* 80C5F834  4B 3B AD 45 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C5F838  7F E3 FB 78 */	mr r3, r31
/* 80C5F83C  4B FF FE 55 */	bl setBaseMtx__15daLv4HsTarget_cFv
lbl_80C5F840:
/* 80C5F840  7F C3 F3 78 */	mr r3, r30
lbl_80C5F844:
/* 80C5F844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F848  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5F84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F850  7C 08 03 A6 */	mtlr r0
/* 80C5F854  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F858  4E 80 00 20 */	blr 
