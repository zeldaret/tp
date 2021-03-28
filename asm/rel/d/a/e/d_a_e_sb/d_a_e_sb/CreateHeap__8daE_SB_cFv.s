lbl_807816D8:
/* 807816D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807816DC  7C 08 02 A6 */	mflr r0
/* 807816E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807816E4  39 61 00 30 */	addi r11, r1, 0x30
/* 807816E8  4B BE 0A F0 */	b _savegpr_28
/* 807816EC  7C 7F 1B 78 */	mr r31, r3
/* 807816F0  3C 60 80 78 */	lis r3, stringBase0@ha
/* 807816F4  38 63 4E 64 */	addi r3, r3, stringBase0@l
/* 807816F8  38 80 00 0F */	li r4, 0xf
/* 807816FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80781700  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80781704  3F A5 00 02 */	addis r29, r5, 2
/* 80781708  3B BD C2 F8 */	addi r29, r29, -15624
/* 8078170C  7F A5 EB 78 */	mr r5, r29
/* 80781710  38 C0 00 80 */	li r6, 0x80
/* 80781714  4B 8B AB D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80781718  7C 7C 1B 78 */	mr r28, r3
/* 8078171C  38 60 00 58 */	li r3, 0x58
/* 80781720  4B B4 D5 2C */	b __nw__FUl
/* 80781724  7C 7E 1B 79 */	or. r30, r3, r3
/* 80781728  41 82 00 68 */	beq lbl_80781790
/* 8078172C  3C 60 80 78 */	lis r3, stringBase0@ha
/* 80781730  38 63 4E 64 */	addi r3, r3, stringBase0@l
/* 80781734  38 80 00 0C */	li r4, 0xc
/* 80781738  7F A5 EB 78 */	mr r5, r29
/* 8078173C  38 C0 00 80 */	li r6, 0x80
/* 80781740  4B 8B AB AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80781744  7C 67 1B 78 */	mr r7, r3
/* 80781748  38 1F 06 2C */	addi r0, r31, 0x62c
/* 8078174C  90 01 00 08 */	stw r0, 8(r1)
/* 80781750  3C 00 00 08 */	lis r0, 8
/* 80781754  90 01 00 0C */	stw r0, 0xc(r1)
/* 80781758  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8078175C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80781760  90 01 00 10 */	stw r0, 0x10(r1)
/* 80781764  7F C3 F3 78 */	mr r3, r30
/* 80781768  7F 84 E3 78 */	mr r4, r28
/* 8078176C  38 A0 00 00 */	li r5, 0
/* 80781770  38 C0 00 00 */	li r6, 0
/* 80781774  39 00 00 02 */	li r8, 2
/* 80781778  3D 20 80 78 */	lis r9, lit_3665@ha
/* 8078177C  C0 29 4D 84 */	lfs f1, lit_3665@l(r9)
/* 80781780  39 20 00 00 */	li r9, 0
/* 80781784  39 40 FF FF */	li r10, -1
/* 80781788  4B 88 F0 48 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8078178C  7C 7E 1B 78 */	mr r30, r3
lbl_80781790:
/* 80781790  93 DF 06 1C */	stw r30, 0x61c(r31)
/* 80781794  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80781798  28 03 00 00 */	cmplwi r3, 0
/* 8078179C  41 82 00 10 */	beq lbl_807817AC
/* 807817A0  80 03 00 04 */	lwz r0, 4(r3)
/* 807817A4  28 00 00 00 */	cmplwi r0, 0
/* 807817A8  40 82 00 0C */	bne lbl_807817B4
lbl_807817AC:
/* 807817AC  38 60 00 00 */	li r3, 0
/* 807817B0  48 00 00 08 */	b lbl_807817B8
lbl_807817B4:
/* 807817B4  38 60 00 01 */	li r3, 1
lbl_807817B8:
/* 807817B8  39 61 00 30 */	addi r11, r1, 0x30
/* 807817BC  4B BE 0A 68 */	b _restgpr_28
/* 807817C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807817C4  7C 08 03 A6 */	mtlr r0
/* 807817C8  38 21 00 30 */	addi r1, r1, 0x30
/* 807817CC  4E 80 00 20 */	blr 
