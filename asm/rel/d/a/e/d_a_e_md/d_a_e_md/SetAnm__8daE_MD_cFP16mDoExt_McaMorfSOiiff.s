lbl_807091F0:
/* 807091F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807091F4  7C 08 02 A6 */	mflr r0
/* 807091F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807091FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80709200  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80709204  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80709208  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8070920C  39 61 00 20 */	addi r11, r1, 0x20
/* 80709210  4B C5 8F C9 */	bl _savegpr_28
/* 80709214  7C 7C 1B 78 */	mr r28, r3
/* 80709218  7C 9D 23 78 */	mr r29, r4
/* 8070921C  7C BE 2B 78 */	mr r30, r5
/* 80709220  7C DF 33 78 */	mr r31, r6
/* 80709224  FF C0 08 90 */	fmr f30, f1
/* 80709228  FF E0 10 90 */	fmr f31, f2
/* 8070922C  3C 60 80 71 */	lis r3, d_a_e_md__stringBase0@ha /* 0x8070A570@ha */
/* 80709230  38 63 A5 70 */	addi r3, r3, d_a_e_md__stringBase0@l /* 0x8070A570@l */
/* 80709234  7F C4 F3 78 */	mr r4, r30
/* 80709238  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070923C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80709240  3C A5 00 02 */	addis r5, r5, 2
/* 80709244  38 C0 00 80 */	li r6, 0x80
/* 80709248  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8070924C  4B 93 30 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80709250  7C 64 1B 78 */	mr r4, r3
/* 80709254  7F A3 EB 78 */	mr r3, r29
/* 80709258  7F E5 FB 78 */	mr r5, r31
/* 8070925C  FC 20 F0 90 */	fmr f1, f30
/* 80709260  FC 40 F8 90 */	fmr f2, f31
/* 80709264  3C C0 80 71 */	lis r6, lit_3870@ha /* 0x8070A538@ha */
/* 80709268  C0 66 A5 38 */	lfs f3, lit_3870@l(r6)  /* 0x8070A538@l */
/* 8070926C  3C C0 80 71 */	lis r6, lit_3871@ha /* 0x8070A53C@ha */
/* 80709270  C0 86 A5 3C */	lfs f4, lit_3871@l(r6)  /* 0x8070A53C@l */
/* 80709274  4B 90 7B FD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80709278  93 DC 05 B8 */	stw r30, 0x5b8(r28)
/* 8070927C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80709280  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80709284  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80709288  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8070928C  39 61 00 20 */	addi r11, r1, 0x20
/* 80709290  4B C5 8F 95 */	bl _restgpr_28
/* 80709294  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80709298  7C 08 03 A6 */	mtlr r0
/* 8070929C  38 21 00 40 */	addi r1, r1, 0x40
/* 807092A0  4E 80 00 20 */	blr 
