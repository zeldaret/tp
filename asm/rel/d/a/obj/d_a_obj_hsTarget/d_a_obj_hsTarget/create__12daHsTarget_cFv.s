lbl_80C1F598:
/* 80C1F598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F59C  7C 08 02 A6 */	mflr r0
/* 80C1F5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1F5AC  7C 7F 1B 78 */	mr r31, r3
/* 80C1F5B0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C1F5B4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1F5B8  40 82 00 28 */	bne lbl_80C1F5E0
/* 80C1F5BC  28 1F 00 00 */	cmplwi r31, 0
/* 80C1F5C0  41 82 00 14 */	beq lbl_80C1F5D4
/* 80C1F5C4  4B 45 90 60 */	b __ct__16dBgS_MoveBgActorFv
/* 80C1F5C8  3C 60 80 C2 */	lis r3, __vt__12daHsTarget_c@ha
/* 80C1F5CC  38 03 F9 18 */	addi r0, r3, __vt__12daHsTarget_c@l
/* 80C1F5D0  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C1F5D4:
/* 80C1F5D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C1F5D8  60 00 00 08 */	ori r0, r0, 8
/* 80C1F5DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C1F5E0:
/* 80C1F5E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C1F5E4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C1F5E8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C1F5EC  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80C1F5F0  28 00 00 0F */	cmplwi r0, 0xf
/* 80C1F5F4  40 82 00 0C */	bne lbl_80C1F600
/* 80C1F5F8  38 00 00 00 */	li r0, 0
/* 80C1F5FC  98 1F 05 AC */	stb r0, 0x5ac(r31)
lbl_80C1F600:
/* 80C1F600  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C1F604  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80C1F608  54 00 10 3A */	slwi r0, r0, 2
/* 80C1F60C  3C 80 80 C2 */	lis r4, l_resNameIdx@ha
/* 80C1F610  38 84 F8 C0 */	addi r4, r4, l_resNameIdx@l
/* 80C1F614  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C1F618  4B 40 D8 A4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1F61C  7C 7E 1B 78 */	mr r30, r3
/* 80C1F620  2C 1E 00 04 */	cmpwi r30, 4
/* 80C1F624  40 82 00 70 */	bne lbl_80C1F694
/* 80C1F628  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80C1F62C  54 00 10 3A */	slwi r0, r0, 2
/* 80C1F630  7F E3 FB 78 */	mr r3, r31
/* 80C1F634  3C 80 80 C2 */	lis r4, l_resNameIdx@ha
/* 80C1F638  38 84 F8 C0 */	addi r4, r4, l_resNameIdx@l
/* 80C1F63C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C1F640  3C A0 80 C2 */	lis r5, l_dzbIdx@ha
/* 80C1F644  38 A5 F8 A8 */	addi r5, r5, l_dzbIdx@l
/* 80C1F648  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C1F64C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C1F650  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C1F654  38 E0 0A C0 */	li r7, 0xac0
/* 80C1F658  39 00 00 00 */	li r8, 0
/* 80C1F65C  4B 45 91 60 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C1F660  2C 03 00 05 */	cmpwi r3, 5
/* 80C1F664  40 82 00 0C */	bne lbl_80C1F670
/* 80C1F668  38 60 00 05 */	li r3, 5
/* 80C1F66C  48 00 00 2C */	b lbl_80C1F698
lbl_80C1F670:
/* 80C1F670  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1F674  38 03 00 24 */	addi r0, r3, 0x24
/* 80C1F678  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C1F67C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1F680  80 83 00 04 */	lwz r4, 4(r3)
/* 80C1F684  7F E3 FB 78 */	mr r3, r31
/* 80C1F688  4B 3F AE F0 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C1F68C  7F E3 FB 78 */	mr r3, r31
/* 80C1F690  4B FF FE 01 */	bl setBaseMtx__12daHsTarget_cFv
lbl_80C1F694:
/* 80C1F694  7F C3 F3 78 */	mr r3, r30
lbl_80C1F698:
/* 80C1F698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F69C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1F6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F6A4  7C 08 03 A6 */	mtlr r0
/* 80C1F6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F6AC  4E 80 00 20 */	blr 
