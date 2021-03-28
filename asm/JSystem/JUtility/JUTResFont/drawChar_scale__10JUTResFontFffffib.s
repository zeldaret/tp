lbl_802DF7C4:
/* 802DF7C4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802DF7C8  7C 08 02 A6 */	mflr r0
/* 802DF7CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802DF7D0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802DF7D4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 802DF7D8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 802DF7DC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 802DF7E0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 802DF7E4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 802DF7E8  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 802DF7EC  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 802DF7F0  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 802DF7F4  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 802DF7F8  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 802DF7FC  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 802DF800  39 61 00 50 */	addi r11, r1, 0x50
/* 802DF804  48 08 29 D1 */	bl _savegpr_27
/* 802DF808  7C 7E 1B 78 */	mr r30, r3
/* 802DF80C  FF 40 08 90 */	fmr f26, f1
/* 802DF810  FF 60 10 90 */	fmr f27, f2
/* 802DF814  FF C0 18 90 */	fmr f30, f3
/* 802DF818  FF 80 20 90 */	fmr f28, f4
/* 802DF81C  7C BB 2B 78 */	mr r27, r5
/* 802DF820  38 A0 00 00 */	li r5, 0
/* 802DF824  38 C1 00 08 */	addi r6, r1, 8
/* 802DF828  48 00 03 C1 */	bl loadFont__10JUTResFontFi11_GXTexMapIDPQ27JUTFont6TWidth
/* 802DF82C  88 1E 00 05 */	lbz r0, 5(r30)
/* 802DF830  28 00 00 00 */	cmplwi r0, 0
/* 802DF834  40 82 00 0C */	bne lbl_802DF840
/* 802DF838  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802DF83C  40 82 00 0C */	bne lbl_802DF848
lbl_802DF840:
/* 802DF840  FF E0 D0 90 */	fmr f31, f26
/* 802DF844  48 00 00 58 */	b lbl_802DF89C
lbl_802DF848:
/* 802DF848  7F C3 F3 78 */	mr r3, r30
/* 802DF84C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF850  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802DF854  7D 89 03 A6 */	mtctr r12
/* 802DF858  4E 80 04 21 */	bctrl 
/* 802DF85C  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DF860  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DF864  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF868  3C 60 43 30 */	lis r3, 0x4330
/* 802DF86C  90 61 00 10 */	stw r3, 0x10(r1)
/* 802DF870  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DF874  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DF878  EC 5E 00 24 */	fdivs f2, f30, f0
/* 802DF87C  88 01 00 08 */	lbz r0, 8(r1)
/* 802DF880  C8 22 C6 00 */	lfd f1, lit_651(r2)
/* 802DF884  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DF888  90 61 00 18 */	stw r3, 0x18(r1)
/* 802DF88C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DF890  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DF894  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802DF898  EF FA 00 28 */	fsubs f31, f26, f0
lbl_802DF89C:
/* 802DF89C  7F C3 F3 78 */	mr r3, r30
/* 802DF8A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF8A4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802DF8A8  7D 89 03 A6 */	mtctr r12
/* 802DF8AC  4E 80 04 21 */	bctrl 
/* 802DF8B0  C8 42 C5 F8 */	lfd f2, lit_649(r2)
/* 802DF8B4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DF8B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DF8BC  3C 60 43 30 */	lis r3, 0x4330
/* 802DF8C0  90 61 00 18 */	stw r3, 0x18(r1)
/* 802DF8C4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DF8C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 802DF8CC  EC 3E 00 24 */	fdivs f1, f30, f0
/* 802DF8D0  80 1E 00 08 */	lwz r0, 8(r30)
/* 802DF8D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DF8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF8DC  90 61 00 10 */	stw r3, 0x10(r1)
/* 802DF8E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DF8E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 802DF8E8  EF A0 00 72 */	fmuls f29, f0, f1
/* 802DF8EC  88 1E 00 05 */	lbz r0, 5(r30)
/* 802DF8F0  28 00 00 00 */	cmplwi r0, 0
/* 802DF8F4  40 82 00 B8 */	bne lbl_802DF9AC
/* 802DF8F8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802DF8FC  40 82 00 60 */	bne lbl_802DF95C
/* 802DF900  7F C3 F3 78 */	mr r3, r30
/* 802DF904  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF908  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802DF90C  7D 89 03 A6 */	mtctr r12
/* 802DF910  4E 80 04 21 */	bctrl 
/* 802DF914  C8 42 C5 F8 */	lfd f2, lit_649(r2)
/* 802DF918  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DF91C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DF920  3C 80 43 30 */	lis r4, 0x4330
/* 802DF924  90 81 00 18 */	stw r4, 0x18(r1)
/* 802DF928  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DF92C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802DF930  EC 3E 00 24 */	fdivs f1, f30, f0
/* 802DF934  88 61 00 09 */	lbz r3, 9(r1)
/* 802DF938  88 01 00 08 */	lbz r0, 8(r1)
/* 802DF93C  7C 03 02 14 */	add r0, r3, r0
/* 802DF940  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DF944  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF948  90 81 00 10 */	stw r4, 0x10(r1)
/* 802DF94C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DF950  EC 00 10 28 */	fsubs f0, f0, f2
/* 802DF954  EF A0 00 72 */	fmuls f29, f0, f1
/* 802DF958  48 00 00 54 */	b lbl_802DF9AC
lbl_802DF95C:
/* 802DF95C  7F C3 F3 78 */	mr r3, r30
/* 802DF960  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF964  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802DF968  7D 89 03 A6 */	mtctr r12
/* 802DF96C  4E 80 04 21 */	bctrl 
/* 802DF970  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DF974  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DF978  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DF97C  3C 60 43 30 */	lis r3, 0x4330
/* 802DF980  90 61 00 18 */	stw r3, 0x18(r1)
/* 802DF984  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DF988  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DF98C  EC 5E 00 24 */	fdivs f2, f30, f0
/* 802DF990  88 01 00 09 */	lbz r0, 9(r1)
/* 802DF994  C8 22 C6 00 */	lfd f1, lit_651(r2)
/* 802DF998  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF99C  90 61 00 10 */	stw r3, 0x10(r1)
/* 802DF9A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DF9A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DF9A8  EF A0 00 B2 */	fmuls f29, f0, f2
lbl_802DF9AC:
/* 802DF9AC  EF DF F0 2A */	fadds f30, f31, f30
/* 802DF9B0  7F C3 F3 78 */	mr r3, r30
/* 802DF9B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF9B8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802DF9BC  7D 89 03 A6 */	mtctr r12
/* 802DF9C0  4E 80 04 21 */	bctrl 
/* 802DF9C4  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DF9C8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DF9CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DF9D0  3C 00 43 30 */	lis r0, 0x4330
/* 802DF9D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802DF9D8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DF9DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DF9E0  EF 5C 00 24 */	fdivs f26, f28, f0
/* 802DF9E4  7F C3 F3 78 */	mr r3, r30
/* 802DF9E8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DF9EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DF9F0  7D 89 03 A6 */	mtctr r12
/* 802DF9F4  4E 80 04 21 */	bctrl 
/* 802DF9F8  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DF9FC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DFA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFA04  3C 00 43 30 */	lis r0, 0x4330
/* 802DFA08  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DFA0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DFA10  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DFA14  EC 00 06 B2 */	fmuls f0, f0, f26
/* 802DFA18  EF 5B 00 28 */	fsubs f26, f27, f0
/* 802DFA1C  7F C3 F3 78 */	mr r3, r30
/* 802DFA20  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DFA24  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802DFA28  7D 89 03 A6 */	mtctr r12
/* 802DFA2C  4E 80 04 21 */	bctrl 
/* 802DFA30  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DFA34  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DFA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFA3C  3C 00 43 30 */	lis r0, 0x4330
/* 802DFA40  90 01 00 20 */	stw r0, 0x20(r1)
/* 802DFA44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802DFA48  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DFA4C  EF 9C 00 24 */	fdivs f28, f28, f0
/* 802DFA50  7F C3 F3 78 */	mr r3, r30
/* 802DFA54  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DFA58  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DFA5C  7D 89 03 A6 */	mtctr r12
/* 802DFA60  4E 80 04 21 */	bctrl 
/* 802DFA64  C8 22 C5 F8 */	lfd f1, lit_649(r2)
/* 802DFA68  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802DFA6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802DFA70  3C 00 43 30 */	lis r0, 0x4330
/* 802DFA74  90 01 00 28 */	stw r0, 0x28(r1)
/* 802DFA78  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802DFA7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802DFA80  EC 00 07 32 */	fmuls f0, f0, f28
/* 802DFA84  EF 7B 00 2A */	fadds f27, f27, f0
/* 802DFA88  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 802DFA8C  54 A4 78 20 */	slwi r4, r5, 0xf
/* 802DFA90  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 802DFA94  A0 1E 00 66 */	lhz r0, 0x66(r30)
/* 802DFA98  54 00 10 3A */	slwi r0, r0, 2
/* 802DFA9C  7C 63 00 2E */	lwzx r3, r3, r0
/* 802DFAA0  A0 C3 00 1A */	lhz r6, 0x1a(r3)
/* 802DFAA4  7F E4 33 D6 */	divw r31, r4, r6
/* 802DFAA8  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 802DFAAC  54 80 78 20 */	slwi r0, r4, 0xf
/* 802DFAB0  A0 E3 00 1C */	lhz r7, 0x1c(r3)
/* 802DFAB4  7F A0 3B D6 */	divw r29, r0, r7
/* 802DFAB8  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802DFABC  7C 05 02 14 */	add r0, r5, r0
/* 802DFAC0  54 00 78 20 */	slwi r0, r0, 0xf
/* 802DFAC4  7F 80 33 D6 */	divw r28, r0, r6
/* 802DFAC8  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 802DFACC  7C 04 02 14 */	add r0, r4, r0
/* 802DFAD0  54 00 78 20 */	slwi r0, r0, 0xf
/* 802DFAD4  7F 60 3B D6 */	divw r27, r0, r7
/* 802DFAD8  38 60 00 00 */	li r3, 0
/* 802DFADC  38 80 00 09 */	li r4, 9
/* 802DFAE0  38 A0 00 01 */	li r5, 1
/* 802DFAE4  38 C0 00 04 */	li r6, 4
/* 802DFAE8  38 E0 00 00 */	li r7, 0
/* 802DFAEC  48 07 BA D9 */	bl GXSetVtxAttrFmt
/* 802DFAF0  38 60 00 80 */	li r3, 0x80
/* 802DFAF4  38 80 00 00 */	li r4, 0
/* 802DFAF8  38 A0 00 04 */	li r5, 4
/* 802DFAFC  48 07 CC 69 */	bl GXBegin
/* 802DFB00  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802DFB04  D3 E3 80 00 */	stfs f31, 0x8000(r3)
/* 802DFB08  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 802DFB0C  C0 02 C5 F0 */	lfs f0, lit_647(r2)
/* 802DFB10  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802DFB14  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802DFB18  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802DFB1C  B3 E3 80 00 */	sth r31, -0x8000(r3)
/* 802DFB20  B3 A3 80 00 */	sth r29, -0x8000(r3)
/* 802DFB24  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802DFB28  D3 43 80 00 */	stfs f26, -0x8000(r3)
/* 802DFB2C  C0 02 C5 F0 */	lfs f0, lit_647(r2)
/* 802DFB30  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802DFB34  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802DFB38  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802DFB3C  B3 83 80 00 */	sth r28, -0x8000(r3)
/* 802DFB40  B3 A3 80 00 */	sth r29, -0x8000(r3)
/* 802DFB44  D3 C3 80 00 */	stfs f30, -0x8000(r3)
/* 802DFB48  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 802DFB4C  C0 02 C5 F0 */	lfs f0, lit_647(r2)
/* 802DFB50  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802DFB54  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802DFB58  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802DFB5C  B3 83 80 00 */	sth r28, -0x8000(r3)
/* 802DFB60  B3 63 80 00 */	sth r27, -0x8000(r3)
/* 802DFB64  D3 E3 80 00 */	stfs f31, -0x8000(r3)
/* 802DFB68  D3 63 80 00 */	stfs f27, -0x8000(r3)
/* 802DFB6C  C0 02 C5 F0 */	lfs f0, lit_647(r2)
/* 802DFB70  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 802DFB74  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802DFB78  90 03 80 00 */	stw r0, -0x8000(r3)
/* 802DFB7C  B3 E3 80 00 */	sth r31, -0x8000(r3)
/* 802DFB80  B3 63 80 00 */	sth r27, -0x8000(r3)
/* 802DFB84  38 60 00 00 */	li r3, 0
/* 802DFB88  38 80 00 09 */	li r4, 9
/* 802DFB8C  38 A0 00 01 */	li r5, 1
/* 802DFB90  38 C0 00 03 */	li r6, 3
/* 802DFB94  38 E0 00 00 */	li r7, 0
/* 802DFB98  48 07 BA 2D */	bl GXSetVtxAttrFmt
/* 802DFB9C  FC 20 E8 90 */	fmr f1, f29
/* 802DFBA0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 802DFBA4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802DFBA8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 802DFBAC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 802DFBB0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 802DFBB4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 802DFBB8  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 802DFBBC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 802DFBC0  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 802DFBC4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 802DFBC8  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 802DFBCC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 802DFBD0  39 61 00 50 */	addi r11, r1, 0x50
/* 802DFBD4  48 08 26 4D */	bl _restgpr_27
/* 802DFBD8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802DFBDC  7C 08 03 A6 */	mtlr r0
/* 802DFBE0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802DFBE4  4E 80 00 20 */	blr 
