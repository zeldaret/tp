lbl_808049E4:
/* 808049E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808049E8  7C 08 02 A6 */	mflr r0
/* 808049EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 808049F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808049F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808049F8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 808049FC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80804A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80804A04  4B B5 D7 D8 */	b _savegpr_29
/* 80804A08  7C 7D 1B 78 */	mr r29, r3
/* 80804A0C  7C 9E 23 78 */	mr r30, r4
/* 80804A10  FF C0 08 90 */	fmr f30, f1
/* 80804A14  7C BF 2B 78 */	mr r31, r5
/* 80804A18  FF E0 10 90 */	fmr f31, f2
/* 80804A1C  3C 60 80 80 */	lis r3, stringBase0@ha
/* 80804A20  38 63 7D 64 */	addi r3, r3, stringBase0@l
/* 80804A24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80804A28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80804A2C  3C A5 00 02 */	addis r5, r5, 2
/* 80804A30  38 C0 00 80 */	li r6, 0x80
/* 80804A34  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80804A38  4B 83 78 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80804A3C  7C 64 1B 78 */	mr r4, r3
/* 80804A40  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80804A44  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80804A48  FC 20 F0 90 */	fmr f1, f30
/* 80804A4C  FC 40 F8 90 */	fmr f2, f31
/* 80804A50  3C C0 80 80 */	lis r6, lit_3942@ha
/* 80804A54  C0 66 7C A0 */	lfs f3, lit_3942@l(r6)
/* 80804A58  3C C0 80 80 */	lis r6, lit_4009@ha
/* 80804A5C  C0 86 7C D8 */	lfs f4, lit_4009@l(r6)
/* 80804A60  4B 80 C4 10 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80804A64  93 DD 06 68 */	stw r30, 0x668(r29)
/* 80804A68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80804A6C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80804A70  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80804A74  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80804A78  39 61 00 20 */	addi r11, r1, 0x20
/* 80804A7C  4B B5 D7 AC */	b _restgpr_29
/* 80804A80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80804A84  7C 08 03 A6 */	mtlr r0
/* 80804A88  38 21 00 40 */	addi r1, r1, 0x40
/* 80804A8C  4E 80 00 20 */	blr 
