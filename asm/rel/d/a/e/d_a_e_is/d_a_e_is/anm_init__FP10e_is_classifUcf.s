lbl_806F5A94:
/* 806F5A94  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F5A98  7C 08 02 A6 */	mflr r0
/* 806F5A9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F5AA0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806F5AA4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806F5AA8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806F5AAC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806F5AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 806F5AB4  4B C6 C7 29 */	bl _savegpr_29
/* 806F5AB8  7C 7D 1B 78 */	mr r29, r3
/* 806F5ABC  7C 9E 23 78 */	mr r30, r4
/* 806F5AC0  FF C0 08 90 */	fmr f30, f1
/* 806F5AC4  7C BF 2B 78 */	mr r31, r5
/* 806F5AC8  FF E0 10 90 */	fmr f31, f2
/* 806F5ACC  3C 60 80 6F */	lis r3, d_a_e_is__stringBase0@ha /* 0x806F7C14@ha */
/* 806F5AD0  38 63 7C 14 */	addi r3, r3, d_a_e_is__stringBase0@l /* 0x806F7C14@l */
/* 806F5AD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F5AD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F5ADC  3C A5 00 02 */	addis r5, r5, 2
/* 806F5AE0  38 C0 00 80 */	li r6, 0x80
/* 806F5AE4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806F5AE8  4B 94 68 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F5AEC  7C 64 1B 78 */	mr r4, r3
/* 806F5AF0  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806F5AF4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806F5AF8  FC 20 F0 90 */	fmr f1, f30
/* 806F5AFC  FC 40 F8 90 */	fmr f2, f31
/* 806F5B00  3C C0 80 6F */	lis r6, lit_3666@ha /* 0x806F7B80@ha */
/* 806F5B04  C0 66 7B 80 */	lfs f3, lit_3666@l(r6)  /* 0x806F7B80@l */
/* 806F5B08  3C C0 80 6F */	lis r6, lit_3667@ha /* 0x806F7B84@ha */
/* 806F5B0C  C0 86 7B 84 */	lfs f4, lit_3667@l(r6)  /* 0x806F7B84@l */
/* 806F5B10  4B 91 B3 61 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806F5B14  93 DD 06 70 */	stw r30, 0x670(r29)
/* 806F5B18  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806F5B1C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806F5B20  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806F5B24  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806F5B28  39 61 00 20 */	addi r11, r1, 0x20
/* 806F5B2C  4B C6 C6 FD */	bl _restgpr_29
/* 806F5B30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F5B34  7C 08 03 A6 */	mtlr r0
/* 806F5B38  38 21 00 40 */	addi r1, r1, 0x40
/* 806F5B3C  4E 80 00 20 */	blr 
