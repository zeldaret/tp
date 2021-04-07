lbl_80698044:
/* 80698044  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80698048  7C 08 02 A6 */	mflr r0
/* 8069804C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80698050  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80698054  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80698058  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8069805C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80698060  39 61 00 20 */	addi r11, r1, 0x20
/* 80698064  4B CC A1 79 */	bl _savegpr_29
/* 80698068  7C 7D 1B 78 */	mr r29, r3
/* 8069806C  7C 9E 23 78 */	mr r30, r4
/* 80698070  FF C0 08 90 */	fmr f30, f1
/* 80698074  7C BF 2B 78 */	mr r31, r5
/* 80698078  FF E0 10 90 */	fmr f31, f2
/* 8069807C  3C 60 80 6A */	lis r3, d_a_e_cr__stringBase0@ha /* 0x80699D40@ha */
/* 80698080  38 63 9D 40 */	addi r3, r3, d_a_e_cr__stringBase0@l /* 0x80699D40@l */
/* 80698084  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80698088  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069808C  3C A5 00 02 */	addis r5, r5, 2
/* 80698090  38 C0 00 80 */	li r6, 0x80
/* 80698094  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80698098  4B 9A 42 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069809C  7C 64 1B 78 */	mr r4, r3
/* 806980A0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806980A4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806980A8  FC 20 F0 90 */	fmr f1, f30
/* 806980AC  FC 40 F8 90 */	fmr f2, f31
/* 806980B0  3C C0 80 6A */	lis r6, lit_3789@ha /* 0x80699CB4@ha */
/* 806980B4  C0 66 9C B4 */	lfs f3, lit_3789@l(r6)  /* 0x80699CB4@l */
/* 806980B8  3C C0 80 6A */	lis r6, lit_3825@ha /* 0x80699CE8@ha */
/* 806980BC  C0 86 9C E8 */	lfs f4, lit_3825@l(r6)  /* 0x80699CE8@l */
/* 806980C0  4B 97 8D B1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806980C4  93 DD 06 60 */	stw r30, 0x660(r29)
/* 806980C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806980CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806980D0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806980D4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806980D8  39 61 00 20 */	addi r11, r1, 0x20
/* 806980DC  4B CC A1 4D */	bl _restgpr_29
/* 806980E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806980E4  7C 08 03 A6 */	mtlr r0
/* 806980E8  38 21 00 40 */	addi r1, r1, 0x40
/* 806980EC  4E 80 00 20 */	blr 
