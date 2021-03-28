lbl_806A78D4:
/* 806A78D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A78D8  7C 08 02 A6 */	mflr r0
/* 806A78DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A78E0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806A78E4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806A78E8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806A78EC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806A78F0  39 61 00 20 */	addi r11, r1, 0x20
/* 806A78F4  4B CB A8 E8 */	b _savegpr_29
/* 806A78F8  7C 7D 1B 78 */	mr r29, r3
/* 806A78FC  7C 9E 23 78 */	mr r30, r4
/* 806A7900  7C BF 2B 78 */	mr r31, r5
/* 806A7904  FF C0 08 90 */	fmr f30, f1
/* 806A7908  FF E0 10 90 */	fmr f31, f2
/* 806A790C  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806A7910  38 63 9F FC */	addi r3, r3, stringBase0@l
/* 806A7914  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A7918  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A791C  3C A5 00 02 */	addis r5, r5, 2
/* 806A7920  38 C0 00 80 */	li r6, 0x80
/* 806A7924  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806A7928  4B 99 49 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A792C  7C 64 1B 78 */	mr r4, r3
/* 806A7930  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806A7934  7F E5 FB 78 */	mr r5, r31
/* 806A7938  FC 20 F0 90 */	fmr f1, f30
/* 806A793C  FC 40 F8 90 */	fmr f2, f31
/* 806A7940  3C C0 80 6B */	lis r6, lit_3917@ha
/* 806A7944  C0 66 9F 34 */	lfs f3, lit_3917@l(r6)
/* 806A7948  3C C0 80 6B */	lis r6, lit_3977@ha
/* 806A794C  C0 86 9F A0 */	lfs f4, lit_3977@l(r6)
/* 806A7950  4B 96 95 20 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806A7954  93 DD 05 C0 */	stw r30, 0x5c0(r29)
/* 806A7958  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806A795C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806A7960  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806A7964  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806A7968  39 61 00 20 */	addi r11, r1, 0x20
/* 806A796C  4B CB A8 BC */	b _restgpr_29
/* 806A7970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A7974  7C 08 03 A6 */	mtlr r0
/* 806A7978  38 21 00 40 */	addi r1, r1, 0x40
/* 806A797C  4E 80 00 20 */	blr 
