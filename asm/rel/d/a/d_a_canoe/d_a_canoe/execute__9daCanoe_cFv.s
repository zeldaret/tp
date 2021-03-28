lbl_804DC7B4:
/* 804DC7B4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804DC7B8  7C 08 02 A6 */	mflr r0
/* 804DC7BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 804DC7C0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804DC7C4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804DC7C8  39 61 00 80 */	addi r11, r1, 0x80
/* 804DC7CC  4B E8 5A 00 */	b _savegpr_25
/* 804DC7D0  7C 7B 1B 78 */	mr r27, r3
/* 804DC7D4  3C 60 80 4E */	lis r3, lit_1109@ha
/* 804DC7D8  3B C3 D7 F8 */	addi r30, r3, lit_1109@l
/* 804DC7DC  3C 60 80 4E */	lis r3, lit_3766@ha
/* 804DC7E0  3B E3 D5 DC */	addi r31, r3, lit_3766@l
/* 804DC7E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DC7E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DC7EC  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804DC7F0  C0 1B 14 94 */	lfs f0, 0x1494(r27)
/* 804DC7F4  D0 1B 14 AC */	stfs f0, 0x14ac(r27)
/* 804DC7F8  C0 1B 14 98 */	lfs f0, 0x1498(r27)
/* 804DC7FC  D0 1B 14 B0 */	stfs f0, 0x14b0(r27)
/* 804DC800  C0 1B 14 9C */	lfs f0, 0x149c(r27)
/* 804DC804  D0 1B 14 B4 */	stfs f0, 0x14b4(r27)
/* 804DC808  C0 1B 14 A0 */	lfs f0, 0x14a0(r27)
/* 804DC80C  D0 1B 14 B8 */	stfs f0, 0x14b8(r27)
/* 804DC810  C0 1B 14 A4 */	lfs f0, 0x14a4(r27)
/* 804DC814  D0 1B 14 BC */	stfs f0, 0x14bc(r27)
/* 804DC818  C0 1B 14 A8 */	lfs f0, 0x14a8(r27)
/* 804DC81C  D0 1B 14 C0 */	stfs f0, 0x14c0(r27)
/* 804DC820  AB 9B 04 E6 */	lha r28, 0x4e6(r27)
/* 804DC824  88 1B 14 42 */	lbz r0, 0x1442(r27)
/* 804DC828  28 00 00 00 */	cmplwi r0, 0
/* 804DC82C  41 82 00 48 */	beq lbl_804DC874
/* 804DC830  A8 1B 14 4C */	lha r0, 0x144c(r27)
/* 804DC834  7C 1C 00 50 */	subf r0, r28, r0
/* 804DC838  7C 19 07 34 */	extsh r25, r0
/* 804DC83C  7F A3 EB 78 */	mr r3, r29
/* 804DC840  4B C1 74 04 */	b getCanoeMaxRotSpeed__9daAlink_cCFv
/* 804DC844  7C 60 07 34 */	extsh r0, r3
/* 804DC848  7C 19 00 00 */	cmpw r25, r0
/* 804DC84C  40 81 00 0C */	ble lbl_804DC858
/* 804DC850  7C 79 1B 78 */	mr r25, r3
/* 804DC854  48 00 00 14 */	b lbl_804DC868
lbl_804DC858:
/* 804DC858  7C 00 00 D0 */	neg r0, r0
/* 804DC85C  7C 19 00 00 */	cmpw r25, r0
/* 804DC860  40 80 00 08 */	bge lbl_804DC868
/* 804DC864  7C 19 07 34 */	extsh r25, r0
lbl_804DC868:
/* 804DC868  38 00 00 00 */	li r0, 0
/* 804DC86C  98 1B 14 42 */	stb r0, 0x1442(r27)
/* 804DC870  48 00 00 80 */	b lbl_804DC8F0
lbl_804DC874:
/* 804DC874  3B 20 00 00 */	li r25, 0
/* 804DC878  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 804DC87C  28 00 00 2D */	cmplwi r0, 0x2d
/* 804DC880  40 82 00 70 */	bne lbl_804DC8F0
/* 804DC884  C0 3B 14 CC */	lfs f1, 0x14cc(r27)
/* 804DC888  C0 1B 14 C4 */	lfs f0, 0x14c4(r27)
/* 804DC88C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804DC890  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DC894  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804DC898  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804DC89C  38 61 00 18 */	addi r3, r1, 0x18
/* 804DC8A0  4B E6 A8 98 */	b PSVECSquareMag
/* 804DC8A4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804DC8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC8AC  40 81 00 44 */	ble lbl_804DC8F0
/* 804DC8B0  38 7B 14 C4 */	addi r3, r27, 0x14c4
/* 804DC8B4  4B D8 A8 74 */	b atan2sX_Z__4cXyzCFv
/* 804DC8B8  7C 7A 1B 78 */	mr r26, r3
/* 804DC8BC  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 804DC8C0  7F 44 D3 78 */	mr r4, r26
/* 804DC8C4  4B D9 45 60 */	b cLib_distanceAngleS__Fss
/* 804DC8C8  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804DC8CC  40 81 00 10 */	ble lbl_804DC8DC
/* 804DC8D0  3C 7A 00 01 */	addis r3, r26, 1
/* 804DC8D4  38 03 80 00 */	addi r0, r3, -32768
/* 804DC8D8  7C 1A 07 34 */	extsh r26, r0
lbl_804DC8DC:
/* 804DC8DC  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 804DC8E0  7F 44 D3 78 */	mr r4, r26
/* 804DC8E4  38 A0 00 04 */	li r5, 4
/* 804DC8E8  38 C0 00 4B */	li r6, 0x4b
/* 804DC8EC  4B D9 3D 1C */	b cLib_addCalcAngleS2__FPssss
lbl_804DC8F0:
/* 804DC8F0  38 7B 14 4E */	addi r3, r27, 0x144e
/* 804DC8F4  7F 24 CB 78 */	mr r4, r25
/* 804DC8F8  38 A0 00 05 */	li r5, 5
/* 804DC8FC  38 C0 00 0F */	li r6, 0xf
/* 804DC900  38 E0 00 05 */	li r7, 5
/* 804DC904  4B D9 3C 3C */	b cLib_addCalcAngleS__FPsssss
/* 804DC908  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 804DC90C  A8 1B 14 4E */	lha r0, 0x144e(r27)
/* 804DC910  7C 03 02 14 */	add r0, r3, r0
/* 804DC914  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 804DC918  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 804DC91C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 804DC920  A8 7B 14 56 */	lha r3, 0x1456(r27)
/* 804DC924  2C 03 00 00 */	cmpwi r3, 0
/* 804DC928  41 82 00 98 */	beq lbl_804DC9C0
/* 804DC92C  38 03 FF FF */	addi r0, r3, -1
/* 804DC930  B0 1B 14 56 */	sth r0, 0x1456(r27)
/* 804DC934  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 804DC938  A8 1B 14 56 */	lha r0, 0x1456(r27)
/* 804DC93C  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DC940  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC944  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DC948  3C 00 43 30 */	lis r0, 0x4330
/* 804DC94C  90 01 00 40 */	stw r0, 0x40(r1)
/* 804DC950  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 804DC954  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DC958  EC 22 00 32 */	fmuls f1, f2, f0
/* 804DC95C  4B D8 AC 88 */	b cM_rad2s__Ff
/* 804DC960  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804DC964  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DC968  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804DC96C  7C 63 04 2E */	lfsx f3, r3, r0
/* 804DC970  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 804DC974  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 804DC978  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC97C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804DC980  3C 60 43 30 */	lis r3, 0x4330
/* 804DC984  90 61 00 48 */	stw r3, 0x48(r1)
/* 804DC988  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804DC98C  EC 20 10 28 */	fsubs f1, f0, f2
/* 804DC990  A8 1B 14 54 */	lha r0, 0x1454(r27)
/* 804DC994  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC998  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DC99C  90 61 00 50 */	stw r3, 0x50(r1)
/* 804DC9A0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804DC9A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804DC9A8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804DC9AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804DC9B0  FC 00 00 1E */	fctiwz f0, f0
/* 804DC9B4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804DC9B8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804DC9BC  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_804DC9C0:
/* 804DC9C0  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 804DC9C4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DC9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC9CC  4C 41 13 82 */	cror 2, 1, 2
/* 804DC9D0  40 82 00 44 */	bne lbl_804DCA14
/* 804DC9D4  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 804DC9D8  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 804DC9DC  7C 1C 00 50 */	subf r0, r28, r0
/* 804DC9E0  7C 00 07 34 */	extsh r0, r0
/* 804DC9E4  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DC9E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC9EC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DC9F0  3C 00 43 30 */	lis r0, 0x4330
/* 804DC9F4  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DC9F8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DC9FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DCA00  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DCA04  FC 00 00 1E */	fctiwz f0, f0
/* 804DCA08  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCA0C  83 21 00 54 */	lwz r25, 0x54(r1)
/* 804DCA10  48 00 00 40 */	b lbl_804DCA50
lbl_804DCA14:
/* 804DCA14  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 804DCA18  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 804DCA1C  7C 00 E0 50 */	subf r0, r0, r28
/* 804DCA20  7C 00 07 34 */	extsh r0, r0
/* 804DCA24  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCA28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCA2C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804DCA30  3C 00 43 30 */	lis r0, 0x4330
/* 804DCA34  90 01 00 48 */	stw r0, 0x48(r1)
/* 804DCA38  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804DCA3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DCA40  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DCA44  FC 00 00 1E */	fctiwz f0, f0
/* 804DCA48  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804DCA4C  83 21 00 44 */	lwz r25, 0x44(r1)
lbl_804DCA50:
/* 804DCA50  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 804DCA54  7F 20 C8 50 */	subf r25, r0, r25
/* 804DCA58  7F 20 07 34 */	extsh r0, r25
/* 804DCA5C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 804DCA60  40 81 00 0C */	ble lbl_804DCA6C
/* 804DCA64  3B 20 20 00 */	li r25, 0x2000
/* 804DCA68  48 00 00 10 */	b lbl_804DCA78
lbl_804DCA6C:
/* 804DCA6C  2C 00 E0 00 */	cmpwi r0, -8192
/* 804DCA70  40 80 00 08 */	bge lbl_804DCA78
/* 804DCA74  3B 20 E0 00 */	li r25, -8192
lbl_804DCA78:
/* 804DCA78  3B 40 00 00 */	li r26, 0
/* 804DCA7C  7F A3 EB 78 */	mr r3, r29
/* 804DCA80  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DCA84  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DCA88  7D 89 03 A6 */	mtctr r12
/* 804DCA8C  4E 80 04 21 */	bctrl 
/* 804DCA90  28 03 00 00 */	cmplwi r3, 0
/* 804DCA94  41 82 00 14 */	beq lbl_804DCAA8
/* 804DCA98  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DCA9C  7C 00 D8 40 */	cmplw r0, r27
/* 804DCAA0  40 82 00 08 */	bne lbl_804DCAA8
/* 804DCAA4  3B 40 00 01 */	li r26, 1
lbl_804DCAA8:
/* 804DCAA8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804DCAAC  40 82 00 20 */	bne lbl_804DCACC
/* 804DCAB0  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 804DCAB4  4B C8 1F 6C */	b checkFishingRodItem__9daPy_py_cFi
/* 804DCAB8  2C 03 00 00 */	cmpwi r3, 0
/* 804DCABC  41 82 00 10 */	beq lbl_804DCACC
/* 804DCAC0  3B 80 00 19 */	li r28, 0x19
/* 804DCAC4  38 80 00 1E */	li r4, 0x1e
/* 804DCAC8  48 00 00 0C */	b lbl_804DCAD4
lbl_804DCACC:
/* 804DCACC  3B 80 00 32 */	li r28, 0x32
/* 804DCAD0  38 80 00 41 */	li r4, 0x41
lbl_804DCAD4:
/* 804DCAD4  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCAD8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCAE0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCAE4  3C 60 43 30 */	lis r3, 0x4330
/* 804DCAE8  90 61 00 58 */	stw r3, 0x58(r1)
/* 804DCAEC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCAF0  EC 40 08 28 */	fsubs f2, f0, f1
/* 804DCAF4  7C 80 07 34 */	extsh r0, r4
/* 804DCAF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCAFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DCB00  90 61 00 50 */	stw r3, 0x50(r1)
/* 804DCB04  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804DCB08  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DCB0C  7F 20 07 34 */	extsh r0, r25
/* 804DCB10  54 00 08 3C */	slwi r0, r0, 1
/* 804DCB14  7C 03 07 34 */	extsh r3, r0
/* 804DCB18  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804DCB1C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804DCB20  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 804DCB24  7C 04 04 2E */	lfsx f0, r4, r0
/* 804DCB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DCB2C  EC 02 00 2A */	fadds f0, f2, f0
/* 804DCB30  FC 00 00 1E */	fctiwz f0, f0
/* 804DCB34  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804DCB38  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804DCB3C  B0 1B 14 50 */	sth r0, 0x1450(r27)
/* 804DCB40  4B E8 85 90 */	b abs
/* 804DCB44  2C 03 01 00 */	cmpwi r3, 0x100
/* 804DCB48  40 80 01 A0 */	bge lbl_804DCCE8
/* 804DCB4C  A8 7B 14 50 */	lha r3, 0x1450(r27)
/* 804DCB50  4B E8 85 80 */	b abs
/* 804DCB54  7F 80 07 34 */	extsh r0, r28
/* 804DCB58  7C 03 00 00 */	cmpw r3, r0
/* 804DCB5C  40 80 01 8C */	bge lbl_804DCCE8
/* 804DCB60  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804DCB64  4B D8 AD F0 */	b cM_rndF__Ff
/* 804DCB68  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 804DCB6C  EC 40 08 2A */	fadds f2, f0, f1
/* 804DCB70  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCB74  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCB78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCB7C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCB80  3C 60 43 30 */	lis r3, 0x4330
/* 804DCB84  90 61 00 58 */	stw r3, 0x58(r1)
/* 804DCB88  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCB8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DCB90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804DCB94  FC 00 00 1E */	fctiwz f0, f0
/* 804DCB98  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCB9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCBA0  B0 1B 14 50 */	sth r0, 0x1450(r27)
/* 804DCBA4  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCBA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCBAC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804DCBB0  90 61 00 48 */	stw r3, 0x48(r1)
/* 804DCBB4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804DCBB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DCBBC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DCBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DCBC4  4C 41 13 82 */	cror 2, 1, 2
/* 804DCBC8  40 82 00 0C */	bne lbl_804DCBD4
/* 804DCBCC  C3 FF 00 84 */	lfs f31, 0x84(r31)
/* 804DCBD0  48 00 00 08 */	b lbl_804DCBD8
lbl_804DCBD4:
/* 804DCBD4  C3 FF 00 70 */	lfs f31, 0x70(r31)
lbl_804DCBD8:
/* 804DCBD8  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DCBDC  FC 00 02 10 */	fabs f0, f0
/* 804DCBE0  FC 20 00 18 */	frsp f1, f0
/* 804DCBE4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804DCBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DCBEC  40 80 00 3C */	bge lbl_804DCC28
/* 804DCBF0  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCBF4  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCBF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCBFC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCC00  3C 00 43 30 */	lis r0, 0x4330
/* 804DCC04  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DCC08  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCC0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DCC10  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804DCC14  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DCC18  FC 00 00 1E */	fctiwz f0, f0
/* 804DCC1C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCC20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCC24  B0 1B 14 50 */	sth r0, 0x1450(r27)
lbl_804DCC28:
/* 804DCC28  3B 40 00 00 */	li r26, 0
/* 804DCC2C  7F A3 EB 78 */	mr r3, r29
/* 804DCC30  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DCC34  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DCC38  7D 89 03 A6 */	mtctr r12
/* 804DCC3C  4E 80 04 21 */	bctrl 
/* 804DCC40  28 03 00 00 */	cmplwi r3, 0
/* 804DCC44  41 82 00 14 */	beq lbl_804DCC58
/* 804DCC48  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DCC4C  7C 00 D8 40 */	cmplw r0, r27
/* 804DCC50  40 82 00 08 */	bne lbl_804DCC58
/* 804DCC54  3B 40 00 01 */	li r26, 1
lbl_804DCC58:
/* 804DCC58  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804DCC5C  40 82 00 4C */	bne lbl_804DCCA8
/* 804DCC60  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 804DCC64  4B C8 1D BC */	b checkFishingRodItem__9daPy_py_cFi
/* 804DCC68  2C 03 00 00 */	cmpwi r3, 0
/* 804DCC6C  41 82 00 3C */	beq lbl_804DCCA8
/* 804DCC70  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCC74  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCC78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCC7C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCC80  3C 00 43 30 */	lis r0, 0x4330
/* 804DCC84  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DCC88  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCC8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DCC90  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804DCC94  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DCC98  FC 00 00 1E */	fctiwz f0, f0
/* 804DCC9C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCCA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCCA4  B0 1B 14 50 */	sth r0, 0x1450(r27)
lbl_804DCCA8:
/* 804DCCA8  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCCAC  2C 00 00 00 */	cmpwi r0, 0
/* 804DCCB0  40 82 00 38 */	bne lbl_804DCCE8
/* 804DCCB4  7F 80 07 34 */	extsh r0, r28
/* 804DCCB8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCCBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCCC0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCCC4  3C 00 43 30 */	lis r0, 0x4330
/* 804DCCC8  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DCCCC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCCD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DCCD4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804DCCD8  FC 00 00 1E */	fctiwz f0, f0
/* 804DCCDC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCCE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCCE4  B0 1B 14 50 */	sth r0, 0x1450(r27)
lbl_804DCCE8:
/* 804DCCE8  3B 80 00 00 */	li r28, 0
/* 804DCCEC  7F A3 EB 78 */	mr r3, r29
/* 804DCCF0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DCCF4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DCCF8  7D 89 03 A6 */	mtctr r12
/* 804DCCFC  4E 80 04 21 */	bctrl 
/* 804DCD00  28 03 00 00 */	cmplwi r3, 0
/* 804DCD04  41 82 00 14 */	beq lbl_804DCD18
/* 804DCD08  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DCD0C  7C 00 D8 40 */	cmplw r0, r27
/* 804DCD10  40 82 00 08 */	bne lbl_804DCD18
/* 804DCD14  3B 80 00 01 */	li r28, 1
lbl_804DCD18:
/* 804DCD18  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804DCD1C  41 82 00 1C */	beq lbl_804DCD38
/* 804DCD20  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 804DCD24  4B C8 1C FC */	b checkFishingRodItem__9daPy_py_cFi
/* 804DCD28  2C 03 00 00 */	cmpwi r3, 0
/* 804DCD2C  41 82 00 0C */	beq lbl_804DCD38
/* 804DCD30  38 80 00 40 */	li r4, 0x40
/* 804DCD34  48 00 00 08 */	b lbl_804DCD3C
lbl_804DCD38:
/* 804DCD38  38 80 01 00 */	li r4, 0x100
lbl_804DCD3C:
/* 804DCD3C  A8 7B 14 50 */	lha r3, 0x1450(r27)
/* 804DCD40  7C 80 07 34 */	extsh r0, r4
/* 804DCD44  7C 03 00 00 */	cmpw r3, r0
/* 804DCD48  40 81 00 0C */	ble lbl_804DCD54
/* 804DCD4C  B0 9B 14 50 */	sth r4, 0x1450(r27)
/* 804DCD50  48 00 00 14 */	b lbl_804DCD64
lbl_804DCD54:
/* 804DCD54  7C 00 00 D0 */	neg r0, r0
/* 804DCD58  7C 03 00 00 */	cmpw r3, r0
/* 804DCD5C  40 80 00 08 */	bge lbl_804DCD64
/* 804DCD60  B0 1B 14 50 */	sth r0, 0x1450(r27)
lbl_804DCD64:
/* 804DCD64  A8 7B 04 E8 */	lha r3, 0x4e8(r27)
/* 804DCD68  A8 1B 14 50 */	lha r0, 0x1450(r27)
/* 804DCD6C  7C 03 02 14 */	add r0, r3, r0
/* 804DCD70  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 804DCD74  A8 1B 14 5A */	lha r0, 0x145a(r27)
/* 804DCD78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DCD7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DCD80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804DCD84  7C 43 04 2E */	lfsx f2, r3, r0
/* 804DCD88  A8 1B 14 52 */	lha r0, 0x1452(r27)
/* 804DCD8C  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCD90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCD94  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCD98  3C 00 43 30 */	lis r0, 0x4330
/* 804DCD9C  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DCDA0  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCDA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DCDA8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804DCDAC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804DCDB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DCDB4  FC 00 00 1E */	fctiwz f0, f0
/* 804DCDB8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCDBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCDC0  B0 1B 14 52 */	sth r0, 0x1452(r27)
/* 804DCDC4  A8 7B 14 5A */	lha r3, 0x145a(r27)
/* 804DCDC8  4B E8 83 08 */	b abs
/* 804DCDCC  2C 03 01 64 */	cmpwi r3, 0x164
/* 804DCDD0  40 80 00 70 */	bge lbl_804DCE40
/* 804DCDD4  A8 7B 14 52 */	lha r3, 0x1452(r27)
/* 804DCDD8  4B E8 82 F8 */	b abs
/* 804DCDDC  2C 03 00 05 */	cmpwi r3, 5
/* 804DCDE0  40 80 00 60 */	bge lbl_804DCE40
/* 804DCDE4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804DCDE8  4B D8 AB 6C */	b cM_rndF__Ff
/* 804DCDEC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 804DCDF0  EC 40 08 2A */	fadds f2, f0, f1
/* 804DCDF4  A8 1B 14 52 */	lha r0, 0x1452(r27)
/* 804DCDF8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DCDFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DCE00  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804DCE04  3C 00 43 30 */	lis r0, 0x4330
/* 804DCE08  90 01 00 58 */	stw r0, 0x58(r1)
/* 804DCE0C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804DCE10  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DCE14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804DCE18  FC 00 00 1E */	fctiwz f0, f0
/* 804DCE1C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804DCE20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DCE24  B0 1B 14 52 */	sth r0, 0x1452(r27)
/* 804DCE28  A8 1B 14 52 */	lha r0, 0x1452(r27)
/* 804DCE2C  2C 00 00 00 */	cmpwi r0, 0
/* 804DCE30  40 82 00 4C */	bne lbl_804DCE7C
/* 804DCE34  38 00 00 05 */	li r0, 5
/* 804DCE38  B0 1B 14 52 */	sth r0, 0x1452(r27)
/* 804DCE3C  48 00 00 40 */	b lbl_804DCE7C
lbl_804DCE40:
/* 804DCE40  A8 1B 14 52 */	lha r0, 0x1452(r27)
/* 804DCE44  2C 00 00 00 */	cmpwi r0, 0
/* 804DCE48  40 82 00 34 */	bne lbl_804DCE7C
/* 804DCE4C  A8 7B 14 5A */	lha r3, 0x145a(r27)
/* 804DCE50  4B E8 82 80 */	b abs
/* 804DCE54  2C 03 01 64 */	cmpwi r3, 0x164
/* 804DCE58  41 80 00 24 */	blt lbl_804DCE7C
/* 804DCE5C  A8 1B 14 5A */	lha r0, 0x145a(r27)
/* 804DCE60  2C 00 00 00 */	cmpwi r0, 0
/* 804DCE64  40 81 00 10 */	ble lbl_804DCE74
/* 804DCE68  38 00 FF FB */	li r0, -5
/* 804DCE6C  B0 1B 14 52 */	sth r0, 0x1452(r27)
/* 804DCE70  48 00 00 0C */	b lbl_804DCE7C
lbl_804DCE74:
/* 804DCE74  38 00 00 05 */	li r0, 5
/* 804DCE78  B0 1B 14 52 */	sth r0, 0x1452(r27)
lbl_804DCE7C:
/* 804DCE7C  A8 7B 14 5A */	lha r3, 0x145a(r27)
/* 804DCE80  A8 1B 14 52 */	lha r0, 0x1452(r27)
/* 804DCE84  7C 03 02 14 */	add r0, r3, r0
/* 804DCE88  B0 1B 14 5A */	sth r0, 0x145a(r27)
/* 804DCE8C  3B 80 00 00 */	li r28, 0
/* 804DCE90  7F A3 EB 78 */	mr r3, r29
/* 804DCE94  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DCE98  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DCE9C  7D 89 03 A6 */	mtctr r12
/* 804DCEA0  4E 80 04 21 */	bctrl 
/* 804DCEA4  28 03 00 00 */	cmplwi r3, 0
/* 804DCEA8  41 82 00 14 */	beq lbl_804DCEBC
/* 804DCEAC  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DCEB0  7C 00 D8 40 */	cmplw r0, r27
/* 804DCEB4  40 82 00 08 */	bne lbl_804DCEBC
/* 804DCEB8  3B 80 00 01 */	li r28, 1
lbl_804DCEBC:
/* 804DCEBC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804DCEC0  41 82 00 10 */	beq lbl_804DCED0
/* 804DCEC4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 804DCEC8  28 00 00 8F */	cmplwi r0, 0x8f
/* 804DCECC  40 82 00 0C */	bne lbl_804DCED8
lbl_804DCED0:
/* 804DCED0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DCED4  D0 1B 14 68 */	stfs f0, 0x1468(r27)
lbl_804DCED8:
/* 804DCED8  7F A3 EB 78 */	mr r3, r29
/* 804DCEDC  4B C1 6D 10 */	b getCanoeCres__9daAlink_cCFv
/* 804DCEE0  FC 60 08 90 */	fmr f3, f1
/* 804DCEE4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 804DCEE8  C0 3B 14 68 */	lfs f1, 0x1468(r27)
/* 804DCEEC  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 804DCEF0  C0 9F 00 EC */	lfs f4, 0xec(r31)
/* 804DCEF4  4B D9 2A 88 */	b cLib_addCalc__FPfffff
/* 804DCEF8  7F A3 EB 78 */	mr r3, r29
/* 804DCEFC  4B C1 6C B4 */	b getCanoeMaxSpeed__9daAlink_cCFv
/* 804DCF00  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DCF04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DCF08  40 81 00 14 */	ble lbl_804DCF1C
/* 804DCF0C  7F A3 EB 78 */	mr r3, r29
/* 804DCF10  4B C1 6C A0 */	b getCanoeMaxSpeed__9daAlink_cCFv
/* 804DCF14  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 804DCF18  48 00 00 2C */	b lbl_804DCF44
lbl_804DCF1C:
/* 804DCF1C  7F A3 EB 78 */	mr r3, r29
/* 804DCF20  4B C1 6C BC */	b getCanoeBackMaxSpeed__9daAlink_cCFv
/* 804DCF24  FC 20 08 50 */	fneg f1, f1
/* 804DCF28  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DCF2C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DCF30  40 80 00 14 */	bge lbl_804DCF44
/* 804DCF34  7F A3 EB 78 */	mr r3, r29
/* 804DCF38  4B C1 6C A4 */	b getCanoeBackMaxSpeed__9daAlink_cCFv
/* 804DCF3C  FC 00 08 50 */	fneg f0, f1
/* 804DCF40  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_804DCF44:
/* 804DCF44  7F 63 DB 78 */	mr r3, r27
/* 804DCF48  4B FF E6 31 */	bl posMove__9daCanoe_cFv
/* 804DCF4C  7F 63 DB 78 */	mr r3, r27
/* 804DCF50  4B FF E8 D9 */	bl frontBackBgCheck__9daCanoe_cFv
/* 804DCF54  38 7B 07 F8 */	addi r3, r27, 0x7f8
/* 804DCF58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804DCF5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804DCF60  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804DCF64  4B B9 9B 48 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804DCF68  88 1E 00 68 */	lbz r0, 0x68(r30)
/* 804DCF6C  7C 00 07 75 */	extsb. r0, r0
/* 804DCF70  40 82 00 30 */	bne lbl_804DCFA0
/* 804DCF74  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 804DCF78  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 804DCF7C  38 7E 00 6C */	addi r3, r30, 0x6c
/* 804DCF80  D0 03 00 04 */	stfs f0, 4(r3)
/* 804DCF84  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DCF88  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha
/* 804DCF8C  38 84 A5 B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 804DCF90  38 BE 00 5C */	addi r5, r30, 0x5c
/* 804DCF94  4B FF D5 45 */	bl __register_global_object
/* 804DCF98  38 00 00 01 */	li r0, 1
/* 804DCF9C  98 1E 00 68 */	stb r0, 0x68(r30)
lbl_804DCFA0:
/* 804DCFA0  80 1B 08 24 */	lwz r0, 0x824(r27)
/* 804DCFA4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804DCFA8  41 82 00 CC */	beq lbl_804DD074
/* 804DCFAC  C0 1B 09 C4 */	lfs f0, 0x9c4(r27)
/* 804DCFB0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804DCFB4  88 1B 14 44 */	lbz r0, 0x1444(r27)
/* 804DCFB8  28 00 00 00 */	cmplwi r0, 0
/* 804DCFBC  41 82 00 80 */	beq lbl_804DD03C
/* 804DCFC0  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 804DCFC4  28 00 00 2D */	cmplwi r0, 0x2d
/* 804DCFC8  40 82 00 3C */	bne lbl_804DD004
/* 804DCFCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DCFD0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 804DCFD4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804DCFD8  38 63 02 10 */	addi r3, r3, 0x210
/* 804DCFDC  80 9B 14 88 */	lwz r4, 0x1488(r27)
/* 804DCFE0  4B B6 E9 38 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804DCFE4  28 03 00 00 */	cmplwi r3, 0
/* 804DCFE8  40 82 00 54 */	bne lbl_804DD03C
/* 804DCFEC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804DCFF0  38 63 02 10 */	addi r3, r3, 0x210
/* 804DCFF4  80 9B 14 8C */	lwz r4, 0x148c(r27)
/* 804DCFF8  4B B6 E9 20 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804DCFFC  28 03 00 00 */	cmplwi r3, 0
/* 804DD000  40 82 00 3C */	bne lbl_804DD03C
lbl_804DD004:
/* 804DD004  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804DD008  7C 09 07 74 */	extsb r9, r0
/* 804DD00C  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DD010  FC 00 02 10 */	fabs f0, f0
/* 804DD014  FC 20 00 18 */	frsp f1, f0
/* 804DD018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DD01C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DD020  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DD024  38 9B 14 78 */	addi r4, r27, 0x1478
/* 804DD028  38 BB 09 78 */	addi r5, r27, 0x978
/* 804DD02C  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 804DD030  38 FB 01 0C */	addi r7, r27, 0x10c
/* 804DD034  39 1E 00 6C */	addi r8, r30, 0x6c
/* 804DD038  4B B6 F8 00 */	b setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
lbl_804DD03C:
/* 804DD03C  3B 20 00 00 */	li r25, 0
/* 804DD040  3B 80 00 00 */	li r28, 0
lbl_804DD044:
/* 804DD044  7C 9B E2 14 */	add r4, r27, r28
/* 804DD048  80 04 05 C8 */	lwz r0, 0x5c8(r4)
/* 804DD04C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804DD050  41 82 00 10 */	beq lbl_804DD060
/* 804DD054  7F 63 DB 78 */	mr r3, r27
/* 804DD058  38 84 05 B8 */	addi r4, r4, 0x5b8
/* 804DD05C  4B FF E6 F9 */	bl checkGomikabe__9daCanoe_cFR13cBgS_PolyInfo
lbl_804DD060:
/* 804DD060  3B 39 00 01 */	addi r25, r25, 1
/* 804DD064  2C 19 00 03 */	cmpwi r25, 3
/* 804DD068  3B 9C 00 40 */	addi r28, r28, 0x40
/* 804DD06C  41 80 FF D8 */	blt lbl_804DD044
/* 804DD070  48 00 00 24 */	b lbl_804DD094
lbl_804DD074:
/* 804DD074  C0 1B 04 BC */	lfs f0, 0x4bc(r27)
/* 804DD078  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 804DD07C  C0 1B 04 C0 */	lfs f0, 0x4c0(r27)
/* 804DD080  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804DD084  C0 1B 04 C4 */	lfs f0, 0x4c4(r27)
/* 804DD088  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 804DD08C  7F 63 DB 78 */	mr r3, r27
/* 804DD090  4B FF E7 1D */	bl setFrontBackPos__9daCanoe_cFv
lbl_804DD094:
/* 804DD094  C0 1B 14 94 */	lfs f0, 0x1494(r27)
/* 804DD098  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804DD09C  C0 1B 14 98 */	lfs f0, 0x1498(r27)
/* 804DD0A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804DD0A4  C0 1B 14 9C */	lfs f0, 0x149c(r27)
/* 804DD0A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804DD0AC  C0 1B 14 A0 */	lfs f0, 0x14a0(r27)
/* 804DD0B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DD0B4  C0 1B 14 A4 */	lfs f0, 0x14a4(r27)
/* 804DD0B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DD0BC  C0 1B 14 A8 */	lfs f0, 0x14a8(r27)
/* 804DD0C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804DD0C4  38 61 00 30 */	addi r3, r1, 0x30
/* 804DD0C8  4B B4 0C BC */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 804DD0CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DD0D0  41 82 00 10 */	beq lbl_804DD0E0
/* 804DD0D4  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 804DD0D8  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)
/* 804DD0DC  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_804DD0E0:
/* 804DD0E0  38 61 00 24 */	addi r3, r1, 0x24
/* 804DD0E4  4B B4 0C A0 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 804DD0E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DD0EC  41 82 00 10 */	beq lbl_804DD0FC
/* 804DD0F0  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 804DD0F4  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)
/* 804DD0F8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804DD0FC:
/* 804DD0FC  38 61 00 30 */	addi r3, r1, 0x30
/* 804DD100  38 81 00 24 */	addi r4, r1, 0x24
/* 804DD104  7C 65 1B 78 */	mr r5, r3
/* 804DD108  4B E6 9F AC */	b PSVECSubtract
/* 804DD10C  38 61 00 30 */	addi r3, r1, 0x30
/* 804DD110  4B D8 A0 40 */	b atan2sY_XZ__4cXyzCFv
/* 804DD114  B0 7B 14 48 */	sth r3, 0x1448(r27)
/* 804DD118  A8 7B 14 48 */	lha r3, 0x1448(r27)
/* 804DD11C  A8 1B 14 5A */	lha r0, 0x145a(r27)
/* 804DD120  7C 03 02 14 */	add r0, r3, r0
/* 804DD124  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 804DD128  88 1B 14 46 */	lbz r0, 0x1446(r27)
/* 804DD12C  28 00 00 00 */	cmplwi r0, 0
/* 804DD130  41 82 00 3C */	beq lbl_804DD16C
/* 804DD134  C0 1B 14 D0 */	lfs f0, 0x14d0(r27)
/* 804DD138  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 804DD13C  C0 1B 14 D4 */	lfs f0, 0x14d4(r27)
/* 804DD140  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804DD144  C0 1B 14 D8 */	lfs f0, 0x14d8(r27)
/* 804DD148  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 804DD14C  A8 1B 14 4A */	lha r0, 0x144a(r27)
/* 804DD150  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 804DD154  A8 1B 14 4A */	lha r0, 0x144a(r27)
/* 804DD158  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 804DD15C  7F 63 DB 78 */	mr r3, r27
/* 804DD160  4B FF E6 4D */	bl setFrontBackPos__9daCanoe_cFv
/* 804DD164  38 00 00 00 */	li r0, 0
/* 804DD168  98 1B 14 46 */	stb r0, 0x1446(r27)
lbl_804DD16C:
/* 804DD16C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 804DD170  28 00 00 02 */	cmplwi r0, 2
/* 804DD174  40 82 00 0C */	bne lbl_804DD180
/* 804DD178  3B 3B 0E BC */	addi r25, r27, 0xebc
/* 804DD17C  48 00 00 08 */	b lbl_804DD184
lbl_804DD180:
/* 804DD180  3B 3B 11 34 */	addi r25, r27, 0x1134
lbl_804DD184:
/* 804DD184  38 7B 0F F8 */	addi r3, r27, 0xff8
/* 804DD188  4B BA 74 D0 */	b ChkCoHit__12dCcD_GObjInfFv
/* 804DD18C  28 03 00 00 */	cmplwi r3, 0
/* 804DD190  41 82 00 14 */	beq lbl_804DD1A4
/* 804DD194  38 7B 10 E0 */	addi r3, r27, 0x10e0
/* 804DD198  4B BA 64 F0 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804DD19C  7C 03 E8 40 */	cmplw r3, r29
/* 804DD1A0  41 82 00 24 */	beq lbl_804DD1C4
lbl_804DD1A4:
/* 804DD1A4  7F 23 CB 78 */	mr r3, r25
/* 804DD1A8  4B BA 74 B0 */	b ChkCoHit__12dCcD_GObjInfFv
/* 804DD1AC  28 03 00 00 */	cmplwi r3, 0
/* 804DD1B0  41 82 00 20 */	beq lbl_804DD1D0
/* 804DD1B4  38 79 00 E8 */	addi r3, r25, 0xe8
/* 804DD1B8  4B BA 64 D0 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804DD1BC  7C 03 E8 40 */	cmplw r3, r29
/* 804DD1C0  40 82 00 10 */	bne lbl_804DD1D0
lbl_804DD1C4:
/* 804DD1C4  38 00 00 01 */	li r0, 1
/* 804DD1C8  98 1B 14 43 */	stb r0, 0x1443(r27)
/* 804DD1CC  48 00 00 0C */	b lbl_804DD1D8
lbl_804DD1D0:
/* 804DD1D0  38 00 00 00 */	li r0, 0
/* 804DD1D4  98 1B 14 43 */	stb r0, 0x1443(r27)
lbl_804DD1D8:
/* 804DD1D8  7F 63 DB 78 */	mr r3, r27
/* 804DD1DC  4B FF F1 55 */	bl setPaddleEffect__9daCanoe_cFv
/* 804DD1E0  7F 63 DB 78 */	mr r3, r27
/* 804DD1E4  4B FF DE CD */	bl setMatrix__9daCanoe_cFv
/* 804DD1E8  7F 63 DB 78 */	mr r3, r27
/* 804DD1EC  4B FF E2 09 */	bl setCollision__9daCanoe_cFv
/* 804DD1F0  7F 63 DB 78 */	mr r3, r27
/* 804DD1F4  4B FF DE 15 */	bl setRoomInfo__9daCanoe_cFv
/* 804DD1F8  7F 63 DB 78 */	mr r3, r27
/* 804DD1FC  4B FF F3 59 */	bl setCanoeSliderEffect__9daCanoe_cFv
/* 804DD200  3B 80 00 00 */	li r28, 0
/* 804DD204  7F A3 EB 78 */	mr r3, r29
/* 804DD208  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804DD20C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804DD210  7D 89 03 A6 */	mtctr r12
/* 804DD214  4E 80 04 21 */	bctrl 
/* 804DD218  28 03 00 00 */	cmplwi r3, 0
/* 804DD21C  41 82 00 14 */	beq lbl_804DD230
/* 804DD220  80 1D 28 18 */	lwz r0, 0x2818(r29)
/* 804DD224  7C 00 D8 40 */	cmplw r0, r27
/* 804DD228  40 82 00 08 */	bne lbl_804DD230
/* 804DD22C  3B 80 00 01 */	li r28, 1
lbl_804DD230:
/* 804DD230  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804DD234  40 82 00 60 */	bne lbl_804DD294
/* 804DD238  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 804DD23C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804DD240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DD244  40 80 00 50 */	bge lbl_804DD294
/* 804DD248  C0 3B 14 CC */	lfs f1, 0x14cc(r27)
/* 804DD24C  C0 1B 14 C4 */	lfs f0, 0x14c4(r27)
/* 804DD250  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DD254  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DD258  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DD25C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804DD260  38 61 00 0C */	addi r3, r1, 0xc
/* 804DD264  4B E6 9E D4 */	b PSVECSquareMag
/* 804DD268  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804DD26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DD270  40 80 00 24 */	bge lbl_804DD294
/* 804DD274  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 804DD278  4B C8 17 A8 */	b checkFishingRodItem__9daPy_py_cFi
/* 804DD27C  2C 03 00 00 */	cmpwi r3, 0
/* 804DD280  40 82 00 14 */	bne lbl_804DD294
/* 804DD284  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 804DD288  60 00 00 80 */	ori r0, r0, 0x80
/* 804DD28C  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 804DD290  48 00 00 10 */	b lbl_804DD2A0
lbl_804DD294:
/* 804DD294  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 804DD298  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804DD29C  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_804DD2A0:
/* 804DD2A0  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804DD2A4  FC 00 02 10 */	fabs f0, f0
/* 804DD2A8  FF E0 00 18 */	frsp f31, f0
/* 804DD2AC  7F A3 EB 78 */	mr r3, r29
/* 804DD2B0  4B C1 69 00 */	b getCanoeMaxSpeed__9daAlink_cCFv
/* 804DD2B4  EC 3F 08 24 */	fdivs f1, f31, f1
/* 804DD2B8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 804DD2BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804DD2C0  4B E8 4D EC */	b __cvt_fp2unsigned
/* 804DD2C4  7C 65 1B 78 */	mr r5, r3
/* 804DD2C8  28 05 00 7F */	cmplwi r5, 0x7f
/* 804DD2CC  40 81 00 08 */	ble lbl_804DD2D4
/* 804DD2D0  38 A0 00 7F */	li r5, 0x7f
lbl_804DD2D4:
/* 804DD2D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C6@ha */
/* 804DD2D8  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000800C6@l */
/* 804DD2DC  90 01 00 08 */	stw r0, 8(r1)
/* 804DD2E0  38 7B 14 1C */	addi r3, r27, 0x141c
/* 804DD2E4  38 81 00 08 */	addi r4, r1, 8
/* 804DD2E8  38 C0 FF FF */	li r6, -1
/* 804DD2EC  81 9B 14 2C */	lwz r12, 0x142c(r27)
/* 804DD2F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804DD2F4  7D 89 03 A6 */	mtctr r12
/* 804DD2F8  4E 80 04 21 */	bctrl 
/* 804DD2FC  38 7B 14 1C */	addi r3, r27, 0x141c
/* 804DD300  38 80 00 00 */	li r4, 0
/* 804DD304  88 BB 14 45 */	lbz r5, 0x1445(r27)
/* 804DD308  81 9B 14 2C */	lwz r12, 0x142c(r27)
/* 804DD30C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DD310  7D 89 03 A6 */	mtctr r12
/* 804DD314  4E 80 04 21 */	bctrl 
/* 804DD318  38 60 00 01 */	li r3, 1
/* 804DD31C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804DD320  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804DD324  39 61 00 80 */	addi r11, r1, 0x80
/* 804DD328  4B E8 4E F0 */	b _restgpr_25
/* 804DD32C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804DD330  7C 08 03 A6 */	mtlr r0
/* 804DD334  38 21 00 90 */	addi r1, r1, 0x90
/* 804DD338  4E 80 00 20 */	blr 
