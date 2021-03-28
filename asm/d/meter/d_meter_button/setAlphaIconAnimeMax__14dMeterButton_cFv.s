lbl_802093D8:
/* 802093D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802093DC  7C 08 02 A6 */	mflr r0
/* 802093E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802093E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802093E8  7C 7F 1B 78 */	mr r31, r3
/* 802093EC  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802093F0  48 04 C4 39 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802093F4  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802093F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802093FC  41 82 00 64 */	beq lbl_80209460
/* 80209400  88 9F 04 D9 */	lbz r4, 0x4d9(r31)
/* 80209404  28 04 00 FF */	cmplwi r4, 0xff
/* 80209408  41 82 00 30 */	beq lbl_80209438
/* 8020940C  7F E3 FB 78 */	mr r3, r31
/* 80209410  4B FF D9 61 */	bl isFastSet__14dMeterButton_cFi
/* 80209414  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80209418  41 82 00 20 */	beq lbl_80209438
/* 8020941C  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80209420  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80209424  48 04 C3 AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80209428  38 00 00 05 */	li r0, 5
/* 8020942C  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80209430  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80209434  48 00 00 2C */	b lbl_80209460
lbl_80209438:
/* 80209438  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8020943C  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80209440  48 04 C3 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80209444  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80209448  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020944C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80209450  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80209454  80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 80209458  38 A0 00 05 */	li r5, 5
/* 8020945C  48 01 16 49 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80209460:
/* 80209460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80209464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80209468  7C 08 03 A6 */	mtlr r0
/* 8020946C  38 21 00 10 */	addi r1, r1, 0x10
/* 80209470  4E 80 00 20 */	blr 
