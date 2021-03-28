lbl_806AA5C8:
/* 806AA5C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AA5CC  7C 08 02 A6 */	mflr r0
/* 806AA5D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AA5D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806AA5D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806AA5DC  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806AA5E0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806AA5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AA5E8  93 C1 00 08 */	stw r30, 8(r1)
/* 806AA5EC  7C 7E 1B 78 */	mr r30, r3
/* 806AA5F0  7C BF 2B 78 */	mr r31, r5
/* 806AA5F4  FF C0 08 90 */	fmr f30, f1
/* 806AA5F8  FF E0 10 90 */	fmr f31, f2
/* 806AA5FC  38 00 00 00 */	li r0, 0
/* 806AA600  98 03 06 A0 */	stb r0, 0x6a0(r3)
/* 806AA604  2C 04 00 07 */	cmpwi r4, 7
/* 806AA608  41 82 00 0C */	beq lbl_806AA614
/* 806AA60C  2C 04 00 06 */	cmpwi r4, 6
/* 806AA610  40 82 00 0C */	bne lbl_806AA61C
lbl_806AA614:
/* 806AA614  38 00 00 01 */	li r0, 1
/* 806AA618  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_806AA61C:
/* 806AA61C  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806AA620  38 63 D6 28 */	addi r3, r3, stringBase0@l
/* 806AA624  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806AA628  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806AA62C  3C A5 00 02 */	addis r5, r5, 2
/* 806AA630  38 C0 00 80 */	li r6, 0x80
/* 806AA634  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806AA638  4B 99 1C B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806AA63C  7C 64 1B 78 */	mr r4, r3
/* 806AA640  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AA644  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806AA648  FC 20 F0 90 */	fmr f1, f30
/* 806AA64C  FC 40 F8 90 */	fmr f2, f31
/* 806AA650  3C C0 80 6B */	lis r6, lit_3873@ha
/* 806AA654  C0 66 D5 58 */	lfs f3, lit_3873@l(r6)
/* 806AA658  3C C0 80 6B */	lis r6, lit_3893@ha
/* 806AA65C  C0 86 D5 60 */	lfs f4, lit_3893@l(r6)
/* 806AA660  4B 96 68 10 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806AA664  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806AA668  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806AA66C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806AA670  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806AA674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AA678  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AA67C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AA680  7C 08 03 A6 */	mtlr r0
/* 806AA684  38 21 00 30 */	addi r1, r1, 0x30
/* 806AA688  4E 80 00 20 */	blr 
