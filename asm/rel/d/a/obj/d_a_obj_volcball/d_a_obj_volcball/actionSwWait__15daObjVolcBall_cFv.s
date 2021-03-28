lbl_80D2267C:
/* 80D2267C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D22680  7C 08 02 A6 */	mflr r0
/* 80D22684  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D22688  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80D2268C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80D22690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D22694  7C 7F 1B 78 */	mr r31, r3
/* 80D22698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2269C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D226A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D226A4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D226A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D226AC  7C 05 07 74 */	extsb r5, r0
/* 80D226B0  4B 31 2C B0 */	b isSwitch__10dSv_info_cCFii
/* 80D226B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D226B8  41 82 00 50 */	beq lbl_80D22708
/* 80D226BC  38 00 00 02 */	li r0, 2
/* 80D226C0  98 1F 06 01 */	stb r0, 0x601(r31)
/* 80D226C4  7F E3 FB 78 */	mr r3, r31
/* 80D226C8  4B FF F4 51 */	bl getData__15daObjVolcBall_cFv
/* 80D226CC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80D226D0  3C 60 80 D2 */	lis r3, lit_3715@ha
/* 80D226D4  C0 03 3E 0C */	lfs f0, lit_3715@l(r3)
/* 80D226D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D226DC  4B 54 52 B0 */	b cM_rndFX__Ff
/* 80D226E0  FF E0 08 90 */	fmr f31, f1
/* 80D226E4  7F E3 FB 78 */	mr r3, r31
/* 80D226E8  4B FF F4 31 */	bl getData__15daObjVolcBall_cFv
/* 80D226EC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80D226F0  3C 60 80 D2 */	lis r3, lit_3715@ha
/* 80D226F4  C0 03 3E 0C */	lfs f0, lit_3715@l(r3)
/* 80D226F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D226FC  EC 20 F8 2A */	fadds f1, f0, f31
/* 80D22700  4B 63 F9 AC */	b __cvt_fp2unsigned
/* 80D22704  90 7F 06 04 */	stw r3, 0x604(r31)
lbl_80D22708:
/* 80D22708  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80D2270C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80D22710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22714  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D22718  7C 08 03 A6 */	mtlr r0
/* 80D2271C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D22720  4E 80 00 20 */	blr 
