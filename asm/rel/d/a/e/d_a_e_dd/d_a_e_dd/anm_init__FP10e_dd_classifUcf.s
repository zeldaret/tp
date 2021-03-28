lbl_806A22CC:
/* 806A22CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A22D0  7C 08 02 A6 */	mflr r0
/* 806A22D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A22D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806A22DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806A22E0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806A22E4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806A22E8  39 61 00 20 */	addi r11, r1, 0x20
/* 806A22EC  4B CB FE F0 */	b _savegpr_29
/* 806A22F0  7C 7D 1B 78 */	mr r29, r3
/* 806A22F4  7C 9E 23 78 */	mr r30, r4
/* 806A22F8  FF C0 08 90 */	fmr f30, f1
/* 806A22FC  7C BF 2B 78 */	mr r31, r5
/* 806A2300  FF E0 10 90 */	fmr f31, f2
/* 806A2304  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A2308  38 63 72 B4 */	addi r3, r3, stringBase0@l
/* 806A230C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A2310  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A2314  3C A5 00 02 */	addis r5, r5, 2
/* 806A2318  38 C0 00 80 */	li r6, 0x80
/* 806A231C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806A2320  4B 99 9F CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A2324  7C 64 1B 78 */	mr r4, r3
/* 806A2328  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806A232C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806A2330  FC 20 F0 90 */	fmr f1, f30
/* 806A2334  FC 40 F8 90 */	fmr f2, f31
/* 806A2338  3C C0 80 6A */	lis r6, lit_3904@ha
/* 806A233C  C0 66 71 C8 */	lfs f3, lit_3904@l(r6)
/* 806A2340  3C C0 80 6A */	lis r6, lit_3943@ha
/* 806A2344  C0 86 72 08 */	lfs f4, lit_3943@l(r6)
/* 806A2348  4B 96 EB 28 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806A234C  93 DD 06 84 */	stw r30, 0x684(r29)
/* 806A2350  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806A2354  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806A2358  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806A235C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806A2360  39 61 00 20 */	addi r11, r1, 0x20
/* 806A2364  4B CB FE C4 */	b _restgpr_29
/* 806A2368  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A236C  7C 08 03 A6 */	mtlr r0
/* 806A2370  38 21 00 40 */	addi r1, r1, 0x40
/* 806A2374  4E 80 00 20 */	blr 
