lbl_807D2548:
/* 807D2548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D254C  7C 08 02 A6 */	mflr r0
/* 807D2550  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D2554  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807D2558  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807D255C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807D2560  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807D2564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D2568  93 C1 00 08 */	stw r30, 8(r1)
/* 807D256C  7C 7E 1B 78 */	mr r30, r3
/* 807D2570  FF C0 08 90 */	fmr f30, f1
/* 807D2574  7C BF 2B 78 */	mr r31, r5
/* 807D2578  FF E0 10 90 */	fmr f31, f2
/* 807D257C  90 83 05 E8 */	stw r4, 0x5e8(r3)
/* 807D2580  88 63 07 9D */	lbz r3, 0x79d(r3)
/* 807D2584  7C 60 07 75 */	extsb. r0, r3
/* 807D2588  41 82 00 1C */	beq lbl_807D25A4
/* 807D258C  7C 60 07 74 */	extsb r0, r3
/* 807D2590  2C 00 00 02 */	cmpwi r0, 2
/* 807D2594  41 80 00 10 */	blt lbl_807D25A4
/* 807D2598  2C 04 00 20 */	cmpwi r4, 0x20
/* 807D259C  40 82 00 08 */	bne lbl_807D25A4
/* 807D25A0  38 80 00 21 */	li r4, 0x21
lbl_807D25A4:
/* 807D25A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807D25A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D25AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D25B0  3C A5 00 02 */	addis r5, r5, 2
/* 807D25B4  38 C0 00 80 */	li r6, 0x80
/* 807D25B8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807D25BC  4B 86 9D 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807D25C0  7C 64 1B 78 */	mr r4, r3
/* 807D25C4  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807D25C8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807D25CC  FC 20 F0 90 */	fmr f1, f30
/* 807D25D0  FC 40 F8 90 */	fmr f2, f31
/* 807D25D4  3C C0 80 7E */	lis r6, lit_4476@ha /* 0x807E29D4@ha */
/* 807D25D8  C0 66 29 D4 */	lfs f3, lit_4476@l(r6)  /* 0x807E29D4@l */
/* 807D25DC  3C C0 80 7E */	lis r6, lit_4477@ha /* 0x807E29D8@ha */
/* 807D25E0  C0 86 29 D8 */	lfs f4, lit_4477@l(r6)  /* 0x807E29D8@l */
/* 807D25E4  4B 83 E8 8D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807D25E8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807D25EC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807D25F0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807D25F4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807D25F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D25FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807D2600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D2604  7C 08 03 A6 */	mtlr r0
/* 807D2608  38 21 00 30 */	addi r1, r1, 0x30
/* 807D260C  4E 80 00 20 */	blr 
