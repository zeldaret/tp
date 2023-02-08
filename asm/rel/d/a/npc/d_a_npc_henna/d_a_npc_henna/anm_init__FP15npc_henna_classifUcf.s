lbl_80542F98:
/* 80542F98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80542F9C  7C 08 02 A6 */	mflr r0
/* 80542FA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80542FA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80542FA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80542FAC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80542FB0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80542FB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80542FB8  4B E1 F2 25 */	bl _savegpr_29
/* 80542FBC  7C 7D 1B 78 */	mr r29, r3
/* 80542FC0  7C 9E 23 78 */	mr r30, r4
/* 80542FC4  FF C0 08 90 */	fmr f30, f1
/* 80542FC8  7C BF 2B 78 */	mr r31, r5
/* 80542FCC  FF E0 10 90 */	fmr f31, f2
/* 80542FD0  3C 60 80 55 */	lis r3, d_a_npc_henna__stringBase0@ha /* 0x8054AC70@ha */
/* 80542FD4  38 63 AC 70 */	addi r3, r3, d_a_npc_henna__stringBase0@l /* 0x8054AC70@l */
/* 80542FD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80542FDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80542FE0  3C A5 00 02 */	addis r5, r5, 2
/* 80542FE4  38 C0 00 80 */	li r6, 0x80
/* 80542FE8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80542FEC  4B AF 93 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80542FF0  7C 64 1B 78 */	mr r4, r3
/* 80542FF4  80 7D 06 24 */	lwz r3, 0x624(r29)
/* 80542FF8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80542FFC  FC 20 F0 90 */	fmr f1, f30
/* 80543000  FC 40 F8 90 */	fmr f2, f31
/* 80543004  3C C0 80 55 */	lis r6, lit_3921@ha /* 0x8054A970@ha */
/* 80543008  C0 66 A9 70 */	lfs f3, lit_3921@l(r6)  /* 0x8054A970@l */
/* 8054300C  3C C0 80 55 */	lis r6, lit_3922@ha /* 0x8054A974@ha */
/* 80543010  C0 86 A9 74 */	lfs f4, lit_3922@l(r6)  /* 0x8054A974@l */
/* 80543014  38 C0 00 00 */	li r6, 0
/* 80543018  4B AC D3 65 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8054301C  93 DD 06 5C */	stw r30, 0x65c(r29)
/* 80543020  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80543024  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80543028  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8054302C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80543030  39 61 00 20 */	addi r11, r1, 0x20
/* 80543034  4B E1 F1 F5 */	bl _restgpr_29
/* 80543038  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054303C  7C 08 03 A6 */	mtlr r0
/* 80543040  38 21 00 40 */	addi r1, r1, 0x40
/* 80543044  4E 80 00 20 */	blr 
