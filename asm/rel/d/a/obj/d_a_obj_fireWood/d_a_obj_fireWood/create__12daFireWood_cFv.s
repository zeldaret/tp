lbl_80BE7708:
/* 80BE7708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE770C  7C 08 02 A6 */	mflr r0
/* 80BE7710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE7718  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE771C  7C 7F 1B 78 */	mr r31, r3
/* 80BE7720  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE7724  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE7728  40 82 00 A8 */	bne lbl_80BE77D0
/* 80BE772C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BE7730  41 82 00 94 */	beq lbl_80BE77C4
/* 80BE7734  7C 1E 03 78 */	mr r30, r0
/* 80BE7738  4B 43 14 2C */	b __ct__10fopAc_ac_cFv
/* 80BE773C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BE7740  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BE7744  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BE7748  38 7E 05 90 */	addi r3, r30, 0x590
/* 80BE774C  4B 49 C0 14 */	b __ct__10dCcD_GSttsFv
/* 80BE7750  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BE7754  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BE7758  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80BE775C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BE7760  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80BE7764  3B DE 05 B0 */	addi r30, r30, 0x5b0
/* 80BE7768  7F C3 F3 78 */	mr r3, r30
/* 80BE776C  4B 49 C2 BC */	b __ct__12dCcD_GObjInfFv
/* 80BE7770  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BE7774  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BE7778  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE777C  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BE7780  38 03 81 08 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BE7784  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BE7788  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha
/* 80BE778C  38 03 80 FC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BE7790  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BE7794  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BE7798  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BE779C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BE77A0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BE77A4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BE77A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BE77AC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BE77B0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BE77B4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BE77B8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE77BC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BE77C0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BE77C4:
/* 80BE77C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE77C8  60 00 00 08 */	ori r0, r0, 8
/* 80BE77CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE77D0:
/* 80BE77D0  7F E3 FB 78 */	mr r3, r31
/* 80BE77D4  4B FF FE DD */	bl setBaseMtx__12daFireWood_cFv
/* 80BE77D8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BE77DC  38 80 00 FF */	li r4, 0xff
/* 80BE77E0  38 A0 00 FF */	li r5, 0xff
/* 80BE77E4  7F E6 FB 78 */	mr r6, r31
/* 80BE77E8  4B 49 C0 78 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BE77EC  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE77F0  3C 80 80 BF */	lis r4, mCcDCyl__12daFireWood_c@ha
/* 80BE77F4  38 84 80 50 */	addi r4, r4, mCcDCyl__12daFireWood_c@l
/* 80BE77F8  4B 49 D0 BC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BE77FC  38 1F 05 74 */	addi r0, r31, 0x574
/* 80BE7800  90 1F 05 F4 */	stw r0, 0x5f4(r31)
/* 80BE7804  3C 60 80 BF */	lis r3, l_cull_box@ha
/* 80BE7808  38 83 80 94 */	addi r4, r3, l_cull_box@l
/* 80BE780C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80BE7810  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80BE7814  EC A0 00 B2 */	fmuls f5, f0, f2
/* 80BE7818  C0 9F 04 EC */	lfs f4, 0x4ec(r31)
/* 80BE781C  7F E3 FB 78 */	mr r3, r31
/* 80BE7820  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BE7824  EC 20 01 32 */	fmuls f1, f0, f4
/* 80BE7828  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BE782C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BE7830  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BE7834  EC 60 01 32 */	fmuls f3, f0, f4
/* 80BE7838  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80BE783C  EC 80 01 32 */	fmuls f4, f0, f4
/* 80BE7840  FC C0 28 90 */	fmr f6, f5
/* 80BE7844  4B 43 2D 04 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BE7848  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BE784C  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 80BE7850  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BE7854  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BE7858  38 63 81 44 */	addi r3, r3, l_HIO@l
/* 80BE785C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE7860  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE7864  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 80BE7868  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BE786C  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 80BE7870  38 60 00 00 */	li r3, 0
/* 80BE7874  7C 64 1B 78 */	mr r4, r3
/* 80BE7878  38 00 00 04 */	li r0, 4
/* 80BE787C  7C 09 03 A6 */	mtctr r0
lbl_80BE7880:
/* 80BE7880  38 03 06 FC */	addi r0, r3, 0x6fc
/* 80BE7884  7C 9F 01 2E */	stwx r4, r31, r0
/* 80BE7888  38 63 00 04 */	addi r3, r3, 4
/* 80BE788C  42 00 FF F4 */	bdnz lbl_80BE7880
/* 80BE7890  7F E3 FB 78 */	mr r3, r31
/* 80BE7894  48 00 01 0D */	bl lightInit__12daFireWood_cFv
/* 80BE7898  38 00 00 00 */	li r0, 0
/* 80BE789C  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 80BE78A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE78A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE78A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE78AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE78B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE78B4  7C 05 07 74 */	extsb r5, r0
/* 80BE78B8  4B 44 DA A8 */	b isSwitch__10dSv_info_cCFii
/* 80BE78BC  98 7F 06 F8 */	stb r3, 0x6f8(r31)
/* 80BE78C0  88 1F 06 F8 */	lbz r0, 0x6f8(r31)
/* 80BE78C4  28 00 00 00 */	cmplwi r0, 0
/* 80BE78C8  41 82 00 18 */	beq lbl_80BE78E0
/* 80BE78CC  38 00 00 01 */	li r0, 1
/* 80BE78D0  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 80BE78D4  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE78D8  7F E3 FB 78 */	mr r3, r31
/* 80BE78DC  48 00 01 39 */	bl setLight__12daFireWood_cFv
lbl_80BE78E0:
/* 80BE78E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE78E4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BE78E8  98 1F 07 0C */	stb r0, 0x70c(r31)
/* 80BE78EC  38 00 00 00 */	li r0, 0
/* 80BE78F0  98 1F 07 3C */	stb r0, 0x73c(r31)
/* 80BE78F4  38 60 00 04 */	li r3, 4
/* 80BE78F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE78FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE7900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7904  7C 08 03 A6 */	mtlr r0
/* 80BE7908  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE790C  4E 80 00 20 */	blr 
