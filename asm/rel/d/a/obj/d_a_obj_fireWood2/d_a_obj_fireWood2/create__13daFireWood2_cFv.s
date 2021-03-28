lbl_80BE8328:
/* 80BE8328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE832C  7C 08 02 A6 */	mflr r0
/* 80BE8330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE8338  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE833C  7C 7F 1B 78 */	mr r31, r3
/* 80BE8340  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE8344  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE8348  40 82 00 A8 */	bne lbl_80BE83F0
/* 80BE834C  7F E0 FB 79 */	or. r0, r31, r31
/* 80BE8350  41 82 00 94 */	beq lbl_80BE83E4
/* 80BE8354  7C 1E 03 78 */	mr r30, r0
/* 80BE8358  4B 43 08 0C */	b __ct__10fopAc_ac_cFv
/* 80BE835C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BE8360  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BE8364  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BE8368  38 7E 05 90 */	addi r3, r30, 0x590
/* 80BE836C  4B 49 B3 F4 */	b __ct__10dCcD_GSttsFv
/* 80BE8370  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BE8374  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BE8378  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80BE837C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BE8380  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80BE8384  3B DE 05 B0 */	addi r30, r30, 0x5b0
/* 80BE8388  7F C3 F3 78 */	mr r3, r30
/* 80BE838C  4B 49 B6 9C */	b __ct__12dCcD_GObjInfFv
/* 80BE8390  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BE8394  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BE8398  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE839C  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BE83A0  38 03 90 50 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BE83A4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BE83A8  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha
/* 80BE83AC  38 03 90 44 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BE83B0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BE83B4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BE83B8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BE83BC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BE83C0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BE83C4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BE83C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BE83CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BE83D0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BE83D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BE83D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BE83DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BE83E0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BE83E4:
/* 80BE83E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE83E8  60 00 00 08 */	ori r0, r0, 8
/* 80BE83EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE83F0:
/* 80BE83F0  7F E3 FB 78 */	mr r3, r31
/* 80BE83F4  4B FF FE DD */	bl setBaseMtx__13daFireWood2_cFv
/* 80BE83F8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BE83FC  38 80 00 FF */	li r4, 0xff
/* 80BE8400  38 A0 00 FF */	li r5, 0xff
/* 80BE8404  7F E6 FB 78 */	mr r6, r31
/* 80BE8408  4B 49 B4 58 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BE840C  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BE8410  3C 80 80 BF */	lis r4, mCcDCyl__13daFireWood2_c@ha
/* 80BE8414  38 84 8F 98 */	addi r4, r4, mCcDCyl__13daFireWood2_c@l
/* 80BE8418  4B 49 C4 9C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BE841C  38 1F 05 74 */	addi r0, r31, 0x574
/* 80BE8420  90 1F 05 F4 */	stw r0, 0x5f4(r31)
/* 80BE8424  3C 60 80 BF */	lis r3, l_cull_box@ha
/* 80BE8428  38 83 8F DC */	addi r4, r3, l_cull_box@l
/* 80BE842C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80BE8430  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80BE8434  EC A0 00 B2 */	fmuls f5, f0, f2
/* 80BE8438  C0 9F 04 EC */	lfs f4, 0x4ec(r31)
/* 80BE843C  7F E3 FB 78 */	mr r3, r31
/* 80BE8440  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BE8444  EC 20 01 32 */	fmuls f1, f0, f4
/* 80BE8448  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BE844C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80BE8450  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BE8454  EC 60 01 32 */	fmuls f3, f0, f4
/* 80BE8458  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80BE845C  EC 80 01 32 */	fmuls f4, f0, f4
/* 80BE8460  FC C0 28 90 */	fmr f6, f5
/* 80BE8464  4B 43 20 E4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BE8468  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BE846C  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 80BE8470  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BE8474  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BE8478  38 63 90 8C */	addi r3, r3, l_HIO@l
/* 80BE847C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE8480  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE8484  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 80BE8488  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BE848C  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 80BE8490  38 60 00 00 */	li r3, 0
/* 80BE8494  7C 64 1B 78 */	mr r4, r3
/* 80BE8498  38 00 00 04 */	li r0, 4
/* 80BE849C  7C 09 03 A6 */	mtctr r0
lbl_80BE84A0:
/* 80BE84A0  38 03 06 FC */	addi r0, r3, 0x6fc
/* 80BE84A4  7C 9F 01 2E */	stwx r4, r31, r0
/* 80BE84A8  38 63 00 04 */	addi r3, r3, 4
/* 80BE84AC  42 00 FF F4 */	bdnz lbl_80BE84A0
/* 80BE84B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE84B4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BE84B8  98 1F 07 18 */	stb r0, 0x718(r31)
/* 80BE84BC  88 1F 07 18 */	lbz r0, 0x718(r31)
/* 80BE84C0  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE84C4  40 82 00 0C */	bne lbl_80BE84D0
/* 80BE84C8  38 00 00 00 */	li r0, 0
/* 80BE84CC  98 1F 07 18 */	stb r0, 0x718(r31)
lbl_80BE84D0:
/* 80BE84D0  7F E3 FB 78 */	mr r3, r31
/* 80BE84D4  48 00 01 6D */	bl lightInit__13daFireWood2_cFv
/* 80BE84D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE84DC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BE84E0  98 1F 06 FA */	stb r0, 0x6fa(r31)
/* 80BE84E4  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80BE84E8  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE84EC  40 82 00 0C */	bne lbl_80BE84F8
/* 80BE84F0  38 00 00 00 */	li r0, 0
/* 80BE84F4  98 1F 06 FA */	stb r0, 0x6fa(r31)
lbl_80BE84F8:
/* 80BE84F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE84FC  54 00 46 3E */	srwi r0, r0, 0x18
/* 80BE8500  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 80BE8504  C0 1F 06 EC */	lfs f0, 0x6ec(r31)
/* 80BE8508  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BE850C  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 80BE8510  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BE8514  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 80BE8518  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BE851C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE8520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE8524  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BE8528  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BE852C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BE8530  7C 05 07 74 */	extsb r5, r0
/* 80BE8534  4B 44 CE 2C */	b isSwitch__10dSv_info_cCFii
/* 80BE8538  98 7F 06 F9 */	stb r3, 0x6f9(r31)
/* 80BE853C  38 00 00 00 */	li r0, 0
/* 80BE8540  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8544  88 1F 06 FA */	lbz r0, 0x6fa(r31)
/* 80BE8548  28 00 00 00 */	cmplwi r0, 0
/* 80BE854C  40 82 00 28 */	bne lbl_80BE8574
/* 80BE8550  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80BE8554  28 00 00 00 */	cmplwi r0, 0
/* 80BE8558  41 82 00 3C */	beq lbl_80BE8594
/* 80BE855C  38 00 00 01 */	li r0, 1
/* 80BE8560  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8564  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE8568  7F E3 FB 78 */	mr r3, r31
/* 80BE856C  48 00 01 61 */	bl setLight__13daFireWood2_cFv
/* 80BE8570  48 00 00 24 */	b lbl_80BE8594
lbl_80BE8574:
/* 80BE8574  88 1F 06 F9 */	lbz r0, 0x6f9(r31)
/* 80BE8578  28 00 00 00 */	cmplwi r0, 0
/* 80BE857C  40 82 00 18 */	bne lbl_80BE8594
/* 80BE8580  38 00 00 01 */	li r0, 1
/* 80BE8584  98 1F 06 F8 */	stb r0, 0x6f8(r31)
/* 80BE8588  98 1F 06 25 */	stb r0, 0x625(r31)
/* 80BE858C  7F E3 FB 78 */	mr r3, r31
/* 80BE8590  48 00 01 3D */	bl setLight__13daFireWood2_cFv
lbl_80BE8594:
/* 80BE8594  38 60 00 04 */	li r3, 4
/* 80BE8598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE859C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE85A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE85A4  7C 08 03 A6 */	mtlr r0
/* 80BE85A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE85AC  4E 80 00 20 */	blr 
