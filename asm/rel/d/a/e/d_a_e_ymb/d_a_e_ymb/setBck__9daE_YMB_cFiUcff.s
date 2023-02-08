lbl_8081697C:
/* 8081697C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80816980  7C 08 02 A6 */	mflr r0
/* 80816984  90 01 00 34 */	stw r0, 0x34(r1)
/* 80816988  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8081698C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80816990  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80816994  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80816998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8081699C  93 C1 00 08 */	stw r30, 8(r1)
/* 808169A0  7C 7E 1B 78 */	mr r30, r3
/* 808169A4  7C BF 2B 78 */	mr r31, r5
/* 808169A8  FF C0 08 90 */	fmr f30, f1
/* 808169AC  FF E0 10 90 */	fmr f31, f2
/* 808169B0  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 808169B4  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 808169B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808169BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808169C0  3C A5 00 02 */	addis r5, r5, 2
/* 808169C4  38 C0 00 80 */	li r6, 0x80
/* 808169C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808169CC  4B 82 59 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808169D0  7C 64 1B 78 */	mr r4, r3
/* 808169D4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 808169D8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 808169DC  FC 20 F0 90 */	fmr f1, f30
/* 808169E0  FC 40 F8 90 */	fmr f2, f31
/* 808169E4  3C C0 80 82 */	lis r6, lit_3910@ha /* 0x808218C4@ha */
/* 808169E8  C0 66 18 C4 */	lfs f3, lit_3910@l(r6)  /* 0x808218C4@l */
/* 808169EC  3C C0 80 82 */	lis r6, lit_4083@ha /* 0x808218E0@ha */
/* 808169F0  C0 86 18 E0 */	lfs f4, lit_4083@l(r6)  /* 0x808218E0@l */
/* 808169F4  4B 7F A4 7D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 808169F8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 808169FC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80816A00  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80816A04  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80816A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80816A0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80816A10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80816A14  7C 08 03 A6 */	mtlr r0
/* 80816A18  38 21 00 30 */	addi r1, r1, 0x30
/* 80816A1C  4E 80 00 20 */	blr 
