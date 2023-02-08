lbl_801D564C:
/* 801D564C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801D5650  7C 08 02 A6 */	mflr r0
/* 801D5654  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801D5658  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801D565C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801D5660  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801D5664  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 801D5668  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801D566C  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 801D5670  39 61 00 80 */	addi r11, r1, 0x80
/* 801D5674  48 18 CB 55 */	bl _savegpr_24
/* 801D5678  7C 7C 1B 78 */	mr r28, r3
/* 801D567C  4B FF D4 E1 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D5680  38 A0 00 FF */	li r5, 0xff
/* 801D5684  98 A1 00 24 */	stb r5, 0x24(r1)
/* 801D5688  98 A1 00 25 */	stb r5, 0x25(r1)
/* 801D568C  38 80 00 00 */	li r4, 0
/* 801D5690  98 81 00 26 */	stb r4, 0x26(r1)
/* 801D5694  38 60 00 32 */	li r3, 0x32
/* 801D5698  98 61 00 27 */	stb r3, 0x27(r1)
/* 801D569C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D56A0  90 01 00 28 */	stw r0, 0x28(r1)
/* 801D56A4  98 A1 00 20 */	stb r5, 0x20(r1)
/* 801D56A8  98 81 00 21 */	stb r4, 0x21(r1)
/* 801D56AC  98 A1 00 22 */	stb r5, 0x22(r1)
/* 801D56B0  98 61 00 23 */	stb r3, 0x23(r1)
/* 801D56B4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801D56B8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801D56BC  98 81 00 1C */	stb r4, 0x1c(r1)
/* 801D56C0  98 A1 00 1D */	stb r5, 0x1d(r1)
/* 801D56C4  98 A1 00 1E */	stb r5, 0x1e(r1)
/* 801D56C8  98 61 00 1F */	stb r3, 0x1f(r1)
/* 801D56CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801D56D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 801D56D4  98 A1 00 18 */	stb r5, 0x18(r1)
/* 801D56D8  98 81 00 19 */	stb r4, 0x19(r1)
/* 801D56DC  98 81 00 1A */	stb r4, 0x1a(r1)
/* 801D56E0  98 61 00 1B */	stb r3, 0x1b(r1)
/* 801D56E4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801D56E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D56EC  98 81 00 14 */	stb r4, 0x14(r1)
/* 801D56F0  98 A1 00 15 */	stb r5, 0x15(r1)
/* 801D56F4  98 81 00 16 */	stb r4, 0x16(r1)
/* 801D56F8  98 61 00 17 */	stb r3, 0x17(r1)
/* 801D56FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D5700  90 01 00 38 */	stw r0, 0x38(r1)
/* 801D5704  98 81 00 10 */	stb r4, 0x10(r1)
/* 801D5708  98 81 00 11 */	stb r4, 0x11(r1)
/* 801D570C  98 A1 00 12 */	stb r5, 0x12(r1)
/* 801D5710  98 61 00 13 */	stb r3, 0x13(r1)
/* 801D5714  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D5718  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801D571C  98 A1 00 0C */	stb r5, 0xc(r1)
/* 801D5720  98 A1 00 0D */	stb r5, 0xd(r1)
/* 801D5724  98 A1 00 0E */	stb r5, 0xe(r1)
/* 801D5728  98 61 00 0F */	stb r3, 0xf(r1)
/* 801D572C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D5730  90 01 00 40 */	stw r0, 0x40(r1)
/* 801D5734  3B C0 00 00 */	li r30, 0
/* 801D5738  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D573C  3B E3 FC 60 */	addi r31, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D5740  CB E2 A8 08 */	lfd f31, lit_4496(r2)
/* 801D5744  3F 60 43 30 */	lis r27, 0x4330
/* 801D5748  48 00 01 5C */	b lbl_801D58A4
lbl_801D574C:
/* 801D574C  3B A0 00 00 */	li r29, 0
/* 801D5750  48 00 01 24 */	b lbl_801D5874
lbl_801D5754:
/* 801D5754  3B 00 00 07 */	li r24, 7
lbl_801D5758:
/* 801D5758  38 18 12 30 */	addi r0, r24, 0x1230
/* 801D575C  7F 3C 00 AE */	lbzx r25, r28, r0
/* 801D5760  2C 19 00 FF */	cmpwi r25, 0xff
/* 801D5764  41 82 00 FC */	beq lbl_801D5860
/* 801D5768  2C 19 00 07 */	cmpwi r25, 7
/* 801D576C  41 82 00 F4 */	beq lbl_801D5860
/* 801D5770  7F 83 E3 78 */	mr r3, r28
/* 801D5774  4B FF CF C5 */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D5778  C8 42 A8 08 */	lfd f2, lit_4496(r2)
/* 801D577C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 801D5780  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801D5784  3C 00 43 30 */	lis r0, 0x4330
/* 801D5788  90 01 00 48 */	stw r0, 0x48(r1)
/* 801D578C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801D5790  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D5794  EF C0 08 2A */	fadds f30, f0, f1
/* 801D5798  7F 83 E3 78 */	mr r3, r28
/* 801D579C  4B FF CF F5 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D57A0  C8 42 A8 08 */	lfd f2, lit_4496(r2)
/* 801D57A4  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 801D57A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D57AC  3C 00 43 30 */	lis r0, 0x4330
/* 801D57B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 801D57B4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801D57B8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D57BC  EF A0 08 2A */	fadds f29, f0, f1
/* 801D57C0  57 39 10 3A */	slwi r25, r25, 2
/* 801D57C4  7F 5C CA 14 */	add r26, r28, r25
/* 801D57C8  80 7A 0C B4 */	lwz r3, 0xcb4(r26)
/* 801D57CC  38 80 00 00 */	li r4, 0
/* 801D57D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D57D4  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801D57D8  7D 89 03 A6 */	mtctr r12
/* 801D57DC  4E 80 04 21 */	bctrl 
/* 801D57E0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801D57E4  C0 DC 0F 9C */	lfs f6, 0xf9c(r28)
/* 801D57E8  FC 20 F0 90 */	fmr f1, f30
/* 801D57EC  FC 40 E8 90 */	fmr f2, f29
/* 801D57F0  C0 9C 0F BC */	lfs f4, 0xfbc(r28)
/* 801D57F4  C0 7A 0E 8C */	lfs f3, 0xe8c(r26)
/* 801D57F8  C0 1A 0F 0C */	lfs f0, 0xf0c(r26)
/* 801D57FC  EC 03 00 2A */	fadds f0, f3, f0
/* 801D5800  EC 64 00 2A */	fadds f3, f4, f0
/* 801D5804  C0 BC 0F C0 */	lfs f5, 0xfc0(r28)
/* 801D5808  C0 9A 0E AC */	lfs f4, 0xeac(r26)
/* 801D580C  C0 1A 0F 2C */	lfs f0, 0xf2c(r26)
/* 801D5810  EC 04 00 2A */	fadds f0, f4, f0
/* 801D5814  EC 85 00 2A */	fadds f4, f5, f0
/* 801D5818  C0 1A 0E CC */	lfs f0, 0xecc(r26)
/* 801D581C  EC A0 01 B2 */	fmuls f5, f0, f6
/* 801D5820  C0 1A 0E EC */	lfs f0, 0xeec(r26)
/* 801D5824  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801D5828  48 04 8A E1 */	bl dMeter2Info_getPixel__FffffffPC7ResTIMG
/* 801D582C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D5830  41 82 00 30 */	beq lbl_801D5860
/* 801D5834  38 61 00 28 */	addi r3, r1, 0x28
/* 801D5838  7C 03 C8 2E */	lwzx r0, r3, r25
/* 801D583C  90 01 00 08 */	stw r0, 8(r1)
/* 801D5840  C0 02 A7 F0 */	lfs f0, lit_4204(r2)
/* 801D5844  EC 3E 00 28 */	fsubs f1, f30, f0
/* 801D5848  EC 5D 00 28 */	fsubs f2, f29, f0
/* 801D584C  C0 62 A7 F4 */	lfs f3, lit_4205(r2)
/* 801D5850  FC 80 18 90 */	fmr f4, f3
/* 801D5854  38 61 00 08 */	addi r3, r1, 8
/* 801D5858  48 11 42 6D */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 801D585C  48 00 00 0C */	b lbl_801D5868
lbl_801D5860:
/* 801D5860  37 18 FF FF */	addic. r24, r24, -1
/* 801D5864  40 80 FE F4 */	bge lbl_801D5758
lbl_801D5868:
/* 801D5868  88 1F 03 04 */	lbz r0, 0x304(r31)
/* 801D586C  7F A0 EA 14 */	add r29, r0, r29
/* 801D5870  3B BD 00 01 */	addi r29, r29, 1
lbl_801D5874:
/* 801D5874  7F 83 E3 78 */	mr r3, r28
/* 801D5878  4B FF D1 21 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D587C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 801D5880  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D5884  93 61 00 50 */	stw r27, 0x50(r1)
/* 801D5888  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801D588C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801D5890  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801D5894  41 80 FE C0 */	blt lbl_801D5754
/* 801D5898  88 1F 03 04 */	lbz r0, 0x304(r31)
/* 801D589C  7F C0 F2 14 */	add r30, r0, r30
/* 801D58A0  3B DE 00 01 */	addi r30, r30, 1
lbl_801D58A4:
/* 801D58A4  7F 83 E3 78 */	mr r3, r28
/* 801D58A8  4B FF CF B9 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D58AC  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 801D58B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D58B4  93 61 00 50 */	stw r27, 0x50(r1)
/* 801D58B8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801D58BC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801D58C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801D58C4  41 80 FE 88 */	blt lbl_801D574C
/* 801D58C8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801D58CC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801D58D0  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801D58D4  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801D58D8  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 801D58DC  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801D58E0  39 61 00 80 */	addi r11, r1, 0x80
/* 801D58E4  48 18 C9 31 */	bl _restgpr_24
/* 801D58E8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801D58EC  7C 08 03 A6 */	mtlr r0
/* 801D58F0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801D58F4  4E 80 00 20 */	blr 
