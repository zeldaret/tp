lbl_801023E4:
/* 801023E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801023E8  7C 08 02 A6 */	mflr r0
/* 801023EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 801023F0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801023F4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801023F8  39 61 00 40 */	addi r11, r1, 0x40
/* 801023FC  48 25 FD E1 */	bl _savegpr_29
/* 80102400  7C 7F 1B 78 */	mr r31, r3
/* 80102404  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80102408  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 8010240C  7D 89 03 A6 */	mtctr r12
/* 80102410  4E 80 04 21 */	bctrl 
/* 80102414  2C 03 00 00 */	cmpwi r3, 0
/* 80102418  40 82 01 0C */	bne lbl_80102524
/* 8010241C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80102420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80102424  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 80102428  28 00 00 00 */	cmplwi r0, 0
/* 8010242C  40 82 00 F8 */	bne lbl_80102524
/* 80102430  38 60 00 00 */	li r3, 0
/* 80102434  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80102438  28 00 01 8D */	cmplwi r0, 0x18d
/* 8010243C  41 82 00 10 */	beq lbl_8010244C
/* 80102440  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80102444  28 00 01 8C */	cmplwi r0, 0x18c
/* 80102448  40 82 00 08 */	bne lbl_80102450
lbl_8010244C:
/* 8010244C  38 60 00 01 */	li r3, 1
lbl_80102450:
/* 80102450  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80102454  41 82 00 28 */	beq lbl_8010247C
/* 80102458  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 8010245C  48 05 C7 5D */	bl checkHookshotItem__9daPy_py_cFi
/* 80102460  2C 03 00 00 */	cmpwi r3, 0
/* 80102464  41 82 00 C0 */	beq lbl_80102524
/* 80102468  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 8010246C  7C 60 07 35 */	extsh. r0, r3
/* 80102470  41 82 00 0C */	beq lbl_8010247C
/* 80102474  2C 03 00 01 */	cmpwi r3, 1
/* 80102478  40 82 00 AC */	bne lbl_80102524
lbl_8010247C:
/* 8010247C  7F E3 FB 78 */	mr r3, r31
/* 80102480  4B FB D9 31 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80102484  2C 03 00 00 */	cmpwi r3, 0
/* 80102488  41 82 00 3C */	beq lbl_801024C4
/* 8010248C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80102490  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80102494  41 82 00 20 */	beq lbl_801024B4
/* 80102498  88 1F 2F CD */	lbz r0, 0x2fcd(r31)
/* 8010249C  28 00 00 00 */	cmplwi r0, 0
/* 801024A0  40 82 00 84 */	bne lbl_80102524
/* 801024A4  7F E3 FB 78 */	mr r3, r31
/* 801024A8  38 80 00 41 */	li r4, 0x41
/* 801024AC  4B FB 0D A5 */	bl setDoStatus__9daAlink_cFUc
/* 801024B0  48 00 00 74 */	b lbl_80102524
lbl_801024B4:
/* 801024B4  7F E3 FB 78 */	mr r3, r31
/* 801024B8  38 80 00 4C */	li r4, 0x4c
/* 801024BC  4B FB 0D 95 */	bl setDoStatus__9daAlink_cFUc
/* 801024C0  48 00 00 64 */	b lbl_80102524
lbl_801024C4:
/* 801024C4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801024C8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801024CC  40 82 00 14 */	bne lbl_801024E0
/* 801024D0  7F E3 FB 78 */	mr r3, r31
/* 801024D4  38 80 00 97 */	li r4, 0x97
/* 801024D8  4B FB 0D 79 */	bl setDoStatus__9daAlink_cFUc
/* 801024DC  48 00 00 48 */	b lbl_80102524
lbl_801024E0:
/* 801024E0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801024E4  28 00 00 7B */	cmplwi r0, 0x7b
/* 801024E8  40 82 00 3C */	bne lbl_80102524
/* 801024EC  7F E3 FB 78 */	mr r3, r31
/* 801024F0  38 80 00 C1 */	li r4, 0xc1
/* 801024F4  4B FA A0 65 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801024F8  2C 03 00 00 */	cmpwi r3, 0
/* 801024FC  41 82 00 28 */	beq lbl_80102524
/* 80102500  A8 1F 30 D0 */	lha r0, 0x30d0(r31)
/* 80102504  2C 00 00 00 */	cmpwi r0, 0
/* 80102508  40 82 00 1C */	bne lbl_80102524
/* 8010250C  A8 1F 30 D2 */	lha r0, 0x30d2(r31)
/* 80102510  2C 00 00 00 */	cmpwi r0, 0
/* 80102514  40 82 00 10 */	bne lbl_80102524
/* 80102518  7F E3 FB 78 */	mr r3, r31
/* 8010251C  38 80 00 09 */	li r4, 9
/* 80102520  4B FB 0D 31 */	bl setDoStatus__9daAlink_cFUc
lbl_80102524:
/* 80102524  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80102528  28 00 00 7E */	cmplwi r0, 0x7e
/* 8010252C  40 82 00 1C */	bne lbl_80102548
/* 80102530  7F E3 FB 78 */	mr r3, r31
/* 80102534  48 00 64 E5 */	bl checkHookshotWait__9daAlink_cCFv
/* 80102538  2C 03 00 00 */	cmpwi r3, 0
/* 8010253C  40 82 00 0C */	bne lbl_80102548
/* 80102540  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 80102544  48 00 03 4C */	b lbl_80102890
lbl_80102548:
/* 80102548  7F E3 FB 78 */	mr r3, r31
/* 8010254C  48 00 1A 49 */	bl checkZoraSwimMove__9daAlink_cFv
/* 80102550  2C 03 00 00 */	cmpwi r3, 0
/* 80102554  41 82 01 28 */	beq lbl_8010267C
/* 80102558  AB DF 04 E6 */	lha r30, 0x4e6(r31)
/* 8010255C  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 80102560  28 03 00 00 */	cmplwi r3, 0
/* 80102564  41 82 00 58 */	beq lbl_801025BC
/* 80102568  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8010256C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80102570  D0 01 00 08 */	stfs f0, 8(r1)
/* 80102574  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80102578  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010257C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80102580  C0 43 05 40 */	lfs f2, 0x540(r3)
/* 80102584  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80102588  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8010258C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80102590  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80102594  38 61 00 08 */	addi r3, r1, 8
/* 80102598  38 81 00 14 */	addi r4, r1, 0x14
/* 8010259C  48 24 4E 01 */	bl PSVECSquareDistance
/* 801025A0  C0 02 95 C0 */	lfs f0, lit_26816(r2)
/* 801025A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801025A8  40 81 00 14 */	ble lbl_801025BC
/* 801025AC  7F E3 FB 78 */	mr r3, r31
/* 801025B0  38 80 00 00 */	li r4, 0
/* 801025B4  4B FB 11 81 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 801025B8  48 00 00 94 */	b lbl_8010264C
lbl_801025BC:
/* 801025BC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801025C0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801025C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801025C8  40 81 00 84 */	ble lbl_8010264C
/* 801025CC  7F E3 FB 78 */	mr r3, r31
/* 801025D0  48 01 36 51 */	bl checkEventRun__9daAlink_cCFv
/* 801025D4  2C 03 00 00 */	cmpwi r3, 0
/* 801025D8  41 82 00 0C */	beq lbl_801025E4
/* 801025DC  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 801025E0  48 00 00 50 */	b lbl_80102630
lbl_801025E4:
/* 801025E4  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 801025E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801025EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801025F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801025F4  7C 43 04 2E */	lfsx f2, r3, r0
/* 801025F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801025FC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80102600  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80102604  90 01 00 24 */	stw r0, 0x24(r1)
/* 80102608  3C 00 43 30 */	lis r0, 0x4330
/* 8010260C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80102610  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80102614  EC 20 08 28 */	fsubs f1, f0, f1
/* 80102618  C0 02 95 C4 */	lfs f0, lit_26817(r2)
/* 8010261C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80102620  EC 01 00 2A */	fadds f0, f1, f0
/* 80102624  FC 00 00 1E */	fctiwz f0, f0
/* 80102628  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8010262C  80 81 00 2C */	lwz r4, 0x2c(r1)
lbl_80102630:
/* 80102630  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80102634  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 80102638  38 E5 ED 2C */	addi r7, r5, m__18daAlinkHIO_swim_c0@l
/* 8010263C  A8 A7 00 56 */	lha r5, 0x56(r7)
/* 80102640  A8 C7 00 5A */	lha r6, 0x5a(r7)
/* 80102644  A8 E7 00 58 */	lha r7, 0x58(r7)
/* 80102648  48 16 DE F9 */	bl cLib_addCalcAngleS__FPsssss
lbl_8010264C:
/* 8010264C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80102650  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80102654  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80102658  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8010265C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80102660  7C 1E 00 50 */	subf r0, r30, r0
/* 80102664  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80102668  7C 63 02 14 */	add r3, r3, r0
/* 8010266C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80102670  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80102674  EF E0 00 72 */	fmuls f31, f0, f1
/* 80102678  48 00 02 18 */	b lbl_80102890
lbl_8010267C:
/* 8010267C  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 80102680  3B A0 00 01 */	li r29, 1
/* 80102684  7F C3 F3 78 */	mr r3, r30
/* 80102688  4B F7 11 5D */	bl LockonTruth__12dAttention_cFv
/* 8010268C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80102690  40 82 00 14 */	bne lbl_801026A4
/* 80102694  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80102698  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8010269C  40 82 00 08 */	bne lbl_801026A4
/* 801026A0  3B A0 00 00 */	li r29, 0
lbl_801026A4:
/* 801026A4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801026A8  40 82 00 E8 */	bne lbl_80102790
/* 801026AC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801026B0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801026B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801026B8  40 81 00 B8 */	ble lbl_80102770
/* 801026BC  AB BF 04 E6 */	lha r29, 0x4e6(r31)
/* 801026C0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801026C4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801026C8  41 82 00 28 */	beq lbl_801026F0
/* 801026CC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 801026D0  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 801026D4  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 801026D8  38 E5 ED 2C */	addi r7, r5, m__18daAlinkHIO_swim_c0@l
/* 801026DC  A8 A7 00 50 */	lha r5, 0x50(r7)
/* 801026E0  A8 C7 00 54 */	lha r6, 0x54(r7)
/* 801026E4  A8 E7 00 52 */	lha r7, 0x52(r7)
/* 801026E8  48 16 DE 59 */	bl cLib_addCalcAngleS__FPsssss
/* 801026EC  48 00 00 24 */	b lbl_80102710
lbl_801026F0:
/* 801026F0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 801026F4  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 801026F8  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 801026FC  38 E5 ED 2C */	addi r7, r5, m__18daAlinkHIO_swim_c0@l
/* 80102700  A8 A7 00 56 */	lha r5, 0x56(r7)
/* 80102704  A8 C7 00 5A */	lha r6, 0x5a(r7)
/* 80102708  A8 E7 00 58 */	lha r7, 0x58(r7)
/* 8010270C  48 16 DE 35 */	bl cLib_addCalcAngleS__FPsssss
lbl_80102710:
/* 80102710  7F E3 FB 78 */	mr r3, r31
/* 80102714  38 80 00 C6 */	li r4, 0xc6
/* 80102718  4B FA 9E 41 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010271C  2C 03 00 00 */	cmpwi r3, 0
/* 80102720  41 82 00 0C */	beq lbl_8010272C
/* 80102724  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80102728  48 00 00 08 */	b lbl_80102730
lbl_8010272C:
/* 8010272C  C0 5F 33 A8 */	lfs f2, 0x33a8(r31)
lbl_80102730:
/* 80102730  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80102734  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80102738  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8010273C  7C 1D 20 50 */	subf r0, r29, r4
/* 80102740  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80102744  7C 63 02 14 */	add r3, r3, r0
/* 80102748  C0 23 00 04 */	lfs f1, 4(r3)
/* 8010274C  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80102750  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80102754  EF E0 00 72 */	fmuls f31, f0, f1
/* 80102758  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8010275C  38 A0 00 02 */	li r5, 2
/* 80102760  38 C0 20 00 */	li r6, 0x2000
/* 80102764  38 E0 10 00 */	li r7, 0x1000
/* 80102768  48 16 DD D9 */	bl cLib_addCalcAngleS__FPsssss
/* 8010276C  48 00 00 08 */	b lbl_80102774
lbl_80102770:
/* 80102770  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_80102774:
/* 80102774  7F E3 FB 78 */	mr r3, r31
/* 80102778  4B FB 11 8D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8010277C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80102780  41 82 01 10 */	beq lbl_80102890
/* 80102784  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80102788  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8010278C  48 00 01 04 */	b lbl_80102890
lbl_80102790:
/* 80102790  7F E3 FB 78 */	mr r3, r31
/* 80102794  38 80 00 00 */	li r4, 0
/* 80102798  4B FB 0F 9D */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8010279C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801027A0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801027A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801027A8  40 81 00 E4 */	ble lbl_8010288C
/* 801027AC  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 801027B0  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 801027B4  7C 03 00 50 */	subf r0, r3, r0
/* 801027B8  7C 03 07 34 */	extsh r3, r0
/* 801027BC  4B FB 0C D9 */	bl getDirectionFromAngle__9daAlink_cFs
/* 801027C0  2C 03 00 01 */	cmpwi r3, 1
/* 801027C4  40 82 00 24 */	bne lbl_801027E8
/* 801027C8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 801027CC  3C 63 00 01 */	addis r3, r3, 1
/* 801027D0  38 03 80 00 */	addi r0, r3, -32768
/* 801027D4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801027D8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 801027DC  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 801027E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801027E4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_801027E8:
/* 801027E8  7F E3 FB 78 */	mr r3, r31
/* 801027EC  4B FB 11 19 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 801027F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801027F4  41 82 00 0C */	beq lbl_80102800
/* 801027F8  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 801027FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80102800:
/* 80102800  AB BF 04 DE */	lha r29, 0x4de(r31)
/* 80102804  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80102808  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8010280C  41 82 00 28 */	beq lbl_80102834
/* 80102810  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80102814  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 80102818  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 8010281C  38 E5 ED 2C */	addi r7, r5, m__18daAlinkHIO_swim_c0@l
/* 80102820  A8 A7 00 50 */	lha r5, 0x50(r7)
/* 80102824  A8 C7 00 54 */	lha r6, 0x54(r7)
/* 80102828  A8 E7 00 52 */	lha r7, 0x52(r7)
/* 8010282C  48 16 DD 15 */	bl cLib_addCalcAngleS__FPsssss
/* 80102830  48 00 00 24 */	b lbl_80102854
lbl_80102834:
/* 80102834  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80102838  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 8010283C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 80102840  38 E5 ED 2C */	addi r7, r5, m__18daAlinkHIO_swim_c0@l
/* 80102844  A8 A7 00 56 */	lha r5, 0x56(r7)
/* 80102848  A8 C7 00 5A */	lha r6, 0x5a(r7)
/* 8010284C  A8 E7 00 58 */	lha r7, 0x58(r7)
/* 80102850  48 16 DC F1 */	bl cLib_addCalcAngleS__FPsssss
lbl_80102854:
/* 80102854  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80102858  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8010285C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80102860  7C 1D 00 50 */	subf r0, r29, r0
/* 80102864  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80102868  7C 63 02 14 */	add r3, r3, r0
/* 8010286C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80102870  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80102874  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80102878  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 8010287C  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 80102880  EC 01 00 32 */	fmuls f0, f1, f0
/* 80102884  EF E0 00 B2 */	fmuls f31, f0, f2
/* 80102888  48 00 00 08 */	b lbl_80102890
lbl_8010288C:
/* 8010288C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
lbl_80102890:
/* 80102890  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80102894  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80102898  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 8010289C  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 801028A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801028A4  40 80 00 24 */	bge lbl_801028C8
/* 801028A8  7F E3 FB 78 */	mr r3, r31
/* 801028AC  4B FB D5 05 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 801028B0  2C 03 00 00 */	cmpwi r3, 0
/* 801028B4  40 82 00 14 */	bne lbl_801028C8
/* 801028B8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 801028BC  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 801028C0  C0 43 00 F0 */	lfs f2, 0xf0(r3)
/* 801028C4  48 00 00 10 */	b lbl_801028D4
lbl_801028C8:
/* 801028C8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 801028CC  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 801028D0  C0 43 00 80 */	lfs f2, 0x80(r3)
lbl_801028D4:
/* 801028D4  7F E3 FB 78 */	mr r3, r31
/* 801028D8  FC 20 F8 90 */	fmr f1, f31
/* 801028DC  4B FB 10 49 */	bl setNormalSpeedF__9daAlink_cFff
/* 801028E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801028E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801028E8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 801028EC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801028F0  41 82 00 0C */	beq lbl_801028FC
/* 801028F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801028F8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_801028FC:
/* 801028FC  7F E3 FB 78 */	mr r3, r31
/* 80102900  48 00 16 E9 */	bl checkSwimNeckUpDown__9daAlink_cCFv
/* 80102904  2C 03 00 00 */	cmpwi r3, 0
/* 80102908  41 82 00 98 */	beq lbl_801029A0
/* 8010290C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80102910  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80102914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102918  4C 41 13 82 */	cror 2, 1, 2
/* 8010291C  40 82 00 40 */	bne lbl_8010295C
/* 80102920  FC 20 08 50 */	fneg f1, f1
/* 80102924  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80102928  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 8010292C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80102930  EC 21 00 24 */	fdivs f1, f1, f0
/* 80102934  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80102938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010293C  40 80 00 08 */	bge lbl_80102944
/* 80102940  FC 20 00 90 */	fmr f1, f0
lbl_80102944:
/* 80102944  C0 02 95 C8 */	lfs f0, lit_26818(r2)
/* 80102948  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010294C  FC 00 00 1E */	fctiwz f0, f0
/* 80102950  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80102954  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80102958  48 00 00 30 */	b lbl_80102988
lbl_8010295C:
/* 8010295C  C0 1F 05 34 */	lfs f0, 0x534(r31)
/* 80102960  EC 21 00 24 */	fdivs f1, f1, f0
/* 80102964  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80102968  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010296C  40 81 00 08 */	ble lbl_80102974
/* 80102970  FC 20 00 90 */	fmr f1, f0
lbl_80102974:
/* 80102974  C0 02 95 CC */	lfs f0, lit_26819(r2)
/* 80102978  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010297C  FC 00 00 1E */	fctiwz f0, f0
/* 80102980  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80102984  80 81 00 2C */	lwz r4, 0x2c(r1)
lbl_80102988:
/* 80102988  38 7F 30 A0 */	addi r3, r31, 0x30a0
/* 8010298C  38 A0 00 05 */	li r5, 5
/* 80102990  38 C0 10 00 */	li r6, 0x1000
/* 80102994  38 E0 04 00 */	li r7, 0x400
/* 80102998  48 16 DB A9 */	bl cLib_addCalcAngleS__FPsssss
/* 8010299C  48 00 00 0C */	b lbl_801029A8
lbl_801029A0:
/* 801029A0  38 00 00 00 */	li r0, 0
/* 801029A4  B0 1F 30 A0 */	sth r0, 0x30a0(r31)
lbl_801029A8:
/* 801029A8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801029AC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801029B0  39 61 00 40 */	addi r11, r1, 0x40
/* 801029B4  48 25 F8 75 */	bl _restgpr_29
/* 801029B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801029BC  7C 08 03 A6 */	mtlr r0
/* 801029C0  38 21 00 50 */	addi r1, r1, 0x50
/* 801029C4  4E 80 00 20 */	blr 
