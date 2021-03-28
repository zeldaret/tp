lbl_8063E5C4:
/* 8063E5C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063E5C8  7C 08 02 A6 */	mflr r0
/* 8063E5CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063E5D0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8063E5D4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8063E5D8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8063E5DC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8063E5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063E5E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063E5E8  7C 7E 1B 78 */	mr r30, r3
/* 8063E5EC  7C BF 2B 78 */	mr r31, r5
/* 8063E5F0  FF C0 08 90 */	fmr f30, f1
/* 8063E5F4  FF E0 10 90 */	fmr f31, f2
/* 8063E5F8  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8063E5FC  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8063E600  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8063E604  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8063E608  3C A5 00 02 */	addis r5, r5, 2
/* 8063E60C  38 C0 00 80 */	li r6, 0x80
/* 8063E610  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8063E614  4B 9F DC D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063E618  7C 64 1B 78 */	mr r4, r3
/* 8063E61C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8063E620  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8063E624  FC 20 F0 90 */	fmr f1, f30
/* 8063E628  FC 40 F8 90 */	fmr f2, f31
/* 8063E62C  3C C0 80 65 */	lis r6, lit_4176@ha
/* 8063E630  C0 66 EB 44 */	lfs f3, lit_4176@l(r6)
/* 8063E634  3C C0 80 65 */	lis r6, lit_4348@ha
/* 8063E638  C0 86 EB 84 */	lfs f4, lit_4348@l(r6)
/* 8063E63C  4B 9D 28 34 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8063E640  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8063E644  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8063E648  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8063E64C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8063E650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063E654  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063E658  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063E65C  7C 08 03 A6 */	mtlr r0
/* 8063E660  38 21 00 30 */	addi r1, r1, 0x30
/* 8063E664  4E 80 00 20 */	blr 
