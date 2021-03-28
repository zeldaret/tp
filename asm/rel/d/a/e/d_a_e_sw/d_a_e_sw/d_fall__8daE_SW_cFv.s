lbl_807AF4B4:
/* 807AF4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AF4B8  7C 08 02 A6 */	mflr r0
/* 807AF4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AF4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AF4C4  93 C1 00 08 */	stw r30, 8(r1)
/* 807AF4C8  7C 7E 1B 78 */	mr r30, r3
/* 807AF4CC  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AF4D0  3B E3 FD 2C */	addi r31, r3, lit_3909@l
/* 807AF4D4  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AF4D8  2C 00 00 01 */	cmpwi r0, 1
/* 807AF4DC  41 82 00 4C */	beq lbl_807AF528
/* 807AF4E0  40 80 00 84 */	bge lbl_807AF564
/* 807AF4E4  2C 00 00 00 */	cmpwi r0, 0
/* 807AF4E8  40 80 00 08 */	bge lbl_807AF4F0
/* 807AF4EC  48 00 00 78 */	b lbl_807AF564
lbl_807AF4F0:
/* 807AF4F0  38 60 00 00 */	li r3, 0
/* 807AF4F4  98 7E 06 84 */	stb r3, 0x684(r30)
/* 807AF4F8  38 00 00 5A */	li r0, 0x5a
/* 807AF4FC  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AF500  38 00 00 01 */	li r0, 1
/* 807AF504  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AF508  98 7E 06 E5 */	stb r3, 0x6e5(r30)
/* 807AF50C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF510  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AF514  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807AF518  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AF51C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 807AF520  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 807AF524  48 00 00 40 */	b lbl_807AF564
lbl_807AF528:
/* 807AF528  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AF52C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AF530  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AF534  4B AC 12 0C */	b cLib_chaseF__FPfff
/* 807AF538  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AF53C  2C 00 00 00 */	cmpwi r0, 0
/* 807AF540  40 82 00 24 */	bne lbl_807AF564
/* 807AF544  7F C3 F3 78 */	mr r3, r30
/* 807AF548  38 80 00 0C */	li r4, 0xc
/* 807AF54C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AF550  38 A0 00 02 */	li r5, 2
/* 807AF554  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AF558  4B FF 7F 09 */	bl bckSet__8daE_SW_cFifUcf
/* 807AF55C  7F C3 F3 78 */	mr r3, r30
/* 807AF560  4B 86 A7 1C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807AF564:
/* 807AF564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AF568  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AF56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF570  7C 08 03 A6 */	mtlr r0
/* 807AF574  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF578  4E 80 00 20 */	blr 
