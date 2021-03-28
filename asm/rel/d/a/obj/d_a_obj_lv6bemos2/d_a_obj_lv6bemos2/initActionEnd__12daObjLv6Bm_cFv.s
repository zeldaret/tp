lbl_80C81428:
/* 80C81428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8142C  7C 08 02 A6 */	mflr r0
/* 80C81430  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C81434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C81438  7C 7F 1B 78 */	mr r31, r3
/* 80C8143C  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C81440  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C81444  80 63 00 00 */	lwz r3, 0(r3)
/* 80C81448  38 80 00 08 */	li r4, 8
/* 80C8144C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C81450  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C81454  3C A5 00 02 */	addis r5, r5, 2
/* 80C81458  38 C0 00 80 */	li r6, 0x80
/* 80C8145C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C81460  4B 3B AE 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C81464  7C 64 1B 78 */	mr r4, r3
/* 80C81468  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C8146C  38 A0 00 01 */	li r5, 1
/* 80C81470  38 C0 00 00 */	li r6, 0
/* 80C81474  3C E0 80 C8 */	lis r7, lit_4173@ha
/* 80C81478  C0 27 1C 54 */	lfs f1, lit_4173@l(r7)
/* 80C8147C  38 E0 00 00 */	li r7, 0
/* 80C81480  39 00 FF FF */	li r8, -1
/* 80C81484  39 20 00 01 */	li r9, 1
/* 80C81488  4B 38 C3 54 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C8148C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80C81490  A8 04 00 08 */	lha r0, 8(r4)
/* 80C81494  3C 60 80 C8 */	lis r3, lit_4012@ha
/* 80C81498  C8 23 1C 4C */	lfd f1, lit_4012@l(r3)
/* 80C8149C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C814A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C814A4  3C 00 43 30 */	lis r0, 0x4330
/* 80C814A8  90 01 00 08 */	stw r0, 8(r1)
/* 80C814AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C814B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C814B4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80C814B8  38 00 00 00 */	li r0, 0
/* 80C814BC  98 1F 0A 1B */	stb r0, 0xa1b(r31)
/* 80C814C0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C814C4  54 00 00 3E */	slwi r0, r0, 0
/* 80C814C8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80C814CC  80 9F 06 28 */	lwz r4, 0x628(r31)
/* 80C814D0  3C 60 FF C0 */	lis r3, 0xFFC0 /* 0xFFBFDFDF@ha */
/* 80C814D4  38 03 DF DF */	addi r0, r3, 0xDFDF /* 0xFFBFDFDF@l */
/* 80C814D8  7C 80 00 38 */	and r0, r4, r0
/* 80C814DC  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80C814E0  38 00 00 05 */	li r0, 5
/* 80C814E4  98 1F 0A 10 */	stb r0, 0xa10(r31)
/* 80C814E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C814EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C814F0  7C 08 03 A6 */	mtlr r0
/* 80C814F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C814F8  4E 80 00 20 */	blr 
