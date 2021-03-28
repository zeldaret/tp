lbl_80CE3F1C:
/* 80CE3F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE3F20  7C 08 02 A6 */	mflr r0
/* 80CE3F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE3F28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE3F2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE3F30  7C 7E 1B 78 */	mr r30, r3
/* 80CE3F34  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE3F38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE3F3C  40 82 00 28 */	bne lbl_80CE3F64
/* 80CE3F40  28 1E 00 00 */	cmplwi r30, 0
/* 80CE3F44  41 82 00 14 */	beq lbl_80CE3F58
/* 80CE3F48  4B 39 46 DC */	b __ct__16dBgS_MoveBgActorFv
/* 80CE3F4C  3C 60 80 CE */	lis r3, __vt__12daSpinLift_c@ha
/* 80CE3F50  38 03 4E 7C */	addi r0, r3, __vt__12daSpinLift_c@l
/* 80CE3F54  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80CE3F58:
/* 80CE3F58  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CE3F5C  60 00 00 08 */	ori r0, r0, 8
/* 80CE3F60  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CE3F64:
/* 80CE3F64  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80CE3F68  98 1E 05 BB */	stb r0, 0x5bb(r30)
/* 80CE3F6C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CE3F70  88 1E 05 BB */	lbz r0, 0x5bb(r30)
/* 80CE3F74  54 00 10 3A */	slwi r0, r0, 2
/* 80CE3F78  3C 80 80 CE */	lis r4, l_resNameIdx@ha
/* 80CE3F7C  38 84 4D A8 */	addi r4, r4, l_resNameIdx@l
/* 80CE3F80  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE3F84  4B 34 8F 38 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE3F88  7C 7F 1B 78 */	mr r31, r3
/* 80CE3F8C  2C 1F 00 04 */	cmpwi r31, 4
/* 80CE3F90  40 82 01 50 */	bne lbl_80CE40E0
/* 80CE3F94  88 1E 05 BB */	lbz r0, 0x5bb(r30)
/* 80CE3F98  54 00 10 3A */	slwi r0, r0, 2
/* 80CE3F9C  7F C3 F3 78 */	mr r3, r30
/* 80CE3FA0  3C 80 80 CE */	lis r4, l_resNameIdx@ha
/* 80CE3FA4  38 84 4D A8 */	addi r4, r4, l_resNameIdx@l
/* 80CE3FA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE3FAC  3C A0 80 CE */	lis r5, l_dzbIdx@ha
/* 80CE3FB0  38 A5 4C E4 */	addi r5, r5, l_dzbIdx@l
/* 80CE3FB4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CE3FB8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CE3FBC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CE3FC0  3C E0 00 01 */	lis r7, 0x0001 /* 0x00009300@ha */
/* 80CE3FC4  38 E7 93 00 */	addi r7, r7, 0x9300 /* 0x00009300@l */
/* 80CE3FC8  39 00 00 00 */	li r8, 0
/* 80CE3FCC  4B 39 47 F0 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CE3FD0  2C 03 00 05 */	cmpwi r3, 5
/* 80CE3FD4  40 82 00 0C */	bne lbl_80CE3FE0
/* 80CE3FD8  38 60 00 05 */	li r3, 5
/* 80CE3FDC  48 00 01 08 */	b lbl_80CE40E4
lbl_80CE3FE0:
/* 80CE3FE0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CE3FE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE3FE8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CE3FEC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CE3FF0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE3FF4  7F C3 F3 78 */	mr r3, r30
/* 80CE3FF8  4B 33 65 80 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CE3FFC  3C 60 80 CE */	lis r3, lit_3731@ha
/* 80CE4000  C0 43 4D 08 */	lfs f2, lit_3731@l(r3)
/* 80CE4004  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CE4008  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CE400C  7C 00 07 74 */	extsb r0, r0
/* 80CE4010  3C 60 80 CE */	lis r3, lit_3733@ha
/* 80CE4014  C8 23 4D 0C */	lfd f1, lit_3733@l(r3)
/* 80CE4018  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CE401C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4020  3C 80 43 30 */	lis r4, 0x4330
/* 80CE4024  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4028  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CE402C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE4030  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CE4034  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80CE4038  C0 5E 05 B0 */	lfs f2, 0x5b0(r30)
/* 80CE403C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CE4040  54 00 46 3E */	srwi r0, r0, 0x18
/* 80CE4044  3C 60 80 CE */	lis r3, lit_3735@ha
/* 80CE4048  C8 23 4D 14 */	lfd f1, lit_3735@l(r3)
/* 80CE404C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4050  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4054  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CE4058  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE405C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80CE4060  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80CE4064  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80CE4068  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CE406C  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 80CE4070  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CE4074  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CE4078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE407C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE4080  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CE4084  7C 05 07 74 */	extsb r5, r0
/* 80CE4088  4B 35 12 D8 */	b isSwitch__10dSv_info_cCFii
/* 80CE408C  98 7E 05 BC */	stb r3, 0x5bc(r30)
/* 80CE4090  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CE4094  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CE4098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE409C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE40A0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CE40A4  7C 05 07 74 */	extsb r5, r0
/* 80CE40A8  4B 35 12 B8 */	b isSwitch__10dSv_info_cCFii
/* 80CE40AC  2C 03 00 00 */	cmpwi r3, 0
/* 80CE40B0  41 82 00 20 */	beq lbl_80CE40D0
/* 80CE40B4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CE40B8  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80CE40BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE40C0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CE40C4  7F C3 F3 78 */	mr r3, r30
/* 80CE40C8  48 00 06 C9 */	bl init_modeMoveEnd__12daSpinLift_cFv
/* 80CE40CC  48 00 00 0C */	b lbl_80CE40D8
lbl_80CE40D0:
/* 80CE40D0  7F C3 F3 78 */	mr r3, r30
/* 80CE40D4  48 00 01 BD */	bl init_modeWait__12daSpinLift_cFv
lbl_80CE40D8:
/* 80CE40D8  7F C3 F3 78 */	mr r3, r30
/* 80CE40DC  4B FF FD 51 */	bl setBaseMtx__12daSpinLift_cFv
lbl_80CE40E0:
/* 80CE40E0  7F E3 FB 78 */	mr r3, r31
lbl_80CE40E4:
/* 80CE40E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE40E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE40EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE40F0  7C 08 03 A6 */	mtlr r0
/* 80CE40F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE40F8  4E 80 00 20 */	blr 
