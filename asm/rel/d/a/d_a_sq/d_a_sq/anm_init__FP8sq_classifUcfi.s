lbl_8059F6D8:
/* 8059F6D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059F6DC  7C 08 02 A6 */	mflr r0
/* 8059F6E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059F6E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8059F6E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8059F6EC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8059F6F0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8059F6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8059F6F8  4B DC 2A D8 */	b _savegpr_26
/* 8059F6FC  7C 7D 1B 78 */	mr r29, r3
/* 8059F700  7C 9A 23 78 */	mr r26, r4
/* 8059F704  FF C0 08 90 */	fmr f30, f1
/* 8059F708  7C BE 2B 78 */	mr r30, r5
/* 8059F70C  FF E0 10 90 */	fmr f31, f2
/* 8059F710  3C 60 80 5A */	lis r3, lit_3769@ha
/* 8059F714  3B E3 11 58 */	addi r31, r3, lit_3769@l
/* 8059F718  C0 3D 06 0C */	lfs f1, 0x60c(r29)
/* 8059F71C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8059F720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F724  41 81 00 BC */	bgt lbl_8059F7E0
/* 8059F728  2C 06 00 00 */	cmpwi r6, 0
/* 8059F72C  41 80 00 70 */	blt lbl_8059F79C
/* 8059F730  3C 60 80 5A */	lis r3, stringBase0@ha
/* 8059F734  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 8059F738  7C C4 33 78 */	mr r4, r6
/* 8059F73C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059F740  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8059F744  3F 65 00 02 */	addis r27, r5, 2
/* 8059F748  3B 7B C2 F8 */	addi r27, r27, -15624
/* 8059F74C  7F 65 DB 78 */	mr r5, r27
/* 8059F750  38 C0 00 80 */	li r6, 0x80
/* 8059F754  4B A9 CB 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059F758  7C 7C 1B 78 */	mr r28, r3
/* 8059F75C  3C 60 80 5A */	lis r3, stringBase0@ha
/* 8059F760  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 8059F764  7F 44 D3 78 */	mr r4, r26
/* 8059F768  7F 65 DB 78 */	mr r5, r27
/* 8059F76C  38 C0 00 80 */	li r6, 0x80
/* 8059F770  4B A9 CB 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059F774  7C 64 1B 78 */	mr r4, r3
/* 8059F778  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8059F77C  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8059F780  FC 20 F0 90 */	fmr f1, f30
/* 8059F784  FC 40 F8 90 */	fmr f2, f31
/* 8059F788  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8059F78C  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 8059F790  7F 86 E3 78 */	mr r6, r28
/* 8059F794  4B A7 0B E8 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8059F798  48 00 00 48 */	b lbl_8059F7E0
lbl_8059F79C:
/* 8059F79C  3C 60 80 5A */	lis r3, stringBase0@ha
/* 8059F7A0  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 8059F7A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059F7A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8059F7AC  3C A5 00 02 */	addis r5, r5, 2
/* 8059F7B0  38 C0 00 80 */	li r6, 0x80
/* 8059F7B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8059F7B8  4B A9 CB 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8059F7BC  7C 64 1B 78 */	mr r4, r3
/* 8059F7C0  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8059F7C4  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8059F7C8  FC 20 F0 90 */	fmr f1, f30
/* 8059F7CC  FC 40 F8 90 */	fmr f2, f31
/* 8059F7D0  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8059F7D4  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 8059F7D8  38 C0 00 00 */	li r6, 0
/* 8059F7DC  4B A7 0B A0 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
lbl_8059F7E0:
/* 8059F7E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8059F7E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8059F7E8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8059F7EC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8059F7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8059F7F4  4B DC 2A 28 */	b _restgpr_26
/* 8059F7F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059F7FC  7C 08 03 A6 */	mtlr r0
/* 8059F800  38 21 00 40 */	addi r1, r1, 0x40
/* 8059F804  4E 80 00 20 */	blr 
