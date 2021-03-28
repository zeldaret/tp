lbl_807AEE44:
/* 807AEE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AEE48  7C 08 02 A6 */	mflr r0
/* 807AEE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AEE50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AEE54  93 C1 00 08 */	stw r30, 8(r1)
/* 807AEE58  7C 7F 1B 78 */	mr r31, r3
/* 807AEE5C  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AEE60  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807AEE64  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 807AEE68  2C 00 00 01 */	cmpwi r0, 1
/* 807AEE6C  41 82 00 64 */	beq lbl_807AEED0
/* 807AEE70  40 80 00 10 */	bge lbl_807AEE80
/* 807AEE74  2C 00 00 00 */	cmpwi r0, 0
/* 807AEE78  40 80 00 14 */	bge lbl_807AEE8C
/* 807AEE7C  48 00 01 88 */	b lbl_807AF004
lbl_807AEE80:
/* 807AEE80  2C 00 00 03 */	cmpwi r0, 3
/* 807AEE84  40 80 01 80 */	bge lbl_807AF004
/* 807AEE88  48 00 00 C0 */	b lbl_807AEF48
lbl_807AEE8C:
/* 807AEE8C  38 00 00 00 */	li r0, 0
/* 807AEE90  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 807AEE94  98 1F 06 84 */	stb r0, 0x684(r31)
/* 807AEE98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AEE9C  38 63 00 0C */	addi r3, r3, 0xc
/* 807AEEA0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807AEEA4  4B B7 95 88 */	b checkPass__12J3DFrameCtrlFf
/* 807AEEA8  2C 03 00 00 */	cmpwi r3, 0
/* 807AEEAC  41 82 01 58 */	beq lbl_807AF004
/* 807AEEB0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807AEEB4  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 807AEEB8  38 00 00 0A */	li r0, 0xa
/* 807AEEBC  B0 1F 06 EA */	sth r0, 0x6ea(r31)
/* 807AEEC0  A8 7F 06 80 */	lha r3, 0x680(r31)
/* 807AEEC4  38 03 00 01 */	addi r0, r3, 1
/* 807AEEC8  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AEECC  48 00 01 38 */	b lbl_807AF004
lbl_807AEED0:
/* 807AEED0  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 807AEED4  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807AEED8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AEEDC  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 807AEEE0  4B AC 0B 5C */	b cLib_addCalc2__FPffff
/* 807AEEE4  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807AEEE8  2C 00 00 00 */	cmpwi r0, 0
/* 807AEEEC  40 82 00 3C */	bne lbl_807AEF28
/* 807AEEF0  7F E3 FB 78 */	mr r3, r31
/* 807AEEF4  38 80 00 0A */	li r4, 0xa
/* 807AEEF8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807AEEFC  38 A0 00 00 */	li r5, 0
/* 807AEF00  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AEF04  4B FF 85 5D */	bl bckSet__8daE_SW_cFifUcf
/* 807AEF08  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807AEF0C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807AEF10  38 00 00 1E */	li r0, 0x1e
/* 807AEF14  B0 1F 06 EA */	sth r0, 0x6ea(r31)
/* 807AEF18  A8 7F 06 80 */	lha r3, 0x680(r31)
/* 807AEF1C  38 03 00 01 */	addi r0, r3, 1
/* 807AEF20  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AEF24  48 00 00 E0 */	b lbl_807AF004
lbl_807AEF28:
/* 807AEF28  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 807AEF2C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807AEF30  EC 01 00 28 */	fsubs f0, f1, f0
/* 807AEF34  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 807AEF38  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 807AEF3C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AEF40  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807AEF44  48 00 00 C0 */	b lbl_807AF004
lbl_807AEF48:
/* 807AEF48  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 807AEF4C  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807AEF50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AEF54  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 807AEF58  4B AC 0A E4 */	b cLib_addCalc2__FPffff
/* 807AEF5C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AEF60  38 80 00 01 */	li r4, 1
/* 807AEF64  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807AEF68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AEF6C  40 82 00 18 */	bne lbl_807AEF84
/* 807AEF70  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807AEF74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807AEF78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807AEF7C  41 82 00 08 */	beq lbl_807AEF84
/* 807AEF80  38 80 00 00 */	li r4, 0
lbl_807AEF84:
/* 807AEF84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807AEF88  41 82 00 7C */	beq lbl_807AF004
/* 807AEF8C  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807AEF90  2C 00 00 00 */	cmpwi r0, 0
/* 807AEF94  40 82 00 70 */	bne lbl_807AF004
/* 807AEF98  3C 60 80 7B */	lis r3, struct_807B0200+0x2@ha
/* 807AEF9C  38 83 02 02 */	addi r4, r3, struct_807B0200+0x2@l
/* 807AEFA0  88 64 00 00 */	lbz r3, 0(r4)
/* 807AEFA4  38 03 00 01 */	addi r0, r3, 1
/* 807AEFA8  98 04 00 00 */	stb r0, 0(r4)
/* 807AEFAC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807AEFB0  28 00 00 0A */	cmplwi r0, 0xa
/* 807AEFB4  41 80 00 0C */	blt lbl_807AEFC0
/* 807AEFB8  38 00 00 0A */	li r0, 0xa
/* 807AEFBC  98 04 00 00 */	stb r0, 0(r4)
lbl_807AEFC0:
/* 807AEFC0  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 807AEFC4  28 00 00 00 */	cmplwi r0, 0
/* 807AEFC8  40 82 00 1C */	bne lbl_807AEFE4
/* 807AEFCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AEFD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AEFD4  88 9F 06 96 */	lbz r4, 0x696(r31)
/* 807AEFD8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807AEFDC  7C 05 07 74 */	extsb r5, r0
/* 807AEFE0  4B 88 62 20 */	b onSwitch__10dSv_info_cFii
lbl_807AEFE4:
/* 807AEFE4  7F E3 FB 78 */	mr r3, r31
/* 807AEFE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807AEFEC  38 A0 00 0A */	li r5, 0xa
/* 807AEFF0  38 C0 00 00 */	li r6, 0
/* 807AEFF4  38 E0 00 0E */	li r7, 0xe
/* 807AEFF8  4B 86 DA E0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807AEFFC  7F E3 FB 78 */	mr r3, r31
/* 807AF000  4B 86 AC 7C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807AF004:
/* 807AF004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AF008  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AF00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF010  7C 08 03 A6 */	mtlr r0
/* 807AF014  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF018  4E 80 00 20 */	blr 
