lbl_80D22724:
/* 80D22724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D22728  7C 08 02 A6 */	mflr r0
/* 80D2272C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D22730  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80D22734  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80D22738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2273C  7C 7F 1B 78 */	mr r31, r3
/* 80D22740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D22744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D22748  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D2274C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D22750  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D22754  7C 05 07 74 */	extsb r5, r0
/* 80D22758  4B 31 2C 08 */	b isSwitch__10dSv_info_cCFii
/* 80D2275C  2C 03 00 00 */	cmpwi r3, 0
/* 80D22760  40 82 00 0C */	bne lbl_80D2276C
/* 80D22764  38 00 00 01 */	li r0, 1
/* 80D22768  98 1F 06 01 */	stb r0, 0x601(r31)
lbl_80D2276C:
/* 80D2276C  38 7F 06 04 */	addi r3, r31, 0x604
/* 80D22770  48 00 16 19 */	bl func_80D23D88
/* 80D22774  28 03 00 00 */	cmplwi r3, 0
/* 80D22778  40 82 00 50 */	bne lbl_80D227C8
/* 80D2277C  7F E3 FB 78 */	mr r3, r31
/* 80D22780  4B FF F3 99 */	bl getData__15daObjVolcBall_cFv
/* 80D22784  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80D22788  3C 60 80 D2 */	lis r3, lit_3715@ha
/* 80D2278C  C0 03 3E 0C */	lfs f0, lit_3715@l(r3)
/* 80D22790  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D22794  4B 54 51 F8 */	b cM_rndFX__Ff
/* 80D22798  FF E0 08 90 */	fmr f31, f1
/* 80D2279C  7F E3 FB 78 */	mr r3, r31
/* 80D227A0  4B FF F3 79 */	bl getData__15daObjVolcBall_cFv
/* 80D227A4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80D227A8  3C 60 80 D2 */	lis r3, lit_3715@ha
/* 80D227AC  C0 03 3E 0C */	lfs f0, lit_3715@l(r3)
/* 80D227B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D227B4  EC 20 F8 2A */	fadds f1, f0, f31
/* 80D227B8  4B 63 F8 F4 */	b __cvt_fp2unsigned
/* 80D227BC  90 7F 06 04 */	stw r3, 0x604(r31)
/* 80D227C0  7F E3 FB 78 */	mr r3, r31
/* 80D227C4  4B FF FD B9 */	bl initActionWarning__15daObjVolcBall_cFv
lbl_80D227C8:
/* 80D227C8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80D227CC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80D227D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D227D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D227D8  7C 08 03 A6 */	mtlr r0
/* 80D227DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D227E0  4E 80 00 20 */	blr 
