lbl_80C685F8:
/* 80C685F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C685FC  7C 08 02 A6 */	mflr r0
/* 80C68600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68608  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6860C  41 82 00 08 */	beq lbl_80C68614
/* 80C68610  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C68614:
/* 80C68614  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C68B98@ha */
/* 80C68618  38 84 8B 98 */	addi r4, r4, l_arcName@l /* 0x80C68B98@l */
/* 80C6861C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C68620  4B 3C 48 9D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C68624  7C 60 1B 78 */	mr r0, r3
/* 80C68628  2C 00 00 04 */	cmpwi r0, 4
/* 80C6862C  40 82 00 44 */	bne lbl_80C68670
/* 80C68630  7F E3 FB 78 */	mr r3, r31
/* 80C68634  48 00 00 55 */	bl setMtx__14daObjPRElvtr_cFv
/* 80C68638  7F E3 FB 78 */	mr r3, r31
/* 80C6863C  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C68B98@ha */
/* 80C68640  38 84 8B 98 */	addi r4, r4, l_arcName@l /* 0x80C68B98@l */
/* 80C68644  80 84 00 00 */	lwz r4, 0(r4)
/* 80C68648  38 A0 00 07 */	li r5, 7
/* 80C6864C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80C68650  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80C68654  38 E0 36 80 */	li r7, 0x3680
/* 80C68658  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C6865C  4B 41 01 61 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C68660  7C 60 1B 78 */	mr r0, r3
/* 80C68664  2C 00 00 05 */	cmpwi r0, 5
/* 80C68668  40 82 00 08 */	bne lbl_80C68670
/* 80C6866C  48 00 00 08 */	b lbl_80C68674
lbl_80C68670:
/* 80C68670  7C 03 03 78 */	mr r3, r0
lbl_80C68674:
/* 80C68674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6867C  7C 08 03 A6 */	mtlr r0
/* 80C68680  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68684  4E 80 00 20 */	blr 
