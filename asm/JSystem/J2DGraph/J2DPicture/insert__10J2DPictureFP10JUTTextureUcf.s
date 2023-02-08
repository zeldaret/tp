lbl_802FD524:
/* 802FD524  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802FD528  7C 08 02 A6 */	mflr r0
/* 802FD52C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FD530  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802FD534  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802FD538  39 61 00 40 */	addi r11, r1, 0x40
/* 802FD53C  48 06 4C A1 */	bl _savegpr_29
/* 802FD540  7C 7D 1B 78 */	mr r29, r3
/* 802FD544  7C 9E 23 79 */	or. r30, r4, r4
/* 802FD548  7C BF 2B 78 */	mr r31, r5
/* 802FD54C  FF E0 08 90 */	fmr f31, f1
/* 802FD550  41 82 00 24 */	beq lbl_802FD574
/* 802FD554  88 7D 01 08 */	lbz r3, 0x108(r29)
/* 802FD558  28 03 00 02 */	cmplwi r3, 2
/* 802FD55C  40 80 00 18 */	bge lbl_802FD574
/* 802FD560  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802FD564  28 00 00 02 */	cmplwi r0, 2
/* 802FD568  40 80 00 0C */	bge lbl_802FD574
/* 802FD56C  7C 00 18 40 */	cmplw r0, r3
/* 802FD570  40 81 00 0C */	ble lbl_802FD57C
lbl_802FD574:
/* 802FD574  38 60 00 00 */	li r3, 0
/* 802FD578  48 00 01 5C */	b lbl_802FD6D4
lbl_802FD57C:
/* 802FD57C  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 802FD580  28 03 00 00 */	cmplwi r3, 0
/* 802FD584  41 82 00 24 */	beq lbl_802FD5A8
/* 802FD588  88 1D 01 09 */	lbz r0, 0x109(r29)
/* 802FD58C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802FD590  41 82 00 18 */	beq lbl_802FD5A8
/* 802FD594  38 80 00 01 */	li r4, 1
/* 802FD598  4B FE 0C 9D */	bl __dt__10JUTTextureFv
/* 802FD59C  88 1D 01 09 */	lbz r0, 0x109(r29)
/* 802FD5A0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802FD5A4  98 1D 01 09 */	stb r0, 0x109(r29)
lbl_802FD5A8:
/* 802FD5A8  38 A0 00 01 */	li r5, 1
/* 802FD5AC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 802FD5B0  48 00 00 28 */	b lbl_802FD5D8
lbl_802FD5B4:
/* 802FD5B4  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802FD5B8  7C 9D 02 14 */	add r4, r29, r0
/* 802FD5BC  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 802FD5C0  90 04 01 00 */	stw r0, 0x100(r4)
/* 802FD5C4  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 802FD5C8  D0 04 01 1C */	stfs f0, 0x11c(r4)
/* 802FD5CC  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 802FD5D0  D0 04 01 24 */	stfs f0, 0x124(r4)
/* 802FD5D4  38 A5 FF FF */	addi r5, r5, -1
lbl_802FD5D8:
/* 802FD5D8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802FD5DC  7C 00 18 40 */	cmplw r0, r3
/* 802FD5E0  41 81 FF D4 */	bgt lbl_802FD5B4
/* 802FD5E4  38 00 00 01 */	li r0, 1
/* 802FD5E8  7C 05 18 30 */	slw r5, r0, r3
/* 802FD5EC  38 05 FF FF */	addi r0, r5, -1
/* 802FD5F0  88 9D 01 09 */	lbz r4, 0x109(r29)
/* 802FD5F4  7C 83 00 38 */	and r3, r4, r0
/* 802FD5F8  7C 80 00 78 */	andc r0, r4, r0
/* 802FD5FC  54 00 08 3C */	slwi r0, r0, 1
/* 802FD600  7C 60 03 78 */	or r0, r3, r0
/* 802FD604  98 1D 01 09 */	stb r0, 0x109(r29)
/* 802FD608  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 802FD60C  7C 7D 02 14 */	add r3, r29, r0
/* 802FD610  93 C3 01 00 */	stw r30, 0x100(r3)
/* 802FD614  88 1D 01 09 */	lbz r0, 0x109(r29)
/* 802FD618  7C 00 28 78 */	andc r0, r0, r5
/* 802FD61C  98 1D 01 09 */	stb r0, 0x109(r29)
/* 802FD620  D3 E3 01 1C */	stfs f31, 0x11c(r3)
/* 802FD624  D3 E3 01 24 */	stfs f31, 0x124(r3)
/* 802FD628  88 1D 01 08 */	lbz r0, 0x108(r29)
/* 802FD62C  28 00 00 00 */	cmplwi r0, 0
/* 802FD630  40 82 00 84 */	bne lbl_802FD6B4
/* 802FD634  34 1D 01 00 */	addic. r0, r29, 0x100
/* 802FD638  41 82 00 7C */	beq lbl_802FD6B4
/* 802FD63C  80 7D 01 00 */	lwz r3, 0x100(r29)
/* 802FD640  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802FD644  A0 83 00 04 */	lhz r4, 4(r3)
/* 802FD648  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FD64C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FD650  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FD654  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FD658  C8 22 C8 70 */	lfd f1, lit_2021(r2)
/* 802FD65C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FD660  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FD664  3C 60 43 30 */	lis r3, 0x4330
/* 802FD668  90 61 00 18 */	stw r3, 0x18(r1)
/* 802FD66C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FD670  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FD674  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FD678  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802FD67C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD680  90 61 00 20 */	stw r3, 0x20(r1)
/* 802FD684  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FD688  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FD68C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FD690  7F A3 EB 78 */	mr r3, r29
/* 802FD694  38 81 00 08 */	addi r4, r1, 8
/* 802FD698  4B FF 96 81 */	bl func_802F6D18
/* 802FD69C  7F A3 EB 78 */	mr r3, r29
/* 802FD6A0  38 80 00 00 */	li r4, 0
/* 802FD6A4  38 A0 00 0F */	li r5, 0xf
/* 802FD6A8  38 C0 00 00 */	li r6, 0
/* 802FD6AC  38 E0 00 00 */	li r7, 0
/* 802FD6B0  48 00 16 95 */	bl setTexCoord__10J2DPictureFPC10JUTTexture10J2DBinding9J2DMirrorb
lbl_802FD6B4:
/* 802FD6B4  88 7D 01 08 */	lbz r3, 0x108(r29)
/* 802FD6B8  38 03 00 01 */	addi r0, r3, 1
/* 802FD6BC  98 1D 01 08 */	stb r0, 0x108(r29)
/* 802FD6C0  7F A3 EB 78 */	mr r3, r29
/* 802FD6C4  48 00 14 01 */	bl setBlendKonstColor__10J2DPictureFv
/* 802FD6C8  7F A3 EB 78 */	mr r3, r29
/* 802FD6CC  48 00 14 C9 */	bl setBlendKonstAlpha__10J2DPictureFv
/* 802FD6D0  38 60 00 01 */	li r3, 1
lbl_802FD6D4:
/* 802FD6D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802FD6D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802FD6DC  39 61 00 40 */	addi r11, r1, 0x40
/* 802FD6E0  48 06 4B 49 */	bl _restgpr_29
/* 802FD6E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802FD6E8  7C 08 03 A6 */	mtlr r0
/* 802FD6EC  38 21 00 50 */	addi r1, r1, 0x50
/* 802FD6F0  4E 80 00 20 */	blr 
