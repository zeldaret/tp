lbl_806B9A28:
/* 806B9A28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B9A2C  7C 08 02 A6 */	mflr r0
/* 806B9A30  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B9A34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806B9A38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806B9A3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806B9A40  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806B9A44  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9A48  4B CA 87 95 */	bl _savegpr_29
/* 806B9A4C  7C 7D 1B 78 */	mr r29, r3
/* 806B9A50  7C 9E 23 78 */	mr r30, r4
/* 806B9A54  7C BF 2B 78 */	mr r31, r5
/* 806B9A58  FF C0 08 90 */	fmr f30, f1
/* 806B9A5C  FF E0 10 90 */	fmr f31, f2
/* 806B9A60  3C 60 80 6C */	lis r3, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806B9A64  38 63 B8 1C */	addi r3, r3, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806B9A68  38 63 00 05 */	addi r3, r3, 5
/* 806B9A6C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B9A70  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B9A74  3C A5 00 02 */	addis r5, r5, 2
/* 806B9A78  38 C0 00 80 */	li r6, 0x80
/* 806B9A7C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806B9A80  4B 98 28 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B9A84  7C 64 1B 78 */	mr r4, r3
/* 806B9A88  80 7D 0C 30 */	lwz r3, 0xc30(r29)
/* 806B9A8C  7F E5 FB 78 */	mr r5, r31
/* 806B9A90  FC 20 F0 90 */	fmr f1, f30
/* 806B9A94  FC 40 F8 90 */	fmr f2, f31
/* 806B9A98  3C C0 80 6C */	lis r6, lit_3827@ha /* 0x806BB6D4@ha */
/* 806B9A9C  C0 66 B6 D4 */	lfs f3, lit_3827@l(r6)  /* 0x806BB6D4@l */
/* 806B9AA0  3C C0 80 6C */	lis r6, lit_4037@ha /* 0x806BB7A0@ha */
/* 806B9AA4  C0 86 B7 A0 */	lfs f4, lit_4037@l(r6)  /* 0x806BB7A0@l */
/* 806B9AA8  4B 95 73 C9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806B9AAC  93 DD 05 C0 */	stw r30, 0x5c0(r29)
/* 806B9AB0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806B9AB4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806B9AB8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806B9ABC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806B9AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9AC4  4B CA 87 65 */	bl _restgpr_29
/* 806B9AC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B9ACC  7C 08 03 A6 */	mtlr r0
/* 806B9AD0  38 21 00 40 */	addi r1, r1, 0x40
/* 806B9AD4  4E 80 00 20 */	blr 
