lbl_80758800:
/* 80758800  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80758804  7C 08 02 A6 */	mflr r0
/* 80758808  90 01 00 44 */	stw r0, 0x44(r1)
/* 8075880C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80758810  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80758814  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80758818  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8075881C  39 61 00 20 */	addi r11, r1, 0x20
/* 80758820  4B C0 99 BC */	b _savegpr_29
/* 80758824  7C 7D 1B 78 */	mr r29, r3
/* 80758828  7C 9E 23 78 */	mr r30, r4
/* 8075882C  7C BF 2B 78 */	mr r31, r5
/* 80758830  FF C0 08 90 */	fmr f30, f1
/* 80758834  FF E0 10 90 */	fmr f31, f2
/* 80758838  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075883C  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 80758840  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80758844  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80758848  3C A5 00 02 */	addis r5, r5, 2
/* 8075884C  38 C0 00 80 */	li r6, 0x80
/* 80758850  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80758854  4B 8E 3A 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80758858  7C 64 1B 78 */	mr r4, r3
/* 8075885C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80758860  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80758864  FC 20 F0 90 */	fmr f1, f30
/* 80758868  FC 40 F8 90 */	fmr f2, f31
/* 8075886C  3C C0 80 76 */	lis r6, lit_3907@ha
/* 80758870  C0 66 15 00 */	lfs f3, lit_3907@l(r6)
/* 80758874  3C C0 80 76 */	lis r6, lit_4050@ha
/* 80758878  C0 86 15 38 */	lfs f4, lit_4050@l(r6)
/* 8075887C  4B 8B 85 F4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80758880  93 DD 06 8C */	stw r30, 0x68c(r29)
/* 80758884  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80758888  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8075888C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80758890  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80758894  39 61 00 20 */	addi r11, r1, 0x20
/* 80758898  4B C0 99 90 */	b _restgpr_29
/* 8075889C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807588A0  7C 08 03 A6 */	mtlr r0
/* 807588A4  38 21 00 40 */	addi r1, r1, 0x40
/* 807588A8  4E 80 00 20 */	blr 
