lbl_800AC754:
/* 800AC754  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800AC758  7C 08 02 A6 */	mflr r0
/* 800AC75C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800AC760  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800AC764  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800AC768  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800AC76C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 800AC770  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 800AC774  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 800AC778  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 800AC77C  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 800AC780  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 800AC784  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 800AC788  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 800AC78C  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 800AC790  39 61 00 50 */	addi r11, r1, 0x50
/* 800AC794  48 2B 5A 35 */	bl _savegpr_24
/* 800AC798  7C 78 1B 78 */	mr r24, r3
/* 800AC79C  7C 99 23 78 */	mr r25, r4
/* 800AC7A0  7C BA 2B 78 */	mr r26, r5
/* 800AC7A4  7C DB 33 78 */	mr r27, r6
/* 800AC7A8  7C FC 3B 78 */	mr r28, r7
/* 800AC7AC  FF 40 08 90 */	fmr f26, f1
/* 800AC7B0  FF 60 10 90 */	fmr f27, f2
/* 800AC7B4  FF A0 18 90 */	fmr f29, f3
/* 800AC7B8  7D 1D 43 78 */	mr r29, r8
/* 800AC7BC  3B F8 1F D0 */	addi r31, r24, 0x1fd0
/* 800AC7C0  3B D8 1F E8 */	addi r30, r24, 0x1fe8
/* 800AC7C4  88 03 2F 8C */	lbz r0, 0x2f8c(r3)
/* 800AC7C8  28 00 00 00 */	cmplwi r0, 0
/* 800AC7CC  40 82 00 0C */	bne lbl_800AC7D8
/* 800AC7D0  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800AC7D4  48 00 00 2C */	b lbl_800AC800
lbl_800AC7D8:
/* 800AC7D8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 800AC7DC  A8 1F 00 08 */	lha r0, 8(r31)
/* 800AC7E0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AC7E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC7E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AC7EC  3C 00 43 30 */	lis r0, 0x4330
/* 800AC7F0  90 01 00 08 */	stw r0, 8(r1)
/* 800AC7F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AC7F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AC7FC  EF E2 00 24 */	fdivs f31, f2, f0
lbl_800AC800:
/* 800AC800  7F 03 C3 78 */	mr r3, r24
/* 800AC804  FC 20 D0 90 */	fmr f1, f26
/* 800AC808  4B FF FF 31 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 800AC80C  A8 19 00 06 */	lha r0, 6(r25)
/* 800AC810  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AC814  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC818  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AC81C  3C 60 43 30 */	lis r3, 0x4330
/* 800AC820  90 61 00 10 */	stw r3, 0x10(r1)
/* 800AC824  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800AC828  EC 40 08 28 */	fsubs f2, f0, f1
/* 800AC82C  A8 1B 00 06 */	lha r0, 6(r27)
/* 800AC830  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC834  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800AC838  90 61 00 18 */	stw r3, 0x18(r1)
/* 800AC83C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800AC840  EF 80 08 28 */	fsubs f28, f0, f1
/* 800AC844  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AC848  EF C0 10 24 */	fdivs f30, f0, f2
/* 800AC84C  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 800AC850  EC 00 E0 24 */	fdivs f0, f0, f28
/* 800AC854  EC 00 D8 28 */	fsubs f0, f0, f27
/* 800AC858  EC 1A 00 32 */	fmuls f0, f26, f0
/* 800AC85C  EF BB 00 2A */	fadds f29, f27, f0
/* 800AC860  7F 03 C3 78 */	mr r3, r24
/* 800AC864  7F E4 FB 78 */	mr r4, r31
/* 800AC868  88 B9 00 04 */	lbz r5, 4(r25)
/* 800AC86C  38 C0 00 00 */	li r6, 0
/* 800AC870  FC 00 10 1E */	fctiwz f0, f2
/* 800AC874  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800AC878  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 800AC87C  FC 20 E8 90 */	fmr f1, f29
/* 800AC880  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800AC884  4B FF FB 11 */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC888  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800AC88C  D0 19 00 08 */	stfs f0, 8(r25)
/* 800AC890  7F 03 C3 78 */	mr r3, r24
/* 800AC894  7F C4 F3 78 */	mr r4, r30
/* 800AC898  88 BB 00 04 */	lbz r5, 4(r27)
/* 800AC89C  38 C0 00 00 */	li r6, 0
/* 800AC8A0  FC 00 E0 1E */	fctiwz f0, f28
/* 800AC8A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800AC8A8  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 800AC8AC  EC 1D 07 32 */	fmuls f0, f29, f28
/* 800AC8B0  EC 3E 00 32 */	fmuls f1, f30, f0
/* 800AC8B4  EC 5F 07 32 */	fmuls f2, f31, f28
/* 800AC8B8  4B FF FA DD */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC8BC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800AC8C0  D0 1B 00 08 */	stfs f0, 8(r27)
/* 800AC8C4  93 38 1F 2C */	stw r25, 0x1f2c(r24)
/* 800AC8C8  93 78 1F 34 */	stw r27, 0x1f34(r24)
/* 800AC8CC  28 1A 00 00 */	cmplwi r26, 0
/* 800AC8D0  41 82 00 60 */	beq lbl_800AC930
/* 800AC8D4  A8 1A 00 06 */	lha r0, 6(r26)
/* 800AC8D8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AC8DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC8E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800AC8E4  3C 00 43 30 */	lis r0, 0x4330
/* 800AC8E8  90 01 00 28 */	stw r0, 0x28(r1)
/* 800AC8EC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800AC8F0  EC 40 08 28 */	fsubs f2, f0, f1
/* 800AC8F4  93 58 1F 44 */	stw r26, 0x1f44(r24)
/* 800AC8F8  7F 03 C3 78 */	mr r3, r24
/* 800AC8FC  38 98 20 18 */	addi r4, r24, 0x2018
/* 800AC900  88 BA 00 04 */	lbz r5, 4(r26)
/* 800AC904  38 C0 00 00 */	li r6, 0
/* 800AC908  FC 00 10 1E */	fctiwz f0, f2
/* 800AC90C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800AC910  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 800AC914  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 800AC918  EC 3E 00 32 */	fmuls f1, f30, f0
/* 800AC91C  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800AC920  4B FF FA 75 */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC924  C0 18 20 28 */	lfs f0, 0x2028(r24)
/* 800AC928  D0 1A 00 08 */	stfs f0, 8(r26)
/* 800AC92C  48 00 00 08 */	b lbl_800AC934
lbl_800AC930:
/* 800AC930  93 38 1F 44 */	stw r25, 0x1f44(r24)
lbl_800AC934:
/* 800AC934  28 1C 00 00 */	cmplwi r28, 0
/* 800AC938  41 82 00 60 */	beq lbl_800AC998
/* 800AC93C  A8 1C 00 06 */	lha r0, 6(r28)
/* 800AC940  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AC944  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC948  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800AC94C  3C 00 43 30 */	lis r0, 0x4330
/* 800AC950  90 01 00 28 */	stw r0, 0x28(r1)
/* 800AC954  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800AC958  EC 40 08 28 */	fsubs f2, f0, f1
/* 800AC95C  93 98 1F 4C */	stw r28, 0x1f4c(r24)
/* 800AC960  7F 03 C3 78 */	mr r3, r24
/* 800AC964  38 98 20 30 */	addi r4, r24, 0x2030
/* 800AC968  88 BC 00 04 */	lbz r5, 4(r28)
/* 800AC96C  38 C0 00 00 */	li r6, 0
/* 800AC970  FC 00 10 1E */	fctiwz f0, f2
/* 800AC974  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800AC978  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 800AC97C  EC 1D 00 B2 */	fmuls f0, f29, f2
/* 800AC980  EC 3E 00 32 */	fmuls f1, f30, f0
/* 800AC984  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800AC988  4B FF FA 0D */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800AC98C  C0 18 20 40 */	lfs f0, 0x2040(r24)
/* 800AC990  D0 1C 00 08 */	stfs f0, 8(r28)
/* 800AC994  48 00 00 08 */	b lbl_800AC99C
lbl_800AC998:
/* 800AC998  93 78 1F 4C */	stw r27, 0x1f4c(r24)
lbl_800AC99C:
/* 800AC99C  2C 1D 00 04 */	cmpwi r29, 4
/* 800AC9A0  41 82 00 0C */	beq lbl_800AC9AC
/* 800AC9A4  2C 1D 00 02 */	cmpwi r29, 2
/* 800AC9A8  40 82 00 14 */	bne lbl_800AC9BC
lbl_800AC9AC:
/* 800AC9AC  7F 03 C3 78 */	mr r3, r24
/* 800AC9B0  38 80 00 00 */	li r4, 0
/* 800AC9B4  48 01 28 51 */	bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
/* 800AC9B8  48 00 00 10 */	b lbl_800AC9C8
lbl_800AC9BC:
/* 800AC9BC  7F 03 C3 78 */	mr r3, r24
/* 800AC9C0  38 80 00 01 */	li r4, 1
/* 800AC9C4  48 01 28 41 */	bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
lbl_800AC9C8:
/* 800AC9C8  9B B8 2F 8C */	stb r29, 0x2f8c(r24)
/* 800AC9CC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800AC9D0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800AC9D4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 800AC9D8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800AC9DC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 800AC9E0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 800AC9E4  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 800AC9E8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 800AC9EC  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 800AC9F0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 800AC9F4  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 800AC9F8  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 800AC9FC  39 61 00 50 */	addi r11, r1, 0x50
/* 800ACA00  48 2B 58 15 */	bl _restgpr_24
/* 800ACA04  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800ACA08  7C 08 03 A6 */	mtlr r0
/* 800ACA0C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800ACA10  4E 80 00 20 */	blr 
