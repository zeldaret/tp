lbl_8074C660:
/* 8074C660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8074C664  7C 08 02 A6 */	mflr r0
/* 8074C668  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074C66C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8074C670  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8074C674  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8074C678  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8074C67C  39 61 00 20 */	addi r11, r1, 0x20
/* 8074C680  4B C1 5B 5D */	bl _savegpr_29
/* 8074C684  7C 7D 1B 78 */	mr r29, r3
/* 8074C688  7C 9E 23 78 */	mr r30, r4
/* 8074C68C  FF C0 08 90 */	fmr f30, f1
/* 8074C690  7C BF 2B 78 */	mr r31, r5
/* 8074C694  FF E0 10 90 */	fmr f31, f2
/* 8074C698  3C 60 80 75 */	lis r3, d_a_e_po__stringBase0@ha /* 0x80757A88@ha */
/* 8074C69C  38 63 7A 88 */	addi r3, r3, d_a_e_po__stringBase0@l /* 0x80757A88@l */
/* 8074C6A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074C6A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074C6A8  3C A5 00 02 */	addis r5, r5, 2
/* 8074C6AC  38 C0 00 80 */	li r6, 0x80
/* 8074C6B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8074C6B4  4B 8E FC 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8074C6B8  7C 64 1B 78 */	mr r4, r3
/* 8074C6BC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074C6C0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8074C6C4  FC 20 F0 90 */	fmr f1, f30
/* 8074C6C8  FC 40 F8 90 */	fmr f2, f31
/* 8074C6CC  3C C0 80 75 */	lis r6, lit_3918@ha /* 0x80757700@ha */
/* 8074C6D0  C0 66 77 00 */	lfs f3, lit_3918@l(r6)  /* 0x80757700@l */
/* 8074C6D4  3C C0 80 75 */	lis r6, lit_3974@ha /* 0x8075773C@ha */
/* 8074C6D8  C0 86 77 3C */	lfs f4, lit_3974@l(r6)  /* 0x8075773C@l */
/* 8074C6DC  4B 8C 47 95 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8074C6E0  93 DD 05 E4 */	stw r30, 0x5e4(r29)
/* 8074C6E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8074C6E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8074C6EC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8074C6F0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8074C6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8074C6F8  4B C1 5B 31 */	bl _restgpr_29
/* 8074C6FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8074C700  7C 08 03 A6 */	mtlr r0
/* 8074C704  38 21 00 40 */	addi r1, r1, 0x40
/* 8074C708  4E 80 00 20 */	blr 
