lbl_804E52D0:
/* 804E52D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E52D4  7C 08 02 A6 */	mflr r0
/* 804E52D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E52DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E52E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E52E4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804E52E8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804E52EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E52F0  4B E7 CE ED */	bl _savegpr_29
/* 804E52F4  7C 7D 1B 78 */	mr r29, r3
/* 804E52F8  7C 9E 23 78 */	mr r30, r4
/* 804E52FC  FF C0 08 90 */	fmr f30, f1
/* 804E5300  7C BF 2B 78 */	mr r31, r5
/* 804E5304  FF E0 10 90 */	fmr f31, f2
/* 804E5308  3C 60 80 4F */	lis r3, d_a_e_dn__stringBase0@ha /* 0x804EEA34@ha */
/* 804E530C  38 63 EA 34 */	addi r3, r3, d_a_e_dn__stringBase0@l /* 0x804EEA34@l */
/* 804E5310  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E5314  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E5318  3C A5 00 02 */	addis r5, r5, 2
/* 804E531C  38 C0 00 80 */	li r6, 0x80
/* 804E5320  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804E5324  4B B5 6F C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804E5328  7C 64 1B 78 */	mr r4, r3
/* 804E532C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804E5330  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 804E5334  FC 20 F0 90 */	fmr f1, f30
/* 804E5338  FC 40 F8 90 */	fmr f2, f31
/* 804E533C  3C C0 80 4F */	lis r6, lit_3790@ha /* 0x804EE8B0@ha */
/* 804E5340  C0 66 E8 B0 */	lfs f3, lit_3790@l(r6)  /* 0x804EE8B0@l */
/* 804E5344  3C C0 80 4F */	lis r6, lit_3854@ha /* 0x804EE8EC@ha */
/* 804E5348  C0 86 E8 EC */	lfs f4, lit_3854@l(r6)  /* 0x804EE8EC@l */
/* 804E534C  4B B2 BB 25 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804E5350  93 DD 05 E0 */	stw r30, 0x5e0(r29)
/* 804E5354  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E5358  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E535C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804E5360  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804E5364  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5368  4B E7 CE C1 */	bl _restgpr_29
/* 804E536C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E5370  7C 08 03 A6 */	mtlr r0
/* 804E5374  38 21 00 40 */	addi r1, r1, 0x40
/* 804E5378  4E 80 00 20 */	blr 
