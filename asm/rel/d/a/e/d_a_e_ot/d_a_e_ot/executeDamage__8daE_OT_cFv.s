lbl_8073B854:
/* 8073B854  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073B858  7C 08 02 A6 */	mflr r0
/* 8073B85C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073B860  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8073B864  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8073B868  7C 7F 1B 78 */	mr r31, r3
/* 8073B86C  3C 80 80 74 */	lis r4, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073B870  3B C4 CE A8 */	addi r30, r4, lit_3910@l /* 0x8073CEA8@l */
/* 8073B874  80 03 06 78 */	lwz r0, 0x678(r3)
/* 8073B878  2C 00 00 03 */	cmpwi r0, 3
/* 8073B87C  41 82 01 F8 */	beq lbl_8073BA74
/* 8073B880  40 80 00 1C */	bge lbl_8073B89C
/* 8073B884  2C 00 00 01 */	cmpwi r0, 1
/* 8073B888  41 82 01 04 */	beq lbl_8073B98C
/* 8073B88C  40 80 01 A8 */	bge lbl_8073BA34
/* 8073B890  2C 00 00 00 */	cmpwi r0, 0
/* 8073B894  40 80 00 14 */	bge lbl_8073B8A8
/* 8073B898  48 00 02 EC */	b lbl_8073BB84
lbl_8073B89C:
/* 8073B89C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8073B8A0  41 82 02 1C */	beq lbl_8073BABC
/* 8073B8A4  48 00 02 E0 */	b lbl_8073BB84
lbl_8073B8A8:
/* 8073B8A8  38 00 00 00 */	li r0, 0
/* 8073B8AC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8073B8B0  80 1F 0A 24 */	lwz r0, 0xa24(r31)
/* 8073B8B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8073B8B8  90 1F 0A 24 */	stw r0, 0xa24(r31)
/* 8073B8BC  80 1F 09 04 */	lwz r0, 0x904(r31)
/* 8073B8C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8073B8C4  90 1F 09 04 */	stw r0, 0x904(r31)
/* 8073B8C8  38 80 00 07 */	li r4, 7
/* 8073B8CC  38 A0 00 02 */	li r5, 2
/* 8073B8D0  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8073B8D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8073B8D8  4B FF EB 7D */	bl setBck__8daE_OT_cFiUcff
/* 8073B8DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070238@ha */
/* 8073B8E0  38 03 02 38 */	addi r0, r3, 0x0238 /* 0x00070238@l */
/* 8073B8E4  90 01 00 08 */	stw r0, 8(r1)
/* 8073B8E8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8073B8EC  38 81 00 08 */	addi r4, r1, 8
/* 8073B8F0  38 A0 FF FF */	li r5, -1
/* 8073B8F4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8073B8F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8073B8FC  7D 89 03 A6 */	mtctr r12
/* 8073B900  4E 80 04 21 */	bctrl 
/* 8073B904  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8073B908  4B B2 C0 85 */	bl cM_rndFX__Ff
/* 8073B90C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8073B910  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B914  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8073B918  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8073B91C  4B B2 C0 71 */	bl cM_rndFX__Ff
/* 8073B920  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8073B924  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B928  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8073B92C  38 00 00 01 */	li r0, 1
/* 8073B930  90 1F 06 78 */	stw r0, 0x678(r31)
/* 8073B934  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8073B938  D0 1F 06 84 */	stfs f0, 0x684(r31)
/* 8073B93C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8073B940  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8073B944  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 8073B948  4B B2 C0 45 */	bl cM_rndFX__Ff
/* 8073B94C  A8 7F 0B 6A */	lha r3, 0xb6a(r31)
/* 8073B950  3C 63 00 01 */	addis r3, r3, 1
/* 8073B954  38 03 80 00 */	addi r0, r3, -32768
/* 8073B958  C8 5E 00 80 */	lfd f2, 0x80(r30)
/* 8073B95C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073B960  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8073B964  3C 00 43 30 */	lis r0, 0x4330
/* 8073B968  90 01 00 28 */	stw r0, 0x28(r1)
/* 8073B96C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8073B970  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073B974  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B978  FC 00 00 1E */	fctiwz f0, f0
/* 8073B97C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8073B980  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073B984  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8073B988  48 00 01 FC */	b lbl_8073BB84
lbl_8073B98C:
/* 8073B98C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8073B990  38 80 80 00 */	li r4, -32768
/* 8073B994  38 A0 00 08 */	li r5, 8
/* 8073B998  38 C0 04 00 */	li r6, 0x400
/* 8073B99C  4B B3 4C 6D */	bl cLib_addCalcAngleS2__FPssss
/* 8073B9A0  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 8073B9A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8073B9A8  40 82 00 18 */	bne lbl_8073B9C0
/* 8073B9AC  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 8073B9B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073B9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B9B8  4C 41 13 82 */	cror 2, 1, 2
/* 8073B9BC  40 82 01 C8 */	bne lbl_8073BB84
lbl_8073B9C0:
/* 8073B9C0  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 8073B9C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073B9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B9CC  4C 41 13 82 */	cror 2, 1, 2
/* 8073B9D0  40 82 00 0C */	bne lbl_8073B9DC
/* 8073B9D4  7F E3 FB 78 */	mr r3, r31
/* 8073B9D8  4B FF EE 61 */	bl setWaterEffect__8daE_OT_cFv
lbl_8073B9DC:
/* 8073B9DC  88 1F 06 93 */	lbz r0, 0x693(r31)
/* 8073B9E0  28 00 00 00 */	cmplwi r0, 0
/* 8073B9E4  41 82 00 0C */	beq lbl_8073B9F0
/* 8073B9E8  7F E3 FB 78 */	mr r3, r31
/* 8073B9EC  4B FF F0 55 */	bl setDeathLightEffect__8daE_OT_cFv
lbl_8073B9F0:
/* 8073B9F0  7F E3 FB 78 */	mr r3, r31
/* 8073B9F4  4B 8D E2 89 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8073B9F8  4B B2 BE 75 */	bl cM_rnd__Fv
/* 8073B9FC  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x8073D2BC@ha */
/* 8073BA00  38 63 D2 BC */	addi r3, r3, l_HIO@l /* 0x8073D2BC@l */
/* 8073BA04  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8073BA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073BA0C  40 80 01 78 */	bge lbl_8073BB84
/* 8073BA10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8073BA14  38 80 00 00 */	li r4, 0
/* 8073BA18  38 A0 FF FF */	li r5, -1
/* 8073BA1C  38 C0 FF FF */	li r6, -1
/* 8073BA20  38 E0 00 00 */	li r7, 0
/* 8073BA24  39 00 00 00 */	li r8, 0
/* 8073BA28  39 20 00 00 */	li r9, 0
/* 8073BA2C  4B 8E 08 15 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8073BA30  48 00 01 54 */	b lbl_8073BB84
lbl_8073BA34:
/* 8073BA34  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 8073BA38  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8073BA3C  40 82 00 18 */	bne lbl_8073BA54
/* 8073BA40  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 8073BA44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073BA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073BA4C  4C 41 13 82 */	cror 2, 1, 2
/* 8073BA50  40 82 01 34 */	bne lbl_8073BB84
lbl_8073BA54:
/* 8073BA54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073BA58  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8073BA5C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8073BA60  38 00 00 03 */	li r0, 3
/* 8073BA64  90 1F 06 78 */	stw r0, 0x678(r31)
/* 8073BA68  38 00 00 3C */	li r0, 0x3c
/* 8073BA6C  98 1F 06 94 */	stb r0, 0x694(r31)
/* 8073BA70  48 00 01 14 */	b lbl_8073BB84
lbl_8073BA74:
/* 8073BA74  38 7F 06 84 */	addi r3, r31, 0x684
/* 8073BA78  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8073BA7C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 8073BA80  4B B3 4C C1 */	bl cLib_chaseF__FPfff
/* 8073BA84  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 8073BA88  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073BA8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073BA90  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 8073BA94  28 00 00 00 */	cmplwi r0, 0
/* 8073BA98  40 82 00 EC */	bne lbl_8073BB84
/* 8073BA9C  88 1F 06 93 */	lbz r0, 0x693(r31)
/* 8073BAA0  28 00 00 00 */	cmplwi r0, 0
/* 8073BAA4  41 82 00 0C */	beq lbl_8073BAB0
/* 8073BAA8  7F E3 FB 78 */	mr r3, r31
/* 8073BAAC  4B FF EF 95 */	bl setDeathLightEffect__8daE_OT_cFv
lbl_8073BAB0:
/* 8073BAB0  7F E3 FB 78 */	mr r3, r31
/* 8073BAB4  4B 8D E1 C9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8073BAB8  48 00 00 CC */	b lbl_8073BB84
lbl_8073BABC:
/* 8073BABC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073BAC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073BAC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073BAC8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8073BACC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073BAD0  80 BF 06 70 */	lwz r5, 0x670(r31)
/* 8073BAD4  38 61 00 18 */	addi r3, r1, 0x18
/* 8073BAD8  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 8073BADC  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8073BAE0  38 C1 00 0C */	addi r6, r1, 0xc
/* 8073BAE4  4B B3 52 DD */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8073BAE8  38 61 00 18 */	addi r3, r1, 0x18
/* 8073BAEC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8073BAF0  4B B3 51 15 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8073BAF4  7C 65 07 34 */	extsh r5, r3
/* 8073BAF8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073BAFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073BB00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073BB04  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8073BB08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073BB0C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8073BB10  38 81 00 18 */	addi r4, r1, 0x18
/* 8073BB14  38 C1 00 0C */	addi r6, r1, 0xc
/* 8073BB18  4B B3 52 A9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8073BB1C  3C 60 80 74 */	lis r3, struct_8073D2DC+0x0@ha /* 0x8073D2DC@ha */
/* 8073BB20  38 83 D2 DC */	addi r4, r3, struct_8073D2DC+0x0@l /* 0x8073D2DC@l */
/* 8073BB24  88 64 00 00 */	lbz r3, 0(r4)
/* 8073BB28  38 03 00 01 */	addi r0, r3, 1
/* 8073BB2C  98 04 00 00 */	stb r0, 0(r4)
/* 8073BB30  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8073BB34  28 00 00 05 */	cmplwi r0, 5
/* 8073BB38  40 80 00 0C */	bge lbl_8073BB44
/* 8073BB3C  7F E3 FB 78 */	mr r3, r31
/* 8073BB40  4B FF EF 01 */	bl setDeathLightEffect__8daE_OT_cFv
lbl_8073BB44:
/* 8073BB44  7F E3 FB 78 */	mr r3, r31
/* 8073BB48  4B 8D E1 35 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8073BB4C  4B B2 BD 21 */	bl cM_rnd__Fv
/* 8073BB50  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x8073D2BC@ha */
/* 8073BB54  38 63 D2 BC */	addi r3, r3, l_HIO@l /* 0x8073D2BC@l */
/* 8073BB58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8073BB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073BB60  40 80 00 24 */	bge lbl_8073BB84
/* 8073BB64  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8073BB68  38 80 00 00 */	li r4, 0
/* 8073BB6C  38 A0 FF FF */	li r5, -1
/* 8073BB70  38 C0 FF FF */	li r6, -1
/* 8073BB74  38 E0 00 00 */	li r7, 0
/* 8073BB78  39 00 00 00 */	li r8, 0
/* 8073BB7C  39 20 00 00 */	li r9, 0
/* 8073BB80  4B 8E 06 C1 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_8073BB84:
/* 8073BB84  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8073BB88  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8073BB8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073BB90  7C 08 03 A6 */	mtlr r0
/* 8073BB94  38 21 00 40 */	addi r1, r1, 0x40
/* 8073BB98  4E 80 00 20 */	blr 
