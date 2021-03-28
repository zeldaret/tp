lbl_80CFBCB8:
/* 80CFBCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBCBC  7C 08 02 A6 */	mflr r0
/* 80CFBCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBCC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFBCC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFBCCC  7C 7F 1B 78 */	mr r31, r3
/* 80CFBCD0  88 03 07 30 */	lbz r0, 0x730(r3)
/* 80CFBCD4  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBCD8  3C 60 80 D0 */	lis r3, l_arcName@ha
/* 80CFBCDC  38 63 D2 D8 */	addi r3, r3, l_arcName@l
/* 80CFBCE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CFBCE4  3C 80 80 D0 */	lis r4, l_bmdIdx@ha
/* 80CFBCE8  38 84 D1 DC */	addi r4, r4, l_bmdIdx@l
/* 80CFBCEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFBCF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CFBCF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CFBCF8  3F C5 00 02 */	addis r30, r5, 2
/* 80CFBCFC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CFBD00  7F C5 F3 78 */	mr r5, r30
/* 80CFBD04  38 C0 00 80 */	li r6, 0x80
/* 80CFBD08  4B 34 05 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CFBD0C  3C 80 00 08 */	lis r4, 8
/* 80CFBD10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CFBD14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CFBD18  4B 31 8F 3C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CFBD1C  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80CFBD20  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80CFBD24  28 00 00 00 */	cmplwi r0, 0
/* 80CFBD28  40 82 00 0C */	bne lbl_80CFBD34
/* 80CFBD2C  38 60 00 00 */	li r3, 0
/* 80CFBD30  48 00 00 88 */	b lbl_80CFBDB8
lbl_80CFBD34:
/* 80CFBD34  38 60 00 C0 */	li r3, 0xc0
/* 80CFBD38  4B 5D 2F 14 */	b __nw__FUl
/* 80CFBD3C  7C 60 1B 79 */	or. r0, r3, r3
/* 80CFBD40  41 82 00 0C */	beq lbl_80CFBD4C
/* 80CFBD44  4B 37 FC 2C */	b __ct__4dBgWFv
/* 80CFBD48  7C 60 1B 78 */	mr r0, r3
lbl_80CFBD4C:
/* 80CFBD4C  90 1F 07 34 */	stw r0, 0x734(r31)
/* 80CFBD50  80 1F 07 34 */	lwz r0, 0x734(r31)
/* 80CFBD54  28 00 00 00 */	cmplwi r0, 0
/* 80CFBD58  41 82 00 4C */	beq lbl_80CFBDA4
/* 80CFBD5C  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFBD60  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBD64  3C 60 80 D0 */	lis r3, l_arcName@ha
/* 80CFBD68  38 63 D2 D8 */	addi r3, r3, l_arcName@l
/* 80CFBD6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CFBD70  3C 80 80 D0 */	lis r4, l_dzbIdx@ha
/* 80CFBD74  38 84 D1 F0 */	addi r4, r4, l_dzbIdx@l
/* 80CFBD78  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFBD7C  7F C5 F3 78 */	mr r5, r30
/* 80CFBD80  38 C0 00 80 */	li r6, 0x80
/* 80CFBD84  4B 34 05 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CFBD88  7C 64 1B 78 */	mr r4, r3
/* 80CFBD8C  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 80CFBD90  38 A0 00 01 */	li r5, 1
/* 80CFBD94  38 DF 07 38 */	addi r6, r31, 0x738
/* 80CFBD98  4B 37 E1 A0 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CFBD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CFBDA0  41 82 00 14 */	beq lbl_80CFBDB4
lbl_80CFBDA4:
/* 80CFBDA4  38 00 00 00 */	li r0, 0
/* 80CFBDA8  90 1F 07 34 */	stw r0, 0x734(r31)
/* 80CFBDAC  38 60 00 00 */	li r3, 0
/* 80CFBDB0  48 00 00 08 */	b lbl_80CFBDB8
lbl_80CFBDB4:
/* 80CFBDB4  38 60 00 01 */	li r3, 1
lbl_80CFBDB8:
/* 80CFBDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFBDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBDC4  7C 08 03 A6 */	mtlr r0
/* 80CFBDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBDCC  4E 80 00 20 */	blr 
