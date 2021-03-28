lbl_807C638C:
/* 807C638C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807C6390  7C 08 02 A6 */	mflr r0
/* 807C6394  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807C6398  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 807C639C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 807C63A0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 807C63A4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 807C63A8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 807C63AC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 807C63B0  39 61 00 80 */	addi r11, r1, 0x80
/* 807C63B4  4B B9 BE 14 */	b _savegpr_24
/* 807C63B8  7C 7D 1B 78 */	mr r29, r3
/* 807C63BC  3B C0 00 00 */	li r30, 0
/* 807C63C0  3B 80 00 00 */	li r28, 0
/* 807C63C4  3B 60 00 00 */	li r27, 0
/* 807C63C8  3B 40 00 00 */	li r26, 0
/* 807C63CC  3C 60 80 7D */	lis r3, lit_4316@ha
/* 807C63D0  C3 C3 ED 10 */	lfs f30, lit_4316@l(r3)
/* 807C63D4  3C 60 80 7D */	lis r3, lit_5843@ha
/* 807C63D8  CB E3 ED 80 */	lfd f31, lit_5843@l(r3)
/* 807C63DC  3F 20 43 30 */	lis r25, 0x4330
lbl_807C63E0:
/* 807C63E0  3B FA 11 B8 */	addi r31, r26, 0x11b8
/* 807C63E4  7C 1D FC 2E */	lfsx f0, r29, r31
/* 807C63E8  EC 00 F0 2A */	fadds f0, f0, f30
/* 807C63EC  7C 1D FD 2E */	stfsx f0, r29, r31
/* 807C63F0  7F A3 EB 78 */	mr r3, r29
/* 807C63F4  7F C4 F3 78 */	mr r4, r30
/* 807C63F8  4B FF EF E5 */	bl getRopeLength__8daE_VA_cFi
/* 807C63FC  7C 1D FC 2E */	lfsx f0, r29, r31
/* 807C6400  EC 00 08 24 */	fdivs f0, f0, f1
/* 807C6404  FC 00 00 1E */	fctiwz f0, f0
/* 807C6408  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 807C640C  83 01 00 4C */	lwz r24, 0x4c(r1)
/* 807C6410  7F A3 EB 78 */	mr r3, r29
/* 807C6414  7F C4 F3 78 */	mr r4, r30
/* 807C6418  4B FF EF C5 */	bl getRopeLength__8daE_VA_cFi
/* 807C641C  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 807C6420  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C6424  93 21 00 50 */	stw r25, 0x50(r1)
/* 807C6428  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 807C642C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807C6430  EC 20 00 72 */	fmuls f1, f0, f1
/* 807C6434  7C 1D FC 2E */	lfsx f0, r29, r31
/* 807C6438  EF A0 08 28 */	fsubs f29, f0, f1
/* 807C643C  3B E0 00 01 */	li r31, 1
/* 807C6440  2C 18 00 09 */	cmpwi r24, 9
/* 807C6444  40 80 00 94 */	bge lbl_807C64D8
/* 807C6448  7C B8 DA 14 */	add r5, r24, r27
/* 807C644C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807C6450  38 05 00 01 */	addi r0, r5, 1
/* 807C6454  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C6458  38 84 09 94 */	addi r4, r4, 0x994
/* 807C645C  7C 9D 22 14 */	add r4, r29, r4
/* 807C6460  1C A5 00 0C */	mulli r5, r5, 0xc
/* 807C6464  3B 05 09 94 */	addi r24, r5, 0x994
/* 807C6468  7F 1D C2 14 */	add r24, r29, r24
/* 807C646C  7F 05 C3 78 */	mr r5, r24
/* 807C6470  4B AA 06 C4 */	b __mi__4cXyzCFRC3Vec
/* 807C6474  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807C6478  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C647C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807C6480  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807C6484  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807C6488  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807C648C  38 61 00 20 */	addi r3, r1, 0x20
/* 807C6490  38 81 00 38 */	addi r4, r1, 0x38
/* 807C6494  4B AA 0A B4 */	b normalizeZP__4cXyzFv
/* 807C6498  38 61 00 14 */	addi r3, r1, 0x14
/* 807C649C  38 81 00 38 */	addi r4, r1, 0x38
/* 807C64A0  FC 20 E8 90 */	fmr f1, f29
/* 807C64A4  4B AA 06 E0 */	b __ml__4cXyzCFf
/* 807C64A8  38 61 00 08 */	addi r3, r1, 8
/* 807C64AC  7F 04 C3 78 */	mr r4, r24
/* 807C64B0  38 A1 00 14 */	addi r5, r1, 0x14
/* 807C64B4  4B AA 06 30 */	b __pl__4cXyzCFRC3Vec
/* 807C64B8  C0 01 00 08 */	lfs f0, 8(r1)
/* 807C64BC  7C 7D E2 14 */	add r3, r29, r28
/* 807C64C0  D0 03 11 40 */	stfs f0, 0x1140(r3)
/* 807C64C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807C64C8  D0 03 11 44 */	stfs f0, 0x1144(r3)
/* 807C64CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807C64D0  D0 03 11 48 */	stfs f0, 0x1148(r3)
/* 807C64D4  48 00 00 34 */	b lbl_807C6508
lbl_807C64D8:
/* 807C64D8  38 7C 11 40 */	addi r3, r28, 0x1140
/* 807C64DC  7C 7D 1A 14 */	add r3, r29, r3
/* 807C64E0  38 1B 00 09 */	addi r0, r27, 9
/* 807C64E4  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C64E8  38 84 09 94 */	addi r4, r4, 0x994
/* 807C64EC  7C 9D 22 14 */	add r4, r29, r4
/* 807C64F0  3C A0 80 7D */	lis r5, lit_4316@ha
/* 807C64F4  C0 25 ED 10 */	lfs f1, lit_4316@l(r5)
/* 807C64F8  4B AA A2 B4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C64FC  2C 03 00 00 */	cmpwi r3, 0
/* 807C6500  41 82 00 08 */	beq lbl_807C6508
/* 807C6504  3B E0 00 00 */	li r31, 0
lbl_807C6508:
/* 807C6508  2C 1F 00 00 */	cmpwi r31, 0
/* 807C650C  41 82 00 10 */	beq lbl_807C651C
/* 807C6510  7F A3 EB 78 */	mr r3, r29
/* 807C6514  7F C4 F3 78 */	mr r4, r30
/* 807C6518  4B FF E3 2D */	bl setFireEffect__8daE_VA_cFi
lbl_807C651C:
/* 807C651C  3B DE 00 01 */	addi r30, r30, 1
/* 807C6520  2C 1E 00 0A */	cmpwi r30, 0xa
/* 807C6524  3B 9C 00 0C */	addi r28, r28, 0xc
/* 807C6528  3B 7B 00 0A */	addi r27, r27, 0xa
/* 807C652C  3B 5A 00 04 */	addi r26, r26, 4
/* 807C6530  41 80 FE B0 */	blt lbl_807C63E0
/* 807C6534  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 807C6538  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 807C653C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 807C6540  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 807C6544  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 807C6548  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 807C654C  39 61 00 80 */	addi r11, r1, 0x80
/* 807C6550  4B B9 BC C4 */	b _restgpr_24
/* 807C6554  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807C6558  7C 08 03 A6 */	mtlr r0
/* 807C655C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807C6560  4E 80 00 20 */	blr 
