lbl_80D564A0:
/* 80D564A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D564A4  7C 08 02 A6 */	mflr r0
/* 80D564A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D564AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D564B0  7C 7F 1B 78 */	mr r31, r3
/* 80D564B4  A0 03 05 74 */	lhz r0, 0x574(r3)
/* 80D564B8  2C 00 00 01 */	cmpwi r0, 1
/* 80D564BC  41 82 00 10 */	beq lbl_80D564CC
/* 80D564C0  40 80 00 90 */	bge lbl_80D56550
/* 80D564C4  48 00 00 8C */	b lbl_80D56550
/* 80D564C8  48 00 00 88 */	b lbl_80D56550
lbl_80D564CC:
/* 80D564CC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D564D0  28 00 00 06 */	cmplwi r0, 6
/* 80D564D4  41 82 00 7C */	beq lbl_80D56550
/* 80D564D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D564DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D564E0  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80D564E4  38 61 00 08 */	addi r3, r1, 8
/* 80D564E8  38 9F 05 50 */	addi r4, r31, 0x550
/* 80D564EC  38 A5 05 50 */	addi r5, r5, 0x550
/* 80D564F0  4B 51 06 44 */	b __mi__4cXyzCFRC3Vec
/* 80D564F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D564F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D564FC  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80D56500  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80D56504  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D56508  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D5650C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D56510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D56514  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80D56518  7F E4 FB 78 */	mr r4, r31
/* 80D5651C  88 BF 05 76 */	lbz r5, 0x576(r31)
/* 80D56520  3C C0 80 D5 */	lis r6, lit_3796@ha
/* 80D56524  C0 26 66 68 */	lfs f1, lit_3796@l(r6)
/* 80D56528  3C C0 80 D5 */	lis r6, lit_3797@ha
/* 80D5652C  C0 06 66 6C */	lfs f0, lit_3797@l(r6)
/* 80D56530  EC 40 18 2A */	fadds f2, f0, f3
/* 80D56534  EC 63 00 28 */	fsubs f3, f3, f0
/* 80D56538  38 C0 20 00 */	li r6, 0x2000
/* 80D5653C  38 E0 00 01 */	li r7, 1
/* 80D56540  4B 31 D4 C8 */	b request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80D56544  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D56548  60 00 00 40 */	ori r0, r0, 0x40
/* 80D5654C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D56550:
/* 80D56550  38 60 00 01 */	li r3, 1
/* 80D56554  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D56558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5655C  7C 08 03 A6 */	mtlr r0
/* 80D56560  38 21 00 30 */	addi r1, r1, 0x30
/* 80D56564  4E 80 00 20 */	blr 
