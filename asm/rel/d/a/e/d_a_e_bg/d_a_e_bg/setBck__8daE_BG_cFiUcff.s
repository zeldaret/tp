lbl_80685B70:
/* 80685B70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80685B74  7C 08 02 A6 */	mflr r0
/* 80685B78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80685B7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80685B80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80685B84  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80685B88  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80685B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80685B90  93 C1 00 08 */	stw r30, 8(r1)
/* 80685B94  7C 7E 1B 78 */	mr r30, r3
/* 80685B98  7C BF 2B 78 */	mr r31, r5
/* 80685B9C  FF C0 08 90 */	fmr f30, f1
/* 80685BA0  FF E0 10 90 */	fmr f31, f2
/* 80685BA4  3C 60 80 69 */	lis r3, stringBase0@ha
/* 80685BA8  38 63 A3 08 */	addi r3, r3, stringBase0@l
/* 80685BAC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80685BB0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80685BB4  3C A5 00 02 */	addis r5, r5, 2
/* 80685BB8  38 C0 00 80 */	li r6, 0x80
/* 80685BBC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80685BC0  4B 9B 67 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80685BC4  7C 64 1B 78 */	mr r4, r3
/* 80685BC8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80685BCC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80685BD0  FC 20 F0 90 */	fmr f1, f30
/* 80685BD4  FC 40 F8 90 */	fmr f2, f31
/* 80685BD8  3C C0 80 69 */	lis r6, lit_3890@ha
/* 80685BDC  C0 66 A2 64 */	lfs f3, lit_3890@l(r6)
/* 80685BE0  3C C0 80 69 */	lis r6, lit_3905@ha
/* 80685BE4  C0 86 A2 6C */	lfs f4, lit_3905@l(r6)
/* 80685BE8  4B 98 B2 88 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80685BEC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80685BF0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80685BF4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80685BF8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80685BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80685C00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80685C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80685C08  7C 08 03 A6 */	mtlr r0
/* 80685C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80685C10  4E 80 00 20 */	blr 
