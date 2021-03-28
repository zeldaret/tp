lbl_8070EA10:
/* 8070EA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070EA14  7C 08 02 A6 */	mflr r0
/* 8070EA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070EA1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8070EA20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8070EA24  7C 7E 1B 78 */	mr r30, r3
/* 8070EA28  3C 80 80 71 */	lis r4, lit_3828@ha
/* 8070EA2C  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 8070EA30  38 A0 00 01 */	li r5, 1
/* 8070EA34  98 A3 06 D1 */	stb r5, 0x6d1(r3)
/* 8070EA38  98 A3 06 D4 */	stb r5, 0x6d4(r3)
/* 8070EA3C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070EA40  28 00 00 08 */	cmplwi r0, 8
/* 8070EA44  41 81 02 04 */	bgt lbl_8070EC48
/* 8070EA48  3C 80 80 71 */	lis r4, lit_5567@ha
/* 8070EA4C  38 84 3B 9C */	addi r4, r4, lit_5567@l
/* 8070EA50  54 00 10 3A */	slwi r0, r0, 2
/* 8070EA54  7C 04 00 2E */	lwzx r0, r4, r0
/* 8070EA58  7C 09 03 A6 */	mtctr r0
/* 8070EA5C  4E 80 04 20 */	bctr 
lbl_8070EA60:
/* 8070EA60  38 80 00 20 */	li r4, 0x20
/* 8070EA64  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070EA68  38 A0 00 00 */	li r5, 0
/* 8070EA6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070EA70  4B FF BD BD */	bl anm_init__FP10e_mf_classifUcf
/* 8070EA74  38 00 00 01 */	li r0, 1
/* 8070EA78  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070EA7C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070EA80  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8070EA84  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8070EA88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070EA8C  38 00 00 03 */	li r0, 3
/* 8070EA90  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070EA94  48 00 01 B4 */	b lbl_8070EC48
lbl_8070EA98:
/* 8070EA98  38 00 00 05 */	li r0, 5
/* 8070EA9C  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070EAA0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070EAA4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8070EAA8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8070EAAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070EAB0  4C 41 13 82 */	cror 2, 1, 2
/* 8070EAB4  40 82 01 94 */	bne lbl_8070EC48
/* 8070EAB8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070EABC  38 00 00 14 */	li r0, 0x14
/* 8070EAC0  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070EAC4  48 00 01 84 */	b lbl_8070EC48
lbl_8070EAC8:
/* 8070EAC8  38 80 00 16 */	li r4, 0x16
/* 8070EACC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070EAD0  38 A0 00 00 */	li r5, 0
/* 8070EAD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070EAD8  4B FF BD 55 */	bl anm_init__FP10e_mf_classifUcf
/* 8070EADC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DD@ha */
/* 8070EAE0  38 03 03 DD */	addi r0, r3, 0x03DD /* 0x000703DD@l */
/* 8070EAE4  90 01 00 08 */	stw r0, 8(r1)
/* 8070EAE8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070EAEC  38 81 00 08 */	addi r4, r1, 8
/* 8070EAF0  38 A0 FF FF */	li r5, -1
/* 8070EAF4  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070EAF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070EAFC  7D 89 03 A6 */	mtctr r12
/* 8070EB00  4E 80 04 21 */	bctrl 
/* 8070EB04  38 00 00 06 */	li r0, 6
/* 8070EB08  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070EB0C:
/* 8070EB0C  38 00 00 05 */	li r0, 5
/* 8070EB10  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8070EB14  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 8070EB18  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8070EB1C  41 82 00 14 */	beq lbl_8070EB30
/* 8070EB20  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070EB24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070EB28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8070EB2C  4B B6 0F 54 */	b cLib_addCalc0__FPfff
lbl_8070EB30:
/* 8070EB30  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070EB34  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8070EB38  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8070EB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070EB40  4C 41 13 82 */	cror 2, 1, 2
/* 8070EB44  40 82 01 04 */	bne lbl_8070EC48
/* 8070EB48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070EB4C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8070EB50  38 00 00 07 */	li r0, 7
/* 8070EB54  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070EB58  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070EB5C  48 00 00 EC */	b lbl_8070EC48
lbl_8070EB60:
/* 8070EB60  4B 97 88 74 */	b cc_pl_cut_bit_get__Fv
/* 8070EB64  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8070EB68  28 00 00 80 */	cmplwi r0, 0x80
/* 8070EB6C  41 82 00 14 */	beq lbl_8070EB80
/* 8070EB70  4B 97 88 64 */	b cc_pl_cut_bit_get__Fv
/* 8070EB74  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8070EB78  28 00 08 00 */	cmplwi r0, 0x800
/* 8070EB7C  40 82 00 14 */	bne lbl_8070EB90
lbl_8070EB80:
/* 8070EB80  38 00 00 02 */	li r0, 2
/* 8070EB84  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070EB88  38 00 00 0A */	li r0, 0xa
/* 8070EB8C  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
lbl_8070EB90:
/* 8070EB90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070EB94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070EB98  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8070EB9C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8070EBA0  41 82 00 0C */	beq lbl_8070EBAC
/* 8070EBA4  38 00 00 14 */	li r0, 0x14
/* 8070EBA8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_8070EBAC:
/* 8070EBAC  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8070EBB0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8070EBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070EBB8  40 80 00 30 */	bge lbl_8070EBE8
/* 8070EBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070EBC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070EBC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070EBC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8070EBCC  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8070EBD0  7D 89 03 A6 */	mtctr r12
/* 8070EBD4  4E 80 04 21 */	bctrl 
/* 8070EBD8  28 03 00 00 */	cmplwi r3, 0
/* 8070EBDC  41 82 00 0C */	beq lbl_8070EBE8
/* 8070EBE0  38 00 00 02 */	li r0, 2
/* 8070EBE4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_8070EBE8:
/* 8070EBE8  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070EBEC  2C 00 00 00 */	cmpwi r0, 0
/* 8070EBF0  40 82 00 58 */	bne lbl_8070EC48
/* 8070EBF4  38 00 00 08 */	li r0, 8
/* 8070EBF8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070EBFC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070EC00  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070EC04  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8070EC08  48 00 00 40 */	b lbl_8070EC48
lbl_8070EC0C:
/* 8070EC0C  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070EC10  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070EC14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070EC18  40 82 00 18 */	bne lbl_8070EC30
/* 8070EC1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070EC20  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070EC24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070EC28  41 82 00 08 */	beq lbl_8070EC30
/* 8070EC2C  38 A0 00 00 */	li r5, 0
lbl_8070EC30:
/* 8070EC30  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8070EC34  41 82 00 14 */	beq lbl_8070EC48
/* 8070EC38  38 00 00 03 */	li r0, 3
/* 8070EC3C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070EC40  38 00 00 00 */	li r0, 0
/* 8070EC44  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070EC48:
/* 8070EC48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8070EC4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8070EC50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070EC54  7C 08 03 A6 */	mtlr r0
/* 8070EC58  38 21 00 20 */	addi r1, r1, 0x20
/* 8070EC5C  4E 80 00 20 */	blr 
