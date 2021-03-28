lbl_801BFD5C:
/* 801BFD5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801BFD60  7C 08 02 A6 */	mflr r0
/* 801BFD64  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BFD68  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801BFD6C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801BFD70  39 61 00 30 */	addi r11, r1, 0x30
/* 801BFD74  48 1A 24 65 */	bl _savegpr_28
/* 801BFD78  7C 7F 1B 78 */	mr r31, r3
/* 801BFD7C  4B FF D4 59 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFD80  7C 60 07 74 */	extsb r0, r3
/* 801BFD84  54 00 10 3A */	slwi r0, r0, 2
/* 801BFD88  7C 7F 02 14 */	add r3, r31, r0
/* 801BFD8C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFD90  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BFD94  C0 22 A6 14 */	lfs f1, lit_4313(r2)
/* 801BFD98  C0 42 A5 EC */	lfs f2, lit_3963(r2)
/* 801BFD9C  38 A0 00 00 */	li r5, 0
/* 801BFDA0  48 09 4A 2D */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BFDA4  7C 7C 1B 78 */	mr r28, r3
/* 801BFDA8  88 7F 01 71 */	lbz r3, 0x171(r31)
/* 801BFDAC  88 1F 01 6E */	lbz r0, 0x16e(r31)
/* 801BFDB0  7C 03 00 50 */	subf r0, r3, r0
/* 801BFDB4  7C 00 07 74 */	extsb r0, r0
/* 801BFDB8  54 00 10 3A */	slwi r0, r0, 2
/* 801BFDBC  7C 7F 02 14 */	add r3, r31, r0
/* 801BFDC0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFDC4  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BFDC8  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BFDCC  C0 42 A6 14 */	lfs f2, lit_4313(r2)
/* 801BFDD0  38 A0 00 00 */	li r5, 0
/* 801BFDD4  48 09 49 F9 */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BFDD8  7C 7D 1B 78 */	mr r29, r3
/* 801BFDDC  7F E3 FB 78 */	mr r3, r31
/* 801BFDE0  4B FF D3 F5 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFDE4  7C 60 07 74 */	extsb r0, r3
/* 801BFDE8  54 00 10 3A */	slwi r0, r0, 2
/* 801BFDEC  7C 7F 02 14 */	add r3, r31, r0
/* 801BFDF0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFDF4  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BFDF8  38 A0 00 80 */	li r5, 0x80
/* 801BFDFC  38 C0 00 FF */	li r6, 0xff
/* 801BFE00  38 E0 00 00 */	li r7, 0
/* 801BFE04  48 09 5A 75 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801BFE08  7C 7E 1B 78 */	mr r30, r3
/* 801BFE0C  88 7F 01 71 */	lbz r3, 0x171(r31)
/* 801BFE10  88 1F 01 6E */	lbz r0, 0x16e(r31)
/* 801BFE14  7C 03 00 50 */	subf r0, r3, r0
/* 801BFE18  7C 00 07 74 */	extsb r0, r0
/* 801BFE1C  54 00 10 3A */	slwi r0, r0, 2
/* 801BFE20  7C 7F 02 14 */	add r3, r31, r0
/* 801BFE24  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFE28  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BFE2C  38 A0 00 FF */	li r5, 0xff
/* 801BFE30  38 C0 00 80 */	li r6, 0x80
/* 801BFE34  38 E0 00 00 */	li r7, 0
/* 801BFE38  48 09 5A 41 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801BFE3C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801BFE40  28 00 00 01 */	cmplwi r0, 1
/* 801BFE44  40 82 01 18 */	bne lbl_801BFF5C
/* 801BFE48  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801BFE4C  28 00 00 01 */	cmplwi r0, 1
/* 801BFE50  40 82 01 0C */	bne lbl_801BFF5C
/* 801BFE54  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801BFE58  28 00 00 01 */	cmplwi r0, 1
/* 801BFE5C  40 82 01 00 */	bne lbl_801BFF5C
/* 801BFE60  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BFE64  28 00 00 01 */	cmplwi r0, 1
/* 801BFE68  40 82 00 F4 */	bne lbl_801BFF5C
/* 801BFE6C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801BFE70  48 09 57 59 */	bl show__13CPaneMgrAlphaFv
/* 801BFE74  7F E3 FB 78 */	mr r3, r31
/* 801BFE78  4B FF D3 5D */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFE7C  7C 60 07 74 */	extsb r0, r3
/* 801BFE80  54 00 10 3A */	slwi r0, r0, 2
/* 801BFE84  7C 7F 02 14 */	add r3, r31, r0
/* 801BFE88  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFE8C  80 63 00 04 */	lwz r3, 4(r3)
/* 801BFE90  C3 E3 00 D8 */	lfs f31, 0xd8(r3)
/* 801BFE94  7F E3 FB 78 */	mr r3, r31
/* 801BFE98  4B FF D3 3D */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BFE9C  7C 60 07 74 */	extsb r0, r3
/* 801BFEA0  54 00 10 3A */	slwi r0, r0, 2
/* 801BFEA4  7C 7F 02 14 */	add r3, r31, r0
/* 801BFEA8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFEAC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BFEB0  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 801BFEB4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801BFEB8  80 63 00 04 */	lwz r3, 4(r3)
/* 801BFEBC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801BFEC0  D3 E3 00 D8 */	stfs f31, 0xd8(r3)
/* 801BFEC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BFEC8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BFECC  7D 89 03 A6 */	mtctr r12
/* 801BFED0  4E 80 04 21 */	bctrl 
/* 801BFED4  7F E3 FB 78 */	mr r3, r31
/* 801BFED8  4B FF D3 11 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BFEDC  7C 60 07 74 */	extsb r0, r3
/* 801BFEE0  54 00 10 3A */	slwi r0, r0, 2
/* 801BFEE4  7C 7F 02 14 */	add r3, r31, r0
/* 801BFEE8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801BFEEC  38 61 00 08 */	addi r3, r1, 8
/* 801BFEF0  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BFEF4  38 C0 00 00 */	li r6, 0
/* 801BFEF8  38 E0 00 00 */	li r7, 0
/* 801BFEFC  48 09 4F C1 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BFF00  80 61 00 08 */	lwz r3, 8(r1)
/* 801BFF04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BFF08  90 61 00 14 */	stw r3, 0x14(r1)
/* 801BFF0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BFF10  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BFF14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BFF18  7F E3 FB 78 */	mr r3, r31
/* 801BFF1C  4B FF D2 CD */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BFF20  7C 60 07 74 */	extsb r0, r3
/* 801BFF24  54 00 10 3A */	slwi r0, r0, 2
/* 801BFF28  7C 7F 02 14 */	add r3, r31, r0
/* 801BFF2C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BFF30  80 83 00 04 */	lwz r4, 4(r3)
/* 801BFF34  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BFF38  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BFF3C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801BFF40  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BFF44  EC 21 00 2A */	fadds f1, f1, f0
/* 801BFF48  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801BFF4C  38 A0 00 01 */	li r5, 1
/* 801BFF50  4B FD 51 A5 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BFF54  38 00 00 00 */	li r0, 0
/* 801BFF58  98 1F 01 7D */	stb r0, 0x17d(r31)
lbl_801BFF5C:
/* 801BFF5C  7F E3 FB 78 */	mr r3, r31
/* 801BFF60  4B FF D2 A9 */	bl iconMoveCalc__12dMenu_Dmap_cFv
/* 801BFF64  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801BFF68  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801BFF6C  39 61 00 30 */	addi r11, r1, 0x30
/* 801BFF70  48 1A 22 B5 */	bl _restgpr_28
/* 801BFF74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801BFF78  7C 08 03 A6 */	mtlr r0
/* 801BFF7C  38 21 00 40 */	addi r1, r1, 0x40
/* 801BFF80  4E 80 00 20 */	blr 
