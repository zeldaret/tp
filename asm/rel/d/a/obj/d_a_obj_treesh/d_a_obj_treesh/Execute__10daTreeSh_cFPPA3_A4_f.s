lbl_80D1F49C:
/* 80D1F49C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D1F4A0  7C 08 02 A6 */	mflr r0
/* 80D1F4A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D1F4A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1F4AC  4B 64 2D 18 */	b _savegpr_23
/* 80D1F4B0  7C 7A 1B 78 */	mr r26, r3
/* 80D1F4B4  7C 9B 23 78 */	mr r27, r4
/* 80D1F4B8  3C 60 80 D2 */	lis r3, lit_3767@ha
/* 80D1F4BC  3B C3 F8 C8 */	addi r30, r3, lit_3767@l
/* 80D1F4C0  3B 80 00 00 */	li r28, 0
/* 80D1F4C4  3B 20 00 00 */	li r25, 0
/* 80D1F4C8  3B 00 00 00 */	li r24, 0
/* 80D1F4CC  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D1F4D0  3B E3 F9 9C */	addi r31, r3, l_HIO@l
lbl_80D1F4D4:
/* 80D1F4D4  7F BA C2 14 */	add r29, r26, r24
/* 80D1F4D8  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80D1F4DC  2C 03 00 00 */	cmpwi r3, 0
/* 80D1F4E0  40 82 00 88 */	bne lbl_80D1F568
/* 80D1F4E4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80D1F4E8  4B 54 84 6C */	b cM_rndF__Ff
/* 80D1F4EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D1F4F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1F4F4  FC 00 00 1E */	fctiwz f0, f0
/* 80D1F4F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D1F4FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D1F500  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
/* 80D1F504  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80D1F508  4B 54 84 84 */	b cM_rndFX__Ff
/* 80D1F50C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D1F510  EC 00 08 2A */	fadds f0, f0, f1
/* 80D1F514  3A F9 05 B8 */	addi r23, r25, 0x5b8
/* 80D1F518  7C 1A BD 2E */	stfsx f0, r26, r23
/* 80D1F51C  4B 33 B5 D4 */	b dKyw_get_wind_pow__Fv
/* 80D1F520  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80D1F524  EC 40 08 2A */	fadds f2, f0, f1
/* 80D1F528  A8 1F 00 06 */	lha r0, 6(r31)
/* 80D1F52C  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80D1F530  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D1F534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F538  3C 00 43 30 */	lis r0, 0x4330
/* 80D1F53C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D1F540  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D1F544  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1F548  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80D1F54C  7C 1A BC 2E */	lfsx f0, r26, r23
/* 80D1F550  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1F554  FC 00 00 1E */	fctiwz f0, f0
/* 80D1F558  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D1F55C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D1F560  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 80D1F564  48 00 00 0C */	b lbl_80D1F570
lbl_80D1F568:
/* 80D1F568  38 03 FF FF */	addi r0, r3, -1
/* 80D1F56C  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
lbl_80D1F570:
/* 80D1F570  A8 7D 05 C0 */	lha r3, 0x5c0(r29)
/* 80D1F574  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 80D1F578  7C 03 02 14 */	add r0, r3, r0
/* 80D1F57C  B0 1D 05 C0 */	sth r0, 0x5c0(r29)
/* 80D1F580  3B 9C 00 01 */	addi r28, r28, 1
/* 80D1F584  2C 1C 00 02 */	cmpwi r28, 2
/* 80D1F588  3B 39 00 04 */	addi r25, r25, 4
/* 80D1F58C  3B 18 00 02 */	addi r24, r24, 2
/* 80D1F590  41 80 FF 44 */	blt lbl_80D1F4D4
/* 80D1F594  A8 1A 05 C0 */	lha r0, 0x5c0(r26)
/* 80D1F598  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D1F59C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D1F5A0  38 C3 9A 20 */	addi r6, r3, sincosTable___5JMath@l
/* 80D1F5A4  7C 46 04 2E */	lfsx f2, r6, r0
/* 80D1F5A8  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D1F5AC  38 A3 F9 9C */	addi r5, r3, l_HIO@l
/* 80D1F5B0  A8 05 00 04 */	lha r0, 4(r5)
/* 80D1F5B4  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80D1F5B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D1F5BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D1F5C0  3C 80 43 30 */	lis r4, 0x4330
/* 80D1F5C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1F5C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D1F5CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1F5D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D1F5D4  FC 00 00 1E */	fctiwz f0, f0
/* 80D1F5D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D1F5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F5E0  B0 1A 05 AE */	sth r0, 0x5ae(r26)
/* 80D1F5E4  A8 1A 05 C2 */	lha r0, 0x5c2(r26)
/* 80D1F5E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D1F5EC  7C 66 02 14 */	add r3, r6, r0
/* 80D1F5F0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80D1F5F4  A8 05 00 04 */	lha r0, 4(r5)
/* 80D1F5F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D1F5FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1F600  90 81 00 08 */	stw r4, 8(r1)
/* 80D1F604  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D1F608  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1F60C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D1F610  FC 00 00 1E */	fctiwz f0, f0
/* 80D1F614  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D1F618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1F61C  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 80D1F620  80 7A 05 A8 */	lwz r3, 0x5a8(r26)
/* 80D1F624  38 03 00 24 */	addi r0, r3, 0x24
/* 80D1F628  90 1B 00 00 */	stw r0, 0(r27)
/* 80D1F62C  38 60 00 01 */	li r3, 1
/* 80D1F630  39 61 00 50 */	addi r11, r1, 0x50
/* 80D1F634  4B 64 2B DC */	b _restgpr_23
/* 80D1F638  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D1F63C  7C 08 03 A6 */	mtlr r0
/* 80D1F640  38 21 00 50 */	addi r1, r1, 0x50
/* 80D1F644  4E 80 00 20 */	blr 
