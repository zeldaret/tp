lbl_80C73558:
/* 80C73558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7355C  7C 08 02 A6 */	mflr r0
/* 80C73560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73568  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7356C  7C 7E 1B 78 */	mr r30, r3
/* 80C73570  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C73574  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C73578  40 82 00 28 */	bne lbl_80C735A0
/* 80C7357C  28 1E 00 00 */	cmplwi r30, 0
/* 80C73580  41 82 00 14 */	beq lbl_80C73594
/* 80C73584  4B 40 50 A1 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C73588  3C 60 80 C7 */	lis r3, __vt__13daLv6Lblock_c@ha /* 0x80C73DA4@ha */
/* 80C7358C  38 03 3D A4 */	addi r0, r3, __vt__13daLv6Lblock_c@l /* 0x80C73DA4@l */
/* 80C73590  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C73594:
/* 80C73594  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C73598  60 00 00 08 */	ori r0, r0, 8
/* 80C7359C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C735A0:
/* 80C735A0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C735A4  3C 80 80 C7 */	lis r4, d_a_obj_lv6Lblock__stringBase0@ha /* 0x80C73CD8@ha */
/* 80C735A8  38 84 3C D8 */	addi r4, r4, d_a_obj_lv6Lblock__stringBase0@l /* 0x80C73CD8@l */
/* 80C735AC  4B 3B 99 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C735B0  7C 7F 1B 78 */	mr r31, r3
/* 80C735B4  2C 1F 00 04 */	cmpwi r31, 4
/* 80C735B8  40 82 00 EC */	bne lbl_80C736A4
/* 80C735BC  7F C3 F3 78 */	mr r3, r30
/* 80C735C0  3C 80 80 C7 */	lis r4, d_a_obj_lv6Lblock__stringBase0@ha /* 0x80C73CD8@ha */
/* 80C735C4  38 84 3C D8 */	addi r4, r4, d_a_obj_lv6Lblock__stringBase0@l /* 0x80C73CD8@l */
/* 80C735C8  38 A0 00 07 */	li r5, 7
/* 80C735CC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C735D0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C735D4  38 E0 0D 80 */	li r7, 0xd80
/* 80C735D8  39 00 00 00 */	li r8, 0
/* 80C735DC  4B 40 51 E1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C735E0  2C 03 00 05 */	cmpwi r3, 5
/* 80C735E4  40 82 00 0C */	bne lbl_80C735F0
/* 80C735E8  38 60 00 05 */	li r3, 5
/* 80C735EC  48 00 00 BC */	b lbl_80C736A8
lbl_80C735F0:
/* 80C735F0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C735F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C735F8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C735FC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C73600  80 83 00 04 */	lwz r4, 4(r3)
/* 80C73604  7F C3 F3 78 */	mr r3, r30
/* 80C73608  4B 3A 6F 71 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C7360C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C73610  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C73614  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C73618  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80C7361C  28 00 00 0F */	cmplwi r0, 0xf
/* 80C73620  40 82 00 0C */	bne lbl_80C7362C
/* 80C73624  38 00 00 00 */	li r0, 0
/* 80C73628  98 1E 05 AD */	stb r0, 0x5ad(r30)
lbl_80C7362C:
/* 80C7362C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C73630  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80C73634  7F C3 F3 78 */	mr r3, r30
/* 80C73638  48 00 00 89 */	bl isSwitch__13daLv6Lblock_cFv
/* 80C7363C  98 7E 05 AF */	stb r3, 0x5af(r30)
/* 80C73640  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C73644  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80C73648  3C 60 80 C7 */	lis r3, l_liftUpMax@ha /* 0x80C73D04@ha */
/* 80C7364C  38 63 3D 04 */	addi r3, r3, l_liftUpMax@l /* 0x80C73D04@l */
/* 80C73650  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C73654  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C73658  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C7365C  3C 60 80 C7 */	lis r3, lit_3709@ha /* 0x80C73CC0@ha */
/* 80C73660  C0 03 3C C0 */	lfs f0, lit_3709@l(r3)  /* 0x80C73CC0@l */
/* 80C73664  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C73668  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C7366C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C73670  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C73674  88 1E 05 AF */	lbz r0, 0x5af(r30)
/* 80C73678  28 00 00 00 */	cmplwi r0, 0
/* 80C7367C  41 82 00 18 */	beq lbl_80C73694
/* 80C73680  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80C73684  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C73688  EC 01 00 2A */	fadds f0, f1, f0
/* 80C7368C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C73690  48 00 00 0C */	b lbl_80C7369C
lbl_80C73694:
/* 80C73694  7F C3 F3 78 */	mr r3, r30
/* 80C73698  48 00 01 B9 */	bl init_modeWait__13daLv6Lblock_cFv
lbl_80C7369C:
/* 80C7369C  7F C3 F3 78 */	mr r3, r30
/* 80C736A0  4B FF FD C5 */	bl setBaseMtx__13daLv6Lblock_cFv
lbl_80C736A4:
/* 80C736A4  7F E3 FB 78 */	mr r3, r31
lbl_80C736A8:
/* 80C736A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C736AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C736B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C736B4  7C 08 03 A6 */	mtlr r0
/* 80C736B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C736BC  4E 80 00 20 */	blr 
