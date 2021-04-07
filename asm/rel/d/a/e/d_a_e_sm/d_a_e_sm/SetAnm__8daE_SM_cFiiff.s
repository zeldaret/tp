lbl_80792260:
/* 80792260  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80792264  7C 08 02 A6 */	mflr r0
/* 80792268  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079226C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80792270  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80792274  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80792278  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8079227C  39 61 00 20 */	addi r11, r1, 0x20
/* 80792280  4B BC FF 5D */	bl _savegpr_29
/* 80792284  7C 7D 1B 78 */	mr r29, r3
/* 80792288  7C 9E 23 78 */	mr r30, r4
/* 8079228C  7C BF 2B 78 */	mr r31, r5
/* 80792290  FF C0 08 90 */	fmr f30, f1
/* 80792294  FF E0 10 90 */	fmr f31, f2
/* 80792298  3C 60 80 7A */	lis r3, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 8079229C  38 63 87 80 */	addi r3, r3, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 807922A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807922A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807922A8  3C A5 00 02 */	addis r5, r5, 2
/* 807922AC  38 C0 00 80 */	li r6, 0x80
/* 807922B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807922B4  4B 8A A0 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807922B8  7C 64 1B 78 */	mr r4, r3
/* 807922BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807922C0  7F E5 FB 78 */	mr r5, r31
/* 807922C4  FC 20 F8 90 */	fmr f1, f31
/* 807922C8  FC 40 F0 90 */	fmr f2, f30
/* 807922CC  3C C0 80 7A */	lis r6, lit_3921@ha /* 0x807985E4@ha */
/* 807922D0  C0 66 85 E4 */	lfs f3, lit_3921@l(r6)  /* 0x807985E4@l */
/* 807922D4  3C C0 80 7A */	lis r6, lit_3955@ha /* 0x80798610@ha */
/* 807922D8  C0 86 86 10 */	lfs f4, lit_3955@l(r6)  /* 0x80798610@l */
/* 807922DC  4B 87 EB 95 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807922E0  93 DD 06 88 */	stw r30, 0x688(r29)
/* 807922E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807922E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807922EC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807922F0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807922F4  39 61 00 20 */	addi r11, r1, 0x20
/* 807922F8  4B BC FF 31 */	bl _restgpr_29
/* 807922FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80792300  7C 08 03 A6 */	mtlr r0
/* 80792304  38 21 00 40 */	addi r1, r1, 0x40
/* 80792308  4E 80 00 20 */	blr 
