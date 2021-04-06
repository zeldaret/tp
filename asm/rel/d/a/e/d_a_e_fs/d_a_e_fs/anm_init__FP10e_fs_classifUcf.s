lbl_806BBB10:
/* 806BBB10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806BBB14  7C 08 02 A6 */	mflr r0
/* 806BBB18  90 01 00 44 */	stw r0, 0x44(r1)
/* 806BBB1C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806BBB20  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806BBB24  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806BBB28  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806BBB2C  39 61 00 20 */	addi r11, r1, 0x20
/* 806BBB30  4B CA 66 AD */	bl _savegpr_29
/* 806BBB34  7C 7D 1B 78 */	mr r29, r3
/* 806BBB38  7C 9E 23 78 */	mr r30, r4
/* 806BBB3C  FF C0 08 90 */	fmr f30, f1
/* 806BBB40  7C BF 2B 78 */	mr r31, r5
/* 806BBB44  FF E0 10 90 */	fmr f31, f2
/* 806BBB48  3C 60 80 6C */	lis r3, d_a_e_fs__stringBase0@ha /* 0x806BE564@ha */
/* 806BBB4C  38 63 E5 64 */	addi r3, r3, d_a_e_fs__stringBase0@l /* 0x806BE564@l */
/* 806BBB50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BBB54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BBB58  3C A5 00 02 */	addis r5, r5, 2
/* 806BBB5C  38 C0 00 80 */	li r6, 0x80
/* 806BBB60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806BBB64  4B 98 07 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806BBB68  7C 64 1B 78 */	mr r4, r3
/* 806BBB6C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806BBB70  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806BBB74  FC 20 F0 90 */	fmr f1, f30
/* 806BBB78  FC 40 F8 90 */	fmr f2, f31
/* 806BBB7C  3C C0 80 6C */	lis r6, lit_3918@ha /* 0x806BE490@ha */
/* 806BBB80  C0 66 E4 90 */	lfs f3, lit_3918@l(r6)  /* 0x806BE490@l */
/* 806BBB84  3C C0 80 6C */	lis r6, lit_3954@ha /* 0x806BE4C4@ha */
/* 806BBB88  C0 86 E4 C4 */	lfs f4, lit_3954@l(r6)  /* 0x806BE4C4@l */
/* 806BBB8C  4B 95 52 E5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806BBB90  93 DD 06 78 */	stw r30, 0x678(r29)
/* 806BBB94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806BBB98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806BBB9C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806BBBA0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806BBBA4  39 61 00 20 */	addi r11, r1, 0x20
/* 806BBBA8  4B CA 66 81 */	bl _restgpr_29
/* 806BBBAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806BBBB0  7C 08 03 A6 */	mtlr r0
/* 806BBBB4  38 21 00 40 */	addi r1, r1, 0x40
/* 806BBBB8  4E 80 00 20 */	blr 
