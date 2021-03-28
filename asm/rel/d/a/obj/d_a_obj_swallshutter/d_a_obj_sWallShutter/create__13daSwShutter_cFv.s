lbl_805983C4:
/* 805983C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805983C8  7C 08 02 A6 */	mflr r0
/* 805983CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805983D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805983D4  4B DC 9E 08 */	b _savegpr_29
/* 805983D8  7C 7D 1B 78 */	mr r29, r3
/* 805983DC  3C 80 80 5A */	lis r4, lit_3630@ha
/* 805983E0  3B E4 8F 78 */	addi r31, r4, lit_3630@l
/* 805983E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805983E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805983EC  40 82 00 28 */	bne lbl_80598414
/* 805983F0  28 1D 00 00 */	cmplwi r29, 0
/* 805983F4  41 82 00 14 */	beq lbl_80598408
/* 805983F8  4B AE 02 2C */	b __ct__16dBgS_MoveBgActorFv
/* 805983FC  3C 60 80 5A */	lis r3, __vt__13daSwShutter_c@ha
/* 80598400  38 03 90 A0 */	addi r0, r3, __vt__13daSwShutter_c@l
/* 80598404  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_80598408:
/* 80598408  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8059840C  60 00 00 08 */	ori r0, r0, 8
/* 80598410  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80598414:
/* 80598414  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80598418  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8059841C  98 1D 05 AC */	stb r0, 0x5ac(r29)
/* 80598420  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 80598424  28 00 00 0F */	cmplwi r0, 0xf
/* 80598428  40 82 00 0C */	bne lbl_80598434
/* 8059842C  38 00 00 00 */	li r0, 0
/* 80598430  98 1D 05 AC */	stb r0, 0x5ac(r29)
lbl_80598434:
/* 80598434  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80598438  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 8059843C  54 00 10 3A */	slwi r0, r0, 2
/* 80598440  3C 80 80 5A */	lis r4, l_resNameIdx@ha
/* 80598444  38 84 8F E8 */	addi r4, r4, l_resNameIdx@l
/* 80598448  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059844C  4B A9 4A 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80598450  7C 7E 1B 78 */	mr r30, r3
/* 80598454  2C 1E 00 04 */	cmpwi r30, 4
/* 80598458  40 82 00 F0 */	bne lbl_80598548
/* 8059845C  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 80598460  54 00 10 3A */	slwi r0, r0, 2
/* 80598464  7F A3 EB 78 */	mr r3, r29
/* 80598468  3C 80 80 5A */	lis r4, l_resNameIdx@ha
/* 8059846C  38 84 8F E8 */	addi r4, r4, l_resNameIdx@l
/* 80598470  7C 84 00 2E */	lwzx r4, r4, r0
/* 80598474  38 BF 00 28 */	addi r5, r31, 0x28
/* 80598478  7C A5 00 2E */	lwzx r5, r5, r0
/* 8059847C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80598480  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80598484  38 E0 10 00 */	li r7, 0x1000
/* 80598488  39 00 00 00 */	li r8, 0
/* 8059848C  4B AE 03 30 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80598490  2C 03 00 05 */	cmpwi r3, 5
/* 80598494  40 82 00 0C */	bne lbl_805984A0
/* 80598498  38 60 00 05 */	li r3, 5
/* 8059849C  48 00 00 B0 */	b lbl_8059854C
lbl_805984A0:
/* 805984A0  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 805984A4  38 03 00 24 */	addi r0, r3, 0x24
/* 805984A8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 805984AC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 805984B0  80 83 00 04 */	lwz r4, 4(r3)
/* 805984B4  7F A3 EB 78 */	mr r3, r29
/* 805984B8  4B A8 20 C0 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 805984BC  38 00 00 00 */	li r0, 0
/* 805984C0  90 1D 05 D8 */	stw r0, 0x5d8(r29)
/* 805984C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805984C8  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 805984CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805984D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805984D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805984D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805984DC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805984E0  7C 05 07 74 */	extsb r5, r0
/* 805984E4  4B A9 CE 7C */	b isSwitch__10dSv_info_cCFii
/* 805984E8  2C 03 00 00 */	cmpwi r3, 0
/* 805984EC  41 82 00 20 */	beq lbl_8059850C
/* 805984F0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805984F4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805984F8  EC 01 00 2A */	fadds f0, f1, f0
/* 805984FC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80598500  7F A3 EB 78 */	mr r3, r29
/* 80598504  48 00 08 49 */	bl init_modeMoveDownEnd__13daSwShutter_cFv
/* 80598508  48 00 00 38 */	b lbl_80598540
lbl_8059850C:
/* 8059850C  38 00 00 00 */	li r0, 0
/* 80598510  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 80598514  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 80598518  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 8059851C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80598520  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 80598524  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80598528  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 8059852C  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80598530  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 80598534  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 80598538  7F A3 EB 78 */	mr r3, r29
/* 8059853C  48 00 02 01 */	bl init_modeWait__13daSwShutter_cFv
lbl_80598540:
/* 80598540  7F A3 EB 78 */	mr r3, r29
/* 80598544  4B FF FD 61 */	bl setBaseMtx__13daSwShutter_cFv
lbl_80598548:
/* 80598548  7F C3 F3 78 */	mr r3, r30
lbl_8059854C:
/* 8059854C  39 61 00 20 */	addi r11, r1, 0x20
/* 80598550  4B DC 9C D8 */	b _restgpr_29
/* 80598554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80598558  7C 08 03 A6 */	mtlr r0
/* 8059855C  38 21 00 20 */	addi r1, r1, 0x20
/* 80598560  4E 80 00 20 */	blr 
