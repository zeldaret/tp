lbl_805C7DD4:
/* 805C7DD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C7DD8  7C 08 02 A6 */	mflr r0
/* 805C7DDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C7DE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805C7DE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805C7DE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805C7DEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805C7DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7DF4  4B D9 A3 E4 */	b _savegpr_28
/* 805C7DF8  7C 7C 1B 78 */	mr r28, r3
/* 805C7DFC  7C 9D 23 78 */	mr r29, r4
/* 805C7E00  7C BE 2B 78 */	mr r30, r5
/* 805C7E04  7C DF 33 78 */	mr r31, r6
/* 805C7E08  FF C0 08 90 */	fmr f30, f1
/* 805C7E0C  FF E0 10 90 */	fmr f31, f2
/* 805C7E10  3C 60 80 5D */	lis r3, stringBase0@ha
/* 805C7E14  38 63 AE CC */	addi r3, r3, stringBase0@l
/* 805C7E18  7F C4 F3 78 */	mr r4, r30
/* 805C7E1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805C7E20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805C7E24  3C A5 00 02 */	addis r5, r5, 2
/* 805C7E28  38 C0 00 80 */	li r6, 0x80
/* 805C7E2C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805C7E30  4B A7 44 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C7E34  7C 64 1B 78 */	mr r4, r3
/* 805C7E38  7F A3 EB 78 */	mr r3, r29
/* 805C7E3C  7F E5 FB 78 */	mr r5, r31
/* 805C7E40  FC 20 F0 90 */	fmr f1, f30
/* 805C7E44  FC 40 F8 90 */	fmr f2, f31
/* 805C7E48  3C C0 80 5D */	lis r6, lit_3862@ha
/* 805C7E4C  C0 66 AD 60 */	lfs f3, lit_3862@l(r6)
/* 805C7E50  3C C0 80 5D */	lis r6, lit_3863@ha
/* 805C7E54  C0 86 AD 64 */	lfs f4, lit_3863@l(r6)
/* 805C7E58  4B A4 90 18 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805C7E5C  93 DC 05 B0 */	stw r30, 0x5b0(r28)
/* 805C7E60  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805C7E64  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805C7E68  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805C7E6C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805C7E70  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7E74  4B D9 A3 B0 */	b _restgpr_28
/* 805C7E78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C7E7C  7C 08 03 A6 */	mtlr r0
/* 805C7E80  38 21 00 40 */	addi r1, r1, 0x40
/* 805C7E84  4E 80 00 20 */	blr 
