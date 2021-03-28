lbl_8073DB28:
/* 8073DB28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073DB2C  7C 08 02 A6 */	mflr r0
/* 8073DB30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073DB34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8073DB38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8073DB3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8073DB40  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8073DB44  39 61 00 20 */	addi r11, r1, 0x20
/* 8073DB48  4B C2 46 94 */	b _savegpr_29
/* 8073DB4C  7C 7D 1B 78 */	mr r29, r3
/* 8073DB50  7C 9E 23 78 */	mr r30, r4
/* 8073DB54  7C BF 2B 78 */	mr r31, r5
/* 8073DB58  FF C0 08 90 */	fmr f30, f1
/* 8073DB5C  FF E0 10 90 */	fmr f31, f2
/* 8073DB60  3C 60 80 74 */	lis r3, stringBase0@ha
/* 8073DB64  38 63 1D 0C */	addi r3, r3, stringBase0@l
/* 8073DB68  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8073DB6C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8073DB70  3C A5 00 02 */	addis r5, r5, 2
/* 8073DB74  38 C0 00 80 */	li r6, 0x80
/* 8073DB78  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8073DB7C  4B 8F E7 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073DB80  7C 64 1B 78 */	mr r4, r3
/* 8073DB84  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8073DB88  7F E5 FB 78 */	mr r5, r31
/* 8073DB8C  FC 20 F0 90 */	fmr f1, f30
/* 8073DB90  FC 40 F8 90 */	fmr f2, f31
/* 8073DB94  3C C0 80 74 */	lis r6, lit_3767@ha
/* 8073DB98  C0 66 1B F4 */	lfs f3, lit_3767@l(r6)
/* 8073DB9C  3C C0 80 74 */	lis r6, lit_4064@ha
/* 8073DBA0  C0 86 1C 4C */	lfs f4, lit_4064@l(r6)
/* 8073DBA4  4B 8D 32 CC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8073DBA8  93 DD 06 28 */	stw r30, 0x628(r29)
/* 8073DBAC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8073DBB0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8073DBB4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8073DBB8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8073DBBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8073DBC0  4B C2 46 68 */	b _restgpr_29
/* 8073DBC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073DBC8  7C 08 03 A6 */	mtlr r0
/* 8073DBCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8073DBD0  4E 80 00 20 */	blr 
