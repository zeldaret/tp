lbl_8071FA44:
/* 8071FA44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8071FA48  7C 08 02 A6 */	mflr r0
/* 8071FA4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8071FA50  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8071FA54  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8071FA58  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8071FA5C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8071FA60  39 61 00 20 */	addi r11, r1, 0x20
/* 8071FA64  4B C4 27 78 */	b _savegpr_29
/* 8071FA68  7C 7D 1B 78 */	mr r29, r3
/* 8071FA6C  7C 9E 23 78 */	mr r30, r4
/* 8071FA70  FF C0 08 90 */	fmr f30, f1
/* 8071FA74  7C BF 2B 78 */	mr r31, r5
/* 8071FA78  FF E0 10 90 */	fmr f31, f2
/* 8071FA7C  3C 60 80 72 */	lis r3, stringBase0@ha
/* 8071FA80  38 63 2C E8 */	addi r3, r3, stringBase0@l
/* 8071FA84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8071FA88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8071FA8C  3C A5 00 02 */	addis r5, r5, 2
/* 8071FA90  38 C0 00 80 */	li r6, 0x80
/* 8071FA94  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8071FA98  4B 91 C8 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071FA9C  7C 64 1B 78 */	mr r4, r3
/* 8071FAA0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8071FAA4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8071FAA8  FC 20 F0 90 */	fmr f1, f30
/* 8071FAAC  FC 40 F8 90 */	fmr f2, f31
/* 8071FAB0  3C C0 80 72 */	lis r6, lit_3790@ha
/* 8071FAB4  C0 66 2C 40 */	lfs f3, lit_3790@l(r6)
/* 8071FAB8  3C C0 80 72 */	lis r6, lit_3830@ha
/* 8071FABC  C0 86 2C 84 */	lfs f4, lit_3830@l(r6)
/* 8071FAC0  4B 8F 13 B0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8071FAC4  93 DD 06 60 */	stw r30, 0x660(r29)
/* 8071FAC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8071FACC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8071FAD0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8071FAD4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8071FAD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8071FADC  4B C4 27 4C */	b _restgpr_29
/* 8071FAE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8071FAE4  7C 08 03 A6 */	mtlr r0
/* 8071FAE8  38 21 00 40 */	addi r1, r1, 0x40
/* 8071FAEC  4E 80 00 20 */	blr 
