lbl_807A7460:
/* 807A7460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A7464  7C 08 02 A6 */	mflr r0
/* 807A7468  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A746C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807A7470  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807A7474  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807A7478  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807A747C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7480  93 C1 00 08 */	stw r30, 8(r1)
/* 807A7484  7C 7E 1B 78 */	mr r30, r3
/* 807A7488  FF C0 08 90 */	fmr f30, f1
/* 807A748C  7C BF 2B 78 */	mr r31, r5
/* 807A7490  FF E0 10 90 */	fmr f31, f2
/* 807A7494  3C 60 80 7B */	lis r3, d_a_e_sw__stringBase0@ha /* 0x807AFE70@ha */
/* 807A7498  38 63 FE 70 */	addi r3, r3, d_a_e_sw__stringBase0@l /* 0x807AFE70@l */
/* 807A749C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A74A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A74A4  3C A5 00 02 */	addis r5, r5, 2
/* 807A74A8  38 C0 00 80 */	li r6, 0x80
/* 807A74AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807A74B0  4B 89 4E 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807A74B4  7C 64 1B 78 */	mr r4, r3
/* 807A74B8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807A74BC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807A74C0  FC 20 F0 90 */	fmr f1, f30
/* 807A74C4  FC 40 F8 90 */	fmr f2, f31
/* 807A74C8  3C C0 80 7B */	lis r6, lit_3910@ha /* 0x807AFD30@ha */
/* 807A74CC  C0 66 FD 30 */	lfs f3, lit_3910@l(r6)  /* 0x807AFD30@l */
/* 807A74D0  3C C0 80 7B */	lis r6, lit_3947@ha /* 0x807AFD68@ha */
/* 807A74D4  C0 86 FD 68 */	lfs f4, lit_3947@l(r6)  /* 0x807AFD68@l */
/* 807A74D8  4B 86 99 99 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807A74DC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807A74E0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807A74E4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807A74E8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807A74EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A74F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A74F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A74F8  7C 08 03 A6 */	mtlr r0
/* 807A74FC  38 21 00 30 */	addi r1, r1, 0x30
/* 807A7500  4E 80 00 20 */	blr 
