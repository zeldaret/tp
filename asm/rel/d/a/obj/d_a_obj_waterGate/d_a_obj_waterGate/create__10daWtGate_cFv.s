lbl_80D2BD00:
/* 80D2BD00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2BD04  7C 08 02 A6 */	mflr r0
/* 80D2BD08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2BD0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2BD10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2BD14  7C 7E 1B 78 */	mr r30, r3
/* 80D2BD18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D2BD1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D2BD20  40 82 00 28 */	bne lbl_80D2BD48
/* 80D2BD24  28 1E 00 00 */	cmplwi r30, 0
/* 80D2BD28  41 82 00 14 */	beq lbl_80D2BD3C
/* 80D2BD2C  4B 34 C8 F8 */	b __ct__16dBgS_MoveBgActorFv
/* 80D2BD30  3C 60 80 D3 */	lis r3, __vt__10daWtGate_c@ha
/* 80D2BD34  38 03 C5 68 */	addi r0, r3, __vt__10daWtGate_c@l
/* 80D2BD38  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80D2BD3C:
/* 80D2BD3C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D2BD40  60 00 00 08 */	ori r0, r0, 8
/* 80D2BD44  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D2BD48:
/* 80D2BD48  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80D2BD4C  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D2BD50  38 84 C4 8C */	addi r4, r4, stringBase0@l
/* 80D2BD54  4B 30 11 68 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D2BD58  7C 7F 1B 78 */	mr r31, r3
/* 80D2BD5C  2C 1F 00 04 */	cmpwi r31, 4
/* 80D2BD60  40 82 01 00 */	bne lbl_80D2BE60
/* 80D2BD64  7F C3 F3 78 */	mr r3, r30
/* 80D2BD68  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D2BD6C  38 84 C4 8C */	addi r4, r4, stringBase0@l
/* 80D2BD70  38 A0 00 07 */	li r5, 7
/* 80D2BD74  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D2BD78  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D2BD7C  38 E0 0E 00 */	li r7, 0xe00
/* 80D2BD80  39 00 00 00 */	li r8, 0
/* 80D2BD84  4B 34 CA 38 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D2BD88  2C 03 00 05 */	cmpwi r3, 5
/* 80D2BD8C  40 82 00 0C */	bne lbl_80D2BD98
/* 80D2BD90  38 60 00 05 */	li r3, 5
/* 80D2BD94  48 00 00 D0 */	b lbl_80D2BE64
lbl_80D2BD98:
/* 80D2BD98  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D2BD9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D2BDA0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D2BDA4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D2BDA8  80 83 00 04 */	lwz r4, 4(r3)
/* 80D2BDAC  7F C3 F3 78 */	mr r3, r30
/* 80D2BDB0  4B 2E E7 C8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D2BDB4  3C 60 80 D3 */	lis r3, lit_3712@ha
/* 80D2BDB8  C0 43 C4 70 */	lfs f2, lit_3712@l(r3)
/* 80D2BDBC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D2BDC0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D2BDC4  3C 60 80 D3 */	lis r3, lit_3714@ha
/* 80D2BDC8  C8 23 C4 74 */	lfd f1, lit_3714@l(r3)
/* 80D2BDCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2BDD0  3C 00 43 30 */	lis r0, 0x4330
/* 80D2BDD4  90 01 00 08 */	stw r0, 8(r1)
/* 80D2BDD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D2BDDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D2BDE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2BDE4  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80D2BDE8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D2BDEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2BDF0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D2BDF4  40 82 00 20 */	bne lbl_80D2BE14
/* 80D2BDF8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D2BDFC  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80D2BE00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D2BE04  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D2BE08  7F C3 F3 78 */	mr r3, r30
/* 80D2BE0C  48 00 04 45 */	bl init_modeEnd__10daWtGate_cFv
/* 80D2BE10  48 00 00 48 */	b lbl_80D2BE58
lbl_80D2BE14:
/* 80D2BE14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2BE18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2BE1C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D2BE20  7C 05 07 74 */	extsb r5, r0
/* 80D2BE24  4B 30 95 3C */	b isSwitch__10dSv_info_cCFii
/* 80D2BE28  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80D2BE2C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D2BE30  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80D2BE34  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80D2BE38  28 00 00 00 */	cmplwi r0, 0
/* 80D2BE3C  41 82 00 14 */	beq lbl_80D2BE50
/* 80D2BE40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D2BE44  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80D2BE48  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2BE4C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80D2BE50:
/* 80D2BE50  7F C3 F3 78 */	mr r3, r30
/* 80D2BE54  48 00 01 35 */	bl init_modeWait__10daWtGate_cFv
lbl_80D2BE58:
/* 80D2BE58  7F C3 F3 78 */	mr r3, r30
/* 80D2BE5C  4B FF FD B1 */	bl setBaseMtx__10daWtGate_cFv
lbl_80D2BE60:
/* 80D2BE60  7F E3 FB 78 */	mr r3, r31
lbl_80D2BE64:
/* 80D2BE64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2BE68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2BE6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2BE70  7C 08 03 A6 */	mtlr r0
/* 80D2BE74  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2BE78  4E 80 00 20 */	blr 
