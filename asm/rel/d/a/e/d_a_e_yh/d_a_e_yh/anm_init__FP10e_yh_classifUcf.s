lbl_807FD6BC:
/* 807FD6BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807FD6C0  7C 08 02 A6 */	mflr r0
/* 807FD6C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807FD6C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807FD6CC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807FD6D0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807FD6D4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807FD6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 807FD6DC  4B B6 4B 00 */	b _savegpr_29
/* 807FD6E0  7C 7D 1B 78 */	mr r29, r3
/* 807FD6E4  7C 9E 23 78 */	mr r30, r4
/* 807FD6E8  FF C0 08 90 */	fmr f30, f1
/* 807FD6EC  7C BF 2B 78 */	mr r31, r5
/* 807FD6F0  FF E0 10 90 */	fmr f31, f2
/* 807FD6F4  3C 60 80 80 */	lis r3, stringBase0@ha
/* 807FD6F8  38 63 43 DC */	addi r3, r3, stringBase0@l
/* 807FD6FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807FD700  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807FD704  3C A5 00 02 */	addis r5, r5, 2
/* 807FD708  38 C0 00 80 */	li r6, 0x80
/* 807FD70C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807FD710  4B 83 EB DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807FD714  7C 64 1B 78 */	mr r4, r3
/* 807FD718  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807FD71C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807FD720  FC 20 F0 90 */	fmr f1, f30
/* 807FD724  FC 40 F8 90 */	fmr f2, f31
/* 807FD728  3C C0 80 80 */	lis r6, lit_3903@ha
/* 807FD72C  C0 66 42 80 */	lfs f3, lit_3903@l(r6)
/* 807FD730  3C C0 80 80 */	lis r6, lit_3986@ha
/* 807FD734  C0 86 42 B4 */	lfs f4, lit_3986@l(r6)
/* 807FD738  4B 81 37 38 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807FD73C  93 DD 06 64 */	stw r30, 0x664(r29)
/* 807FD740  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807FD744  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807FD748  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807FD74C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807FD750  39 61 00 20 */	addi r11, r1, 0x20
/* 807FD754  4B B6 4A D4 */	b _restgpr_29
/* 807FD758  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807FD75C  7C 08 03 A6 */	mtlr r0
/* 807FD760  38 21 00 40 */	addi r1, r1, 0x40
/* 807FD764  4E 80 00 20 */	blr 
