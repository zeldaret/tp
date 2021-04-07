lbl_800B02BC:
/* 800B02BC  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 800B02C0  7C 08 02 A6 */	mflr r0
/* 800B02C4  90 01 01 74 */	stw r0, 0x174(r1)
/* 800B02C8  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 800B02CC  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 800B02D0  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 800B02D4  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 800B02D8  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 800B02DC  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 800B02E0  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 800B02E4  F3 81 01 38 */	psq_st f28, 312(r1), 0, 0 /* qr0 */
/* 800B02E8  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 800B02EC  F3 61 01 28 */	psq_st f27, 296(r1), 0, 0 /* qr0 */
/* 800B02F0  DB 41 01 10 */	stfd f26, 0x110(r1)
/* 800B02F4  F3 41 01 18 */	psq_st f26, 280(r1), 0, 0 /* qr0 */
/* 800B02F8  DB 21 01 00 */	stfd f25, 0x100(r1)
/* 800B02FC  F3 21 01 08 */	psq_st f25, 264(r1), 0, 0 /* qr0 */
/* 800B0300  DB 01 00 F0 */	stfd f24, 0xf0(r1)
/* 800B0304  F3 01 00 F8 */	psq_st f24, 248(r1), 0, 0 /* qr0 */
/* 800B0308  DA E1 00 E0 */	stfd f23, 0xe0(r1)
/* 800B030C  F2 E1 00 E8 */	psq_st f23, 232(r1), 0, 0 /* qr0 */
/* 800B0310  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800B0314  48 2B 1E B1 */	bl _savegpr_23
/* 800B0318  7C 78 1B 78 */	mr r24, r3
/* 800B031C  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800B0320  3B C3 D6 58 */	addi r30, r3, lit_3757@l /* 0x8038D658@l */
/* 800B0324  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B0328  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B032C  41 82 00 0C */	beq lbl_800B0338
/* 800B0330  C3 A2 94 68 */	lfs f29, lit_14955(r2)
/* 800B0334  48 00 00 30 */	b lbl_800B0364
lbl_800B0338:
/* 800B0338  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B033C  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B0340  40 82 00 0C */	bne lbl_800B034C
/* 800B0344  C3 A2 93 00 */	lfs f29, lit_6895(r2)
/* 800B0348  48 00 00 1C */	b lbl_800B0364
lbl_800B034C:
/* 800B034C  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0350  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800B0354  41 82 00 0C */	beq lbl_800B0360
/* 800B0358  C3 A2 93 00 */	lfs f29, lit_6895(r2)
/* 800B035C  48 00 00 08 */	b lbl_800B0364
lbl_800B0360:
/* 800B0360  C3 B8 18 E4 */	lfs f29, 0x18e4(r24)
lbl_800B0364:
/* 800B0364  88 18 2F 91 */	lbz r0, 0x2f91(r24)
/* 800B0368  28 00 00 00 */	cmplwi r0, 0
/* 800B036C  40 82 10 A0 */	bne lbl_800B140C
/* 800B0370  38 00 00 01 */	li r0, 1
/* 800B0374  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B0378  80 18 05 70 */	lwz r0, 0x570(r24)
/* 800B037C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B0380  40 82 10 8C */	bne lbl_800B140C
/* 800B0384  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 800B0388  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B038C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800B0390  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800B0394  7C 63 04 2E */	lfsx f3, r3, r0
/* 800B0398  FF 80 18 90 */	fmr f28, f3
/* 800B039C  7C 63 02 14 */	add r3, r3, r0
/* 800B03A0  C0 83 00 04 */	lfs f4, 4(r3)
/* 800B03A4  FF 60 20 90 */	fmr f27, f4
/* 800B03A8  3B 60 00 00 */	li r27, 0
/* 800B03AC  3B 40 00 00 */	li r26, 0
/* 800B03B0  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B03B4  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B03B8  40 82 00 DC */	bne lbl_800B0494
/* 800B03BC  A8 18 30 0C */	lha r0, 0x300c(r24)
/* 800B03C0  2C 00 00 04 */	cmpwi r0, 4
/* 800B03C4  40 82 00 80 */	bne lbl_800B0444
/* 800B03C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B03CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B03D0  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 800B03D4  7F 23 CB 78 */	mr r3, r25
/* 800B03D8  38 98 1E 2C */	addi r4, r24, 0x1e2c
/* 800B03DC  4B FC 42 85 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800B03E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B03E4  41 82 00 60 */	beq lbl_800B0444
/* 800B03E8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B03EC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B03F0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 800B03F4  7F 23 CB 78 */	mr r3, r25
/* 800B03F8  38 98 1E 2C */	addi r4, r24, 0x1e2c
/* 800B03FC  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 800B0400  4B FC 43 45 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B0404  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 800B0408  48 1B 7E 09 */	bl cBgW_CheckBWall__Ff
/* 800B040C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0410  41 82 00 28 */	beq lbl_800B0438
/* 800B0414  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B0418  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 800B041C  38 61 00 14 */	addi r3, r1, 0x14
/* 800B0420  38 81 00 A0 */	addi r4, r1, 0xa0
/* 800B0424  48 1B 6B 25 */	bl normalizeZP__4cXyzFv
/* 800B0428  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 800B042C  FF 80 00 50 */	fneg f28, f0
/* 800B0430  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800B0434  FF 60 00 50 */	fneg f27, f0
lbl_800B0438:
/* 800B0438  38 61 00 A0 */	addi r3, r1, 0xa0
/* 800B043C  38 80 FF FF */	li r4, -1
/* 800B0440  4B F6 D7 51 */	bl __dt__8cM3dGPlaFv
lbl_800B0444:
/* 800B0444  C0 B8 37 EC */	lfs f5, 0x37ec(r24)
/* 800B0448  EC 1C 07 72 */	fmuls f0, f28, f29
/* 800B044C  EC 85 00 28 */	fsubs f4, f5, f0
/* 800B0450  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 800B0454  C0 78 37 F4 */	lfs f3, 0x37f4(r24)
/* 800B0458  EC 1B 07 72 */	fmuls f0, f27, f29
/* 800B045C  EC 43 00 28 */	fsubs f2, f3, f0
/* 800B0460  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800B0464  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800B0468  EC 01 01 72 */	fmuls f0, f1, f5
/* 800B046C  EC 00 20 28 */	fsubs f0, f0, f4
/* 800B0470  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800B0474  EC 01 00 F2 */	fmuls f0, f1, f3
/* 800B0478  EC 00 10 28 */	fsubs f0, f0, f2
/* 800B047C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800B0480  C0 38 37 F0 */	lfs f1, 0x37f0(r24)
/* 800B0484  FE E0 08 90 */	fmr f23, f1
/* 800B0488  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800B048C  EF C0 08 2A */	fadds f30, f0, f1
/* 800B0490  48 00 00 44 */	b lbl_800B04D4
lbl_800B0494:
/* 800B0494  C0 58 04 D0 */	lfs f2, 0x4d0(r24)
/* 800B0498  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800B049C  C0 38 04 D8 */	lfs f1, 0x4d8(r24)
/* 800B04A0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800B04A4  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800B04A8  EC A0 E8 2A */	fadds f5, f0, f29
/* 800B04AC  EC 03 01 72 */	fmuls f0, f3, f5
/* 800B04B0  EC 02 00 2A */	fadds f0, f2, f0
/* 800B04B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800B04B8  EC 04 01 72 */	fmuls f0, f4, f5
/* 800B04BC  EC 01 00 2A */	fadds f0, f1, f0
/* 800B04C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800B04C4  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 800B04C8  FE E0 08 90 */	fmr f23, f1
/* 800B04CC  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800B04D0  EF C0 08 2A */	fadds f30, f0, f1
lbl_800B04D4:
/* 800B04D4  3B 20 00 00 */	li r25, 0
/* 800B04D8  3B 80 00 00 */	li r28, 0
/* 800B04DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B04E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B04E4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800B04E8  48 00 01 40 */	b lbl_800B0628
lbl_800B04EC:
/* 800B04EC  57 83 30 32 */	slwi r3, r28, 6
/* 800B04F0  38 03 18 E0 */	addi r0, r3, 0x18e0
/* 800B04F4  7C 18 04 2E */	lfsx f0, r24, r0
/* 800B04F8  EC 17 00 2A */	fadds f0, f23, f0
/* 800B04FC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800B0500  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800B0504  7F 03 C3 78 */	mr r3, r24
/* 800B0508  38 81 00 44 */	addi r4, r1, 0x44
/* 800B050C  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B0510  4B FF 1C 89 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B0514  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0518  41 82 01 0C */	beq lbl_800B0624
/* 800B051C  7F A3 EB 78 */	mr r3, r29
/* 800B0520  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0524  4B FC 48 DD */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800B0528  7C 7F 1B 78 */	mr r31, r3
/* 800B052C  2C 1C 00 00 */	cmpwi r28, 0
/* 800B0530  40 82 00 38 */	bne lbl_800B0568
/* 800B0534  2C 1F 00 03 */	cmpwi r31, 3
/* 800B0538  40 82 00 30 */	bne lbl_800B0568
/* 800B053C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800B0540  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800B0544  38 63 00 96 */	addi r3, r3, 0x96
/* 800B0548  4B FE D5 19 */	bl checkStageName__9daAlink_cFPCc
/* 800B054C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0550  41 82 00 18 */	beq lbl_800B0568
/* 800B0554  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 800B0558  2C 00 00 06 */	cmpwi r0, 6
/* 800B055C  40 82 00 0C */	bne lbl_800B0568
/* 800B0560  3B 20 00 01 */	li r25, 1
/* 800B0564  48 00 00 C0 */	b lbl_800B0624
lbl_800B0568:
/* 800B0568  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B056C  54 05 01 8D */	rlwinm. r5, r0, 0, 6, 6
/* 800B0570  40 82 00 94 */	bne lbl_800B0604
/* 800B0574  2C 1B 00 00 */	cmpwi r27, 0
/* 800B0578  40 82 00 8C */	bne lbl_800B0604
/* 800B057C  2C 1C 00 00 */	cmpwi r28, 0
/* 800B0580  40 82 00 24 */	bne lbl_800B05A4
/* 800B0584  80 18 19 9C */	lwz r0, 0x199c(r24)
/* 800B0588  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B058C  41 82 00 18 */	beq lbl_800B05A4
/* 800B0590  80 98 31 A0 */	lwz r4, 0x31a0(r24)
/* 800B0594  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800B0598  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800B059C  7C 80 00 39 */	and. r0, r4, r0
/* 800B05A0  41 82 00 10 */	beq lbl_800B05B0
lbl_800B05A4:
/* 800B05A4  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B05A8  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B05AC  40 82 00 58 */	bne lbl_800B0604
lbl_800B05B0:
/* 800B05B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800B05B4  40 82 00 50 */	bne lbl_800B0604
/* 800B05B8  3B 60 00 01 */	li r27, 1
/* 800B05BC  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 800B05C0  FC 00 F0 18 */	frsp f0, f30
/* 800B05C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800B05C8  7F 03 C3 78 */	mr r3, r24
/* 800B05CC  38 81 00 44 */	addi r4, r1, 0x44
/* 800B05D0  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B05D4  4B FF 1B C5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B05D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B05DC  41 82 00 20 */	beq lbl_800B05FC
/* 800B05E0  7F 03 C3 78 */	mr r3, r24
/* 800B05E4  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B05E8  48 04 DA 71 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800B05EC  2C 03 00 00 */	cmpwi r3, 0
/* 800B05F0  41 82 00 0C */	beq lbl_800B05FC
/* 800B05F4  3B 40 00 01 */	li r26, 1
/* 800B05F8  48 00 00 38 */	b lbl_800B0630
lbl_800B05FC:
/* 800B05FC  3B 80 FF FF */	li r28, -1
/* 800B0600  48 00 00 24 */	b lbl_800B0624
lbl_800B0604:
/* 800B0604  28 05 00 00 */	cmplwi r5, 0
/* 800B0608  41 82 00 28 */	beq lbl_800B0630
/* 800B060C  2C 1C 00 00 */	cmpwi r28, 0
/* 800B0610  41 82 00 0C */	beq lbl_800B061C
/* 800B0614  2C 1C 00 01 */	cmpwi r28, 1
/* 800B0618  40 82 00 18 */	bne lbl_800B0630
lbl_800B061C:
/* 800B061C  2C 1F 00 07 */	cmpwi r31, 7
/* 800B0620  40 82 00 10 */	bne lbl_800B0630
lbl_800B0624:
/* 800B0624  3B 9C 00 01 */	addi r28, r28, 1
lbl_800B0628:
/* 800B0628  2C 1C 00 03 */	cmpwi r28, 3
/* 800B062C  41 80 FE C0 */	blt lbl_800B04EC
lbl_800B0630:
/* 800B0630  2C 1C 00 03 */	cmpwi r28, 3
/* 800B0634  40 82 00 48 */	bne lbl_800B067C
/* 800B0638  2C 19 00 00 */	cmpwi r25, 0
/* 800B063C  40 82 00 14 */	bne lbl_800B0650
/* 800B0640  80 18 05 7C */	lwz r0, 0x57c(r24)
/* 800B0644  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B0648  90 18 05 7C */	stw r0, 0x57c(r24)
/* 800B064C  48 00 0D C0 */	b lbl_800B140C
lbl_800B0650:
/* 800B0650  C0 18 18 E0 */	lfs f0, 0x18e0(r24)
/* 800B0654  EC 17 00 2A */	fadds f0, f23, f0
/* 800B0658  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800B065C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800B0660  7F 03 C3 78 */	mr r3, r24
/* 800B0664  38 81 00 44 */	addi r4, r1, 0x44
/* 800B0668  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B066C  4B FF 1B 2D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B0670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0674  40 82 00 0C */	bne lbl_800B0680
/* 800B0678  48 00 0D 94 */	b lbl_800B140C
lbl_800B067C:
/* 800B067C  3B 20 00 00 */	li r25, 0
lbl_800B0680:
/* 800B0680  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B0684  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B0688  90 01 00 9C */	stw r0, 0x9c(r1)
/* 800B068C  7F A3 EB 78 */	mr r3, r29
/* 800B0690  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0694  38 A1 00 8C */	addi r5, r1, 0x8c
/* 800B0698  4B FC 40 AD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B069C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 800B06A0  FC 00 02 10 */	fabs f0, f0
/* 800B06A4  FC 20 00 18 */	frsp f1, f0
/* 800B06A8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B06AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B06B0  40 81 00 14 */	ble lbl_800B06C4
/* 800B06B4  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B06B8  38 80 FF FF */	li r4, -1
/* 800B06BC  4B F6 D4 D5 */	bl __dt__8cM3dGPlaFv
/* 800B06C0  48 00 0D 4C */	b lbl_800B140C
lbl_800B06C4:
/* 800B06C4  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B06C8  48 1B 6A 61 */	bl atan2sX_Z__4cXyzCFv
/* 800B06CC  B0 78 30 6E */	sth r3, 0x306e(r24)
/* 800B06D0  3B 60 00 00 */	li r27, 0
/* 800B06D4  A0 78 2F E8 */	lhz r3, 0x2fe8(r24)
/* 800B06D8  28 03 00 C6 */	cmplwi r3, 0xc6
/* 800B06DC  40 82 00 0C */	bne lbl_800B06E8
/* 800B06E0  3A E0 7F FF */	li r23, 0x7fff
/* 800B06E4  48 00 00 38 */	b lbl_800B071C
lbl_800B06E8:
/* 800B06E8  28 03 01 1C */	cmplwi r3, 0x11c
/* 800B06EC  41 82 00 18 */	beq lbl_800B0704
/* 800B06F0  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B06F4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B06F8  41 82 00 20 */	beq lbl_800B0718
/* 800B06FC  2C 1F 00 03 */	cmpwi r31, 3
/* 800B0700  40 82 00 18 */	bne lbl_800B0718
lbl_800B0704:
/* 800B0704  28 03 01 1C */	cmplwi r3, 0x11c
/* 800B0708  41 82 00 08 */	beq lbl_800B0710
/* 800B070C  3B 60 00 01 */	li r27, 1
lbl_800B0710:
/* 800B0710  3A E0 20 00 */	li r23, 0x2000
/* 800B0714  48 00 00 08 */	b lbl_800B071C
lbl_800B0718:
/* 800B0718  AA F8 30 AE */	lha r23, 0x30ae(r24)
lbl_800B071C:
/* 800B071C  A8 78 30 6E */	lha r3, 0x306e(r24)
/* 800B0720  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 800B0724  3C 84 00 01 */	addis r4, r4, 1
/* 800B0728  38 04 80 00 */	addi r0, r4, -32768
/* 800B072C  7C 04 07 34 */	extsh r4, r0
/* 800B0730  48 1C 06 F5 */	bl cLib_distanceAngleS__Fss
/* 800B0734  7C 7F 1B 78 */	mr r31, r3
/* 800B0738  7E E0 07 34 */	extsh r0, r23
/* 800B073C  7C 1F 00 00 */	cmpw r31, r0
/* 800B0740  40 81 00 14 */	ble lbl_800B0754
/* 800B0744  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0748  38 80 FF FF */	li r4, -1
/* 800B074C  4B F6 D4 45 */	bl __dt__8cM3dGPlaFv
/* 800B0750  48 00 0C BC */	b lbl_800B140C
lbl_800B0754:
/* 800B0754  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B0758  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B075C  90 01 00 88 */	stw r0, 0x88(r1)
/* 800B0760  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0764  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B0768  41 82 00 14 */	beq lbl_800B077C
/* 800B076C  38 78 34 EC */	addi r3, r24, 0x34ec
/* 800B0770  38 98 1B 78 */	addi r4, r24, 0x1b78
/* 800B0774  4B FE 70 65 */	bl __as__4cXyzFRC4cXyz
/* 800B0778  48 00 01 70 */	b lbl_800B08E8
lbl_800B077C:
/* 800B077C  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0780  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 800B0784  48 1B 80 91 */	bl cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec
/* 800B0788  FE E0 08 90 */	fmr f23, f1
/* 800B078C  FF E0 B8 90 */	fmr f31, f23
/* 800B0790  C0 38 04 D8 */	lfs f1, 0x4d8(r24)
/* 800B0794  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800B0798  EC 17 00 32 */	fmuls f0, f23, f0
/* 800B079C  EC 61 00 28 */	fsubs f3, f1, f0
/* 800B07A0  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 800B07A4  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 800B07A8  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800B07AC  EC 17 00 32 */	fmuls f0, f23, f0
/* 800B07B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B07B4  D0 18 34 EC */	stfs f0, 0x34ec(r24)
/* 800B07B8  D0 58 34 F0 */	stfs f2, 0x34f0(r24)
/* 800B07BC  D0 78 34 F4 */	stfs f3, 0x34f4(r24)
/* 800B07C0  7F A3 EB 78 */	mr r3, r29
/* 800B07C4  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B07C8  4B FC 46 39 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800B07CC  2C 03 00 04 */	cmpwi r3, 4
/* 800B07D0  41 82 01 18 */	beq lbl_800B08E8
/* 800B07D4  2C 03 00 05 */	cmpwi r3, 5
/* 800B07D8  41 82 01 10 */	beq lbl_800B08E8
/* 800B07DC  C0 58 04 D0 */	lfs f2, 0x4d0(r24)
/* 800B07E0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800B07E4  C0 38 04 D8 */	lfs f1, 0x4d8(r24)
/* 800B07E8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800B07EC  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800B07F0  EC 60 05 F2 */	fmuls f3, f0, f23
/* 800B07F4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800B07F8  EC 03 00 32 */	fmuls f0, f3, f0
/* 800B07FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 800B0800  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800B0804  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800B0808  EC 03 00 32 */	fmuls f0, f3, f0
/* 800B080C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B0810  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800B0814  3A E0 00 00 */	li r23, 0
/* 800B0818  7E FC BB 78 */	mr r28, r23
lbl_800B081C:
/* 800B081C  2C 17 00 00 */	cmpwi r23, 0
/* 800B0820  40 82 00 14 */	bne lbl_800B0834
/* 800B0824  2C 1A 00 00 */	cmpwi r26, 0
/* 800B0828  41 82 00 0C */	beq lbl_800B0834
/* 800B082C  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 800B0830  48 00 00 18 */	b lbl_800B0848
lbl_800B0834:
/* 800B0834  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 800B0838  38 1C 18 E0 */	addi r0, r28, 0x18e0
/* 800B083C  7C 18 04 2E */	lfsx f0, r24, r0
/* 800B0840  EC 01 00 2A */	fadds f0, f1, f0
/* 800B0844  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_800B0848:
/* 800B0848  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800B084C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800B0850  7F 03 C3 78 */	mr r3, r24
/* 800B0854  38 81 00 44 */	addi r4, r1, 0x44
/* 800B0858  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B085C  4B FF 19 3D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B0860  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0864  41 82 00 44 */	beq lbl_800B08A8
/* 800B0868  7F A3 EB 78 */	mr r3, r29
/* 800B086C  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0870  38 A1 00 78 */	addi r5, r1, 0x78
/* 800B0874  4B FC 3E D1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B0878  38 61 00 08 */	addi r3, r1, 8
/* 800B087C  38 81 00 8C */	addi r4, r1, 0x8c
/* 800B0880  38 A1 00 78 */	addi r5, r1, 0x78
/* 800B0884  48 1B 62 B1 */	bl __mi__4cXyzCFRC3Vec
/* 800B0888  38 61 00 2C */	addi r3, r1, 0x2c
/* 800B088C  38 81 00 08 */	addi r4, r1, 8
/* 800B0890  4B FE 6F 65 */	bl __ct__4cXyzFRC4cXyz
/* 800B0894  38 61 00 2C */	addi r3, r1, 0x2c
/* 800B0898  4B FD DE F9 */	bl abs__4cXyzCFv
/* 800B089C  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800B08A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B08A4  41 80 00 14 */	blt lbl_800B08B8
lbl_800B08A8:
/* 800B08A8  3A F7 00 01 */	addi r23, r23, 1
/* 800B08AC  2C 17 00 03 */	cmpwi r23, 3
/* 800B08B0  3B 9C 00 40 */	addi r28, r28, 0x40
/* 800B08B4  41 80 FF 68 */	blt lbl_800B081C
lbl_800B08B8:
/* 800B08B8  2C 17 00 03 */	cmpwi r23, 3
/* 800B08BC  40 82 00 2C */	bne lbl_800B08E8
/* 800B08C0  80 18 05 7C */	lwz r0, 0x57c(r24)
/* 800B08C4  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B08C8  90 18 05 7C */	stw r0, 0x57c(r24)
/* 800B08CC  38 61 00 78 */	addi r3, r1, 0x78
/* 800B08D0  38 80 FF FF */	li r4, -1
/* 800B08D4  4B F6 D2 BD */	bl __dt__8cM3dGPlaFv
/* 800B08D8  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B08DC  38 80 FF FF */	li r4, -1
/* 800B08E0  4B F6 D2 B1 */	bl __dt__8cM3dGPlaFv
/* 800B08E4  48 00 0B 28 */	b lbl_800B140C
lbl_800B08E8:
/* 800B08E8  7F A3 EB 78 */	mr r3, r29
/* 800B08EC  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B08F0  4B FC 45 11 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800B08F4  7C 7A 1B 78 */	mr r26, r3
/* 800B08F8  7F A3 EB 78 */	mr r3, r29
/* 800B08FC  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0900  4B FC 3D 29 */	bl GetBgWBasePointer__4cBgSCFRC13cBgS_PolyInfo
/* 800B0904  2C 1A 00 03 */	cmpwi r26, 3
/* 800B0908  41 82 00 0C */	beq lbl_800B0914
/* 800B090C  2C 1A 00 01 */	cmpwi r26, 1
/* 800B0910  40 82 00 28 */	bne lbl_800B0938
lbl_800B0914:
/* 800B0914  2C 19 00 00 */	cmpwi r25, 0
/* 800B0918  40 82 00 18 */	bne lbl_800B0930
/* 800B091C  28 03 00 00 */	cmplwi r3, 0
/* 800B0920  41 82 00 18 */	beq lbl_800B0938
/* 800B0924  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800B0928  28 00 00 00 */	cmplwi r0, 0
/* 800B092C  40 82 00 0C */	bne lbl_800B0938
lbl_800B0930:
/* 800B0930  3B 40 00 00 */	li r26, 0
/* 800B0934  48 00 00 1C */	b lbl_800B0950
lbl_800B0938:
/* 800B0938  2C 1A 00 01 */	cmpwi r26, 1
/* 800B093C  40 82 00 14 */	bne lbl_800B0950
/* 800B0940  88 18 05 6A */	lbz r0, 0x56a(r24)
/* 800B0944  28 00 00 2B */	cmplwi r0, 0x2b
/* 800B0948  40 82 00 08 */	bne lbl_800B0950
/* 800B094C  3B 40 00 00 */	li r26, 0
lbl_800B0950:
/* 800B0950  2C 1B 00 00 */	cmpwi r27, 0
/* 800B0954  41 82 00 34 */	beq lbl_800B0988
/* 800B0958  2C 1A 00 03 */	cmpwi r26, 3
/* 800B095C  41 82 00 2C */	beq lbl_800B0988
/* 800B0960  A8 18 30 AE */	lha r0, 0x30ae(r24)
/* 800B0964  7C 1F 00 00 */	cmpw r31, r0
/* 800B0968  40 81 00 20 */	ble lbl_800B0988
/* 800B096C  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0970  38 80 FF FF */	li r4, -1
/* 800B0974  4B F6 D2 1D */	bl __dt__8cM3dGPlaFv
/* 800B0978  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B097C  38 80 FF FF */	li r4, -1
/* 800B0980  4B F6 D2 11 */	bl __dt__8cM3dGPlaFv
/* 800B0984  48 00 0A 88 */	b lbl_800B140C
lbl_800B0988:
/* 800B0988  2C 1A 00 01 */	cmpwi r26, 1
/* 800B098C  41 82 00 20 */	beq lbl_800B09AC
/* 800B0990  2C 1A 00 05 */	cmpwi r26, 5
/* 800B0994  41 82 00 18 */	beq lbl_800B09AC
/* 800B0998  2C 1A 00 04 */	cmpwi r26, 4
/* 800B099C  41 82 00 10 */	beq lbl_800B09AC
/* 800B09A0  80 18 05 7C */	lwz r0, 0x57c(r24)
/* 800B09A4  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B09A8  90 18 05 7C */	stw r0, 0x57c(r24)
lbl_800B09AC:
/* 800B09AC  80 18 19 9C */	lwz r0, 0x199c(r24)
/* 800B09B0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B09B4  40 82 00 90 */	bne lbl_800B0A44
/* 800B09B8  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B09BC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B09C0  40 82 00 84 */	bne lbl_800B0A44
/* 800B09C4  2C 1A 00 01 */	cmpwi r26, 1
/* 800B09C8  40 82 00 10 */	bne lbl_800B09D8
/* 800B09CC  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B09D0  28 00 00 5C */	cmplwi r0, 0x5c
/* 800B09D4  41 82 00 70 */	beq lbl_800B0A44
lbl_800B09D8:
/* 800B09D8  2C 1A 00 03 */	cmpwi r26, 3
/* 800B09DC  40 82 00 28 */	bne lbl_800B0A04
/* 800B09E0  80 78 31 A0 */	lwz r3, 0x31a0(r24)
/* 800B09E4  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B09E8  40 82 00 1C */	bne lbl_800B0A04
/* 800B09EC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800B09F0  40 82 00 14 */	bne lbl_800B0A04
/* 800B09F4  C0 02 95 6C */	lfs f0, lit_24591(r2)
/* 800B09F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B09FC  4C 40 13 82 */	cror 2, 0, 2
/* 800B0A00  41 82 00 44 */	beq lbl_800B0A44
lbl_800B0A04:
/* 800B0A04  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B0A08  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B0A0C  41 82 00 38 */	beq lbl_800B0A44
/* 800B0A10  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0A14  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800B0A18  40 82 00 2C */	bne lbl_800B0A44
/* 800B0A1C  80 18 05 7C */	lwz r0, 0x57c(r24)
/* 800B0A20  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B0A24  90 18 05 7C */	stw r0, 0x57c(r24)
/* 800B0A28  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0A2C  38 80 FF FF */	li r4, -1
/* 800B0A30  4B F6 D1 61 */	bl __dt__8cM3dGPlaFv
/* 800B0A34  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0A38  38 80 FF FF */	li r4, -1
/* 800B0A3C  4B F6 D1 55 */	bl __dt__8cM3dGPlaFv
/* 800B0A40  48 00 09 CC */	b lbl_800B140C
lbl_800B0A44:
/* 800B0A44  2C 1A 00 02 */	cmpwi r26, 2
/* 800B0A48  40 82 00 20 */	bne lbl_800B0A68
/* 800B0A4C  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0A50  38 80 FF FF */	li r4, -1
/* 800B0A54  4B F6 D1 3D */	bl __dt__8cM3dGPlaFv
/* 800B0A58  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0A5C  38 80 FF FF */	li r4, -1
/* 800B0A60  4B F6 D1 31 */	bl __dt__8cM3dGPlaFv
/* 800B0A64  48 00 09 A8 */	b lbl_800B140C
lbl_800B0A68:
/* 800B0A68  2C 1A 00 03 */	cmpwi r26, 3
/* 800B0A6C  40 82 00 28 */	bne lbl_800B0A94
/* 800B0A70  7F A3 EB 78 */	mr r3, r29
/* 800B0A74  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0A78  4B FC 40 C9 */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 800B0A7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0A80  41 82 00 14 */	beq lbl_800B0A94
/* 800B0A84  7F A3 EB 78 */	mr r3, r29
/* 800B0A88  A0 98 1B 5E */	lhz r4, 0x1b5e(r24)
/* 800B0A8C  4B FC 3B 8D */	bl GetActorPointer__4cBgSCFi
/* 800B0A90  90 78 27 FC */	stw r3, 0x27fc(r24)
lbl_800B0A94:
/* 800B0A94  80 98 05 70 */	lwz r4, 0x570(r24)
/* 800B0A98  3C 60 00 80 */	lis r3, 0x0080 /* 0x00800100@ha */
/* 800B0A9C  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x00800100@l */
/* 800B0AA0  7C 80 00 39 */	and. r0, r4, r0
/* 800B0AA4  41 82 03 58 */	beq lbl_800B0DFC
/* 800B0AA8  2C 1A 00 06 */	cmpwi r26, 6
/* 800B0AAC  40 82 00 48 */	bne lbl_800B0AF4
/* 800B0AB0  80 98 31 A0 */	lwz r4, 0x31a0(r24)
/* 800B0AB4  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040002@ha */
/* 800B0AB8  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00040002@l */
/* 800B0ABC  7C 80 00 39 */	and. r0, r4, r0
/* 800B0AC0  40 82 00 34 */	bne lbl_800B0AF4
/* 800B0AC4  7F 03 C3 78 */	mr r3, r24
/* 800B0AC8  38 80 00 07 */	li r4, 7
/* 800B0ACC  48 00 27 85 */	bl setDoStatus__9daAlink_cFUc
/* 800B0AD0  7F 03 C3 78 */	mr r3, r24
/* 800B0AD4  48 04 C5 75 */	bl setLadderPosInit__9daAlink_cFv
/* 800B0AD8  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0ADC  38 80 FF FF */	li r4, -1
/* 800B0AE0  4B F6 D0 B1 */	bl __dt__8cM3dGPlaFv
/* 800B0AE4  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0AE8  38 80 FF FF */	li r4, -1
/* 800B0AEC  4B F6 D0 A5 */	bl __dt__8cM3dGPlaFv
/* 800B0AF0  48 00 09 1C */	b lbl_800B140C
lbl_800B0AF4:
/* 800B0AF4  2C 1A 00 03 */	cmpwi r26, 3
/* 800B0AF8  40 82 00 8C */	bne lbl_800B0B84
/* 800B0AFC  80 78 31 A0 */	lwz r3, 0x31a0(r24)
/* 800B0B00  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B0B04  40 82 00 80 */	bne lbl_800B0B84
/* 800B0B08  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800B0B0C  40 82 00 78 */	bne lbl_800B0B84
/* 800B0B10  80 18 05 80 */	lwz r0, 0x580(r24)
/* 800B0B14  60 00 00 08 */	ori r0, r0, 8
/* 800B0B18  90 18 05 80 */	stw r0, 0x580(r24)
/* 800B0B1C  38 78 1E 1C */	addi r3, r24, 0x1e1c
/* 800B0B20  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0B24  48 1B 76 25 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800B0B28  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0B2C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800B0B30  41 82 00 20 */	beq lbl_800B0B50
/* 800B0B34  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0B38  38 80 FF FF */	li r4, -1
/* 800B0B3C  4B F6 D0 55 */	bl __dt__8cM3dGPlaFv
/* 800B0B40  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0B44  38 80 FF FF */	li r4, -1
/* 800B0B48  4B F6 D0 49 */	bl __dt__8cM3dGPlaFv
/* 800B0B4C  48 00 08 C0 */	b lbl_800B140C
lbl_800B0B50:
/* 800B0B50  80 18 19 9C */	lwz r0, 0x199c(r24)
/* 800B0B54  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B0B58  40 82 02 A4 */	bne lbl_800B0DFC
/* 800B0B5C  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B0B60  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B0B64  40 82 02 98 */	bne lbl_800B0DFC
/* 800B0B68  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0B6C  38 80 FF FF */	li r4, -1
/* 800B0B70  4B F6 D0 21 */	bl __dt__8cM3dGPlaFv
/* 800B0B74  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0B78  38 80 FF FF */	li r4, -1
/* 800B0B7C  4B F6 D0 15 */	bl __dt__8cM3dGPlaFv
/* 800B0B80  48 00 08 8C */	b lbl_800B140C
lbl_800B0B84:
/* 800B0B84  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B0B88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B0B8C  40 82 02 70 */	bne lbl_800B0DFC
/* 800B0B90  2C 1A 00 01 */	cmpwi r26, 1
/* 800B0B94  40 82 01 F4 */	bne lbl_800B0D88
/* 800B0B98  80 98 31 A0 */	lwz r4, 0x31a0(r24)
/* 800B0B9C  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040002@ha */
/* 800B0BA0  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00040002@l */
/* 800B0BA4  7C 80 00 39 */	and. r0, r4, r0
/* 800B0BA8  41 82 01 B0 */	beq lbl_800B0D58
/* 800B0BAC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800B0BB0  41 82 00 1C */	beq lbl_800B0BCC
/* 800B0BB4  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B0BB8  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B0BBC  41 82 00 10 */	beq lbl_800B0BCC
/* 800B0BC0  7F 03 C3 78 */	mr r3, r24
/* 800B0BC4  38 80 00 8E */	li r4, 0x8e
/* 800B0BC8  48 00 26 89 */	bl setDoStatus__9daAlink_cFUc
lbl_800B0BCC:
/* 800B0BCC  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0BD0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B0BD4  41 82 00 14 */	beq lbl_800B0BE8
/* 800B0BD8  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 800B0BDC  C0 02 94 68 */	lfs f0, lit_14955(r2)
/* 800B0BE0  EE E1 00 28 */	fsubs f23, f1, f0
/* 800B0BE4  48 00 00 08 */	b lbl_800B0BEC
lbl_800B0BE8:
/* 800B0BE8  C2 F8 04 D4 */	lfs f23, 0x4d4(r24)
lbl_800B0BEC:
/* 800B0BEC  C0 38 34 F4 */	lfs f1, 0x34f4(r24)
/* 800B0BF0  C0 42 94 64 */	lfs f2, lit_14954(r2)
/* 800B0BF4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800B0BF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B0BFC  EC 61 00 28 */	fsubs f3, f1, f0
/* 800B0C00  C0 38 34 EC */	lfs f1, 0x34ec(r24)
/* 800B0C04  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800B0C08  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B0C0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B0C10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B0C14  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800B0C18  EC 00 B8 2A */	fadds f0, f0, f23
/* 800B0C1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800B0C20  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 800B0C24  38 78 1D 08 */	addi r3, r24, 0x1d08
/* 800B0C28  38 81 00 44 */	addi r4, r1, 0x44
/* 800B0C2C  48 1B 70 FD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B0C30  7F A3 EB 78 */	mr r3, r29
/* 800B0C34  38 98 1D 08 */	addi r4, r24, 0x1d08
/* 800B0C38  4B FC 38 69 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800B0C3C  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 800B0C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B0C44  4C 41 13 82 */	cror 2, 1, 2
/* 800B0C48  40 82 01 10 */	bne lbl_800B0D58
/* 800B0C4C  38 78 1D 1C */	addi r3, r24, 0x1d1c
/* 800B0C50  4B FC 51 2D */	bl dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo
/* 800B0C54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0C58  41 82 01 00 */	beq lbl_800B0D58
/* 800B0C5C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B0C60  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B0C64  90 01 00 74 */	stw r0, 0x74(r1)
/* 800B0C68  7F A3 EB 78 */	mr r3, r29
/* 800B0C6C  38 98 1D 1C */	addi r4, r24, 0x1d1c
/* 800B0C70  38 A1 00 64 */	addi r5, r1, 0x64
/* 800B0C74  4B FC 3A D1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B0C78  7F 03 C3 78 */	mr r3, r24
/* 800B0C7C  38 98 34 EC */	addi r4, r24, 0x34ec
/* 800B0C80  38 A1 00 8C */	addi r5, r1, 0x8c
/* 800B0C84  38 C1 00 64 */	addi r6, r1, 0x64
/* 800B0C88  38 E1 00 20 */	addi r7, r1, 0x20
/* 800B0C8C  39 00 00 00 */	li r8, 0
/* 800B0C90  4B FF F5 6D */	bl getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi
/* 800B0C94  2C 03 00 00 */	cmpwi r3, 0
/* 800B0C98  41 82 00 B4 */	beq lbl_800B0D4C
/* 800B0C9C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800B0CA0  EC 22 B8 28 */	fsubs f1, f2, f23
/* 800B0CA4  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800B0CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B0CAC  4C 40 13 82 */	cror 2, 0, 2
/* 800B0CB0  40 82 00 9C */	bne lbl_800B0D4C
/* 800B0CB4  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0CB8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B0CBC  41 82 00 40 */	beq lbl_800B0CFC
/* 800B0CC0  38 78 34 EC */	addi r3, r24, 0x34ec
/* 800B0CC4  38 81 00 20 */	addi r4, r1, 0x20
/* 800B0CC8  4B FE 6B 11 */	bl __as__4cXyzFRC4cXyz
/* 800B0CCC  38 00 00 07 */	li r0, 7
/* 800B0CD0  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B0CD4  38 61 00 64 */	addi r3, r1, 0x64
/* 800B0CD8  38 80 FF FF */	li r4, -1
/* 800B0CDC  4B F6 CE B5 */	bl __dt__8cM3dGPlaFv
/* 800B0CE0  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0CE4  38 80 FF FF */	li r4, -1
/* 800B0CE8  4B F6 CE A9 */	bl __dt__8cM3dGPlaFv
/* 800B0CEC  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0CF0  38 80 FF FF */	li r4, -1
/* 800B0CF4  4B F6 CE 9D */	bl __dt__8cM3dGPlaFv
/* 800B0CF8  48 00 07 14 */	b lbl_800B140C
lbl_800B0CFC:
/* 800B0CFC  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B0D00  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B0D04  41 82 00 40 */	beq lbl_800B0D44
/* 800B0D08  38 78 34 EC */	addi r3, r24, 0x34ec
/* 800B0D0C  38 81 00 20 */	addi r4, r1, 0x20
/* 800B0D10  4B FE 6A C9 */	bl __as__4cXyzFRC4cXyz
/* 800B0D14  38 00 00 0A */	li r0, 0xa
/* 800B0D18  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B0D1C  38 61 00 64 */	addi r3, r1, 0x64
/* 800B0D20  38 80 FF FF */	li r4, -1
/* 800B0D24  4B F6 CE 6D */	bl __dt__8cM3dGPlaFv
/* 800B0D28  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0D2C  38 80 FF FF */	li r4, -1
/* 800B0D30  4B F6 CE 61 */	bl __dt__8cM3dGPlaFv
/* 800B0D34  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0D38  38 80 FF FF */	li r4, -1
/* 800B0D3C  4B F6 CE 55 */	bl __dt__8cM3dGPlaFv
/* 800B0D40  48 00 06 CC */	b lbl_800B140C
lbl_800B0D44:
/* 800B0D44  EC 02 00 28 */	fsubs f0, f2, f0
/* 800B0D48  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
lbl_800B0D4C:
/* 800B0D4C  38 61 00 64 */	addi r3, r1, 0x64
/* 800B0D50  38 80 FF FF */	li r4, -1
/* 800B0D54  4B F6 CE 3D */	bl __dt__8cM3dGPlaFv
lbl_800B0D58:
/* 800B0D58  38 78 1E 1C */	addi r3, r24, 0x1e1c
/* 800B0D5C  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0D60  48 1B 73 E9 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800B0D64  38 00 00 03 */	li r0, 3
/* 800B0D68  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B0D6C  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0D70  38 80 FF FF */	li r4, -1
/* 800B0D74  4B F6 CE 1D */	bl __dt__8cM3dGPlaFv
/* 800B0D78  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0D7C  38 80 FF FF */	li r4, -1
/* 800B0D80  4B F6 CE 11 */	bl __dt__8cM3dGPlaFv
/* 800B0D84  48 00 06 88 */	b lbl_800B140C
lbl_800B0D88:
/* 800B0D88  2C 1A 00 04 */	cmpwi r26, 4
/* 800B0D8C  41 82 00 18 */	beq lbl_800B0DA4
/* 800B0D90  2C 1A 00 05 */	cmpwi r26, 5
/* 800B0D94  40 82 00 68 */	bne lbl_800B0DFC
/* 800B0D98  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0D9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B0DA0  40 82 00 5C */	bne lbl_800B0DFC
lbl_800B0DA4:
/* 800B0DA4  2C 1A 00 04 */	cmpwi r26, 4
/* 800B0DA8  40 82 00 28 */	bne lbl_800B0DD0
/* 800B0DAC  38 00 00 04 */	li r0, 4
/* 800B0DB0  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B0DB4  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0DB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B0DBC  41 82 00 1C */	beq lbl_800B0DD8
/* 800B0DC0  7F 03 C3 78 */	mr r3, r24
/* 800B0DC4  38 80 00 8E */	li r4, 0x8e
/* 800B0DC8  48 00 24 89 */	bl setDoStatus__9daAlink_cFUc
/* 800B0DCC  48 00 00 0C */	b lbl_800B0DD8
lbl_800B0DD0:
/* 800B0DD0  38 00 00 05 */	li r0, 5
/* 800B0DD4  98 18 2F 91 */	stb r0, 0x2f91(r24)
lbl_800B0DD8:
/* 800B0DD8  7F 03 C3 78 */	mr r3, r24
/* 800B0DDC  48 04 C2 6D */	bl setLadderPosInit__9daAlink_cFv
/* 800B0DE0  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0DE4  38 80 FF FF */	li r4, -1
/* 800B0DE8  4B F6 CD A9 */	bl __dt__8cM3dGPlaFv
/* 800B0DEC  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0DF0  38 80 FF FF */	li r4, -1
/* 800B0DF4  4B F6 CD 9D */	bl __dt__8cM3dGPlaFv
/* 800B0DF8  48 00 06 14 */	b lbl_800B140C
lbl_800B0DFC:
/* 800B0DFC  48 00 F5 ED */	bl checkRoomOnly__9daAlink_cFv
/* 800B0E00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0E04  41 82 00 2C */	beq lbl_800B0E30
/* 800B0E08  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B0E0C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B0E10  40 82 00 20 */	bne lbl_800B0E30
/* 800B0E14  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0E18  38 80 FF FF */	li r4, -1
/* 800B0E1C  4B F6 CD 75 */	bl __dt__8cM3dGPlaFv
/* 800B0E20  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0E24  38 80 FF FF */	li r4, -1
/* 800B0E28  4B F6 CD 69 */	bl __dt__8cM3dGPlaFv
/* 800B0E2C  48 00 05 E0 */	b lbl_800B140C
lbl_800B0E30:
/* 800B0E30  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B0E34  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B0E38  41 82 00 34 */	beq lbl_800B0E6C
/* 800B0E3C  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0E40  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B0E44  41 82 00 10 */	beq lbl_800B0E54
/* 800B0E48  38 7E 1A 50 */	addi r3, r30, 0x1a50
/* 800B0E4C  C3 43 00 78 */	lfs f26, 0x78(r3)
/* 800B0E50  48 00 00 0C */	b lbl_800B0E5C
lbl_800B0E54:
/* 800B0E54  38 7E 1B 48 */	addi r3, r30, 0x1b48
/* 800B0E58  C3 43 00 84 */	lfs f26, 0x84(r3)
lbl_800B0E5C:
/* 800B0E5C  38 7E 1B 48 */	addi r3, r30, 0x1b48
/* 800B0E60  C3 23 00 7C */	lfs f25, 0x7c(r3)
/* 800B0E64  C3 03 00 80 */	lfs f24, 0x80(r3)
/* 800B0E68  48 00 00 30 */	b lbl_800B0E98
lbl_800B0E6C:
/* 800B0E6C  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B0E70  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B0E74  41 82 00 10 */	beq lbl_800B0E84
/* 800B0E78  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 800B0E7C  C3 43 00 90 */	lfs f26, 0x90(r3)
/* 800B0E80  48 00 00 0C */	b lbl_800B0E8C
lbl_800B0E84:
/* 800B0E84  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 800B0E88  C3 43 00 14 */	lfs f26, 0x14(r3)
lbl_800B0E8C:
/* 800B0E8C  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 800B0E90  C3 23 00 08 */	lfs f25, 8(r3)
/* 800B0E94  C3 03 00 0C */	lfs f24, 0xc(r3)
lbl_800B0E98:
/* 800B0E98  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 800B0E9C  C0 18 2B A8 */	lfs f0, 0x2ba8(r24)
/* 800B0EA0  EE E1 00 2A */	fadds f23, f1, f0
/* 800B0EA4  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 800B0EA8  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 800B0EAC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 800B0EB0  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800B0EB4  EF C0 D0 2A */	fadds f30, f0, f26
/* 800B0EB8  EF F7 F0 2A */	fadds f31, f23, f30
/* 800B0EBC  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 800B0EC0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800B0EC4  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800B0EC8  EC 60 E8 2A */	fadds f3, f0, f29
/* 800B0ECC  EC 1C 00 F2 */	fmuls f0, f28, f3
/* 800B0ED0  EC 01 00 2A */	fadds f0, f1, f0
/* 800B0ED4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800B0ED8  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 800B0EDC  EC 1B 00 F2 */	fmuls f0, f27, f3
/* 800B0EE0  EC 02 00 2A */	fadds f0, f2, f0
/* 800B0EE4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800B0EE8  7F 03 C3 78 */	mr r3, r24
/* 800B0EEC  38 81 00 44 */	addi r4, r1, 0x44
/* 800B0EF0  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B0EF4  4B FF 12 A5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B0EF8  54 77 06 3F */	clrlwi. r23, r3, 0x18
/* 800B0EFC  41 82 00 9C */	beq lbl_800B0F98
/* 800B0F00  38 61 00 44 */	addi r3, r1, 0x44
/* 800B0F04  38 98 1B 78 */	addi r4, r24, 0x1b78
/* 800B0F08  4B FE 68 D1 */	bl __as__4cXyzFRC4cXyz
/* 800B0F0C  7F A3 EB 78 */	mr r3, r29
/* 800B0F10  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800B0F14  38 A1 00 78 */	addi r5, r1, 0x78
/* 800B0F18  4B FC 38 2D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B0F1C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 800B0F20  C0 42 92 9C */	lfs f2, lit_5944(r2)
/* 800B0F24  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800B0F28  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B0F2C  EC 01 00 2A */	fadds f0, f1, f0
/* 800B0F30  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B0F34  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 800B0F38  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 800B0F3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B0F40  EC 01 00 2A */	fadds f0, f1, f0
/* 800B0F44  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800B0F48  38 78 1D 08 */	addi r3, r24, 0x1d08
/* 800B0F4C  38 81 00 44 */	addi r4, r1, 0x44
/* 800B0F50  48 1B 6D D9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B0F54  7F A3 EB 78 */	mr r3, r29
/* 800B0F58  38 98 1D 08 */	addi r4, r24, 0x1d08
/* 800B0F5C  4B FC 35 45 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800B0F60  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 800B0F64  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B0F68  EC 02 00 2A */	fadds f0, f2, f0
/* 800B0F6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B0F70  40 81 00 28 */	ble lbl_800B0F98
/* 800B0F74  7F A3 EB 78 */	mr r3, r29
/* 800B0F78  38 98 1D 1C */	addi r4, r24, 0x1d1c
/* 800B0F7C  38 A1 00 78 */	addi r5, r1, 0x78
/* 800B0F80  4B FC 37 C5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B0F84  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 800B0F88  48 1B 72 5D */	bl cBgW_CheckBGround__Ff
/* 800B0F8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0F90  41 82 00 08 */	beq lbl_800B0F98
/* 800B0F94  3A E0 00 00 */	li r23, 0
lbl_800B0F98:
/* 800B0F98  2C 17 00 00 */	cmpwi r23, 0
/* 800B0F9C  40 82 00 40 */	bne lbl_800B0FDC
/* 800B0FA0  38 78 1D 5C */	addi r3, r24, 0x1d5c
/* 800B0FA4  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 800B0FA8  48 00 04 C5 */	bl SetPos__12dBgS_RoofChkFRC4cXyz
/* 800B0FAC  7F A3 EB 78 */	mr r3, r29
/* 800B0FB0  38 98 1D 5C */	addi r4, r24, 0x1d5c
/* 800B0FB4  4B FC 44 E9 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 800B0FB8  EC 21 B8 28 */	fsubs f1, f1, f23
/* 800B0FBC  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800B0FC0  EC 00 D0 2A */	fadds f0, f0, f26
/* 800B0FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B0FC8  40 81 00 0C */	ble lbl_800B0FD4
/* 800B0FCC  38 00 00 00 */	li r0, 0
/* 800B0FD0  48 00 00 08 */	b lbl_800B0FD8
lbl_800B0FD4:
/* 800B0FD4  38 00 00 01 */	li r0, 1
lbl_800B0FD8:
/* 800B0FD8  7C 17 03 78 */	mr r23, r0
lbl_800B0FDC:
/* 800B0FDC  2C 17 00 00 */	cmpwi r23, 0
/* 800B0FE0  41 82 00 20 */	beq lbl_800B1000
/* 800B0FE4  38 61 00 78 */	addi r3, r1, 0x78
/* 800B0FE8  38 80 FF FF */	li r4, -1
/* 800B0FEC  4B F6 CB A5 */	bl __dt__8cM3dGPlaFv
/* 800B0FF0  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B0FF4  38 80 FF FF */	li r4, -1
/* 800B0FF8  4B F6 CB 99 */	bl __dt__8cM3dGPlaFv
/* 800B0FFC  48 00 04 10 */	b lbl_800B140C
lbl_800B1000:
/* 800B1000  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800B1004  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800B1008  90 01 00 60 */	stw r0, 0x60(r1)
/* 800B100C  3A E0 00 00 */	li r23, 0
/* 800B1010  C0 38 34 F4 */	lfs f1, 0x34f4(r24)
/* 800B1014  C0 42 97 B4 */	lfs f2, lit_52234(r2)
/* 800B1018  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800B101C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B1020  EC 61 00 28 */	fsubs f3, f1, f0
/* 800B1024  C0 38 34 EC */	lfs f1, 0x34ec(r24)
/* 800B1028  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800B102C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B1030  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B1034  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B1038  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 800B103C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 800B1040  38 78 1D 08 */	addi r3, r24, 0x1d08
/* 800B1044  38 81 00 44 */	addi r4, r1, 0x44
/* 800B1048  48 1B 6C E1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B104C  7F A3 EB 78 */	mr r3, r29
/* 800B1050  38 98 1D 08 */	addi r4, r24, 0x1d08
/* 800B1054  4B FC 34 4D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800B1058  FF 60 08 90 */	fmr f27, f1
/* 800B105C  C0 38 34 F4 */	lfs f1, 0x34f4(r24)
/* 800B1060  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 800B1064  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 800B1068  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B106C  EC 61 00 28 */	fsubs f3, f1, f0
/* 800B1070  C0 38 34 EC */	lfs f1, 0x34ec(r24)
/* 800B1074  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 800B1078  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B107C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B1080  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B1084  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 800B1088  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 800B108C  38 78 1D 08 */	addi r3, r24, 0x1d08
/* 800B1090  38 81 00 44 */	addi r4, r1, 0x44
/* 800B1094  48 1B 6C 95 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B1098  7F A3 EB 78 */	mr r3, r29
/* 800B109C  38 98 1D 08 */	addi r4, r24, 0x1d08
/* 800B10A0  4B FC 34 01 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800B10A4  FF E0 08 90 */	fmr f31, f1
/* 800B10A8  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800B10AC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 800B10B0  41 82 00 30 */	beq lbl_800B10E0
/* 800B10B4  EC 1B F8 28 */	fsubs f0, f27, f31
/* 800B10B8  FC 00 02 10 */	fabs f0, f0
/* 800B10BC  FC 20 00 18 */	frsp f1, f0
/* 800B10C0  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B10C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B10C8  40 80 00 18 */	bge lbl_800B10E0
/* 800B10CC  7F A3 EB 78 */	mr r3, r29
/* 800B10D0  38 98 1D 1C */	addi r4, r24, 0x1d1c
/* 800B10D4  38 A1 00 50 */	addi r5, r1, 0x50
/* 800B10D8  4B FC 36 6D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B10DC  7C 77 1B 78 */	mr r23, r3
lbl_800B10E0:
/* 800B10E0  80 18 31 A0 */	lwz r0, 0x31a0(r24)
/* 800B10E4  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B10E8  40 82 00 0C */	bne lbl_800B10F4
/* 800B10EC  FC 1F B8 40 */	fcmpo cr0, f31, f23
/* 800B10F0  41 80 00 0C */	blt lbl_800B10FC
lbl_800B10F4:
/* 800B10F4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800B10F8  40 82 00 2C */	bne lbl_800B1124
lbl_800B10FC:
/* 800B10FC  38 61 00 50 */	addi r3, r1, 0x50
/* 800B1100  38 80 FF FF */	li r4, -1
/* 800B1104  4B F6 CA 8D */	bl __dt__8cM3dGPlaFv
/* 800B1108  38 61 00 78 */	addi r3, r1, 0x78
/* 800B110C  38 80 FF FF */	li r4, -1
/* 800B1110  4B F6 CA 81 */	bl __dt__8cM3dGPlaFv
/* 800B1114  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B1118  38 80 FF FF */	li r4, -1
/* 800B111C  4B F6 CA 75 */	bl __dt__8cM3dGPlaFv
/* 800B1120  48 00 02 EC */	b lbl_800B140C
lbl_800B1124:
/* 800B1124  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800B1128  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 800B112C  41 82 00 14 */	beq lbl_800B1140
/* 800B1130  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800B1134  48 1B 70 B1 */	bl cBgW_CheckBGround__Ff
/* 800B1138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B113C  40 82 00 2C */	bne lbl_800B1168
lbl_800B1140:
/* 800B1140  38 61 00 50 */	addi r3, r1, 0x50
/* 800B1144  38 80 FF FF */	li r4, -1
/* 800B1148  4B F6 CA 49 */	bl __dt__8cM3dGPlaFv
/* 800B114C  38 61 00 78 */	addi r3, r1, 0x78
/* 800B1150  38 80 FF FF */	li r4, -1
/* 800B1154  4B F6 CA 3D */	bl __dt__8cM3dGPlaFv
/* 800B1158  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B115C  38 80 FF FF */	li r4, -1
/* 800B1160  4B F6 CA 31 */	bl __dt__8cM3dGPlaFv
/* 800B1164  48 00 02 A8 */	b lbl_800B140C
lbl_800B1168:
/* 800B1168  7F 03 C3 78 */	mr r3, r24
/* 800B116C  38 98 34 EC */	addi r4, r24, 0x34ec
/* 800B1170  38 A1 00 8C */	addi r5, r1, 0x8c
/* 800B1174  38 C1 00 50 */	addi r6, r1, 0x50
/* 800B1178  38 E1 00 20 */	addi r7, r1, 0x20
/* 800B117C  39 00 00 00 */	li r8, 0
/* 800B1180  4B FF F0 7D */	bl getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi
/* 800B1184  2C 03 00 00 */	cmpwi r3, 0
/* 800B1188  40 82 00 2C */	bne lbl_800B11B4
/* 800B118C  38 61 00 50 */	addi r3, r1, 0x50
/* 800B1190  38 80 FF FF */	li r4, -1
/* 800B1194  4B F6 C9 FD */	bl __dt__8cM3dGPlaFv
/* 800B1198  38 61 00 78 */	addi r3, r1, 0x78
/* 800B119C  38 80 FF FF */	li r4, -1
/* 800B11A0  4B F6 C9 F1 */	bl __dt__8cM3dGPlaFv
/* 800B11A4  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B11A8  38 80 FF FF */	li r4, -1
/* 800B11AC  4B F6 C9 E5 */	bl __dt__8cM3dGPlaFv
/* 800B11B0  48 00 02 5C */	b lbl_800B140C
lbl_800B11B4:
/* 800B11B4  7F A3 EB 78 */	mr r3, r29
/* 800B11B8  38 98 1D 1C */	addi r4, r24, 0x1d1c
/* 800B11BC  4B FC 3D 35 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 800B11C0  2C 03 00 06 */	cmpwi r3, 6
/* 800B11C4  41 82 00 A0 */	beq lbl_800B1264
/* 800B11C8  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 800B11CC  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800B11D0  C0 81 00 8C */	lfs f4, 0x8c(r1)
/* 800B11D4  EC 03 01 32 */	fmuls f0, f3, f4
/* 800B11D8  EC 05 00 2A */	fadds f0, f5, f0
/* 800B11DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B11E0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800B11E4  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B11E8  EC 41 00 2A */	fadds f2, f1, f0
/* 800B11EC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 800B11F0  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 800B11F4  C0 C1 00 94 */	lfs f6, 0x94(r1)
/* 800B11F8  EC 03 01 B2 */	fmuls f0, f3, f6
/* 800B11FC  EC 07 00 2A */	fadds f0, f7, f0
/* 800B1200  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800B1204  C0 22 98 90 */	lfs f1, lit_64357(r2)
/* 800B1208  EC 04 00 72 */	fmuls f0, f4, f1
/* 800B120C  EC 05 00 28 */	fsubs f0, f5, f0
/* 800B1210  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800B1214  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800B1218  EC 06 00 72 */	fmuls f0, f6, f1
/* 800B121C  EC 07 00 28 */	fsubs f0, f7, f0
/* 800B1220  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800B1224  7F 03 C3 78 */	mr r3, r24
/* 800B1228  38 81 00 44 */	addi r4, r1, 0x44
/* 800B122C  38 A1 00 38 */	addi r5, r1, 0x38
/* 800B1230  4B FF 0F 69 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B1234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B1238  41 82 00 2C */	beq lbl_800B1264
/* 800B123C  38 61 00 50 */	addi r3, r1, 0x50
/* 800B1240  38 80 FF FF */	li r4, -1
/* 800B1244  4B F6 C9 4D */	bl __dt__8cM3dGPlaFv
/* 800B1248  38 61 00 78 */	addi r3, r1, 0x78
/* 800B124C  38 80 FF FF */	li r4, -1
/* 800B1250  4B F6 C9 41 */	bl __dt__8cM3dGPlaFv
/* 800B1254  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B1258  38 80 FF FF */	li r4, -1
/* 800B125C  4B F6 C9 35 */	bl __dt__8cM3dGPlaFv
/* 800B1260  48 00 01 AC */	b lbl_800B140C
lbl_800B1264:
/* 800B1264  38 78 34 EC */	addi r3, r24, 0x34ec
/* 800B1268  38 81 00 20 */	addi r4, r1, 0x20
/* 800B126C  4B FE 65 6D */	bl __as__4cXyzFRC4cXyz
/* 800B1270  C0 18 34 F0 */	lfs f0, 0x34f0(r24)
/* 800B1274  EE E0 B8 28 */	fsubs f23, f0, f23
/* 800B1278  80 78 31 A0 */	lwz r3, 0x31a0(r24)
/* 800B127C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B1280  41 82 00 6C */	beq lbl_800B12EC
/* 800B1284  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B1288  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B128C  41 82 00 1C */	beq lbl_800B12A8
/* 800B1290  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 800B1294  38 7E 22 5C */	addi r3, r30, 0x225c
/* 800B1298  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 800B129C  EC 01 00 2A */	fadds f0, f1, f0
/* 800B12A0  C0 23 00 94 */	lfs f1, 0x94(r3)
/* 800B12A4  48 00 00 18 */	b lbl_800B12BC
lbl_800B12A8:
/* 800B12A8  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 800B12AC  38 7E 16 D4 */	addi r3, r30, 0x16d4
/* 800B12B0  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 800B12B4  EC 01 00 2A */	fadds f0, f1, f0
/* 800B12B8  C0 23 00 C4 */	lfs f1, 0xc4(r3)
lbl_800B12BC:
/* 800B12BC  80 18 05 70 */	lwz r0, 0x570(r24)
/* 800B12C0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B12C4  41 82 01 24 */	beq lbl_800B13E8
/* 800B12C8  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B12CC  4C 40 13 82 */	cror 2, 0, 2
/* 800B12D0  40 82 01 18 */	bne lbl_800B13E8
/* 800B12D4  FC 17 08 40 */	fcmpo cr0, f23, f1
/* 800B12D8  4C 41 13 82 */	cror 2, 1, 2
/* 800B12DC  40 82 01 0C */	bne lbl_800B13E8
/* 800B12E0  38 00 00 07 */	li r0, 7
/* 800B12E4  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B12E8  48 00 01 00 */	b lbl_800B13E8
lbl_800B12EC:
/* 800B12EC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800B12F0  41 82 00 60 */	beq lbl_800B1350
/* 800B12F4  C0 18 1A 08 */	lfs f0, 0x1a08(r24)
/* 800B12F8  EC 3F 00 28 */	fsubs f1, f31, f0
/* 800B12FC  C0 18 05 98 */	lfs f0, 0x598(r24)
/* 800B1300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1304  40 81 00 E4 */	ble lbl_800B13E8
/* 800B1308  FC 17 D0 40 */	fcmpo cr0, f23, f26
/* 800B130C  40 80 00 DC */	bge lbl_800B13E8
/* 800B1310  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B1314  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B1318  40 82 00 2C */	bne lbl_800B1344
/* 800B131C  A0 18 2F E8 */	lhz r0, 0x2fe8(r24)
/* 800B1320  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B1324  41 82 00 20 */	beq lbl_800B1344
/* 800B1328  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 800B132C  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 800B1330  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B1334  40 80 00 10 */	bge lbl_800B1344
/* 800B1338  38 00 00 0B */	li r0, 0xb
/* 800B133C  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B1340  48 00 00 A8 */	b lbl_800B13E8
lbl_800B1344:
/* 800B1344  38 00 00 0A */	li r0, 0xa
/* 800B1348  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B134C  48 00 00 9C */	b lbl_800B13E8
lbl_800B1350:
/* 800B1350  FC 17 F0 40 */	fcmpo cr0, f23, f30
/* 800B1354  4C 41 13 82 */	cror 2, 1, 2
/* 800B1358  41 82 00 90 */	beq lbl_800B13E8
/* 800B135C  7F 03 C3 78 */	mr r3, r24
/* 800B1360  48 03 29 0D */	bl checkGrabAnime__9daAlink_cCFv
/* 800B1364  2C 03 00 00 */	cmpwi r3, 0
/* 800B1368  41 82 00 18 */	beq lbl_800B1380
/* 800B136C  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800B1370  EC 00 C8 2A */	fadds f0, f0, f25
/* 800B1374  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B1378  4C 41 13 82 */	cror 2, 1, 2
/* 800B137C  41 82 00 6C */	beq lbl_800B13E8
lbl_800B1380:
/* 800B1380  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 800B1384  EC 01 C8 2A */	fadds f0, f1, f25
/* 800B1388  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B138C  40 80 00 10 */	bge lbl_800B139C
/* 800B1390  38 00 00 06 */	li r0, 6
/* 800B1394  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B1398  48 00 00 50 */	b lbl_800B13E8
lbl_800B139C:
/* 800B139C  EC 01 C0 2A */	fadds f0, f1, f24
/* 800B13A0  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B13A4  40 80 00 10 */	bge lbl_800B13B4
/* 800B13A8  38 00 00 07 */	li r0, 7
/* 800B13AC  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B13B0  48 00 00 38 */	b lbl_800B13E8
lbl_800B13B4:
/* 800B13B4  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800B13B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B13BC  40 82 00 18 */	bne lbl_800B13D4
/* 800B13C0  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 800B13C4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800B13C8  EC 01 00 2A */	fadds f0, f1, f0
/* 800B13CC  FC 17 00 40 */	fcmpo cr0, f23, f0
/* 800B13D0  40 80 00 10 */	bge lbl_800B13E0
lbl_800B13D4:
/* 800B13D4  38 00 00 08 */	li r0, 8
/* 800B13D8  98 18 2F 91 */	stb r0, 0x2f91(r24)
/* 800B13DC  48 00 00 0C */	b lbl_800B13E8
lbl_800B13E0:
/* 800B13E0  38 00 00 09 */	li r0, 9
/* 800B13E4  98 18 2F 91 */	stb r0, 0x2f91(r24)
lbl_800B13E8:
/* 800B13E8  38 61 00 50 */	addi r3, r1, 0x50
/* 800B13EC  38 80 FF FF */	li r4, -1
/* 800B13F0  4B F6 C7 A1 */	bl __dt__8cM3dGPlaFv
/* 800B13F4  38 61 00 78 */	addi r3, r1, 0x78
/* 800B13F8  38 80 FF FF */	li r4, -1
/* 800B13FC  4B F6 C7 95 */	bl __dt__8cM3dGPlaFv
/* 800B1400  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B1404  38 80 FF FF */	li r4, -1
/* 800B1408  4B F6 C7 89 */	bl __dt__8cM3dGPlaFv
lbl_800B140C:
/* 800B140C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 800B1410  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 800B1414  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 800B1418  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 800B141C  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 800B1420  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 800B1424  E3 81 01 38 */	psq_l f28, 312(r1), 0, 0 /* qr0 */
/* 800B1428  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 800B142C  E3 61 01 28 */	psq_l f27, 296(r1), 0, 0 /* qr0 */
/* 800B1430  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 800B1434  E3 41 01 18 */	psq_l f26, 280(r1), 0, 0 /* qr0 */
/* 800B1438  CB 41 01 10 */	lfd f26, 0x110(r1)
/* 800B143C  E3 21 01 08 */	psq_l f25, 264(r1), 0, 0 /* qr0 */
/* 800B1440  CB 21 01 00 */	lfd f25, 0x100(r1)
/* 800B1444  E3 01 00 F8 */	psq_l f24, 248(r1), 0, 0 /* qr0 */
/* 800B1448  CB 01 00 F0 */	lfd f24, 0xf0(r1)
/* 800B144C  E2 E1 00 E8 */	psq_l f23, 232(r1), 0, 0 /* qr0 */
/* 800B1450  CA E1 00 E0 */	lfd f23, 0xe0(r1)
/* 800B1454  39 61 00 E0 */	addi r11, r1, 0xe0
/* 800B1458  48 2B 0D B9 */	bl _restgpr_23
/* 800B145C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 800B1460  7C 08 03 A6 */	mtlr r0
/* 800B1464  38 21 01 70 */	addi r1, r1, 0x170
/* 800B1468  4E 80 00 20 */	blr 
