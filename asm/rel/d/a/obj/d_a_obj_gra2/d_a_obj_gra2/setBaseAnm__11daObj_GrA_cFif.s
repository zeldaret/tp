lbl_80C013B0:
/* 80C013B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C013B4  7C 08 02 A6 */	mflr r0
/* 80C013B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C013BC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C013C0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C013C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C013C8  4B 76 0E 15 */	bl _savegpr_29
/* 80C013CC  7C 7D 1B 78 */	mr r29, r3
/* 80C013D0  7C 9E 23 78 */	mr r30, r4
/* 80C013D4  FF E0 08 90 */	fmr f31, f1
/* 80C013D8  38 80 00 00 */	li r4, 0
/* 80C013DC  3B E0 00 02 */	li r31, 2
/* 80C013E0  57 C0 18 38 */	slwi r0, r30, 3
/* 80C013E4  3C A0 80 C1 */	lis r5, l_bckGetParamList@ha /* 0x80C0FEF4@ha */
/* 80C013E8  38 C5 FE F4 */	addi r6, r5, l_bckGetParamList@l /* 0x80C0FEF4@l */
/* 80C013EC  7C A6 00 2E */	lwzx r5, r6, r0
/* 80C013F0  2C 05 00 00 */	cmpwi r5, 0
/* 80C013F4  41 80 00 24 */	blt lbl_80C01418
/* 80C013F8  7C 86 02 14 */	add r4, r6, r0
/* 80C013FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80C01400  54 00 10 3A */	slwi r0, r0, 2
/* 80C01404  3C 80 80 C1 */	lis r4, l_resNames@ha /* 0x80C0FED8@ha */
/* 80C01408  38 84 FE D8 */	addi r4, r4, l_resNames@l /* 0x80C0FED8@l */
/* 80C0140C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C01410  4B 54 DA 35 */	bl getTrnsfrmKeyAnmP__11daBaseNpc_cFPci
/* 80C01414  7C 64 1B 78 */	mr r4, r3
lbl_80C01418:
/* 80C01418  A0 7D 08 40 */	lhz r3, 0x840(r29)
/* 80C0141C  38 00 FF EE */	li r0, -18
/* 80C01420  7C 60 00 38 */	and r0, r3, r0
/* 80C01424  B0 1D 08 40 */	sth r0, 0x840(r29)
/* 80C01428  28 1E 00 15 */	cmplwi r30, 0x15
/* 80C0142C  41 81 00 54 */	bgt lbl_80C01480
/* 80C01430  3C 60 80 C1 */	lis r3, lit_4762@ha /* 0x80C10068@ha */
/* 80C01434  38 63 00 68 */	addi r3, r3, lit_4762@l /* 0x80C10068@l */
/* 80C01438  57 C0 10 3A */	slwi r0, r30, 2
/* 80C0143C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C01440  7C 09 03 A6 */	mtctr r0
/* 80C01444  4E 80 04 20 */	bctr 
lbl_80C01448:
/* 80C01448  3B E0 00 00 */	li r31, 0
/* 80C0144C  48 00 00 38 */	b lbl_80C01484
lbl_80C01450:
/* 80C01450  3B E0 00 00 */	li r31, 0
/* 80C01454  48 00 00 30 */	b lbl_80C01484
lbl_80C01458:
/* 80C01458  3B E0 00 00 */	li r31, 0
/* 80C0145C  48 00 00 28 */	b lbl_80C01484
lbl_80C01460:
/* 80C01460  3B E0 00 00 */	li r31, 0
/* 80C01464  48 00 00 20 */	b lbl_80C01484
lbl_80C01468:
/* 80C01468  3B E0 00 00 */	li r31, 0
/* 80C0146C  48 00 00 18 */	b lbl_80C01484
lbl_80C01470:
/* 80C01470  3B E0 00 00 */	li r31, 0
/* 80C01474  48 00 00 10 */	b lbl_80C01484
lbl_80C01478:
/* 80C01478  3B E0 00 00 */	li r31, 0
/* 80C0147C  48 00 00 08 */	b lbl_80C01484
lbl_80C01480:
/* 80C01480  38 80 00 00 */	li r4, 0
lbl_80C01484:
/* 80C01484  28 04 00 00 */	cmplwi r4, 0
/* 80C01488  41 82 00 4C */	beq lbl_80C014D4
/* 80C0148C  7F A3 EB 78 */	mr r3, r29
/* 80C01490  3C A0 80 C1 */	lis r5, lit_4332@ha /* 0x80C0FB94@ha */
/* 80C01494  C0 25 FB 94 */	lfs f1, lit_4332@l(r5)  /* 0x80C0FB94@l */
/* 80C01498  FC 40 F8 90 */	fmr f2, f31
/* 80C0149C  7F E5 FB 78 */	mr r5, r31
/* 80C014A0  38 C0 00 00 */	li r6, 0
/* 80C014A4  38 E0 FF FF */	li r7, -1
/* 80C014A8  4B 54 D9 D9 */	bl setMcaMorfAnm__11daBaseNpc_cFP18J3DAnmTransformKeyffiii
/* 80C014AC  2C 03 00 00 */	cmpwi r3, 0
/* 80C014B0  41 82 00 24 */	beq lbl_80C014D4
/* 80C014B4  38 00 00 00 */	li r0, 0
/* 80C014B8  B0 1D 08 42 */	sth r0, 0x842(r29)
/* 80C014BC  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 80C014C0  60 00 00 11 */	ori r0, r0, 0x11
/* 80C014C4  B0 1D 08 40 */	sth r0, 0x840(r29)
/* 80C014C8  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C014CC  FC 20 F8 90 */	fmr f1, f31
/* 80C014D0  4B 40 E6 AD */	bl setMorf__13mDoExt_morf_cFf
lbl_80C014D4:
/* 80C014D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C014D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C014DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C014E0  4B 76 0D 49 */	bl _restgpr_29
/* 80C014E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C014E8  7C 08 03 A6 */	mtlr r0
/* 80C014EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C014F0  4E 80 00 20 */	blr 
