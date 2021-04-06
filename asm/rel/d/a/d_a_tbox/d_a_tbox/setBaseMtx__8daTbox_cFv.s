lbl_80495490:
/* 80495490  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80495494  7C 08 02 A6 */	mflr r0
/* 80495498  90 01 00 54 */	stw r0, 0x54(r1)
/* 8049549C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804954A0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804954A4  7C 7E 1B 78 */	mr r30, r3
/* 804954A8  3C 60 80 49 */	lis r3, l_cull_size_box@ha /* 0x804961D4@ha */
/* 804954AC  3B E3 61 D4 */	addi r31, r3, l_cull_size_box@l /* 0x804961D4@l */
/* 804954B0  A8 7E 09 C4 */	lha r3, 0x9c4(r30)
/* 804954B4  7C 60 07 35 */	extsh. r0, r3
/* 804954B8  40 82 00 10 */	bne lbl_804954C8
/* 804954BC  38 61 00 0C */	addi r3, r1, 0xc
/* 804954C0  4B EB 0F C5 */	bl PSMTXIdentity
/* 804954C4  48 00 00 34 */	b lbl_804954F8
lbl_804954C8:
/* 804954C8  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 804954CC  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 804954D0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804954D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804954D8  3C 00 43 30 */	lis r0, 0x4330
/* 804954DC  90 01 00 40 */	stw r0, 0x40(r1)
/* 804954E0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 804954E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804954E8  EC 22 00 32 */	fmuls f1, f2, f0
/* 804954EC  38 61 00 0C */	addi r3, r1, 0xc
/* 804954F0  38 9E 09 B8 */	addi r4, r30, 0x9b8
/* 804954F4  4B EB 13 85 */	bl PSMTXRotAxisRad
lbl_804954F8:
/* 804954F8  7F C3 F3 78 */	mr r3, r30
/* 804954FC  38 81 00 08 */	addi r4, r1, 8
/* 80495500  4B FF D6 11 */	bl getDropSAngle__8daTbox_cFPs
/* 80495504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80495508  41 82 00 4C */	beq lbl_80495554
/* 8049550C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80495510  FC 00 02 10 */	fabs f0, f0
/* 80495514  FC 20 00 18 */	frsp f1, f0
/* 80495518  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8049551C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80495520  40 81 00 34 */	ble lbl_80495554
/* 80495524  38 7E 04 B6 */	addi r3, r30, 0x4b6
/* 80495528  A8 81 00 08 */	lha r4, 8(r1)
/* 8049552C  38 A0 00 0A */	li r5, 0xa
/* 80495530  38 C0 0C 00 */	li r6, 0xc00
/* 80495534  38 E0 04 00 */	li r7, 0x400
/* 80495538  4B DD B0 09 */	bl cLib_addCalcAngleS__FPsssss
/* 8049553C  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80495540  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80495544  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80495548  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8049554C  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80495550  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_80495554:
/* 80495554  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80495558  4B B7 78 0D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8049555C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80495560  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80495564  FC 60 08 90 */	fmr f3, f1
/* 80495568  4B B7 78 35 */	bl transM__14mDoMtx_stack_cFfff
/* 8049556C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80495574  38 81 00 0C */	addi r4, r1, 0xc
/* 80495578  7C 65 1B 78 */	mr r5, r3
/* 8049557C  4B EB 0F 69 */	bl PSMTXConcat
/* 80495580  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495584  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80495588  38 9E 09 88 */	addi r4, r30, 0x988
/* 8049558C  7C 65 1B 78 */	mr r5, r3
/* 80495590  4B EB 0F 55 */	bl PSMTXConcat
/* 80495594  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80495598  4B B7 79 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8049559C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804955A0  C0 5F 01 54 */	lfs f2, 0x154(r31)
/* 804955A4  FC 60 08 90 */	fmr f3, f1
/* 804955A8  4B B7 77 F5 */	bl transM__14mDoMtx_stack_cFfff
/* 804955AC  88 1E 09 FC */	lbz r0, 0x9fc(r30)
/* 804955B0  28 00 00 00 */	cmplwi r0, 0
/* 804955B4  41 82 00 18 */	beq lbl_804955CC
/* 804955B8  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 804955BC  80 9E 07 24 */	lwz r4, 0x724(r30)
/* 804955C0  38 84 00 24 */	addi r4, r4, 0x24
/* 804955C4  4B EB 0E ED */	bl PSMTXCopy
/* 804955C8  48 00 00 18 */	b lbl_804955E0
lbl_804955CC:
/* 804955CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804955D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804955D4  80 9E 07 24 */	lwz r4, 0x724(r30)
/* 804955D8  38 84 00 24 */	addi r4, r4, 0x24
/* 804955DC  4B EB 0E D5 */	bl PSMTXCopy
lbl_804955E0:
/* 804955E0  38 61 00 0C */	addi r3, r1, 0xc
/* 804955E4  38 9E 09 88 */	addi r4, r30, 0x988
/* 804955E8  7C 85 23 78 */	mr r5, r4
/* 804955EC  4B EB 0E F9 */	bl PSMTXConcat
/* 804955F0  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 804955F4  38 63 00 24 */	addi r3, r3, 0x24
/* 804955F8  38 9E 05 6C */	addi r4, r30, 0x56c
/* 804955FC  4B EB 0E B5 */	bl PSMTXCopy
/* 80495600  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 80495604  28 00 00 00 */	cmplwi r0, 0
/* 80495608  41 82 00 40 */	beq lbl_80495648
/* 8049560C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80495614  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80495618  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 8049561C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80495620  EC 42 00 2A */	fadds f2, f2, f0
/* 80495624  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80495628  4B EB 12 C1 */	bl PSMTXTrans
/* 8049562C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80495630  4B B7 79 15 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80495634  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495638  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049563C  80 9E 07 28 */	lwz r4, 0x728(r30)
/* 80495640  38 84 00 24 */	addi r4, r4, 0x24
/* 80495644  4B EB 0E 6D */	bl PSMTXCopy
lbl_80495648:
/* 80495648  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8049564C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80495650  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80495654  7C 08 03 A6 */	mtlr r0
/* 80495658  38 21 00 50 */	addi r1, r1, 0x50
/* 8049565C  4E 80 00 20 */	blr 
