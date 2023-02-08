lbl_808331E4:
/* 808331E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808331E8  7C 08 02 A6 */	mflr r0
/* 808331EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 808331F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808331F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808331F8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 808331FC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80833200  39 61 00 20 */	addi r11, r1, 0x20
/* 80833204  4B B2 EF D9 */	bl _savegpr_29
/* 80833208  7C 7D 1B 78 */	mr r29, r3
/* 8083320C  7C 9E 23 78 */	mr r30, r4
/* 80833210  7C BF 2B 78 */	mr r31, r5
/* 80833214  FF C0 08 90 */	fmr f30, f1
/* 80833218  FF E0 10 90 */	fmr f31, f2
/* 8083321C  3C 60 80 83 */	lis r3, d_a_e_zs__stringBase0@ha /* 0x80835344@ha */
/* 80833220  38 63 53 44 */	addi r3, r3, d_a_e_zs__stringBase0@l /* 0x80835344@l */
/* 80833224  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80833228  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083322C  3C A5 00 02 */	addis r5, r5, 2
/* 80833230  38 C0 00 80 */	li r6, 0x80
/* 80833234  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80833238  4B 80 90 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8083323C  7C 64 1B 78 */	mr r4, r3
/* 80833240  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80833244  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80833248  FC 20 F0 90 */	fmr f1, f30
/* 8083324C  FC 40 F8 90 */	fmr f2, f31
/* 80833250  3C C0 80 83 */	lis r6, lit_3910@ha /* 0x808352D4@ha */
/* 80833254  C0 66 52 D4 */	lfs f3, lit_3910@l(r6)  /* 0x808352D4@l */
/* 80833258  3C C0 80 83 */	lis r6, lit_3971@ha /* 0x8083530C@ha */
/* 8083325C  C0 86 53 0C */	lfs f4, lit_3971@l(r6)  /* 0x8083530C@l */
/* 80833260  4B 7D DC 11 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80833264  93 DD 06 68 */	stw r30, 0x668(r29)
/* 80833268  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8083326C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80833270  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80833274  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80833278  39 61 00 20 */	addi r11, r1, 0x20
/* 8083327C  4B B2 EF AD */	bl _restgpr_29
/* 80833280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80833284  7C 08 03 A6 */	mtlr r0
/* 80833288  38 21 00 40 */	addi r1, r1, 0x40
/* 8083328C  4E 80 00 20 */	blr 
