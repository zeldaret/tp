lbl_80C8F4A0:
/* 80C8F4A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8F4A4  7C 08 02 A6 */	mflr r0
/* 80C8F4A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8F4AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8F4B0  7C 7F 1B 78 */	mr r31, r3
/* 80C8F4B4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C8F4B8  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8FCCC@ha */
/* 80C8F4BC  38 84 FC CC */	addi r4, r4, l_HIO@l /* 0x80C8FCCC@l */
/* 80C8F4C0  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C8F4C4  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80C8F4C8  4B 5E 12 79 */	bl cLib_chaseF__FPfff
/* 80C8F4CC  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 80C8F4D0  A8 9F 05 E2 */	lha r4, 0x5e2(r31)
/* 80C8F4D4  38 A0 00 01 */	li r5, 1
/* 80C8F4D8  3C C0 80 C9 */	lis r6, lit_3882@ha /* 0x80C8FB58@ha */
/* 80C8F4DC  C0 26 FB 58 */	lfs f1, lit_3882@l(r6)  /* 0x80C8FB58@l */
/* 80C8F4E0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80C8F4E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C8F4E8  FC 00 00 1E */	fctiwz f0, f0
/* 80C8F4EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C8F4F0  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80C8F4F4  38 E0 00 01 */	li r7, 1
/* 80C8F4F8  4B 5E 10 49 */	bl cLib_addCalcAngleS__FPsssss
/* 80C8F4FC  7C 60 07 35 */	extsh. r0, r3
/* 80C8F500  40 82 00 24 */	bne lbl_80C8F524
/* 80C8F504  A8 7F 05 E2 */	lha r3, 0x5e2(r31)
/* 80C8F508  3C 63 00 01 */	addis r3, r3, 1
/* 80C8F50C  38 03 80 00 */	addi r0, r3, -32768
/* 80C8F510  B0 1F 05 E2 */	sth r0, 0x5e2(r31)
/* 80C8F514  38 00 00 00 */	li r0, 0
/* 80C8F518  B0 1F 05 E4 */	sth r0, 0x5e4(r31)
/* 80C8F51C  7F E3 FB 78 */	mr r3, r31
/* 80C8F520  48 00 00 19 */	bl init_modeWait__14daMagLiftRot_cFv
lbl_80C8F524:
/* 80C8F524  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8F528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8F52C  7C 08 03 A6 */	mtlr r0
/* 80C8F530  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8F534  4E 80 00 20 */	blr 
