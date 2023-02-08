lbl_804EF808:
/* 804EF808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EF80C  7C 08 02 A6 */	mflr r0
/* 804EF810  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EF814  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804EF818  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804EF81C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804EF820  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804EF824  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF828  4B E7 29 B5 */	bl _savegpr_29
/* 804EF82C  7C 7D 1B 78 */	mr r29, r3
/* 804EF830  7C 9E 23 78 */	mr r30, r4
/* 804EF834  FF C0 08 90 */	fmr f30, f1
/* 804EF838  7C BF 2B 78 */	mr r31, r5
/* 804EF83C  FF E0 10 90 */	fmr f31, f2
/* 804EF840  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804EF844  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804EF848  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EF84C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EF850  3C A5 00 02 */	addis r5, r5, 2
/* 804EF854  38 C0 00 80 */	li r6, 0x80
/* 804EF858  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804EF85C  4B B4 CA 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804EF860  7C 64 1B 78 */	mr r4, r3
/* 804EF864  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 804EF868  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 804EF86C  FC 20 F0 90 */	fmr f1, f30
/* 804EF870  FC 40 F8 90 */	fmr f2, f31
/* 804EF874  3C C0 80 50 */	lis r6, lit_3792@ha /* 0x804FA6F8@ha */
/* 804EF878  C0 66 A6 F8 */	lfs f3, lit_3792@l(r6)  /* 0x804FA6F8@l */
/* 804EF87C  3C C0 80 50 */	lis r6, lit_3964@ha /* 0x804FA744@ha */
/* 804EF880  C0 86 A7 44 */	lfs f4, lit_3964@l(r6)  /* 0x804FA744@l */
/* 804EF884  38 C0 00 00 */	li r6, 0
/* 804EF888  4B B2 0A F5 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 804EF88C  93 DD 06 20 */	stw r30, 0x620(r29)
/* 804EF890  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804EF894  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804EF898  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804EF89C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804EF8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF8A4  4B E7 29 85 */	bl _restgpr_29
/* 804EF8A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EF8AC  7C 08 03 A6 */	mtlr r0
/* 804EF8B0  38 21 00 40 */	addi r1, r1, 0x40
/* 804EF8B4  4E 80 00 20 */	blr 
