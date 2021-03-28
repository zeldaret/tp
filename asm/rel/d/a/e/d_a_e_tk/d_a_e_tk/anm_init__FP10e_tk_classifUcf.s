lbl_807B8234:
/* 807B8234  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B8238  7C 08 02 A6 */	mflr r0
/* 807B823C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B8240  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807B8244  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807B8248  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 807B824C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 807B8250  39 61 00 20 */	addi r11, r1, 0x20
/* 807B8254  4B BA 9F 88 */	b _savegpr_29
/* 807B8258  7C 7D 1B 78 */	mr r29, r3
/* 807B825C  7C 9E 23 78 */	mr r30, r4
/* 807B8260  FF C0 08 90 */	fmr f30, f1
/* 807B8264  7C BF 2B 78 */	mr r31, r5
/* 807B8268  FF E0 10 90 */	fmr f31, f2
/* 807B826C  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807B8270  38 63 A2 F0 */	addi r3, r3, stringBase0@l
/* 807B8274  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B8278  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B827C  3C A5 00 02 */	addis r5, r5, 2
/* 807B8280  38 C0 00 80 */	li r6, 0x80
/* 807B8284  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807B8288  4B 88 40 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B828C  7C 64 1B 78 */	mr r4, r3
/* 807B8290  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 807B8294  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 807B8298  FC 20 F0 90 */	fmr f1, f30
/* 807B829C  FC 40 F8 90 */	fmr f2, f31
/* 807B82A0  3C C0 80 7C */	lis r6, lit_3780@ha
/* 807B82A4  C0 66 A2 80 */	lfs f3, lit_3780@l(r6)
/* 807B82A8  3C C0 80 7C */	lis r6, lit_3781@ha
/* 807B82AC  C0 86 A2 84 */	lfs f4, lit_3781@l(r6)
/* 807B82B0  4B 85 8B C0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807B82B4  93 DD 05 C8 */	stw r30, 0x5c8(r29)
/* 807B82B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807B82BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807B82C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 807B82C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 807B82C8  39 61 00 20 */	addi r11, r1, 0x20
/* 807B82CC  4B BA 9F 5C */	b _restgpr_29
/* 807B82D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B82D4  7C 08 03 A6 */	mtlr r0
/* 807B82D8  38 21 00 40 */	addi r1, r1, 0x40
/* 807B82DC  4E 80 00 20 */	blr 
