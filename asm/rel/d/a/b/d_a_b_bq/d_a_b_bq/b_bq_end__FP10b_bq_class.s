lbl_805B54E0:
/* 805B54E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B54E4  7C 08 02 A6 */	mflr r0
/* 805B54E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B54EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B54F0  7C 7F 1B 78 */	mr r31, r3
/* 805B54F4  A8 03 06 CC */	lha r0, 0x6cc(r3)
/* 805B54F8  2C 00 00 01 */	cmpwi r0, 1
/* 805B54FC  41 82 00 8C */	beq lbl_805B5588
/* 805B5500  40 80 00 88 */	bge lbl_805B5588
/* 805B5504  2C 00 00 00 */	cmpwi r0, 0
/* 805B5508  40 80 00 08 */	bge lbl_805B5510
/* 805B550C  48 00 00 7C */	b lbl_805B5588
lbl_805B5510:
/* 805B5510  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070142@ha */
/* 805B5514  38 03 01 42 */	addi r0, r3, 0x0142 /* 0x00070142@l */
/* 805B5518  90 01 00 08 */	stw r0, 8(r1)
/* 805B551C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B5520  38 81 00 08 */	addi r4, r1, 8
/* 805B5524  38 A0 FF FF */	li r5, -1
/* 805B5528  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B552C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B5530  7D 89 03 A6 */	mtctr r12
/* 805B5534  4E 80 04 21 */	bctrl 
/* 805B5538  7F E3 FB 78 */	mr r3, r31
/* 805B553C  38 80 00 0F */	li r4, 0xf
/* 805B5540  3C A0 80 5C */	lis r5, lit_3816@ha /* 0x805BA588@ha */
/* 805B5544  C0 25 A5 88 */	lfs f1, lit_3816@l(r5)  /* 0x805BA588@l */
/* 805B5548  38 A0 00 00 */	li r5, 0
/* 805B554C  FC 40 08 90 */	fmr f2, f1
/* 805B5550  4B FF E0 51 */	bl anm_init__FP10b_bq_classifUcf
/* 805B5554  3C 60 80 5C */	lis r3, lit_3816@ha /* 0x805BA588@ha */
/* 805B5558  C0 03 A5 88 */	lfs f0, lit_3816@l(r3)  /* 0x805BA588@l */
/* 805B555C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B5560  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805B5564  38 00 00 01 */	li r0, 1
/* 805B5568  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 805B556C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5574  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805B5578  54 04 46 3E */	srwi r4, r0, 0x18
/* 805B557C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B5580  7C 05 07 74 */	extsb r5, r0
/* 805B5584  4B A7 FC 7D */	bl onSwitch__10dSv_info_cFii
lbl_805B5588:
/* 805B5588  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B558C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5590  7C 08 03 A6 */	mtlr r0
/* 805B5594  38 21 00 20 */	addi r1, r1, 0x20
/* 805B5598  4E 80 00 20 */	blr 
