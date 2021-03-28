lbl_8070A82C:
/* 8070A82C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070A830  7C 08 02 A6 */	mflr r0
/* 8070A834  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070A838  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8070A83C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8070A840  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8070A844  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8070A848  39 61 00 20 */	addi r11, r1, 0x20
/* 8070A84C  4B C5 79 90 */	b _savegpr_29
/* 8070A850  7C 7D 1B 78 */	mr r29, r3
/* 8070A854  7C 9E 23 78 */	mr r30, r4
/* 8070A858  FF C0 08 90 */	fmr f30, f1
/* 8070A85C  7C BF 2B 78 */	mr r31, r5
/* 8070A860  FF E0 10 90 */	fmr f31, f2
/* 8070A864  3C 60 80 71 */	lis r3, stringBase0@ha
/* 8070A868  38 63 3A F4 */	addi r3, r3, stringBase0@l
/* 8070A86C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8070A870  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8070A874  3C A5 00 02 */	addis r5, r5, 2
/* 8070A878  38 C0 00 80 */	li r6, 0x80
/* 8070A87C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8070A880  4B 93 1A 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8070A884  7C 64 1B 78 */	mr r4, r3
/* 8070A888  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070A88C  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8070A890  FC 20 F0 90 */	fmr f1, f30
/* 8070A894  FC 40 F8 90 */	fmr f2, f31
/* 8070A898  3C C0 80 71 */	lis r6, lit_3829@ha
/* 8070A89C  C0 66 39 78 */	lfs f3, lit_3829@l(r6)
/* 8070A8A0  3C C0 80 71 */	lis r6, lit_3893@ha
/* 8070A8A4  C0 86 39 B4 */	lfs f4, lit_3893@l(r6)
/* 8070A8A8  4B 90 65 C8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8070A8AC  93 DD 05 E0 */	stw r30, 0x5e0(r29)
/* 8070A8B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8070A8B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8070A8B8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8070A8BC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8070A8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8070A8C4  4B C5 79 64 */	b _restgpr_29
/* 8070A8C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070A8CC  7C 08 03 A6 */	mtlr r0
/* 8070A8D0  38 21 00 40 */	addi r1, r1, 0x40
/* 8070A8D4  4E 80 00 20 */	blr 
