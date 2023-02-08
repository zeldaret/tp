lbl_806105BC:
/* 806105BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806105C0  7C 08 02 A6 */	mflr r0
/* 806105C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806105C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806105CC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806105D0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806105D4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806105D8  39 61 00 20 */	addi r11, r1, 0x20
/* 806105DC  4B D5 1C 01 */	bl _savegpr_29
/* 806105E0  7C 7D 1B 78 */	mr r29, r3
/* 806105E4  7C 9E 23 78 */	mr r30, r4
/* 806105E8  FF C0 08 90 */	fmr f30, f1
/* 806105EC  7C BF 2B 78 */	mr r31, r5
/* 806105F0  FF E0 10 90 */	fmr f31, f2
/* 806105F4  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 806105F8  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 806105FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80610600  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80610604  3C A5 00 02 */	addis r5, r5, 2
/* 80610608  38 C0 00 80 */	li r6, 0x80
/* 8061060C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80610610  4B A2 BC DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80610614  7C 64 1B 78 */	mr r4, r3
/* 80610618  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 8061061C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80610620  FC 20 F0 90 */	fmr f1, f30
/* 80610624  FC 40 F8 90 */	fmr f2, f31
/* 80610628  3C C0 80 62 */	lis r6, lit_3788@ha /* 0x8061AD90@ha */
/* 8061062C  C0 66 AD 90 */	lfs f3, lit_3788@l(r6)  /* 0x8061AD90@l */
/* 80610630  3C C0 80 62 */	lis r6, lit_3789@ha /* 0x8061AD94@ha */
/* 80610634  C0 86 AD 94 */	lfs f4, lit_3789@l(r6)  /* 0x8061AD94@l */
/* 80610638  38 C0 00 00 */	li r6, 0
/* 8061063C  4B 9F FD 41 */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80610640  93 DD 47 34 */	stw r30, 0x4734(r29)
/* 80610644  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80610648  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8061064C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80610650  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80610654  39 61 00 20 */	addi r11, r1, 0x20
/* 80610658  4B D5 1B D1 */	bl _restgpr_29
/* 8061065C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80610660  7C 08 03 A6 */	mtlr r0
/* 80610664  38 21 00 40 */	addi r1, r1, 0x40
/* 80610668  4E 80 00 20 */	blr 
