lbl_8074E4EC:
/* 8074E4EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074E4F0  7C 08 02 A6 */	mflr r0
/* 8074E4F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074E4F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8074E4FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8074E500  7C 7E 1B 78 */	mr r30, r3
/* 8074E504  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 8074E508  3B E4 76 FC */	addi r31, r4, lit_3917@l /* 0x807576FC@l */
/* 8074E50C  38 00 00 0A */	li r0, 0xa
/* 8074E510  B0 03 07 54 */	sth r0, 0x754(r3)
/* 8074E514  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8074E518  2C 00 00 01 */	cmpwi r0, 1
/* 8074E51C  41 82 00 80 */	beq lbl_8074E59C
/* 8074E520  40 80 01 4C */	bge lbl_8074E66C
/* 8074E524  2C 00 00 00 */	cmpwi r0, 0
/* 8074E528  40 80 00 08 */	bge lbl_8074E530
/* 8074E52C  48 00 01 40 */	b lbl_8074E66C
lbl_8074E530:
/* 8074E530  38 80 00 FF */	li r4, 0xff
/* 8074E534  4B FF E0 B9 */	bl mArg0Check__FP10e_po_classs
/* 8074E538  2C 03 00 02 */	cmpwi r3, 2
/* 8074E53C  40 82 00 38 */	bne lbl_8074E574
/* 8074E540  38 00 00 00 */	li r0, 0
/* 8074E544  3C 60 80 75 */	lis r3, mAttackNo@ha /* 0x80757ADA@ha */
/* 8074E548  B0 03 7A DA */	sth r0, mAttackNo@l(r3)  /* 0x80757ADA@l */
/* 8074E54C  88 9E 05 BF */	lbz r4, 0x5bf(r30)
/* 8074E550  28 04 00 FF */	cmplwi r4, 0xff
/* 8074E554  41 82 00 18 */	beq lbl_8074E56C
/* 8074E558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074E55C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074E560  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8074E564  7C 05 07 74 */	extsb r5, r0
/* 8074E568  4B 8E 6D 49 */	bl offSwitch__10dSv_info_cFii
lbl_8074E56C:
/* 8074E56C  38 00 00 03 */	li r0, 3
/* 8074E570  98 1E 05 BC */	stb r0, 0x5bc(r30)
lbl_8074E574:
/* 8074E574  7F C3 F3 78 */	mr r3, r30
/* 8074E578  38 80 00 07 */	li r4, 7
/* 8074E57C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8074E580  38 A0 00 00 */	li r5, 0
/* 8074E584  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E588  4B FF E0 D9 */	bl anm_init__FP10e_po_classifUcf
/* 8074E58C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8074E590  38 03 00 01 */	addi r0, r3, 1
/* 8074E594  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E598  48 00 00 D4 */	b lbl_8074E66C
lbl_8074E59C:
/* 8074E59C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8074E5A0  38 80 00 01 */	li r4, 1
/* 8074E5A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074E5A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074E5AC  40 82 00 18 */	bne lbl_8074E5C4
/* 8074E5B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074E5B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074E5B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074E5BC  41 82 00 08 */	beq lbl_8074E5C4
/* 8074E5C0  38 80 00 00 */	li r4, 0
lbl_8074E5C4:
/* 8074E5C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074E5C8  41 82 00 A4 */	beq lbl_8074E66C
/* 8074E5CC  7F C3 F3 78 */	mr r3, r30
/* 8074E5D0  38 80 00 FF */	li r4, 0xff
/* 8074E5D4  4B FF E0 19 */	bl mArg0Check__FP10e_po_classs
/* 8074E5D8  2C 03 00 02 */	cmpwi r3, 2
/* 8074E5DC  41 82 00 30 */	beq lbl_8074E60C
/* 8074E5E0  38 00 00 03 */	li r0, 3
/* 8074E5E4  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074E5E8  7F C3 F3 78 */	mr r3, r30
/* 8074E5EC  38 80 00 13 */	li r4, 0x13
/* 8074E5F0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8074E5F4  38 A0 00 02 */	li r5, 2
/* 8074E5F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074E5FC  4B FF E0 65 */	bl anm_init__FP10e_po_classifUcf
/* 8074E600  38 00 00 02 */	li r0, 2
/* 8074E604  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E608  48 00 00 64 */	b lbl_8074E66C
lbl_8074E60C:
/* 8074E60C  7F C3 F3 78 */	mr r3, r30
/* 8074E610  38 80 00 FF */	li r4, 0xff
/* 8074E614  4B FF DF D9 */	bl mArg0Check__FP10e_po_classs
/* 8074E618  2C 03 00 02 */	cmpwi r3, 2
/* 8074E61C  40 82 00 3C */	bne lbl_8074E658
/* 8074E620  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8074E624  4B B1 93 31 */	bl cM_rndF__Ff
/* 8074E628  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8074E62C  EC 00 08 2A */	fadds f0, f0, f1
/* 8074E630  FC 00 00 1E */	fctiwz f0, f0
/* 8074E634  D8 01 00 08 */	stfd f0, 8(r1)
/* 8074E638  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8074E63C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074E640  3C 60 80 75 */	lis r3, mAttackNo@ha /* 0x80757ADA@ha */
/* 8074E644  B4 03 7A DA */	sthu r0, mAttackNo@l(r3)  /* 0x80757ADA@l */
/* 8074E648  2C 00 00 06 */	cmpwi r0, 6
/* 8074E64C  40 81 00 0C */	ble lbl_8074E658
/* 8074E650  38 00 00 03 */	li r0, 3
/* 8074E654  B0 03 00 00 */	sth r0, 0(r3)
lbl_8074E658:
/* 8074E658  38 00 00 00 */	li r0, 0
/* 8074E65C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074E660  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 8074E664  38 00 00 05 */	li r0, 5
/* 8074E668  B0 1E 07 42 */	sth r0, 0x742(r30)
lbl_8074E66C:
/* 8074E66C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8074E670  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8074E674  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8074E678  4B B2 14 09 */	bl cLib_addCalc0__FPfff
/* 8074E67C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8074E680  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8074E684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074E688  7C 08 03 A6 */	mtlr r0
/* 8074E68C  38 21 00 20 */	addi r1, r1, 0x20
/* 8074E690  4E 80 00 20 */	blr 
