lbl_802E7648:
/* 802E7648  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 802E764C  7C 08 02 A6 */	mflr r0
/* 802E7650  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 802E7654  DB E1 02 A0 */	stfd f31, 0x2a0(r1)
/* 802E7658  F3 E1 02 A8 */	psq_st f31, 680(r1), 0, 0 /* qr0 */
/* 802E765C  DB C1 02 90 */	stfd f30, 0x290(r1)
/* 802E7660  F3 C1 02 98 */	psq_st f30, 664(r1), 0, 0 /* qr0 */
/* 802E7664  DB A1 02 80 */	stfd f29, 0x280(r1)
/* 802E7668  F3 A1 02 88 */	psq_st f29, 648(r1), 0, 0 /* qr0 */
/* 802E766C  DB 81 02 70 */	stfd f28, 0x270(r1)
/* 802E7670  F3 81 02 78 */	psq_st f28, 632(r1), 0, 0 /* qr0 */
/* 802E7674  DB 61 02 60 */	stfd f27, 0x260(r1)
/* 802E7678  F3 61 02 68 */	psq_st f27, 616(r1), 0, 0 /* qr0 */
/* 802E767C  39 61 02 60 */	addi r11, r1, 0x260
/* 802E7680  48 07 AB 39 */	bl _savegpr_20
/* 802E7684  7C 79 1B 78 */	mr r25, r3
/* 802E7688  7C 9A 23 78 */	mr r26, r4
/* 802E768C  88 03 00 68 */	lbz r0, 0x68(r3)
/* 802E7690  28 00 00 00 */	cmplwi r0, 0
/* 802E7694  41 82 04 E4 */	beq lbl_802E7B78
/* 802E7698  80 19 00 4C */	lwz r0, 0x4c(r25)
/* 802E769C  28 00 00 00 */	cmplwi r0, 0
/* 802E76A0  40 82 00 0C */	bne lbl_802E76AC
/* 802E76A4  2C 1A 00 02 */	cmpwi r26, 2
/* 802E76A8  40 82 04 D0 */	bne lbl_802E7B78
lbl_802E76AC:
/* 802E76AC  80 F9 00 48 */	lwz r7, 0x48(r25)
/* 802E76B0  28 07 00 00 */	cmplwi r7, 0
/* 802E76B4  41 82 04 C4 */	beq lbl_802E7B78
/* 802E76B8  7F 40 00 34 */	cntlzw r0, r26
/* 802E76BC  54 1E D9 7E */	srwi r30, r0, 5
/* 802E76C0  C0 22 C7 18 */	lfs f1, lit_2460(r2)
/* 802E76C4  C0 19 00 54 */	lfs f0, 0x54(r25)
/* 802E76C8  EF E1 00 2A */	fadds f31, f1, f0
/* 802E76CC  2C 1A 00 02 */	cmpwi r26, 2
/* 802E76D0  41 82 02 D4 */	beq lbl_802E79A4
/* 802E76D4  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802E76D8  28 03 00 00 */	cmplwi r3, 0
/* 802E76DC  40 82 00 48 */	bne lbl_802E7724
/* 802E76E0  38 61 01 08 */	addi r3, r1, 0x108
/* 802E76E4  C0 22 C7 1C */	lfs f1, lit_2461(r2)
/* 802E76E8  FC 40 08 90 */	fmr f2, f1
/* 802E76EC  C0 62 C7 20 */	lfs f3, lit_2462(r2)
/* 802E76F0  C0 82 C7 24 */	lfs f4, lit_2463(r2)
/* 802E76F4  C0 A2 C7 28 */	lfs f5, lit_2464(r2)
/* 802E76F8  C0 C2 C7 2C */	lfs f6, lit_2465(r2)
/* 802E76FC  48 00 1F D5 */	bl __ct__13J2DOrthoGraphFffffff
/* 802E7700  38 61 01 08 */	addi r3, r1, 0x108
/* 802E7704  48 00 20 B1 */	bl setPort__13J2DOrthoGraphFv
/* 802E7708  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E770C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E7710  90 01 01 08 */	stw r0, 0x108(r1)
/* 802E7714  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802E7718  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802E771C  90 01 01 08 */	stw r0, 0x108(r1)
/* 802E7720  48 00 00 70 */	b lbl_802E7790
lbl_802E7724:
/* 802E7724  80 63 00 04 */	lwz r3, 4(r3)
/* 802E7728  A0 83 00 06 */	lhz r4, 6(r3)
/* 802E772C  A0 03 00 04 */	lhz r0, 4(r3)
/* 802E7730  38 61 00 34 */	addi r3, r1, 0x34
/* 802E7734  C0 22 C7 1C */	lfs f1, lit_2461(r2)
/* 802E7738  FC 40 08 90 */	fmr f2, f1
/* 802E773C  C8 82 C7 38 */	lfd f4, lit_2469(r2)
/* 802E7740  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 802E7744  3C 00 43 30 */	lis r0, 0x4330
/* 802E7748  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 802E774C  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 802E7750  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E7754  90 81 01 EC */	stw r4, 0x1ec(r1)
/* 802E7758  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 802E775C  C8 01 01 E8 */	lfd f0, 0x1e8(r1)
/* 802E7760  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E7764  C0 A2 C7 28 */	lfs f5, lit_2464(r2)
/* 802E7768  C0 C2 C7 2C */	lfs f6, lit_2465(r2)
/* 802E776C  48 00 1F 65 */	bl __ct__13J2DOrthoGraphFffffff
/* 802E7770  38 61 00 34 */	addi r3, r1, 0x34
/* 802E7774  48 00 20 41 */	bl setPort__13J2DOrthoGraphFv
/* 802E7778  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E777C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E7780  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E7784  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802E7788  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802E778C  90 01 00 34 */	stw r0, 0x34(r1)
lbl_802E7790:
/* 802E7790  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802E7794  41 82 00 0C */	beq lbl_802E77A0
/* 802E7798  38 79 00 60 */	addi r3, r25, 0x60
/* 802E779C  48 00 00 08 */	b lbl_802E77A4
lbl_802E77A0:
/* 802E77A0  38 79 00 5C */	addi r3, r25, 0x5c
lbl_802E77A4:
/* 802E77A4  80 03 00 00 */	lwz r0, 0(r3)
/* 802E77A8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802E77AC  80 79 00 40 */	lwz r3, 0x40(r25)
/* 802E77B0  38 03 FF FE */	addi r0, r3, -2
/* 802E77B4  C8 C2 C7 40 */	lfd f6, lit_2471(r2)
/* 802E77B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E77BC  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 802E77C0  3C 60 43 30 */	lis r3, 0x4330
/* 802E77C4  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 802E77C8  C8 01 01 E8 */	lfd f0, 0x1e8(r1)
/* 802E77CC  EC 20 30 28 */	fsubs f1, f0, f6
/* 802E77D0  80 19 00 44 */	lwz r0, 0x44(r25)
/* 802E77D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E77D8  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 802E77DC  90 61 01 E0 */	stw r3, 0x1e0(r1)
/* 802E77E0  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 802E77E4  EC 00 30 28 */	fsubs f0, f0, f6
/* 802E77E8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 802E77EC  FC 00 00 1E */	fctiwz f0, f0
/* 802E77F0  D8 01 01 F0 */	stfd f0, 0x1f0(r1)
/* 802E77F4  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 802E77F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E77FC  90 01 01 FC */	stw r0, 0x1fc(r1)
/* 802E7800  90 61 01 F8 */	stw r3, 0x1f8(r1)
/* 802E7804  C8 01 01 F8 */	lfd f0, 0x1f8(r1)
/* 802E7808  EC 40 30 28 */	fsubs f2, f0, f6
/* 802E780C  C0 A2 C7 30 */	lfs f5, lit_2466(r2)
/* 802E7810  C0 79 00 50 */	lfs f3, 0x50(r25)
/* 802E7814  80 19 00 20 */	lwz r0, 0x20(r25)
/* 802E7818  C8 82 C7 38 */	lfd f4, lit_2469(r2)
/* 802E781C  90 01 02 04 */	stw r0, 0x204(r1)
/* 802E7820  90 61 02 00 */	stw r3, 0x200(r1)
/* 802E7824  C8 01 02 00 */	lfd f0, 0x200(r1)
/* 802E7828  EC 00 20 28 */	fsubs f0, f0, f4
/* 802E782C  EC 03 00 32 */	fmuls f0, f3, f0
/* 802E7830  EC 05 00 2A */	fadds f0, f5, f0
/* 802E7834  FC 00 00 1E */	fctiwz f0, f0
/* 802E7838  D8 01 02 08 */	stfd f0, 0x208(r1)
/* 802E783C  80 01 02 0C */	lwz r0, 0x20c(r1)
/* 802E7840  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E7844  90 01 02 14 */	stw r0, 0x214(r1)
/* 802E7848  90 61 02 10 */	stw r3, 0x210(r1)
/* 802E784C  C8 01 02 10 */	lfd f0, 0x210(r1)
/* 802E7850  EC 60 30 28 */	fsubs f3, f0, f6
/* 802E7854  80 19 00 48 */	lwz r0, 0x48(r25)
/* 802E7858  90 01 02 1C */	stw r0, 0x21c(r1)
/* 802E785C  90 61 02 18 */	stw r3, 0x218(r1)
/* 802E7860  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 802E7864  EC 00 20 28 */	fsubs f0, f0, f4
/* 802E7868  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802E786C  FC 00 00 1E */	fctiwz f0, f0
/* 802E7870  D8 01 02 20 */	stfd f0, 0x220(r1)
/* 802E7874  80 01 02 24 */	lwz r0, 0x224(r1)
/* 802E7878  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E787C  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802E7880  90 61 02 28 */	stw r3, 0x228(r1)
/* 802E7884  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802E7888  EC 80 30 28 */	fsubs f4, f0, f6
/* 802E788C  38 61 00 30 */	addi r3, r1, 0x30
/* 802E7890  48 00 22 35 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E7894  80 79 00 4C */	lwz r3, 0x4c(r25)
/* 802E7898  81 83 00 00 */	lwz r12, 0(r3)
/* 802E789C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E78A0  7D 89 03 A6 */	mtctr r12
/* 802E78A4  4E 80 04 21 */	bctrl 
/* 802E78A8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802E78AC  41 82 00 C8 */	beq lbl_802E7974
/* 802E78B0  80 B9 00 30 */	lwz r5, 0x30(r25)
/* 802E78B4  80 19 00 38 */	lwz r0, 0x38(r25)
/* 802E78B8  7C 85 00 51 */	subf. r4, r5, r0
/* 802E78BC  80 79 00 48 */	lwz r3, 0x48(r25)
/* 802E78C0  41 80 00 08 */	blt lbl_802E78C8
/* 802E78C4  48 00 00 0C */	b lbl_802E78D0
lbl_802E78C8:
/* 802E78C8  80 19 00 24 */	lwz r0, 0x24(r25)
/* 802E78CC  7C 84 02 14 */	add r4, r4, r0
lbl_802E78D0:
/* 802E78D0  7C 63 20 50 */	subf r3, r3, r4
/* 802E78D4  34 03 00 01 */	addic. r0, r3, 1
/* 802E78D8  41 81 00 30 */	bgt lbl_802E7908
/* 802E78DC  38 00 00 FF */	li r0, 0xff
/* 802E78E0  98 01 00 28 */	stb r0, 0x28(r1)
/* 802E78E4  98 01 00 29 */	stb r0, 0x29(r1)
/* 802E78E8  98 01 00 2A */	stb r0, 0x2a(r1)
/* 802E78EC  98 01 00 2B */	stb r0, 0x2b(r1)
/* 802E78F0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802E78F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E78F8  80 79 00 4C */	lwz r3, 0x4c(r25)
/* 802E78FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 802E7900  4B FF 74 71 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E7904  48 00 01 18 */	b lbl_802E7A1C
lbl_802E7908:
/* 802E7908  80 19 00 34 */	lwz r0, 0x34(r25)
/* 802E790C  7C 05 00 00 */	cmpw r5, r0
/* 802E7910  40 82 00 34 */	bne lbl_802E7944
/* 802E7914  38 60 00 FF */	li r3, 0xff
/* 802E7918  98 61 00 20 */	stb r3, 0x20(r1)
/* 802E791C  38 00 00 E6 */	li r0, 0xe6
/* 802E7920  98 01 00 21 */	stb r0, 0x21(r1)
/* 802E7924  98 01 00 22 */	stb r0, 0x22(r1)
/* 802E7928  98 61 00 23 */	stb r3, 0x23(r1)
/* 802E792C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E7930  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E7934  80 79 00 4C */	lwz r3, 0x4c(r25)
/* 802E7938  38 81 00 24 */	addi r4, r1, 0x24
/* 802E793C  4B FF 74 35 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E7940  48 00 00 DC */	b lbl_802E7A1C
lbl_802E7944:
/* 802E7944  38 00 00 E6 */	li r0, 0xe6
/* 802E7948  98 01 00 18 */	stb r0, 0x18(r1)
/* 802E794C  98 01 00 19 */	stb r0, 0x19(r1)
/* 802E7950  38 00 00 FF */	li r0, 0xff
/* 802E7954  98 01 00 1A */	stb r0, 0x1a(r1)
/* 802E7958  98 01 00 1B */	stb r0, 0x1b(r1)
/* 802E795C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802E7960  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E7964  80 79 00 4C */	lwz r3, 0x4c(r25)
/* 802E7968  38 81 00 1C */	addi r4, r1, 0x1c
/* 802E796C  4B FF 74 05 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E7970  48 00 00 AC */	b lbl_802E7A1C
lbl_802E7974:
/* 802E7974  38 00 00 E6 */	li r0, 0xe6
/* 802E7978  98 01 00 10 */	stb r0, 0x10(r1)
/* 802E797C  98 01 00 11 */	stb r0, 0x11(r1)
/* 802E7980  98 01 00 12 */	stb r0, 0x12(r1)
/* 802E7984  38 00 00 FF */	li r0, 0xff
/* 802E7988  98 01 00 13 */	stb r0, 0x13(r1)
/* 802E798C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E7990  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7994  80 79 00 4C */	lwz r3, 0x4c(r25)
/* 802E7998  38 81 00 14 */	addi r4, r1, 0x14
/* 802E799C  4B FF 73 D5 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E79A0  48 00 00 7C */	b lbl_802E7A1C
lbl_802E79A4:
/* 802E79A4  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802E79A8  80 99 00 40 */	lwz r4, 0x40(r25)
/* 802E79AC  38 84 FF FD */	addi r4, r4, -3
/* 802E79B0  80 B9 00 44 */	lwz r5, 0x44(r25)
/* 802E79B4  38 A5 FF FE */	addi r5, r5, -2
/* 802E79B8  80 19 00 20 */	lwz r0, 0x20(r25)
/* 802E79BC  1C C0 00 06 */	mulli r6, r0, 6
/* 802E79C0  38 C6 00 06 */	addi r6, r6, 6
/* 802E79C4  C8 22 C7 38 */	lfd f1, lit_2469(r2)
/* 802E79C8  90 E1 02 2C */	stw r7, 0x22c(r1)
/* 802E79CC  3C 00 43 30 */	lis r0, 0x4330
/* 802E79D0  90 01 02 28 */	stw r0, 0x228(r1)
/* 802E79D4  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802E79D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802E79DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802E79E0  FC 00 00 1E */	fctiwz f0, f0
/* 802E79E4  D8 01 02 20 */	stfd f0, 0x220(r1)
/* 802E79E8  80 E1 02 24 */	lwz r7, 0x224(r1)
/* 802E79EC  38 E7 00 04 */	addi r7, r7, 4
/* 802E79F0  4B FF C8 99 */	bl erase__14JUTDirectPrintFiiii
/* 802E79F4  38 00 00 FF */	li r0, 0xff
/* 802E79F8  98 01 00 08 */	stb r0, 8(r1)
/* 802E79FC  98 01 00 09 */	stb r0, 9(r1)
/* 802E7A00  98 01 00 0A */	stb r0, 0xa(r1)
/* 802E7A04  98 01 00 0B */	stb r0, 0xb(r1)
/* 802E7A08  80 01 00 08 */	lwz r0, 8(r1)
/* 802E7A0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E7A10  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802E7A14  38 81 00 0C */	addi r4, r1, 0xc
/* 802E7A18  4B FF CD 81 */	bl setCharColor__14JUTDirectPrintFQ28JUtility6TColor
lbl_802E7A1C:
/* 802E7A1C  83 99 00 30 */	lwz r28, 0x30(r25)
/* 802E7A20  3B 60 00 00 */	li r27, 0
/* 802E7A24  82 B9 00 24 */	lwz r21, 0x24(r25)
/* 802E7A28  6E B6 80 00 */	xoris r22, r21, 0x8000
/* 802E7A2C  82 F9 00 48 */	lwz r23, 0x48(r25)
/* 802E7A30  83 19 00 34 */	lwz r24, 0x34(r25)
/* 802E7A34  83 D9 00 28 */	lwz r30, 0x28(r25)
/* 802E7A38  80 79 00 20 */	lwz r3, 0x20(r25)
/* 802E7A3C  3B E3 00 02 */	addi r31, r3, 2
lbl_802E7A40:
/* 802E7A40  7C 7F E1 D6 */	mullw r3, r31, r28
/* 802E7A44  3B A3 00 01 */	addi r29, r3, 1
/* 802E7A48  7F BE EA 14 */	add r29, r30, r29
/* 802E7A4C  88 1D FF FF */	lbz r0, -1(r29)
/* 802E7A50  28 00 00 00 */	cmplwi r0, 0
/* 802E7A54  41 82 01 24 */	beq lbl_802E7B78
/* 802E7A58  2C 1A 00 02 */	cmpwi r26, 2
/* 802E7A5C  41 82 00 94 */	beq lbl_802E7AF0
/* 802E7A60  C3 79 00 54 */	lfs f27, 0x54(r25)
/* 802E7A64  C3 99 00 50 */	lfs f28, 0x50(r25)
/* 802E7A68  80 19 00 44 */	lwz r0, 0x44(r25)
/* 802E7A6C  C8 42 C7 40 */	lfd f2, lit_2471(r2)
/* 802E7A70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E7A74  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802E7A78  3C 60 43 30 */	lis r3, 0x4330
/* 802E7A7C  90 61 02 28 */	stw r3, 0x228(r1)
/* 802E7A80  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802E7A84  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E7A88  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 802E7A8C  90 01 02 24 */	stw r0, 0x224(r1)
/* 802E7A90  90 61 02 20 */	stw r3, 0x220(r1)
/* 802E7A94  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 802E7A98  EC 00 10 28 */	fsubs f0, f0, f2
/* 802E7A9C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802E7AA0  EF A1 00 2A */	fadds f29, f1, f0
/* 802E7AA4  80 19 00 40 */	lwz r0, 0x40(r25)
/* 802E7AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E7AAC  90 01 02 1C */	stw r0, 0x21c(r1)
/* 802E7AB0  90 61 02 18 */	stw r3, 0x218(r1)
/* 802E7AB4  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 802E7AB8  EF C0 10 28 */	fsubs f30, f0, f2
/* 802E7ABC  82 99 00 4C */	lwz r20, 0x4c(r25)
/* 802E7AC0  7F A3 EB 78 */	mr r3, r29
/* 802E7AC4  48 08 11 21 */	bl strlen
/* 802E7AC8  7C 65 1B 78 */	mr r5, r3
/* 802E7ACC  7E 83 A3 78 */	mr r3, r20
/* 802E7AD0  FC 20 F0 90 */	fmr f1, f30
/* 802E7AD4  FC 40 E8 90 */	fmr f2, f29
/* 802E7AD8  FC 60 E0 90 */	fmr f3, f28
/* 802E7ADC  FC 80 D8 90 */	fmr f4, f27
/* 802E7AE0  7F A4 EB 78 */	mr r4, r29
/* 802E7AE4  38 C0 00 01 */	li r6, 1
/* 802E7AE8  4B FF 73 41 */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 802E7AEC  48 00 00 60 */	b lbl_802E7B4C
lbl_802E7AF0:
/* 802E7AF0  80 6D 8F A8 */	lwz r3, sDirectPrint__14JUTDirectPrint(r13)
/* 802E7AF4  80 19 00 40 */	lwz r0, 0x40(r25)
/* 802E7AF8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802E7AFC  80 19 00 44 */	lwz r0, 0x44(r25)
/* 802E7B00  C8 42 C7 40 */	lfd f2, lit_2471(r2)
/* 802E7B04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E7B08  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802E7B0C  3C A0 43 30 */	lis r5, 0x4330
/* 802E7B10  90 A1 02 28 */	stw r5, 0x228(r1)
/* 802E7B14  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802E7B18  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E7B1C  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 802E7B20  90 01 02 24 */	stw r0, 0x224(r1)
/* 802E7B24  90 A1 02 20 */	stw r5, 0x220(r1)
/* 802E7B28  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 802E7B2C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802E7B30  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802E7B34  EC 01 00 2A */	fadds f0, f1, f0
/* 802E7B38  FC 00 00 1E */	fctiwz f0, f0
/* 802E7B3C  D8 01 02 18 */	stfd f0, 0x218(r1)
/* 802E7B40  80 A1 02 1C */	lwz r5, 0x21c(r1)
/* 802E7B44  7F A6 EB 78 */	mr r6, r29
/* 802E7B48  4B FF CB 91 */	bl drawString__14JUTDirectPrintFUsUsPc
lbl_802E7B4C:
/* 802E7B4C  38 7C 00 01 */	addi r3, r28, 1
/* 802E7B50  7C 15 18 50 */	subf r0, r21, r3
/* 802E7B54  7C 00 B0 14 */	addc r0, r0, r22
/* 802E7B58  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7B5C  7C 60 00 78 */	andc r0, r3, r0
/* 802E7B60  7C 1C 03 78 */	mr r28, r0
/* 802E7B64  3B 7B 00 01 */	addi r27, r27, 1
/* 802E7B68  7C 1B B8 40 */	cmplw r27, r23
/* 802E7B6C  40 80 00 0C */	bge lbl_802E7B78
/* 802E7B70  7C 00 C0 00 */	cmpw r0, r24
/* 802E7B74  40 82 FE CC */	bne lbl_802E7A40
lbl_802E7B78:
/* 802E7B78  E3 E1 02 A8 */	psq_l f31, 680(r1), 0, 0 /* qr0 */
/* 802E7B7C  CB E1 02 A0 */	lfd f31, 0x2a0(r1)
/* 802E7B80  E3 C1 02 98 */	psq_l f30, 664(r1), 0, 0 /* qr0 */
/* 802E7B84  CB C1 02 90 */	lfd f30, 0x290(r1)
/* 802E7B88  E3 A1 02 88 */	psq_l f29, 648(r1), 0, 0 /* qr0 */
/* 802E7B8C  CB A1 02 80 */	lfd f29, 0x280(r1)
/* 802E7B90  E3 81 02 78 */	psq_l f28, 632(r1), 0, 0 /* qr0 */
/* 802E7B94  CB 81 02 70 */	lfd f28, 0x270(r1)
/* 802E7B98  E3 61 02 68 */	psq_l f27, 616(r1), 0, 0 /* qr0 */
/* 802E7B9C  CB 61 02 60 */	lfd f27, 0x260(r1)
/* 802E7BA0  39 61 02 60 */	addi r11, r1, 0x260
/* 802E7BA4  48 07 A6 61 */	bl _restgpr_20
/* 802E7BA8  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 802E7BAC  7C 08 03 A6 */	mtlr r0
/* 802E7BB0  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 802E7BB4  4E 80 00 20 */	blr 
