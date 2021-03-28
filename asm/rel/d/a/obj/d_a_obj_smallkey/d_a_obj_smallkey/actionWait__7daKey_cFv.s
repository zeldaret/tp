lbl_80CDAA28:
/* 80CDAA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDAA2C  7C 08 02 A6 */	mflr r0
/* 80CDAA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDAA34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDAA38  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDAA3C  7C 7F 1B 78 */	mr r31, r3
/* 80CDAA40  3C 80 80 CE */	lis r4, l_cyl_src@ha
/* 80CDAA44  3B C4 B7 F4 */	addi r30, r4, l_cyl_src@l
/* 80CDAA48  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 80CDAA4C  4B 33 FC 80 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CDAA50  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80CDAA54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CDAA58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CDAA5C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CDAA60  4B 39 C0 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CDAA64  7F E3 FB 78 */	mr r3, r31
/* 80CDAA68  4B FF FC 19 */	bl bg_check__7daKey_cFv
/* 80CDAA6C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CDAA70  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CDAA74  41 82 00 3C */	beq lbl_80CDAAB0
/* 80CDAA78  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CDAA7C  60 00 00 10 */	ori r0, r0, 0x10
/* 80CDAA80  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDAA84  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CDAA88  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80CDAA8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CDAA90  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CDAA94  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80CDAA98  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CDAA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDAAA0  40 80 00 1C */	bge lbl_80CDAABC
/* 80CDAAA4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CDAAA8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CDAAAC  48 00 00 10 */	b lbl_80CDAABC
lbl_80CDAAB0:
/* 80CDAAB0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CDAAB4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDAAB8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CDAABC:
/* 80CDAABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDAAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDAAC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CDAAC8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CDAACC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CDAAD0  41 82 00 30 */	beq lbl_80CDAB00
/* 80CDAAD4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CDAAD8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDAADC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CDAAE0  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80CDAAE4  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80CDAAE8  41 82 00 24 */	beq lbl_80CDAB0C
/* 80CDAAEC  7F E3 FB 78 */	mr r3, r31
/* 80CDAAF0  4B 34 20 B0 */	b fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80CDAAF4  7F E3 FB 78 */	mr r3, r31
/* 80CDAAF8  48 00 00 7D */	bl initActionOrderGetDemo__7daKey_cFv
/* 80CDAAFC  48 00 00 10 */	b lbl_80CDAB0C
lbl_80CDAB00:
/* 80CDAB00  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80CDAB04  60 00 00 10 */	ori r0, r0, 0x10
/* 80CDAB08  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80CDAB0C:
/* 80CDAB0C  88 1F 09 36 */	lbz r0, 0x936(r31)
/* 80CDAB10  28 00 00 00 */	cmplwi r0, 0
/* 80CDAB14  40 82 00 14 */	bne lbl_80CDAB28
/* 80CDAB18  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80CDAB1C  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80CDAB20  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CDAB24  48 00 00 0C */	b lbl_80CDAB30
lbl_80CDAB28:
/* 80CDAB28  38 00 00 00 */	li r0, 0
/* 80CDAB2C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_80CDAB30:
/* 80CDAB30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CDAB34  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CDAB38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CDAB3C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CDAB40  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CDAB44  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CDAB48  7F E3 FB 78 */	mr r3, r31
/* 80CDAB4C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800C5@ha */
/* 80CDAB50  38 84 00 C5 */	addi r4, r4, 0x00C5 /* 0x000800C5@l */
/* 80CDAB54  48 00 07 8D */	bl seStartTwinkle_private__7daKey_cFUl
/* 80CDAB58  38 60 00 01 */	li r3, 1
/* 80CDAB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDAB60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDAB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDAB68  7C 08 03 A6 */	mtlr r0
/* 80CDAB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDAB70  4E 80 00 20 */	blr 
