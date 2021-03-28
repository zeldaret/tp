lbl_80838498:
/* 80838498  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8083849C  7C 08 02 A6 */	mflr r0
/* 808384A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 808384A4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 808384A8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 808384AC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 808384B0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 808384B4  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 808384B8  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 808384BC  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 808384C0  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 808384C4  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 808384C8  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 808384CC  39 61 00 60 */	addi r11, r1, 0x60
/* 808384D0  4B B2 9D 00 */	b _savegpr_26
/* 808384D4  7C 7C 1B 78 */	mr r28, r3
/* 808384D8  3C 60 80 84 */	lis r3, lit_3894@ha
/* 808384DC  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 808384E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808384E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808384E8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 808384EC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 808384F0  28 00 00 00 */	cmplwi r0, 0
/* 808384F4  40 82 02 1C */	bne lbl_80838710
/* 808384F8  80 1C 17 4C */	lwz r0, 0x174c(r28)
/* 808384FC  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80838500  40 82 02 10 */	bne lbl_80838710
/* 80838504  A8 04 00 08 */	lha r0, 8(r4)
/* 80838508  2C 00 00 EF */	cmpwi r0, 0xef
/* 8083850C  40 82 02 04 */	bne lbl_80838710
/* 80838510  A0 04 05 8E */	lhz r0, 0x58e(r4)
/* 80838514  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80838518  41 82 01 F8 */	beq lbl_80838710
/* 8083851C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80838520  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80838524  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80838528  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8083852C  7F E3 04 2E */	lfsx f31, r3, r0
/* 80838530  7C 63 02 14 */	add r3, r3, r0
/* 80838534  C3 C3 00 04 */	lfs f30, 4(r3)
/* 80838538  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8083853C  3B BF 00 20 */	addi r29, r31, 0x20
/* 80838540  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80838544  EC 00 00 2A */	fadds f0, f0, f0
/* 80838548  EF A1 00 2A */	fadds f29, f1, f0
/* 8083854C  C0 7C 04 D0 */	lfs f3, 0x4d0(r28)
/* 80838550  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80838554  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80838558  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8083855C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80838560  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80838564  EC 1D 07 F2 */	fmuls f0, f29, f31
/* 80838568  EC 03 00 2A */	fadds f0, f3, f0
/* 8083856C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80838570  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80838574  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 80838578  EC 01 00 2A */	fadds f0, f1, f0
/* 8083857C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80838580  3B 40 00 00 */	li r26, 0
/* 80838584  3B 60 00 00 */	li r27, 0
lbl_80838588:
/* 80838588  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8083858C  38 1B 06 2C */	addi r0, r27, 0x62c
/* 80838590  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80838594  EC 01 00 2A */	fadds f0, f1, f0
/* 80838598  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8083859C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 808385A0  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 808385A4  38 81 00 20 */	addi r4, r1, 0x20
/* 808385A8  38 A1 00 14 */	addi r5, r1, 0x14
/* 808385AC  7F 86 E3 78 */	mr r6, r28
/* 808385B0  4B 83 F7 B4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 808385B4  7F C3 F3 78 */	mr r3, r30
/* 808385B8  38 9C 08 D0 */	addi r4, r28, 0x8d0
/* 808385BC  4B 83 BD F8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 808385C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808385C4  41 82 00 4C */	beq lbl_80838610
/* 808385C8  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 808385CC  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 808385D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 808385D4  7F C3 F3 78 */	mr r3, r30
/* 808385D8  38 9C 08 E4 */	addi r4, r28, 0x8e4
/* 808385DC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 808385E0  4B 83 C1 64 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 808385E4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 808385E8  4B A2 FC 28 */	b cBgW_CheckBWall__Ff
/* 808385EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808385F0  41 82 00 14 */	beq lbl_80838604
/* 808385F4  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 808385F8  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 808385FC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80838600  48 00 00 20 */	b lbl_80838620
lbl_80838604:
/* 80838604  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 80838608  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8083860C  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80838610:
/* 80838610  3B 5A 00 01 */	addi r26, r26, 1
/* 80838614  2C 1A 00 03 */	cmpwi r26, 3
/* 80838618  3B 7B 00 40 */	addi r27, r27, 0x40
/* 8083861C  41 80 FF 6C */	blt lbl_80838588
lbl_80838620:
/* 80838620  2C 1A 00 03 */	cmpwi r26, 3
/* 80838624  40 82 00 7C */	bne lbl_808386A0
/* 80838628  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8083862C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80838630  EC 01 00 2A */	fadds f0, f1, f0
/* 80838634  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80838638  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha
/* 8083863C  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l
/* 80838640  3B 63 00 14 */	addi r27, r3, 0x14
/* 80838644  C3 7F 01 90 */	lfs f27, 0x190(r31)
/* 80838648  C3 9F 01 50 */	lfs f28, 0x150(r31)
/* 8083864C  48 00 00 4C */	b lbl_80838698
lbl_80838650:
/* 80838650  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80838654  EC 1D 07 F2 */	fmuls f0, f29, f31
/* 80838658  EC 01 00 2A */	fadds f0, f1, f0
/* 8083865C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80838660  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80838664  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 80838668  EC 01 00 2A */	fadds f0, f1, f0
/* 8083866C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80838670  38 61 00 08 */	addi r3, r1, 8
/* 80838674  4B 7E 56 48 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80838678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083867C  41 82 00 24 */	beq lbl_808386A0
/* 80838680  7F C3 F3 78 */	mr r3, r30
/* 80838684  7F 64 DB 78 */	mr r4, r27
/* 80838688  4B 83 C5 E4 */	b GetHorseNoEntry__4dBgSFRC13cBgS_PolyInfo
/* 8083868C  2C 03 00 00 */	cmpwi r3, 0
/* 80838690  40 82 00 10 */	bne lbl_808386A0
/* 80838694  EF BD D8 28 */	fsubs f29, f29, f27
lbl_80838698:
/* 80838698  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 8083869C  41 81 FF B4 */	bgt lbl_80838650
lbl_808386A0:
/* 808386A0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 808386A4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 808386A8  4C 40 13 82 */	cror 2, 0, 2
/* 808386AC  40 82 00 38 */	bne lbl_808386E4
/* 808386B0  80 1C 17 4C */	lwz r0, 0x174c(r28)
/* 808386B4  60 00 00 20 */	ori r0, r0, 0x20
/* 808386B8  90 1C 17 4C */	stw r0, 0x174c(r28)
/* 808386BC  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 808386C0  D0 1C 17 68 */	stfs f0, 0x1768(r28)
/* 808386C4  38 7F 00 20 */	addi r3, r31, 0x20
/* 808386C8  C0 23 00 C4 */	lfs f1, 0xc4(r3)
/* 808386CC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 808386D0  EC 01 00 2A */	fadds f0, f1, f0
/* 808386D4  D0 1C 17 6C */	stfs f0, 0x176c(r28)
/* 808386D8  C0 1C 17 68 */	lfs f0, 0x1768(r28)
/* 808386DC  D0 1C 17 70 */	stfs f0, 0x1770(r28)
/* 808386E0  48 00 00 30 */	b lbl_80838710
lbl_808386E4:
/* 808386E4  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 808386E8  28 00 00 01 */	cmplwi r0, 1
/* 808386EC  40 82 00 24 */	bne lbl_80838710
/* 808386F0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 808386F4  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 808386F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808386FC  40 81 00 14 */	ble lbl_80838710
/* 80838700  7F 83 E3 78 */	mr r3, r28
/* 80838704  7F 84 E3 78 */	mr r4, r28
/* 80838708  38 A0 00 00 */	li r5, 0
/* 8083870C  48 00 89 79 */	bl setBoarHit__9daHorse_cFP10fopAc_ac_ci
lbl_80838710:
/* 80838710  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80838714  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80838718  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8083871C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80838720  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80838724  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80838728  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8083872C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80838730  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80838734  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80838738  39 61 00 60 */	addi r11, r1, 0x60
/* 8083873C  4B B2 9A E0 */	b _restgpr_26
/* 80838740  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80838744  7C 08 03 A6 */	mtlr r0
/* 80838748  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8083874C  4E 80 00 20 */	blr 
