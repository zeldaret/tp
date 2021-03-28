lbl_80C7429C:
/* 80C7429C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C742A0  7C 08 02 A6 */	mflr r0
/* 80C742A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C742A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C742AC  4B 6E DF 20 */	b _savegpr_25
/* 80C742B0  7C 7E 1B 78 */	mr r30, r3
/* 80C742B4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C742B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C742BC  40 82 00 74 */	bne lbl_80C74330
/* 80C742C0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C742C4  41 82 00 60 */	beq lbl_80C74324
/* 80C742C8  7C 19 03 78 */	mr r25, r0
/* 80C742CC  4B 40 43 58 */	b __ct__16dBgS_MoveBgActorFv
/* 80C742D0  3C 60 80 C7 */	lis r3, __vt__13daLv6SwGate_c@ha
/* 80C742D4  38 03 56 F4 */	addi r0, r3, __vt__13daLv6SwGate_c@l
/* 80C742D8  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80C742DC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C742E0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C742E4  90 19 05 B8 */	stw r0, 0x5b8(r25)
/* 80C742E8  38 79 05 BC */	addi r3, r25, 0x5bc
/* 80C742EC  4B 40 F4 74 */	b __ct__10dCcD_GSttsFv
/* 80C742F0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C742F4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C742F8  90 79 05 B8 */	stw r3, 0x5b8(r25)
/* 80C742FC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C74300  90 19 05 BC */	stw r0, 0x5bc(r25)
/* 80C74304  38 79 05 DC */	addi r3, r25, 0x5dc
/* 80C74308  3C 80 80 C7 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80C7430C  38 84 45 B0 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80C74310  3C A0 80 C7 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80C74314  38 A5 44 E4 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80C74318  38 C0 01 3C */	li r6, 0x13c
/* 80C7431C  38 E0 00 0C */	li r7, 0xc
/* 80C74320  4B 6E DA 40 */	b __construct_array
lbl_80C74324:
/* 80C74324  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C74328  60 00 00 08 */	ori r0, r0, 8
/* 80C7432C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C74330:
/* 80C74330  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C74334  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C74338  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C7433C  41 82 00 28 */	beq lbl_80C74364
/* 80C74340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C74344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C74348  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C7434C  7C 05 07 74 */	extsb r5, r0
/* 80C74350  4B 3C 10 10 */	b isSwitch__10dSv_info_cCFii
/* 80C74354  2C 03 00 00 */	cmpwi r3, 0
/* 80C74358  41 82 00 0C */	beq lbl_80C74364
/* 80C7435C  38 60 00 05 */	li r3, 5
/* 80C74360  48 00 01 6C */	b lbl_80C744CC
lbl_80C74364:
/* 80C74364  38 7E 14 AC */	addi r3, r30, 0x14ac
/* 80C74368  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C7436C  38 84 55 8C */	addi r4, r4, stringBase0@l
/* 80C74370  4B 3B 8B 4C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C74374  7C 7F 1B 78 */	mr r31, r3
/* 80C74378  2C 1F 00 04 */	cmpwi r31, 4
/* 80C7437C  40 82 01 4C */	bne lbl_80C744C8
/* 80C74380  7F C3 F3 78 */	mr r3, r30
/* 80C74384  3C 80 80 C7 */	lis r4, stringBase0@ha
/* 80C74388  38 84 55 8C */	addi r4, r4, stringBase0@l
/* 80C7438C  38 A0 00 07 */	li r5, 7
/* 80C74390  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C74394  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C74398  38 E0 17 00 */	li r7, 0x1700
/* 80C7439C  39 00 00 00 */	li r8, 0
/* 80C743A0  4B 40 44 1C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C743A4  2C 03 00 05 */	cmpwi r3, 5
/* 80C743A8  40 82 00 0C */	bne lbl_80C743B4
/* 80C743AC  38 60 00 05 */	li r3, 5
/* 80C743B0  48 00 01 1C */	b lbl_80C744CC
lbl_80C743B4:
/* 80C743B4  80 7E 14 B4 */	lwz r3, 0x14b4(r30)
/* 80C743B8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C743BC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C743C0  3C 60 80 C7 */	lis r3, l_cull_box@ha
/* 80C743C4  38 83 55 FC */	addi r4, r3, l_cull_box@l
/* 80C743C8  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C743CC  7F C3 F3 78 */	mr r3, r30
/* 80C743D0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80C743D4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C743D8  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C743DC  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C743E0  FC C0 28 90 */	fmr f6, f5
/* 80C743E4  4B 3A 61 64 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C743E8  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C743EC  38 80 00 FF */	li r4, 0xff
/* 80C743F0  38 A0 00 FF */	li r5, 0xff
/* 80C743F4  7F C6 F3 78 */	mr r6, r30
/* 80C743F8  4B 40 F4 68 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C743FC  3B 20 00 00 */	li r25, 0
/* 80C74400  3B A0 00 00 */	li r29, 0
/* 80C74404  3C 60 80 C7 */	lis r3, mCcDCyl__13daLv6SwGate_c@ha
/* 80C74408  3B 63 55 B8 */	addi r27, r3, mCcDCyl__13daLv6SwGate_c@l
/* 80C7440C  3B 9E 05 A0 */	addi r28, r30, 0x5a0
lbl_80C74410:
/* 80C74410  7F 5E EA 14 */	add r26, r30, r29
/* 80C74414  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 80C74418  7F 64 DB 78 */	mr r4, r27
/* 80C7441C  4B 41 04 98 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C74420  93 9A 06 20 */	stw r28, 0x620(r26)
/* 80C74424  3B 39 00 01 */	addi r25, r25, 1
/* 80C74428  2C 19 00 0C */	cmpwi r25, 0xc
/* 80C7442C  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80C74430  41 80 FF E0 */	blt lbl_80C74410
/* 80C74434  80 9E 14 C4 */	lwz r4, 0x14c4(r30)
/* 80C74438  28 04 00 00 */	cmplwi r4, 0
/* 80C7443C  41 82 00 20 */	beq lbl_80C7445C
/* 80C74440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C74444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C74448  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C7444C  7F C5 F3 78 */	mr r5, r30
/* 80C74450  4B 40 05 B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C74454  80 7E 14 C4 */	lwz r3, 0x14c4(r30)
/* 80C74458  4B 40 75 68 */	b Move__4dBgWFv
lbl_80C7445C:
/* 80C7445C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C74460  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C74464  98 1E 14 BD */	stb r0, 0x14bd(r30)
/* 80C74468  88 1E 14 BD */	lbz r0, 0x14bd(r30)
/* 80C7446C  28 00 00 0F */	cmplwi r0, 0xf
/* 80C74470  40 82 00 0C */	bne lbl_80C7447C
/* 80C74474  38 00 00 00 */	li r0, 0
/* 80C74478  98 1E 14 BD */	stb r0, 0x14bd(r30)
lbl_80C7447C:
/* 80C7447C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C74480  98 1E 14 BE */	stb r0, 0x14be(r30)
/* 80C74484  7F C3 F3 78 */	mr r3, r30
/* 80C74488  48 00 02 99 */	bl isSwitch__13daLv6SwGate_cFv
/* 80C7448C  98 7E 14 BF */	stb r3, 0x14bf(r30)
/* 80C74490  3C 60 80 C7 */	lis r3, lit_3675@ha
/* 80C74494  C0 03 55 64 */	lfs f0, lit_3675@l(r3)
/* 80C74498  D0 1E 14 C0 */	stfs f0, 0x14c0(r30)
/* 80C7449C  88 1E 14 BF */	lbz r0, 0x14bf(r30)
/* 80C744A0  28 00 00 00 */	cmplwi r0, 0
/* 80C744A4  41 82 00 14 */	beq lbl_80C744B8
/* 80C744A8  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C744AC  38 63 57 54 */	addi r3, r3, l_HIO@l
/* 80C744B0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C744B4  D0 1E 14 C0 */	stfs f0, 0x14c0(r30)
lbl_80C744B8:
/* 80C744B8  7F C3 F3 78 */	mr r3, r30
/* 80C744BC  48 00 06 8D */	bl init_modeWait__13daLv6SwGate_cFv
/* 80C744C0  7F C3 F3 78 */	mr r3, r30
/* 80C744C4  4B FF FB 41 */	bl setBaseMtx__13daLv6SwGate_cFv
lbl_80C744C8:
/* 80C744C8  7F E3 FB 78 */	mr r3, r31
lbl_80C744CC:
/* 80C744CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C744D0  4B 6E DD 48 */	b _restgpr_25
/* 80C744D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C744D8  7C 08 03 A6 */	mtlr r0
/* 80C744DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C744E0  4E 80 00 20 */	blr 
