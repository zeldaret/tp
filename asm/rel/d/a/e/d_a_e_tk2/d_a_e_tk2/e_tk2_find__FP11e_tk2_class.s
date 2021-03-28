lbl_807BA9E8:
/* 807BA9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BA9EC  7C 08 02 A6 */	mflr r0
/* 807BA9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BA9F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807BA9F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807BA9FC  7C 7E 1B 78 */	mr r30, r3
/* 807BAA00  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807BAA04  3B E4 BD A8 */	addi r31, r4, lit_3762@l
/* 807BAA08  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 807BAA0C  28 00 00 0C */	cmplwi r0, 0xc
/* 807BAA10  41 81 02 BC */	bgt lbl_807BACCC
/* 807BAA14  3C 80 80 7C */	lis r4, lit_3947@ha
/* 807BAA18  38 84 BE 28 */	addi r4, r4, lit_3947@l
/* 807BAA1C  54 00 10 3A */	slwi r0, r0, 2
/* 807BAA20  7C 04 00 2E */	lwzx r0, r4, r0
/* 807BAA24  7C 09 03 A6 */	mtctr r0
/* 807BAA28  4E 80 04 20 */	bctr 
lbl_807BAA2C:
/* 807BAA2C  38 80 00 04 */	li r4, 4
/* 807BAA30  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807BAA34  38 A0 00 00 */	li r5, 0
/* 807BAA38  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 807BAA3C  4B FF FB 79 */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAA40  38 00 00 01 */	li r0, 1
/* 807BAA44  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAA48  48 00 02 84 */	b lbl_807BACCC
lbl_807BAA4C:
/* 807BAA4C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BAA50  38 80 00 01 */	li r4, 1
/* 807BAA54  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BAA58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BAA5C  40 82 00 18 */	bne lbl_807BAA74
/* 807BAA60  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807BAA64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BAA68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BAA6C  41 82 00 08 */	beq lbl_807BAA74
/* 807BAA70  38 80 00 00 */	li r4, 0
lbl_807BAA74:
/* 807BAA74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BAA78  41 82 02 54 */	beq lbl_807BACCC
/* 807BAA7C  7F C3 F3 78 */	mr r3, r30
/* 807BAA80  38 80 00 0A */	li r4, 0xa
/* 807BAA84  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807BAA88  38 A0 00 02 */	li r5, 2
/* 807BAA8C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 807BAA90  4B FF FB 25 */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAA94  38 00 00 02 */	li r0, 2
/* 807BAA98  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAA9C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807BAAA0  4B AA CE B4 */	b cM_rndF__Ff
/* 807BAAA4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807BAAA8  EC 00 08 2A */	fadds f0, f0, f1
/* 807BAAAC  FC 00 00 1E */	fctiwz f0, f0
/* 807BAAB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 807BAAB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807BAAB8  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807BAABC  48 00 02 10 */	b lbl_807BACCC
lbl_807BAAC0:
/* 807BAAC0  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807BAAC4  2C 00 00 00 */	cmpwi r0, 0
/* 807BAAC8  40 82 02 04 */	bne lbl_807BACCC
/* 807BAACC  38 00 00 02 */	li r0, 2
/* 807BAAD0  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 807BAAD4  38 00 00 00 */	li r0, 0
/* 807BAAD8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAADC  48 00 01 F0 */	b lbl_807BACCC
lbl_807BAAE0:
/* 807BAAE0  38 80 00 07 */	li r4, 7
/* 807BAAE4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807BAAE8  38 A0 00 00 */	li r5, 0
/* 807BAAEC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 807BAAF0  4B FF FA C5 */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAAF4  38 00 00 04 */	li r0, 4
/* 807BAAF8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAAFC  48 00 01 D0 */	b lbl_807BACCC
lbl_807BAB00:
/* 807BAB00  38 80 00 01 */	li r4, 1
/* 807BAB04  98 9E 06 94 */	stb r4, 0x694(r30)
/* 807BAB08  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BAB0C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BAB10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BAB14  40 82 00 18 */	bne lbl_807BAB2C
/* 807BAB18  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807BAB1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BAB20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BAB24  41 82 00 08 */	beq lbl_807BAB2C
/* 807BAB28  38 80 00 00 */	li r4, 0
lbl_807BAB2C:
/* 807BAB2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BAB30  41 82 01 9C */	beq lbl_807BACCC
/* 807BAB34  38 00 00 00 */	li r0, 0
/* 807BAB38  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 807BAB3C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAB40  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 807BAB44  4B AA CE 10 */	b cM_rndF__Ff
/* 807BAB48  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807BAB4C  EC 00 08 2A */	fadds f0, f0, f1
/* 807BAB50  FC 00 00 1E */	fctiwz f0, f0
/* 807BAB54  D8 01 00 08 */	stfd f0, 8(r1)
/* 807BAB58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807BAB5C  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 807BAB60  48 00 01 6C */	b lbl_807BACCC
lbl_807BAB64:
/* 807BAB64  38 80 00 07 */	li r4, 7
/* 807BAB68  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807BAB6C  38 A0 00 00 */	li r5, 0
/* 807BAB70  FC 40 08 90 */	fmr f2, f1
/* 807BAB74  4B FF FA 41 */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAB78  38 00 00 0B */	li r0, 0xb
/* 807BAB7C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAB80  48 00 01 4C */	b lbl_807BACCC
lbl_807BAB84:
/* 807BAB84  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807BAB88  38 03 80 00 */	addi r0, r3, -32768
/* 807BAB8C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807BAB90  38 80 00 01 */	li r4, 1
/* 807BAB94  98 9E 06 94 */	stb r4, 0x694(r30)
/* 807BAB98  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BAB9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BABA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BABA4  40 82 00 18 */	bne lbl_807BABBC
/* 807BABA8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807BABAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BABB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BABB4  41 82 00 08 */	beq lbl_807BABBC
/* 807BABB8  38 80 00 00 */	li r4, 0
lbl_807BABBC:
/* 807BABBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BABC0  41 82 01 0C */	beq lbl_807BACCC
/* 807BABC4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 807BABC8  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 807BABCC  7F C3 F3 78 */	mr r3, r30
/* 807BABD0  38 80 00 09 */	li r4, 9
/* 807BABD4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807BABD8  38 A0 00 02 */	li r5, 2
/* 807BABDC  C0 5E 06 64 */	lfs f2, 0x664(r30)
/* 807BABE0  4B FF F9 D5 */	bl anm_init__FP11e_tk2_classifUcf
/* 807BABE4  38 00 00 0C */	li r0, 0xc
/* 807BABE8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BABEC  48 00 00 E0 */	b lbl_807BACCC
lbl_807BABF0:
/* 807BABF0  38 00 00 01 */	li r0, 1
/* 807BABF4  98 1E 06 94 */	stb r0, 0x694(r30)
/* 807BABF8  38 7E 06 64 */	addi r3, r30, 0x664
/* 807BABFC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 807BAC00  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 807BAC04  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 807BAC08  4B AB 4E 34 */	b cLib_addCalc2__FPffff
/* 807BAC0C  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807BAC10  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BAC14  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807BAC18  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807BAC1C  2C 00 00 00 */	cmpwi r0, 0
/* 807BAC20  40 82 00 30 */	bne lbl_807BAC50
/* 807BAC24  C0 5E 06 84 */	lfs f2, 0x684(r30)
/* 807BAC28  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807BAC2C  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807BAC30  38 63 BF 50 */	addi r3, r3, l_HIO@l
/* 807BAC34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807BAC38  EC 01 00 32 */	fmuls f0, f1, f0
/* 807BAC3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807BAC40  40 81 00 10 */	ble lbl_807BAC50
/* 807BAC44  38 00 00 00 */	li r0, 0
/* 807BAC48  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 807BAC4C  48 00 00 5C */	b lbl_807BACA8
lbl_807BAC50:
/* 807BAC50  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 807BAC54  2C 00 00 00 */	cmpwi r0, 0
/* 807BAC58  40 82 00 50 */	bne lbl_807BACA8
/* 807BAC5C  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 807BAC60  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807BAC64  41 82 00 44 */	beq lbl_807BACA8
/* 807BAC68  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807BAC6C  4B AA CC E8 */	b cM_rndF__Ff
/* 807BAC70  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 807BAC74  EC 00 08 2A */	fadds f0, f0, f1
/* 807BAC78  FC 00 00 1E */	fctiwz f0, f0
/* 807BAC7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 807BAC80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807BAC84  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 807BAC88  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807BAC8C  4B AA CD 00 */	b cM_rndFX__Ff
/* 807BAC90  FC 00 08 1E */	fctiwz f0, f1
/* 807BAC94  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807BAC98  80 61 00 14 */	lwz r3, 0x14(r1)
/* 807BAC9C  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807BACA0  7C 00 1A 14 */	add r0, r0, r3
/* 807BACA4  B0 1E 06 7C */	sth r0, 0x67c(r30)
lbl_807BACA8:
/* 807BACA8  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 807BACAC  2C 00 00 00 */	cmpwi r0, 0
/* 807BACB0  40 82 00 14 */	bne lbl_807BACC4
/* 807BACB4  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807BACB8  38 03 80 00 */	addi r0, r3, -32768
/* 807BACBC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807BACC0  48 00 00 0C */	b lbl_807BACCC
lbl_807BACC4:
/* 807BACC4  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 807BACC8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807BACCC:
/* 807BACCC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807BACD0  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 807BACD4  38 A0 00 04 */	li r5, 4
/* 807BACD8  38 C0 08 00 */	li r6, 0x800
/* 807BACDC  4B AB 59 2C */	b cLib_addCalcAngleS2__FPssss
/* 807BACE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807BACE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807BACE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BACEC  7C 08 03 A6 */	mtlr r0
/* 807BACF0  38 21 00 20 */	addi r1, r1, 0x20
/* 807BACF4  4E 80 00 20 */	blr 
