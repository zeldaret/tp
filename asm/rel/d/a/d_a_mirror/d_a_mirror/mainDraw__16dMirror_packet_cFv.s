lbl_8087146C:
/* 8087146C  94 21 FD 30 */	stwu r1, -0x2d0(r1)
/* 80871470  7C 08 02 A6 */	mflr r0
/* 80871474  90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 80871478  DB E1 02 C0 */	stfd f31, 0x2c0(r1)
/* 8087147C  F3 E1 02 C8 */	psq_st f31, 712(r1), 0, 0 /* qr0 */
/* 80871480  DB C1 02 B0 */	stfd f30, 0x2b0(r1)
/* 80871484  F3 C1 02 B8 */	psq_st f30, 696(r1), 0, 0 /* qr0 */
/* 80871488  DB A1 02 A0 */	stfd f29, 0x2a0(r1)
/* 8087148C  F3 A1 02 A8 */	psq_st f29, 680(r1), 0, 0 /* qr0 */
/* 80871490  DB 81 02 90 */	stfd f28, 0x290(r1)
/* 80871494  F3 81 02 98 */	psq_st f28, 664(r1), 0, 0 /* qr0 */
/* 80871498  DB 61 02 80 */	stfd f27, 0x280(r1)
/* 8087149C  F3 61 02 88 */	psq_st f27, 648(r1), 0, 0 /* qr0 */
/* 808714A0  DB 41 02 70 */	stfd f26, 0x270(r1)
/* 808714A4  F3 41 02 78 */	psq_st f26, 632(r1), 0, 0 /* qr0 */
/* 808714A8  DB 21 02 60 */	stfd f25, 0x260(r1)
/* 808714AC  F3 21 02 68 */	psq_st f25, 616(r1), 0, 0 /* qr0 */
/* 808714B0  DB 01 02 50 */	stfd f24, 0x250(r1)
/* 808714B4  F3 01 02 58 */	psq_st f24, 600(r1), 0, 0 /* qr0 */
/* 808714B8  DA E1 02 40 */	stfd f23, 0x240(r1)
/* 808714BC  F2 E1 02 48 */	psq_st f23, 584(r1), 0, 0 /* qr0 */
/* 808714C0  DA C1 02 30 */	stfd f22, 0x230(r1)
/* 808714C4  F2 C1 02 38 */	psq_st f22, 568(r1), 0, 0 /* qr0 */
/* 808714C8  39 61 02 30 */	addi r11, r1, 0x230
/* 808714CC  4B AF 0C F1 */	bl _savegpr_21
/* 808714D0  7C 7A 1B 78 */	mr r26, r3
/* 808714D4  3C 60 80 87 */	lis r3, lit_3884@ha /* 0x8087258C@ha */
/* 808714D8  3B E3 25 8C */	addi r31, r3, lit_3884@l /* 0x8087258C@l */
/* 808714DC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 808714E0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 808714E4  4B A9 F2 59 */	bl reinitGX__6J3DSysFv
/* 808714E8  38 61 01 50 */	addi r3, r1, 0x150
/* 808714EC  4B AE ED 19 */	bl GXGetProjectionv
/* 808714F0  38 61 01 38 */	addi r3, r1, 0x138
/* 808714F4  4B AE EF B9 */	bl GXGetViewportv
/* 808714F8  38 61 01 28 */	addi r3, r1, 0x128
/* 808714FC  38 81 01 2C */	addi r4, r1, 0x12c
/* 80871500  38 A1 01 30 */	addi r5, r1, 0x130
/* 80871504  38 C1 01 34 */	addi r6, r1, 0x134
/* 80871508  4B AE F0 41 */	bl GXGetScissor
/* 8087150C  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80871510  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80871514  FF E0 00 90 */	fmr f31, f0
/* 80871518  FF C0 00 90 */	fmr f30, f0
/* 8087151C  FC 00 00 50 */	fneg f0, f0
/* 80871520  FF A0 00 90 */	fmr f29, f0
/* 80871524  FF 80 00 90 */	fmr f28, f0
/* 80871528  FF 60 00 90 */	fmr f27, f0
/* 8087152C  80 01 01 28 */	lwz r0, 0x128(r1)
/* 80871530  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 80871534  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 80871538  3C 60 43 30 */	lis r3, 0x4330
/* 8087153C  90 61 01 D8 */	stw r3, 0x1d8(r1)
/* 80871540  C8 01 01 D8 */	lfd f0, 0x1d8(r1)
/* 80871544  EF 40 08 28 */	fsubs f26, f0, f1
/* 80871548  80 01 01 30 */	lwz r0, 0x130(r1)
/* 8087154C  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80871550  90 61 01 E0 */	stw r3, 0x1e0(r1)
/* 80871554  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80871558  EC 00 08 28 */	fsubs f0, f0, f1
/* 8087155C  EF 3A 00 2A */	fadds f25, f26, f0
/* 80871560  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 80871564  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 80871568  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 8087156C  C8 01 01 E8 */	lfd f0, 0x1e8(r1)
/* 80871570  EF 00 08 28 */	fsubs f24, f0, f1
/* 80871574  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80871578  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 8087157C  90 61 01 F0 */	stw r3, 0x1f0(r1)
/* 80871580  C8 01 01 F0 */	lfd f0, 0x1f0(r1)
/* 80871584  EC 00 08 28 */	fsubs f0, f0, f1
/* 80871588  EE F8 00 2A */	fadds f23, f24, f0
/* 8087158C  3B A0 00 04 */	li r29, 4
/* 80871590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80871594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80871598  83 C3 61 B0 */	lwz r30, 0x61b0(r3)
/* 8087159C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 808715A0  FE C0 00 50 */	fneg f22, f0
/* 808715A4  3A BA 01 34 */	addi r21, r26, 0x134
/* 808715A8  3A C1 01 9C */	addi r22, r1, 0x19c
/* 808715AC  3A E0 00 00 */	li r23, 0
/* 808715B0  3B 80 00 00 */	li r28, 0
/* 808715B4  3B 00 00 00 */	li r24, 0
lbl_808715B8:
/* 808715B8  38 7E 01 40 */	addi r3, r30, 0x140
/* 808715BC  7E A4 AB 78 */	mr r4, r21
/* 808715C0  7E C5 B3 78 */	mr r5, r22
/* 808715C4  4B AD 57 A9 */	bl PSMTXMultVec
/* 808715C8  C0 16 00 08 */	lfs f0, 8(r22)
/* 808715CC  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 808715D0  4C 41 13 82 */	cror 2, 1, 2
/* 808715D4  40 82 00 08 */	bne lbl_808715DC
/* 808715D8  3A F7 00 01 */	addi r23, r23, 1
lbl_808715DC:
/* 808715DC  C0 16 00 08 */	lfs f0, 8(r22)
/* 808715E0  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 808715E4  4C 41 13 82 */	cror 2, 1, 2
/* 808715E8  7C 00 00 26 */	mfcr r0
/* 808715EC  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 808715F0  40 82 00 08 */	bne lbl_808715F8
/* 808715F4  7F 1C C3 78 */	mr r28, r24
lbl_808715F8:
/* 808715F8  3B 18 00 01 */	addi r24, r24, 1
/* 808715FC  2C 18 00 04 */	cmpwi r24, 4
/* 80871600  3A B5 00 0C */	addi r21, r21, 0xc
/* 80871604  3A D6 00 0C */	addi r22, r22, 0xc
/* 80871608  41 80 FF B0 */	blt lbl_808715B8
/* 8087160C  2C 17 00 04 */	cmpwi r23, 4
/* 80871610  40 80 07 0C */	bge lbl_80871D1C
/* 80871614  2C 17 00 00 */	cmpwi r23, 0
/* 80871618  41 82 01 D8 */	beq lbl_808717F0
/* 8087161C  3B 60 FF FF */	li r27, -1
/* 80871620  38 00 00 04 */	li r0, 4
/* 80871624  7C 09 03 A6 */	mtctr r0
lbl_80871628:
/* 80871628  38 7C 00 01 */	addi r3, r28, 1
/* 8087162C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80871630  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80871634  7C 03 00 50 */	subf r0, r3, r0
/* 80871638  54 00 10 3E */	rotlwi r0, r0, 2
/* 8087163C  7C A0 1A 14 */	add r5, r0, r3
/* 80871640  2C 1B 00 00 */	cmpwi r27, 0
/* 80871644  40 80 00 28 */	bge lbl_8087166C
/* 80871648  1C 85 00 0C */	mulli r4, r5, 0xc
/* 8087164C  38 61 01 9C */	addi r3, r1, 0x19c
/* 80871650  38 04 00 08 */	addi r0, r4, 8
/* 80871654  7C 03 04 2E */	lfsx f0, r3, r0
/* 80871658  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 8087165C  4C 41 13 82 */	cror 2, 1, 2
/* 80871660  40 82 01 88 */	bne lbl_808717E8
/* 80871664  7C BB 2B 78 */	mr r27, r5
/* 80871668  48 00 01 80 */	b lbl_808717E8
lbl_8087166C:
/* 8087166C  1E E5 00 0C */	mulli r23, r5, 0xc
/* 80871670  3B 01 01 9C */	addi r24, r1, 0x19c
/* 80871674  7F 18 BA 14 */	add r24, r24, r23
/* 80871678  C0 18 00 08 */	lfs f0, 8(r24)
/* 8087167C  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80871680  40 80 01 68 */	bge lbl_808717E8
/* 80871684  38 7B 00 03 */	addi r3, r27, 3
/* 80871688  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 8087168C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80871690  7C 03 00 50 */	subf r0, r3, r0
/* 80871694  54 00 10 3E */	rotlwi r0, r0, 2
/* 80871698  7C A0 1A 14 */	add r5, r0, r3
/* 8087169C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 808716A0  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 808716A4  38 81 01 9C */	addi r4, r1, 0x19c
/* 808716A8  7C 84 02 14 */	add r4, r4, r0
/* 808716AC  1F A5 00 0C */	mulli r29, r5, 0xc
/* 808716B0  3B 21 01 9C */	addi r25, r1, 0x19c
/* 808716B4  7F 39 EA 14 */	add r25, r25, r29
/* 808716B8  7F 25 CB 78 */	mr r5, r25
/* 808716BC  4B 9F 54 79 */	bl __mi__4cXyzCFRC3Vec
/* 808716C0  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 808716C4  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 808716C8  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 808716CC  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 808716D0  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 808716D4  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 808716D8  3A C1 01 A4 */	addi r22, r1, 0x1a4
/* 808716DC  7C 16 EC 2E */	lfsx f0, r22, r29
/* 808716E0  EC 16 00 28 */	fsubs f0, f22, f0
/* 808716E4  EC 20 08 24 */	fdivs f1, f0, f1
/* 808716E8  38 61 01 1C */	addi r3, r1, 0x11c
/* 808716EC  7C 64 1B 78 */	mr r4, r3
/* 808716F0  4B AD 59 E9 */	bl PSVECScale
/* 808716F4  38 61 00 BC */	addi r3, r1, 0xbc
/* 808716F8  7F 24 CB 78 */	mr r4, r25
/* 808716FC  38 A1 01 1C */	addi r5, r1, 0x11c
/* 80871700  4B 9F 53 E5 */	bl __pl__4cXyzCFRC3Vec
/* 80871704  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80871708  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 8087170C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80871710  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80871714  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80871718  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 8087171C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80871720  1E BC 00 0C */	mulli r21, r28, 0xc
/* 80871724  3B 21 01 9C */	addi r25, r1, 0x19c
/* 80871728  7F 39 AA 14 */	add r25, r25, r21
/* 8087172C  7F 24 CB 78 */	mr r4, r25
/* 80871730  7F 05 C3 78 */	mr r5, r24
/* 80871734  3B A0 00 05 */	li r29, 5
/* 80871738  4B 9F 53 FD */	bl __mi__4cXyzCFRC3Vec
/* 8087173C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80871740  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80871744  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80871748  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 8087174C  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80871750  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 80871754  38 61 01 1C */	addi r3, r1, 0x11c
/* 80871758  7C 64 1B 78 */	mr r4, r3
/* 8087175C  7C 16 BC 2E */	lfsx f0, r22, r23
/* 80871760  EC 16 00 28 */	fsubs f0, f22, f0
/* 80871764  EC 20 08 24 */	fdivs f1, f0, f1
/* 80871768  4B AD 59 71 */	bl PSVECScale
/* 8087176C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80871770  7F 04 C3 78 */	mr r4, r24
/* 80871774  38 A1 01 1C */	addi r5, r1, 0x11c
/* 80871778  4B 9F 53 6D */	bl __pl__4cXyzCFRC3Vec
/* 8087177C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80871780  D0 19 00 00 */	stfs f0, 0(r25)
/* 80871784  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80871788  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8087178C  7C 03 AD 2E */	stfsx f0, r3, r21
/* 80871790  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80871794  7C 16 AD 2E */	stfsx f0, r22, r21
/* 80871798  7F 64 DB 78 */	mr r4, r27
/* 8087179C  48 00 00 40 */	b lbl_808717DC
lbl_808717A0:
/* 808717A0  C0 19 00 00 */	lfs f0, 0(r25)
/* 808717A4  1C 04 00 0C */	mulli r0, r4, 0xc
/* 808717A8  38 61 01 9C */	addi r3, r1, 0x19c
/* 808717AC  7C 63 02 14 */	add r3, r3, r0
/* 808717B0  D0 03 00 00 */	stfs f0, 0(r3)
/* 808717B4  C0 19 00 04 */	lfs f0, 4(r25)
/* 808717B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 808717BC  C0 19 00 08 */	lfs f0, 8(r25)
/* 808717C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 808717C4  38 64 00 01 */	addi r3, r4, 1
/* 808717C8  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 808717CC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 808717D0  7C 03 00 50 */	subf r0, r3, r0
/* 808717D4  54 00 10 3E */	rotlwi r0, r0, 2
/* 808717D8  7C 80 1A 14 */	add r4, r0, r3
lbl_808717DC:
/* 808717DC  7C 04 E0 00 */	cmpw r4, r28
/* 808717E0  40 82 FF C0 */	bne lbl_808717A0
/* 808717E4  48 00 00 0C */	b lbl_808717F0
lbl_808717E8:
/* 808717E8  7C BC 2B 78 */	mr r28, r5
/* 808717EC  42 00 FE 3C */	bdnz lbl_80871628
lbl_808717F0:
/* 808717F0  C2 DE 00 D4 */	lfs f22, 0xd4(r30)
/* 808717F4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 808717F8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 808717FC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80871800  EC 01 00 32 */	fmuls f0, f1, f0
/* 80871804  EC 22 00 32 */	fmuls f1, f2, f0
/* 80871808  4B AF AE 61 */	bl tan
/* 8087180C  FC 00 08 18 */	frsp f0, f1
/* 80871810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80871814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80871818  80 63 61 AC */	lwz r3, 0x61ac(r3)
/* 8087181C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80871820  C0 43 00 00 */	lfs f2, 0(r3)
/* 80871824  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80871828  41 82 00 2C */	beq lbl_80871854
/* 8087182C  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80871830  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80871834  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80871838  C0 23 00 08 */	lfs f1, 8(r3)
/* 8087183C  EC 22 08 2A */	fadds f1, f2, f1
/* 80871840  EC 43 00 72 */	fmuls f2, f3, f1
/* 80871844  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80871848  EC 62 08 28 */	fsubs f3, f2, f1
/* 8087184C  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 80871850  48 00 00 0C */	b lbl_8087185C
lbl_80871854:
/* 80871854  FC 60 10 90 */	fmr f3, f2
/* 80871858  C0 A3 00 08 */	lfs f5, 8(r3)
lbl_8087185C:
/* 8087185C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80871860  C0 43 00 04 */	lfs f2, 4(r3)
/* 80871864  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80871868  41 82 00 2C */	beq lbl_80871894
/* 8087186C  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 80871870  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80871874  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80871878  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8087187C  EC 22 08 2A */	fadds f1, f2, f1
/* 80871880  EC 44 00 72 */	fmuls f2, f4, f1
/* 80871884  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80871888  EC 82 08 28 */	fsubs f4, f2, f1
/* 8087188C  C0 DF 00 38 */	lfs f6, 0x38(r31)
/* 80871890  48 00 00 0C */	b lbl_8087189C
lbl_80871894:
/* 80871894  FC 80 10 90 */	fmr f4, f2
/* 80871898  C0 C3 00 0C */	lfs f6, 0xc(r3)
lbl_8087189C:
/* 8087189C  38 61 01 9C */	addi r3, r1, 0x19c
/* 808718A0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 808718A4  EC 22 01 72 */	fmuls f1, f2, f5
/* 808718A8  EC 42 01 B2 */	fmuls f2, f2, f6
/* 808718AC  C0 DF 00 14 */	lfs f6, 0x14(r31)
/* 808718B0  7F A9 03 A6 */	mtctr r29
/* 808718B4  2C 1D 00 00 */	cmpwi r29, 0
/* 808718B8  40 81 00 F4 */	ble lbl_808719AC
lbl_808718BC:
/* 808718BC  C0 E3 00 04 */	lfs f7, 4(r3)
/* 808718C0  C0 A3 00 08 */	lfs f5, 8(r3)
/* 808718C4  EC A5 00 32 */	fmuls f5, f5, f0
/* 808718C8  EC A7 28 24 */	fdivs f5, f7, f5
/* 808718CC  D0 A3 00 04 */	stfs f5, 4(r3)
/* 808718D0  C0 E3 00 00 */	lfs f7, 0(r3)
/* 808718D4  C0 A3 00 08 */	lfs f5, 8(r3)
/* 808718D8  FC A0 28 50 */	fneg f5, f5
/* 808718DC  EC A5 00 32 */	fmuls f5, f5, f0
/* 808718E0  EC B6 01 72 */	fmuls f5, f22, f5
/* 808718E4  EC A7 28 24 */	fdivs f5, f7, f5
/* 808718E8  D0 A3 00 00 */	stfs f5, 0(r3)
/* 808718EC  C0 A3 00 00 */	lfs f5, 0(r3)
/* 808718F0  EC A6 28 2A */	fadds f5, f6, f5
/* 808718F4  EC A5 00 72 */	fmuls f5, f5, f1
/* 808718F8  EC A3 28 2A */	fadds f5, f3, f5
/* 808718FC  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80871900  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80871904  EC A6 28 2A */	fadds f5, f6, f5
/* 80871908  EC A5 00 B2 */	fmuls f5, f5, f2
/* 8087190C  EC A4 28 2A */	fadds f5, f4, f5
/* 80871910  D0 A3 00 04 */	stfs f5, 4(r3)
/* 80871914  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80871918  FC 05 D0 40 */	fcmpo cr0, f5, f26
/* 8087191C  40 80 00 0C */	bge lbl_80871928
/* 80871920  FC A0 D0 90 */	fmr f5, f26
/* 80871924  48 00 00 10 */	b lbl_80871934
lbl_80871928:
/* 80871928  FC 05 C8 40 */	fcmpo cr0, f5, f25
/* 8087192C  40 81 00 08 */	ble lbl_80871934
/* 80871930  FC A0 C8 90 */	fmr f5, f25
lbl_80871934:
/* 80871934  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80871938  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8087193C  FC 05 C0 40 */	fcmpo cr0, f5, f24
/* 80871940  40 80 00 0C */	bge lbl_8087194C
/* 80871944  FC A0 C0 90 */	fmr f5, f24
/* 80871948  48 00 00 10 */	b lbl_80871958
lbl_8087194C:
/* 8087194C  FC 05 B8 40 */	fcmpo cr0, f5, f23
/* 80871950  40 81 00 08 */	ble lbl_80871958
/* 80871954  FC A0 B8 90 */	fmr f5, f23
lbl_80871958:
/* 80871958  D0 A3 00 04 */	stfs f5, 4(r3)
/* 8087195C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80871960  FC 05 F8 40 */	fcmpo cr0, f5, f31
/* 80871964  40 80 00 08 */	bge lbl_8087196C
/* 80871968  FF E0 28 90 */	fmr f31, f5
lbl_8087196C:
/* 8087196C  FC 05 E8 40 */	fcmpo cr0, f5, f29
/* 80871970  40 81 00 08 */	ble lbl_80871978
/* 80871974  FF A0 28 90 */	fmr f29, f5
lbl_80871978:
/* 80871978  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8087197C  FC 05 F0 40 */	fcmpo cr0, f5, f30
/* 80871980  40 80 00 08 */	bge lbl_80871988
/* 80871984  FF C0 28 90 */	fmr f30, f5
lbl_80871988:
/* 80871988  FC 05 E0 40 */	fcmpo cr0, f5, f28
/* 8087198C  40 81 00 08 */	ble lbl_80871994
/* 80871990  FF 80 28 90 */	fmr f28, f5
lbl_80871994:
/* 80871994  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80871998  FC 05 D8 40 */	fcmpo cr0, f5, f27
/* 8087199C  40 81 00 08 */	ble lbl_808719A4
/* 808719A0  FF 60 28 90 */	fmr f27, f5
lbl_808719A4:
/* 808719A4  38 63 00 0C */	addi r3, r3, 0xc
/* 808719A8  42 00 FF 14 */	bdnz lbl_808718BC
lbl_808719AC:
/* 808719AC  EE DD F8 28 */	fsubs f22, f29, f31
/* 808719B0  FC 00 B2 10 */	fabs f0, f22
/* 808719B4  FC 00 00 18 */	frsp f0, f0
/* 808719B8  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 808719BC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 808719C0  41 80 03 5C */	blt lbl_80871D1C
/* 808719C4  EC 3C F0 28 */	fsubs f1, f28, f30
/* 808719C8  FC 00 0A 10 */	fabs f0, f1
/* 808719CC  FC 00 00 18 */	frsp f0, f0
/* 808719D0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 808719D4  40 80 00 08 */	bge lbl_808719DC
/* 808719D8  48 00 03 44 */	b lbl_80871D1C
lbl_808719DC:
/* 808719DC  4B AF 06 D1 */	bl __cvt_fp2unsigned
/* 808719E0  7C 7D 1B 78 */	mr r29, r3
/* 808719E4  FC 20 B0 90 */	fmr f1, f22
/* 808719E8  4B AF 06 C5 */	bl __cvt_fp2unsigned
/* 808719EC  7C 7C 1B 78 */	mr r28, r3
/* 808719F0  FC 20 F0 90 */	fmr f1, f30
/* 808719F4  4B AF 06 B9 */	bl __cvt_fp2unsigned
/* 808719F8  7C 7B 1B 78 */	mr r27, r3
/* 808719FC  FC 20 F8 90 */	fmr f1, f31
/* 80871A00  4B AF 06 AD */	bl __cvt_fp2unsigned
/* 80871A04  7F 64 DB 78 */	mr r4, r27
/* 80871A08  7F 85 E3 78 */	mr r5, r28
/* 80871A0C  7F A6 EB 78 */	mr r6, r29
/* 80871A10  4B AE EA C1 */	bl GXSetScissor
/* 80871A14  38 61 00 98 */	addi r3, r1, 0x98
/* 80871A18  38 9A 01 40 */	addi r4, r26, 0x140
/* 80871A1C  38 BA 01 34 */	addi r5, r26, 0x134
/* 80871A20  4B 9F 51 15 */	bl __mi__4cXyzCFRC3Vec
/* 80871A24  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80871A28  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80871A2C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80871A30  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80871A34  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80871A38  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80871A3C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80871A40  38 9A 01 4C */	addi r4, r26, 0x14c
/* 80871A44  38 BA 01 40 */	addi r5, r26, 0x140
/* 80871A48  4B 9F 50 ED */	bl __mi__4cXyzCFRC3Vec
/* 80871A4C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80871A50  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80871A54  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80871A58  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80871A5C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80871A60  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80871A64  38 61 00 80 */	addi r3, r1, 0x80
/* 80871A68  38 81 01 10 */	addi r4, r1, 0x110
/* 80871A6C  38 A1 01 04 */	addi r5, r1, 0x104
/* 80871A70  4B 9F 52 4D */	bl outprod__4cXyzCFRC3Vec
/* 80871A74  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80871A78  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80871A7C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80871A80  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80871A84  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80871A88  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80871A8C  38 61 00 74 */	addi r3, r1, 0x74
/* 80871A90  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80871A94  4B 9F 54 B5 */	bl normalizeZP__4cXyzFv
/* 80871A98  C0 C1 01 00 */	lfs f6, 0x100(r1)
/* 80871A9C  C0 1A 01 3C */	lfs f0, 0x13c(r26)
/* 80871AA0  EC 46 00 32 */	fmuls f2, f6, f0
/* 80871AA4  C0 A1 00 F8 */	lfs f5, 0xf8(r1)
/* 80871AA8  C0 1A 01 34 */	lfs f0, 0x134(r26)
/* 80871AAC  EC 25 00 32 */	fmuls f1, f5, f0
/* 80871AB0  C0 81 00 FC */	lfs f4, 0xfc(r1)
/* 80871AB4  C0 1A 01 38 */	lfs f0, 0x138(r26)
/* 80871AB8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80871ABC  EC 01 00 2A */	fadds f0, f1, f0
/* 80871AC0  EC E2 00 2A */	fadds f7, f2, f0
/* 80871AC4  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80871AC8  EC 46 00 32 */	fmuls f2, f6, f0
/* 80871ACC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80871AD0  EC 25 00 32 */	fmuls f1, f5, f0
/* 80871AD4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80871AD8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80871ADC  EC 01 00 2A */	fadds f0, f1, f0
/* 80871AE0  EC 02 00 2A */	fadds f0, f2, f0
/* 80871AE4  EE C0 38 28 */	fsubs f22, f0, f7
/* 80871AE8  38 61 00 68 */	addi r3, r1, 0x68
/* 80871AEC  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80871AF0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80871AF4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80871AF8  EC 46 00 32 */	fmuls f2, f6, f0
/* 80871AFC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80871B00  EC 25 00 32 */	fmuls f1, f5, f0
/* 80871B04  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80871B08  EC 04 00 32 */	fmuls f0, f4, f0
/* 80871B0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80871B10  EC 02 00 2A */	fadds f0, f2, f0
/* 80871B14  EC 00 38 28 */	fsubs f0, f0, f7
/* 80871B18  EC 23 00 32 */	fmuls f1, f3, f0
/* 80871B1C  4B 9F 50 69 */	bl __ml__4cXyzCFf
/* 80871B20  38 61 00 5C */	addi r3, r1, 0x5c
/* 80871B24  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 80871B28  38 A1 00 68 */	addi r5, r1, 0x68
/* 80871B2C  4B 9F 50 09 */	bl __mi__4cXyzCFRC3Vec
/* 80871B30  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80871B34  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80871B38  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80871B3C  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80871B40  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80871B44  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80871B48  38 61 00 50 */	addi r3, r1, 0x50
/* 80871B4C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80871B50  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80871B54  EC 20 05 B2 */	fmuls f1, f0, f22
/* 80871B58  4B 9F 50 2D */	bl __ml__4cXyzCFf
/* 80871B5C  38 61 00 44 */	addi r3, r1, 0x44
/* 80871B60  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 80871B64  38 A1 00 50 */	addi r5, r1, 0x50
/* 80871B68  4B 9F 4F CD */	bl __mi__4cXyzCFRC3Vec
/* 80871B6C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80871B70  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80871B74  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80871B78  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80871B7C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80871B80  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80871B84  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80871B88  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80871B8C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80871B90  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80871B94  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80871B98  C0 1A 01 80 */	lfs f0, 0x180(r26)
/* 80871B9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80871BA0  40 81 00 BC */	ble lbl_80871C5C
/* 80871BA4  38 61 00 38 */	addi r3, r1, 0x38
/* 80871BA8  38 81 00 EC */	addi r4, r1, 0xec
/* 80871BAC  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 80871BB0  4B 9F 4F 85 */	bl __mi__4cXyzCFRC3Vec
/* 80871BB4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80871BB8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80871BBC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80871BC0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80871BC4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80871BC8  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80871BCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80871BD0  38 81 01 10 */	addi r4, r1, 0x110
/* 80871BD4  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 80871BD8  4B 9F 50 E5 */	bl outprod__4cXyzCFRC3Vec
/* 80871BDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80871BE0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80871BE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80871BE8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80871BEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80871BF0  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80871BF4  38 61 00 20 */	addi r3, r1, 0x20
/* 80871BF8  38 81 01 10 */	addi r4, r1, 0x110
/* 80871BFC  38 A1 01 04 */	addi r5, r1, 0x104
/* 80871C00  4B 9F 50 BD */	bl outprod__4cXyzCFRC3Vec
/* 80871C04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80871C08  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80871C0C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80871C10  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80871C14  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80871C18  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80871C1C  38 61 00 14 */	addi r3, r1, 0x14
/* 80871C20  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80871C24  4B 9F 53 25 */	bl normalizeZP__4cXyzFv
/* 80871C28  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80871C2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80871C30  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80871C34  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80871C38  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80871C3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80871C40  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80871C44  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80871C48  EC 00 00 72 */	fmuls f0, f0, f1
/* 80871C4C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80871C50  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80871C54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80871C58  D0 01 00 DC */	stfs f0, 0xdc(r1)
lbl_80871C5C:
/* 80871C5C  38 61 01 6C */	addi r3, r1, 0x16c
/* 80871C60  38 81 00 EC */	addi r4, r1, 0xec
/* 80871C64  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80871C68  38 C1 00 D4 */	addi r6, r1, 0xd4
/* 80871C6C  A8 FE 00 FC */	lha r7, 0xfc(r30)
/* 80871C70  4B 79 AA A1 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 80871C74  38 7A 01 7C */	addi r3, r26, 0x17c
/* 80871C78  4B 79 B1 89 */	bl scaleS__14mDoMtx_stack_cFRC4cXyz
/* 80871C7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80871C80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80871C84  38 81 01 6C */	addi r4, r1, 0x16c
/* 80871C88  7C 65 1B 78 */	mr r5, r3
/* 80871C8C  4B AD 48 59 */	bl PSMTXConcat
/* 80871C90  3B 80 00 00 */	li r28, 0
/* 80871C94  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha /* 0x804515D0@ha */
/* 80871C98  93 83 15 D0 */	stw r28, sOldVcdVatCmd__8J3DShape@l(r3)  /* 0x804515D0@l */
/* 80871C9C  3A A0 00 00 */	li r21, 0
/* 80871CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80871CA4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80871CA8  48 00 00 20 */	b lbl_80871CC8
lbl_80871CAC:
/* 80871CAC  7F 43 D3 78 */	mr r3, r26
/* 80871CB0  38 1C 00 34 */	addi r0, r28, 0x34
/* 80871CB4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80871CB8  7F 65 DB 78 */	mr r5, r27
/* 80871CBC  4B FF F5 AD */	bl modelDraw__16dMirror_packet_cFP8J3DModelPA4_f
/* 80871CC0  3A B5 00 01 */	addi r21, r21, 1
/* 80871CC4  3B 9C 00 04 */	addi r28, r28, 4
lbl_80871CC8:
/* 80871CC8  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 80871CCC  7C 15 00 00 */	cmpw r21, r0
/* 80871CD0  41 80 FF DC */	blt lbl_80871CAC
/* 80871CD4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80871CD8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80871CDC  4B A9 EA 61 */	bl reinitGX__6J3DSysFv
/* 80871CE0  80 61 01 28 */	lwz r3, 0x128(r1)
/* 80871CE4  80 81 01 2C */	lwz r4, 0x12c(r1)
/* 80871CE8  80 A1 01 30 */	lwz r5, 0x130(r1)
/* 80871CEC  80 C1 01 34 */	lwz r6, 0x134(r1)
/* 80871CF0  4B AE E7 E1 */	bl GXSetScissor
/* 80871CF4  7F 43 D3 78 */	mr r3, r26
/* 80871CF8  38 81 01 50 */	addi r4, r1, 0x150
/* 80871CFC  38 A1 01 38 */	addi r5, r1, 0x138
/* 80871D00  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80871D04  FC 40 F8 90 */	fmr f2, f31
/* 80871D08  FC 60 F0 90 */	fmr f3, f30
/* 80871D0C  FC 80 E8 90 */	fmr f4, f29
/* 80871D10  FC A0 E0 90 */	fmr f5, f28
/* 80871D14  FC C0 D8 90 */	fmr f6, f27
/* 80871D18  4B FF F0 71 */	bl mirrorZdraw__16dMirror_packet_cFPfPfffffff
lbl_80871D1C:
/* 80871D1C  E3 E1 02 C8 */	psq_l f31, 712(r1), 0, 0 /* qr0 */
/* 80871D20  CB E1 02 C0 */	lfd f31, 0x2c0(r1)
/* 80871D24  E3 C1 02 B8 */	psq_l f30, 696(r1), 0, 0 /* qr0 */
/* 80871D28  CB C1 02 B0 */	lfd f30, 0x2b0(r1)
/* 80871D2C  E3 A1 02 A8 */	psq_l f29, 680(r1), 0, 0 /* qr0 */
/* 80871D30  CB A1 02 A0 */	lfd f29, 0x2a0(r1)
/* 80871D34  E3 81 02 98 */	psq_l f28, 664(r1), 0, 0 /* qr0 */
/* 80871D38  CB 81 02 90 */	lfd f28, 0x290(r1)
/* 80871D3C  E3 61 02 88 */	psq_l f27, 648(r1), 0, 0 /* qr0 */
/* 80871D40  CB 61 02 80 */	lfd f27, 0x280(r1)
/* 80871D44  E3 41 02 78 */	psq_l f26, 632(r1), 0, 0 /* qr0 */
/* 80871D48  CB 41 02 70 */	lfd f26, 0x270(r1)
/* 80871D4C  E3 21 02 68 */	psq_l f25, 616(r1), 0, 0 /* qr0 */
/* 80871D50  CB 21 02 60 */	lfd f25, 0x260(r1)
/* 80871D54  E3 01 02 58 */	psq_l f24, 600(r1), 0, 0 /* qr0 */
/* 80871D58  CB 01 02 50 */	lfd f24, 0x250(r1)
/* 80871D5C  E2 E1 02 48 */	psq_l f23, 584(r1), 0, 0 /* qr0 */
/* 80871D60  CA E1 02 40 */	lfd f23, 0x240(r1)
/* 80871D64  E2 C1 02 38 */	psq_l f22, 568(r1), 0, 0 /* qr0 */
/* 80871D68  CA C1 02 30 */	lfd f22, 0x230(r1)
/* 80871D6C  39 61 02 30 */	addi r11, r1, 0x230
/* 80871D70  4B AF 04 99 */	bl _restgpr_21
/* 80871D74  80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 80871D78  7C 08 03 A6 */	mtlr r0
/* 80871D7C  38 21 02 D0 */	addi r1, r1, 0x2d0
/* 80871D80  4E 80 00 20 */	blr 
