lbl_8052A114:
/* 8052A114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052A118  7C 08 02 A6 */	mflr r0
/* 8052A11C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052A120  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8052A124  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052A128  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8052A12C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8052A130  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A134  4B E3 80 A9 */	bl _savegpr_29
/* 8052A138  7C 7D 1B 78 */	mr r29, r3
/* 8052A13C  7C 9E 23 78 */	mr r30, r4
/* 8052A140  FF C0 08 90 */	fmr f30, f1
/* 8052A144  7C BF 2B 78 */	mr r31, r5
/* 8052A148  FF E0 10 90 */	fmr f31, f2
/* 8052A14C  80 63 05 FC */	lwz r3, 0x5fc(r3)
/* 8052A150  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052A154  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052A158  3C A5 00 02 */	addis r5, r5, 2
/* 8052A15C  38 C0 00 80 */	li r6, 0x80
/* 8052A160  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8052A164  4B B1 21 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8052A168  7C 64 1B 78 */	mr r4, r3
/* 8052A16C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8052A170  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8052A174  FC 20 F0 90 */	fmr f1, f30
/* 8052A178  FC 40 F8 90 */	fmr f2, f31
/* 8052A17C  3C C0 80 53 */	lis r6, lit_3715@ha /* 0x80536180@ha */
/* 8052A180  C0 66 61 80 */	lfs f3, lit_3715@l(r6)  /* 0x80536180@l */
/* 8052A184  3C C0 80 53 */	lis r6, lit_3823@ha /* 0x805361B0@ha */
/* 8052A188  C0 86 61 B0 */	lfs f4, lit_3823@l(r6)  /* 0x805361B0@l */
/* 8052A18C  38 C0 00 00 */	li r6, 0
/* 8052A190  4B AE 61 ED */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8052A194  93 DD 06 0C */	stw r30, 0x60c(r29)
/* 8052A198  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052A19C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8052A1A0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8052A1A4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8052A1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A1AC  4B E3 80 7D */	bl _restgpr_29
/* 8052A1B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052A1B4  7C 08 03 A6 */	mtlr r0
/* 8052A1B8  38 21 00 40 */	addi r1, r1, 0x40
/* 8052A1BC  4E 80 00 20 */	blr 
