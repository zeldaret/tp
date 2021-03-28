lbl_807AA91C:
/* 807AA91C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807AA920  7C 08 02 A6 */	mflr r0
/* 807AA924  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AA928  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807AA92C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807AA930  7C 7E 1B 78 */	mr r30, r3
/* 807AA934  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AA938  3B E3 FD 2C */	addi r31, r3, lit_3909@l
/* 807AA93C  38 00 00 0A */	li r0, 0xa
/* 807AA940  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 807AA944  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AA948  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807AA94C  41 82 00 24 */	beq lbl_807AA970
/* 807AA950  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA954  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AA958  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807AA95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AA960  40 81 00 10 */	ble lbl_807AA970
/* 807AA964  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807AA968  EC 01 00 32 */	fmuls f0, f1, f0
/* 807AA96C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807AA970:
/* 807AA970  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AA974  2C 00 00 01 */	cmpwi r0, 1
/* 807AA978  41 82 00 C0 */	beq lbl_807AAA38
/* 807AA97C  40 80 00 10 */	bge lbl_807AA98C
/* 807AA980  2C 00 00 00 */	cmpwi r0, 0
/* 807AA984  40 80 00 14 */	bge lbl_807AA998
/* 807AA988  48 00 01 DC */	b lbl_807AAB64
lbl_807AA98C:
/* 807AA98C  2C 00 00 03 */	cmpwi r0, 3
/* 807AA990  40 80 01 D4 */	bge lbl_807AAB64
/* 807AA994  48 00 01 1C */	b lbl_807AAAB0
lbl_807AA998:
/* 807AA998  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA99C  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AA9A0  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 807AA9A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AA9A8  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 807AA9AC  38 00 00 00 */	li r0, 0
/* 807AA9B0  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807AA9B4  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AA9B8  7F C3 F3 78 */	mr r3, r30
/* 807AA9BC  38 80 00 09 */	li r4, 9
/* 807AA9C0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AA9C4  38 A0 00 02 */	li r5, 2
/* 807AA9C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AA9CC  4B FF CA 95 */	bl bckSet__8daE_SW_cFifUcf
/* 807AA9D0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AA9D4  4B AB CF 80 */	b cM_rndF__Ff
/* 807AA9D8  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 807AA9DC  EC 00 08 2A */	fadds f0, f0, f1
/* 807AA9E0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AA9E4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AA9E8  4B AB CF 6C */	b cM_rndF__Ff
/* 807AA9EC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807AA9F0  EC 00 08 2A */	fadds f0, f0, f1
/* 807AA9F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AA9F8  38 00 00 01 */	li r0, 1
/* 807AA9FC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AAA00  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AAA04  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AAA08  A8 7E 0A D2 */	lha r3, 0xad2(r30)
/* 807AAA0C  3C 63 00 01 */	addis r3, r3, 1
/* 807AAA10  38 03 80 00 */	addi r0, r3, -32768
/* 807AAA14  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807AAA18  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AAA1C  38 00 80 00 */	li r0, -32768
/* 807AAA20  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AAA24  38 00 40 00 */	li r0, 0x4000
/* 807AAA28  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807AAA2C  38 00 00 00 */	li r0, 0
/* 807AAA30  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807AAA34  48 00 01 30 */	b lbl_807AAB64
lbl_807AAA38:
/* 807AAA38  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AAA3C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AAA40  41 82 00 34 */	beq lbl_807AAA74
/* 807AAA44  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AAA48  4B AB CF 0C */	b cM_rndF__Ff
/* 807AAA4C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 807AAA50  EC 00 08 2A */	fadds f0, f0, f1
/* 807AAA54  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AAA58  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AAA5C  4B AB CE F8 */	b cM_rndF__Ff
/* 807AAA60  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807AAA64  EC 00 08 2A */	fadds f0, f0, f1
/* 807AAA68  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AAA6C  38 00 00 02 */	li r0, 2
/* 807AAA70  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AAA74:
/* 807AAA74  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 807AAA78  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 807AAA7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807AAA80  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AAA84  3C 00 43 30 */	lis r0, 0x4330
/* 807AAA88  90 01 00 20 */	stw r0, 0x20(r1)
/* 807AAA8C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 807AAA90  EC 20 08 28 */	fsubs f1, f0, f1
/* 807AAA94  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807AAA98  EC 01 00 28 */	fsubs f0, f1, f0
/* 807AAA9C  FC 00 00 1E */	fctiwz f0, f0
/* 807AAAA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807AAAA4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807AAAA8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AAAAC  48 00 00 B8 */	b lbl_807AAB64
lbl_807AAAB0:
/* 807AAAB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AAAB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AAAB8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807AAABC  38 00 00 FF */	li r0, 0xff
/* 807AAAC0  90 01 00 08 */	stw r0, 8(r1)
/* 807AAAC4  38 80 00 00 */	li r4, 0
/* 807AAAC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807AAACC  38 00 FF FF */	li r0, -1
/* 807AAAD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AAAD4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807AAAD8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807AAADC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807AAAE0  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807AAAE4  38 A0 00 00 */	li r5, 0
/* 807AAAE8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008378@ha */
/* 807AAAEC  38 C6 83 78 */	addi r6, r6, 0x8378 /* 0x00008378@l */
/* 807AAAF0  38 FE 06 74 */	addi r7, r30, 0x674
/* 807AAAF4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807AAAF8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807AAAFC  39 40 00 00 */	li r10, 0
/* 807AAB00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AAB04  4B 8A 29 C8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AAB08  90 7E 0A E8 */	stw r3, 0xae8(r30)
/* 807AAB0C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 807AAB10  38 80 00 00 */	li r4, 0
/* 807AAB14  38 A0 00 08 */	li r5, 8
/* 807AAB18  38 C0 08 00 */	li r6, 0x800
/* 807AAB1C  38 E0 00 10 */	li r7, 0x10
/* 807AAB20  4B AC 5A 20 */	b cLib_addCalcAngleS__FPsssss
/* 807AAB24  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AAB28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AAB2C  41 82 00 38 */	beq lbl_807AAB64
/* 807AAB30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AAB34  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AAB38  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AAB3C  7F C3 F3 78 */	mr r3, r30
/* 807AAB40  38 80 00 0A */	li r4, 0xa
/* 807AAB44  38 A0 00 00 */	li r5, 0
/* 807AAB48  4B FF D0 1D */	bl setActionMode__8daE_SW_cFss
/* 807AAB4C  38 00 00 00 */	li r0, 0
/* 807AAB50  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AAB54  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807AAB58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AAB5C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AAB60  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807AAB64:
/* 807AAB64  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807AAB68  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807AAB6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AAB70  7C 08 03 A6 */	mtlr r0
/* 807AAB74  38 21 00 40 */	addi r1, r1, 0x40
/* 807AAB78  4E 80 00 20 */	blr 
