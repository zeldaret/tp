lbl_801ED93C:
/* 801ED93C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801ED940  7C 08 02 A6 */	mflr r0
/* 801ED944  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ED948  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801ED94C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801ED950  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801ED954  7C 7F 1B 78 */	mr r31, r3
/* 801ED958  80 63 03 70 */	lwz r3, 0x370(r3)
/* 801ED95C  4B FE DB 15 */	bl move__19dMenu_ItemExplain_cFv
/* 801ED960  80 7F 03 70 */	lwz r3, 0x370(r31)
/* 801ED964  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801ED968  28 00 00 00 */	cmplwi r0, 0
/* 801ED96C  40 82 00 40 */	bne lbl_801ED9AC
/* 801ED970  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801ED974  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801ED978  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 801ED97C  28 00 00 01 */	cmplwi r0, 1
/* 801ED980  40 82 00 0C */	bne lbl_801ED98C
/* 801ED984  48 02 F0 81 */	bl warpInProc__13dMeter2Info_cFv
/* 801ED988  48 00 00 10 */	b lbl_801ED998
lbl_801ED98C:
/* 801ED98C  28 00 00 02 */	cmplwi r0, 2
/* 801ED990  40 82 00 08 */	bne lbl_801ED998
/* 801ED994  48 02 F0 71 */	bl warpInProc__13dMeter2Info_cFv
lbl_801ED998:
/* 801ED998  38 00 00 00 */	li r0, 0
/* 801ED99C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801ED9A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801ED9A4  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 801ED9A8  98 1F 06 B0 */	stb r0, 0x6b0(r31)
lbl_801ED9AC:
/* 801ED9AC  80 7F 03 70 */	lwz r3, 0x370(r31)
/* 801ED9B0  4B FE ED FD */	bl getAlphaRatio__19dMenu_ItemExplain_cFv
/* 801ED9B4  FF E0 08 90 */	fmr f31, f1
/* 801ED9B8  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801ED9BC  48 06 7E 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801ED9C0  80 7F 01 B8 */	lwz r3, 0x1b8(r31)
/* 801ED9C4  C0 22 AA 10 */	lfs f1, lit_5683(r2)
/* 801ED9C8  C0 02 A9 9C */	lfs f0, lit_4305(r2)
/* 801ED9CC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801ED9D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801ED9D4  FC 00 00 1E */	fctiwz f0, f0
/* 801ED9D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801ED9DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801ED9E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED9E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ED9E8  7D 89 03 A6 */	mtctr r12
/* 801ED9EC  4E 80 04 21 */	bctrl 
/* 801ED9F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801ED9F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801ED9F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801ED9FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EDA00  7C 08 03 A6 */	mtlr r0
/* 801EDA04  38 21 00 30 */	addi r1, r1, 0x30
/* 801EDA08  4E 80 00 20 */	blr 
