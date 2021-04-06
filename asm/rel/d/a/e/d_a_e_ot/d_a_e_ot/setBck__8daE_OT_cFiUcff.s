lbl_8073A454:
/* 8073A454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073A458  7C 08 02 A6 */	mflr r0
/* 8073A45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073A460  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8073A464  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8073A468  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8073A46C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8073A470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073A474  93 C1 00 08 */	stw r30, 8(r1)
/* 8073A478  7C 7E 1B 78 */	mr r30, r3
/* 8073A47C  7C BF 2B 78 */	mr r31, r5
/* 8073A480  FF C0 08 90 */	fmr f30, f1
/* 8073A484  FF E0 10 90 */	fmr f31, f2
/* 8073A488  3C 60 80 74 */	lis r3, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073A48C  38 63 CF 6C */	addi r3, r3, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073A490  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073A494  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073A498  3C A5 00 02 */	addis r5, r5, 2
/* 8073A49C  38 C0 00 80 */	li r6, 0x80
/* 8073A4A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8073A4A4  4B 90 1E 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073A4A8  7C 64 1B 78 */	mr r4, r3
/* 8073A4AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073A4B0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8073A4B4  FC 20 F0 90 */	fmr f1, f30
/* 8073A4B8  FC 40 F8 90 */	fmr f2, f31
/* 8073A4BC  3C C0 80 74 */	lis r6, lit_3911@ha /* 0x8073CEAC@ha */
/* 8073A4C0  C0 66 CE AC */	lfs f3, lit_3911@l(r6)  /* 0x8073CEAC@l */
/* 8073A4C4  3C C0 80 74 */	lis r6, lit_3986@ha /* 0x8073CEE4@ha */
/* 8073A4C8  C0 86 CE E4 */	lfs f4, lit_3986@l(r6)  /* 0x8073CEE4@l */
/* 8073A4CC  4B 8D 69 A5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8073A4D0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8073A4D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8073A4D8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8073A4DC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8073A4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073A4E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8073A4E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073A4EC  7C 08 03 A6 */	mtlr r0
/* 8073A4F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8073A4F4  4E 80 00 20 */	blr 
