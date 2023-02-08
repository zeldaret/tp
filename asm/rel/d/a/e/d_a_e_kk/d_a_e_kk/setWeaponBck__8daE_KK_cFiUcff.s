lbl_806FAB14:
/* 806FAB14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806FAB18  7C 08 02 A6 */	mflr r0
/* 806FAB1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806FAB20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806FAB24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806FAB28  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806FAB2C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806FAB30  39 61 00 20 */	addi r11, r1, 0x20
/* 806FAB34  4B C6 76 A9 */	bl _savegpr_29
/* 806FAB38  7C 7D 1B 78 */	mr r29, r3
/* 806FAB3C  7C 9E 23 78 */	mr r30, r4
/* 806FAB40  7C BF 2B 78 */	mr r31, r5
/* 806FAB44  FF C0 08 90 */	fmr f30, f1
/* 806FAB48  FF E0 10 90 */	fmr f31, f2
/* 806FAB4C  3C 60 80 70 */	lis r3, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FAB50  38 63 F6 B8 */	addi r3, r3, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FAB54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FAB58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FAB5C  3C A5 00 02 */	addis r5, r5, 2
/* 806FAB60  38 C0 00 80 */	li r6, 0x80
/* 806FAB64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806FAB68  4B 94 17 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FAB6C  7C 64 1B 78 */	mr r4, r3
/* 806FAB70  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FAB74  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806FAB78  FC 20 F0 90 */	fmr f1, f30
/* 806FAB7C  FC 40 F8 90 */	fmr f2, f31
/* 806FAB80  3C C0 80 70 */	lis r6, lit_3793@ha /* 0x806FF5EC@ha */
/* 806FAB84  C0 66 F5 EC */	lfs f3, lit_3793@l(r6)  /* 0x806FF5EC@l */
/* 806FAB88  3C C0 80 70 */	lis r6, lit_3931@ha /* 0x806FF628@ha */
/* 806FAB8C  C0 86 F6 28 */	lfs f4, lit_3931@l(r6)  /* 0x806FF628@l */
/* 806FAB90  4B 91 62 E1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806FAB94  93 DD 07 68 */	stw r30, 0x768(r29)
/* 806FAB98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806FAB9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806FABA0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806FABA4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806FABA8  39 61 00 20 */	addi r11, r1, 0x20
/* 806FABAC  4B C6 76 7D */	bl _restgpr_29
/* 806FABB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806FABB4  7C 08 03 A6 */	mtlr r0
/* 806FABB8  38 21 00 40 */	addi r1, r1, 0x40
/* 806FABBC  4E 80 00 20 */	blr 
