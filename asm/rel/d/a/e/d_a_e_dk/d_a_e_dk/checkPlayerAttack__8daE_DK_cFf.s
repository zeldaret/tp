lbl_806AAB18:
/* 806AAB18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AAB1C  7C 08 02 A6 */	mflr r0
/* 806AAB20  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AAB24  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 806AAB28  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 806AAB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AAB30  93 C1 00 08 */	stw r30, 8(r1)
/* 806AAB34  7C 7E 1B 78 */	mr r30, r3
/* 806AAB38  FF E0 08 90 */	fmr f31, f1
/* 806AAB3C  3C 80 80 6B */	lis r4, lit_3764@ha /* 0x806AD538@ha */
/* 806AAB40  3B E4 D5 38 */	addi r31, r4, lit_3764@l /* 0x806AD538@l */
/* 806AAB44  80 03 06 9C */	lwz r0, 0x69c(r3)
/* 806AAB48  2C 00 00 00 */	cmpwi r0, 0
/* 806AAB4C  40 82 00 B4 */	bne lbl_806AAC00
/* 806AAB50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AAB54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AAB58  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806AAB5C  4B 96 FC 85 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806AAB60  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 806AAB64  28 00 00 00 */	cmplwi r0, 0
/* 806AAB68  40 82 00 5C */	bne lbl_806AABC4
/* 806AAB6C  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806AD808@ha */
/* 806AAB70  38 63 D8 08 */	addi r3, r3, l_HIO@l /* 0x806AD808@l */
/* 806AAB74  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 806AAB78  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 806AAB7C  40 80 00 48 */	bge lbl_806AABC4
/* 806AAB80  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806AAB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AAB88  40 81 00 24 */	ble lbl_806AABAC
/* 806AAB8C  7F C3 F3 78 */	mr r3, r30
/* 806AAB90  38 80 00 02 */	li r4, 2
/* 806AAB94  38 A0 00 00 */	li r5, 0
/* 806AAB98  4B FF FB 99 */	bl setActionMode__8daE_DK_cFii
/* 806AAB9C  38 00 00 02 */	li r0, 2
/* 806AABA0  98 1E 06 90 */	stb r0, 0x690(r30)
/* 806AABA4  38 60 00 01 */	li r3, 1
/* 806AABA8  48 00 00 5C */	b lbl_806AAC04
lbl_806AABAC:
/* 806AABAC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AABB0  EC 02 00 28 */	fsubs f0, f2, f0
/* 806AABB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AABB8  40 80 00 0C */	bge lbl_806AABC4
/* 806AABBC  38 00 00 01 */	li r0, 1
/* 806AABC0  98 1E 06 90 */	stb r0, 0x690(r30)
lbl_806AABC4:
/* 806AABC4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806AABC8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AABCC  40 81 00 34 */	ble lbl_806AAC00
/* 806AABD0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806AABD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806AABD8  40 80 00 28 */	bge lbl_806AAC00
/* 806AABDC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806AABE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AABE4  40 80 00 1C */	bge lbl_806AAC00
/* 806AABE8  7F C3 F3 78 */	mr r3, r30
/* 806AABEC  38 80 00 02 */	li r4, 2
/* 806AABF0  38 A0 00 00 */	li r5, 0
/* 806AABF4  4B FF FB 3D */	bl setActionMode__8daE_DK_cFii
/* 806AABF8  38 60 00 01 */	li r3, 1
/* 806AABFC  48 00 00 08 */	b lbl_806AAC04
lbl_806AAC00:
/* 806AAC00  38 60 00 00 */	li r3, 0
lbl_806AAC04:
/* 806AAC04  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 806AAC08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 806AAC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AAC10  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AAC14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AAC18  7C 08 03 A6 */	mtlr r0
/* 806AAC1C  38 21 00 20 */	addi r1, r1, 0x20
/* 806AAC20  4E 80 00 20 */	blr 
