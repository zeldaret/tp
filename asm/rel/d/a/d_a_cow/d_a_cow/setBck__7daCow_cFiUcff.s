lbl_80658730:
/* 80658730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80658734  7C 08 02 A6 */	mflr r0
/* 80658738  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065873C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80658740  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80658744  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80658748  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8065874C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80658750  93 C1 00 08 */	stw r30, 8(r1)
/* 80658754  7C 7E 1B 78 */	mr r30, r3
/* 80658758  7C BF 2B 78 */	mr r31, r5
/* 8065875C  FF C0 08 90 */	fmr f30, f1
/* 80658760  FF E0 10 90 */	fmr f31, f2
/* 80658764  3C 60 80 66 */	lis r3, stringBase0@ha
/* 80658768  38 63 2F 18 */	addi r3, r3, stringBase0@l
/* 8065876C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80658770  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80658774  3C A5 00 02 */	addis r5, r5, 2
/* 80658778  38 C0 00 80 */	li r6, 0x80
/* 8065877C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80658780  4B 9E 3B 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80658784  7C 64 1B 78 */	mr r4, r3
/* 80658788  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8065878C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80658790  FC 20 F0 90 */	fmr f1, f30
/* 80658794  FC 40 F8 90 */	fmr f2, f31
/* 80658798  3C C0 80 66 */	lis r6, lit_3998@ha
/* 8065879C  C0 66 2D C8 */	lfs f3, lit_3998@l(r6)
/* 806587A0  3C C0 80 66 */	lis r6, lit_3999@ha
/* 806587A4  C0 86 2D CC */	lfs f4, lit_3999@l(r6)
/* 806587A8  4B 9B 86 C8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806587AC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806587B0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806587B4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806587B8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806587BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806587C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806587C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806587C8  7C 08 03 A6 */	mtlr r0
/* 806587CC  38 21 00 30 */	addi r1, r1, 0x30
/* 806587D0  4E 80 00 20 */	blr 
