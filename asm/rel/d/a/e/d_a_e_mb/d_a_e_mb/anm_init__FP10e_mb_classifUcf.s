lbl_807061B4:
/* 807061B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807061B8  7C 08 02 A6 */	mflr r0
/* 807061BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807061C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807061C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807061C8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807061CC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807061D0  39 61 00 20 */	addi r11, r1, 0x20
/* 807061D4  4B C5 C0 09 */	bl _savegpr_29
/* 807061D8  7C 7D 1B 78 */	mr r29, r3
/* 807061DC  7C 9E 23 78 */	mr r30, r4
/* 807061E0  FF C0 08 90 */	fmr f30, f1
/* 807061E4  7C BF 2B 78 */	mr r31, r5
/* 807061E8  FF E0 10 90 */	fmr f31, f2
/* 807061EC  3C 60 80 71 */	lis r3, d_a_e_mb__stringBase0@ha /* 0x80708AE8@ha */
/* 807061F0  38 63 8A E8 */	addi r3, r3, d_a_e_mb__stringBase0@l /* 0x80708AE8@l */
/* 807061F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807061F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807061FC  3C A5 00 02 */	addis r5, r5, 2
/* 80706200  38 C0 00 80 */	li r6, 0x80
/* 80706204  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80706208  4B 93 60 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8070620C  7C 64 1B 78 */	mr r4, r3
/* 80706210  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80706214  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80706218  FC 20 F0 90 */	fmr f1, f30
/* 8070621C  FC 40 F8 90 */	fmr f2, f31
/* 80706220  3C C0 80 71 */	lis r6, lit_3767@ha /* 0x80708A1C@ha */
/* 80706224  C0 66 8A 1C */	lfs f3, lit_3767@l(r6)  /* 0x80708A1C@l */
/* 80706228  3C C0 80 71 */	lis r6, lit_3782@ha /* 0x80708A24@ha */
/* 8070622C  C0 86 8A 24 */	lfs f4, lit_3782@l(r6)  /* 0x80708A24@l */
/* 80706230  4B 90 AC 41 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80706234  93 DD 05 CC */	stw r30, 0x5cc(r29)
/* 80706238  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8070623C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80706240  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80706244  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80706248  39 61 00 20 */	addi r11, r1, 0x20
/* 8070624C  4B C5 BF DD */	bl _restgpr_29
/* 80706250  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80706254  7C 08 03 A6 */	mtlr r0
/* 80706258  38 21 00 40 */	addi r1, r1, 0x40
/* 8070625C  4E 80 00 20 */	blr 
