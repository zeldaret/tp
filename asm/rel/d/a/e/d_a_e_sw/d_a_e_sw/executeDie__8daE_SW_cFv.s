lbl_807AAB7C:
/* 807AAB7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AAB80  7C 08 02 A6 */	mflr r0
/* 807AAB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AAB88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AAB8C  93 C1 00 08 */	stw r30, 8(r1)
/* 807AAB90  7C 7F 1B 78 */	mr r31, r3
/* 807AAB94  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AAB98  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807AAB9C  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 807AABA0  2C 00 00 01 */	cmpwi r0, 1
/* 807AABA4  41 82 00 60 */	beq lbl_807AAC04
/* 807AABA8  40 80 00 10 */	bge lbl_807AABB8
/* 807AABAC  2C 00 00 00 */	cmpwi r0, 0
/* 807AABB0  40 80 00 14 */	bge lbl_807AABC4
/* 807AABB4  48 00 01 5C */	b lbl_807AAD10
lbl_807AABB8:
/* 807AABB8  2C 00 00 03 */	cmpwi r0, 3
/* 807AABBC  40 80 01 54 */	bge lbl_807AAD10
/* 807AABC0  48 00 00 B8 */	b lbl_807AAC78
lbl_807AABC4:
/* 807AABC4  38 00 00 00 */	li r0, 0
/* 807AABC8  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 807AABCC  98 1F 06 84 */	stb r0, 0x684(r31)
/* 807AABD0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AABD4  38 63 00 0C */	addi r3, r3, 0xc
/* 807AABD8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807AABDC  4B B7 D8 50 */	b checkPass__12J3DFrameCtrlFf
/* 807AABE0  2C 03 00 00 */	cmpwi r3, 0
/* 807AABE4  41 82 01 2C */	beq lbl_807AAD10
/* 807AABE8  38 00 00 01 */	li r0, 1
/* 807AABEC  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AABF0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807AABF4  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 807AABF8  38 00 00 0A */	li r0, 0xa
/* 807AABFC  B0 1F 06 EA */	sth r0, 0x6ea(r31)
/* 807AAC00  48 00 01 10 */	b lbl_807AAD10
lbl_807AAC04:
/* 807AAC04  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 807AAC08  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807AAC0C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AAC10  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 807AAC14  4B AC 4E 28 */	b cLib_addCalc2__FPffff
/* 807AAC18  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807AAC1C  2C 00 00 00 */	cmpwi r0, 0
/* 807AAC20  40 82 00 38 */	bne lbl_807AAC58
/* 807AAC24  38 00 00 02 */	li r0, 2
/* 807AAC28  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 807AAC2C  7F E3 FB 78 */	mr r3, r31
/* 807AAC30  38 80 00 0A */	li r4, 0xa
/* 807AAC34  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807AAC38  38 A0 00 00 */	li r5, 0
/* 807AAC3C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AAC40  4B FF C8 21 */	bl bckSet__8daE_SW_cFifUcf
/* 807AAC44  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807AAC48  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807AAC4C  38 00 00 1E */	li r0, 0x1e
/* 807AAC50  B0 1F 06 EA */	sth r0, 0x6ea(r31)
/* 807AAC54  48 00 00 BC */	b lbl_807AAD10
lbl_807AAC58:
/* 807AAC58  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 807AAC5C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807AAC60  EC 01 00 28 */	fsubs f0, f1, f0
/* 807AAC64  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 807AAC68  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 807AAC6C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AAC70  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807AAC74  48 00 00 9C */	b lbl_807AAD10
lbl_807AAC78:
/* 807AAC78  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 807AAC7C  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807AAC80  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807AAC84  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 807AAC88  4B AC 4D B4 */	b cLib_addCalc2__FPffff
/* 807AAC8C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AAC90  38 80 00 01 */	li r4, 1
/* 807AAC94  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807AAC98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AAC9C  40 82 00 18 */	bne lbl_807AACB4
/* 807AACA0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807AACA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807AACA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807AACAC  41 82 00 08 */	beq lbl_807AACB4
/* 807AACB0  38 80 00 00 */	li r4, 0
lbl_807AACB4:
/* 807AACB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807AACB8  41 82 00 58 */	beq lbl_807AAD10
/* 807AACBC  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 807AACC0  2C 00 00 00 */	cmpwi r0, 0
/* 807AACC4  40 82 00 4C */	bne lbl_807AAD10
/* 807AACC8  3C 60 80 7B */	lis r3, struct_807B0200+0x2@ha
/* 807AACCC  38 83 02 02 */	addi r4, r3, struct_807B0200+0x2@l
/* 807AACD0  88 64 00 00 */	lbz r3, 0(r4)
/* 807AACD4  38 03 00 01 */	addi r0, r3, 1
/* 807AACD8  98 04 00 00 */	stb r0, 0(r4)
/* 807AACDC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807AACE0  28 00 00 0A */	cmplwi r0, 0xa
/* 807AACE4  41 80 00 0C */	blt lbl_807AACF0
/* 807AACE8  38 00 00 0A */	li r0, 0xa
/* 807AACEC  98 04 00 00 */	stb r0, 0(r4)
lbl_807AACF0:
/* 807AACF0  7F E3 FB 78 */	mr r3, r31
/* 807AACF4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807AACF8  38 A0 00 0A */	li r5, 0xa
/* 807AACFC  38 C0 00 00 */	li r6, 0
/* 807AAD00  38 E0 00 0E */	li r7, 0xe
/* 807AAD04  4B 87 1D D4 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807AAD08  7F E3 FB 78 */	mr r3, r31
/* 807AAD0C  4B 86 EF 70 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807AAD10:
/* 807AAD10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AAD14  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AAD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AAD1C  7C 08 03 A6 */	mtlr r0
/* 807AAD20  38 21 00 10 */	addi r1, r1, 0x10
/* 807AAD24  4E 80 00 20 */	blr 
