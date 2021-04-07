lbl_806AE64C:
/* 806AE64C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AE650  7C 08 02 A6 */	mflr r0
/* 806AE654  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AE658  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806AE65C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806AE660  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806AE664  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806AE668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AE66C  93 C1 00 08 */	stw r30, 8(r1)
/* 806AE670  7C 7E 1B 78 */	mr r30, r3
/* 806AE674  7C BF 2B 78 */	mr r31, r5
/* 806AE678  FF C0 08 90 */	fmr f30, f1
/* 806AE67C  FF E0 10 90 */	fmr f31, f2
/* 806AE680  3C 60 80 6B */	lis r3, d_a_e_dt__stringBase0@ha /* 0x806B5ED0@ha */
/* 806AE684  38 63 5E D0 */	addi r3, r3, d_a_e_dt__stringBase0@l /* 0x806B5ED0@l */
/* 806AE688  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AE68C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AE690  3C A5 00 02 */	addis r5, r5, 2
/* 806AE694  38 C0 00 80 */	li r6, 0x80
/* 806AE698  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806AE69C  4B 98 DC 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806AE6A0  7C 64 1B 78 */	mr r4, r3
/* 806AE6A4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806AE6A8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806AE6AC  FC 20 F0 90 */	fmr f1, f30
/* 806AE6B0  FC 40 F8 90 */	fmr f2, f31
/* 806AE6B4  3C C0 80 6B */	lis r6, lit_4071@ha /* 0x806B5D34@ha */
/* 806AE6B8  C0 66 5D 34 */	lfs f3, lit_4071@l(r6)  /* 0x806B5D34@l */
/* 806AE6BC  3C C0 80 6B */	lis r6, lit_4112@ha /* 0x806B5D48@ha */
/* 806AE6C0  C0 86 5D 48 */	lfs f4, lit_4112@l(r6)  /* 0x806B5D48@l */
/* 806AE6C4  4B 96 27 AD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806AE6C8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806AE6CC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806AE6D0  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806AE6D4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806AE6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AE6DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AE6E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AE6E4  7C 08 03 A6 */	mtlr r0
/* 806AE6E8  38 21 00 30 */	addi r1, r1, 0x30
/* 806AE6EC  4E 80 00 20 */	blr 
