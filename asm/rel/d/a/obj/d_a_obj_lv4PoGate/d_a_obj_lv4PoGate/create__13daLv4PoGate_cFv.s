lbl_80C5FDAC:
/* 80C5FDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FDB0  7C 08 02 A6 */	mflr r0
/* 80C5FDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5FDC0  7C 7E 1B 78 */	mr r30, r3
/* 80C5FDC4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5FDC8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5FDCC  40 82 00 28 */	bne lbl_80C5FDF4
/* 80C5FDD0  28 1E 00 00 */	cmplwi r30, 0
/* 80C5FDD4  41 82 00 14 */	beq lbl_80C5FDE8
/* 80C5FDD8  4B 41 88 4D */	bl __ct__16dBgS_MoveBgActorFv
/* 80C5FDDC  3C 60 80 C6 */	lis r3, __vt__13daLv4PoGate_c@ha /* 0x80C6096C@ha */
/* 80C5FDE0  38 03 09 6C */	addi r0, r3, __vt__13daLv4PoGate_c@l /* 0x80C6096C@l */
/* 80C5FDE4  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C5FDE8:
/* 80C5FDE8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C5FDEC  60 00 00 08 */	ori r0, r0, 8
/* 80C5FDF0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C5FDF4:
/* 80C5FDF4  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C5FDF8  3C 80 80 C6 */	lis r4, d_a_obj_lv4PoGate__stringBase0@ha /* 0x80C60848@ha */
/* 80C5FDFC  38 84 08 48 */	addi r4, r4, d_a_obj_lv4PoGate__stringBase0@l /* 0x80C60848@l */
/* 80C5FE00  4B 3C D0 BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5FE04  7C 7F 1B 78 */	mr r31, r3
/* 80C5FE08  2C 1F 00 04 */	cmpwi r31, 4
/* 80C5FE0C  40 82 00 B4 */	bne lbl_80C5FEC0
/* 80C5FE10  7F C3 F3 78 */	mr r3, r30
/* 80C5FE14  3C 80 80 C6 */	lis r4, d_a_obj_lv4PoGate__stringBase0@ha /* 0x80C60848@ha */
/* 80C5FE18  38 84 08 48 */	addi r4, r4, d_a_obj_lv4PoGate__stringBase0@l /* 0x80C60848@l */
/* 80C5FE1C  38 A0 00 07 */	li r5, 7
/* 80C5FE20  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C5FE24  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C5FE28  38 E0 1F 00 */	li r7, 0x1f00
/* 80C5FE2C  39 00 00 00 */	li r8, 0
/* 80C5FE30  4B 41 89 8D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5FE34  2C 03 00 05 */	cmpwi r3, 5
/* 80C5FE38  40 82 00 0C */	bne lbl_80C5FE44
/* 80C5FE3C  38 60 00 05 */	li r3, 5
/* 80C5FE40  48 00 00 84 */	b lbl_80C5FEC4
lbl_80C5FE44:
/* 80C5FE44  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C5FE48  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5FE4C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C5FE50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C5FE54  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5FE58  7F C3 F3 78 */	mr r3, r30
/* 80C5FE5C  4B 3B A7 1D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C5FE60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5FE64  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C5FE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5FE6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5FE70  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C5FE74  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5FE78  7C 05 07 74 */	extsb r5, r0
/* 80C5FE7C  4B 3D 54 E5 */	bl isSwitch__10dSv_info_cCFii
/* 80C5FE80  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C5FE84  3C 60 80 C6 */	lis r3, lit_3713@ha /* 0x80C60820@ha */
/* 80C5FE88  C0 03 08 20 */	lfs f0, lit_3713@l(r3)  /* 0x80C60820@l */
/* 80C5FE8C  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80C5FE90  3C 60 80 C6 */	lis r3, lit_3655@ha /* 0x80C6081C@ha */
/* 80C5FE94  C0 03 08 1C */	lfs f0, lit_3655@l(r3)  /* 0x80C6081C@l */
/* 80C5FE98  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80C5FE9C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C5FEA0  28 00 00 00 */	cmplwi r0, 0
/* 80C5FEA4  40 82 00 0C */	bne lbl_80C5FEB0
/* 80C5FEA8  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C5FEAC  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
lbl_80C5FEB0:
/* 80C5FEB0  7F C3 F3 78 */	mr r3, r30
/* 80C5FEB4  48 00 01 DD */	bl init_modeWait__13daLv4PoGate_cFv
/* 80C5FEB8  7F C3 F3 78 */	mr r3, r30
/* 80C5FEBC  4B FF FD E9 */	bl setBaseMtx__13daLv4PoGate_cFv
lbl_80C5FEC0:
/* 80C5FEC0  7F E3 FB 78 */	mr r3, r31
lbl_80C5FEC4:
/* 80C5FEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FEC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5FECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FED0  7C 08 03 A6 */	mtlr r0
/* 80C5FED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FED8  4E 80 00 20 */	blr 
