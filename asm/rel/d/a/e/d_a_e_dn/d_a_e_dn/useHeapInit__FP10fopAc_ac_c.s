lbl_804ED8AC:
/* 804ED8AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804ED8B0  7C 08 02 A6 */	mflr r0
/* 804ED8B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804ED8B8  39 61 00 30 */	addi r11, r1, 0x30
/* 804ED8BC  4B E7 49 1C */	b _savegpr_28
/* 804ED8C0  7C 7F 1B 78 */	mr r31, r3
/* 804ED8C4  38 60 00 58 */	li r3, 0x58
/* 804ED8C8  4B DE 13 84 */	b __nw__FUl
/* 804ED8CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804ED8D0  41 82 00 94 */	beq lbl_804ED964
/* 804ED8D4  3C 60 80 4F */	lis r3, stringBase0@ha
/* 804ED8D8  38 63 EA 34 */	addi r3, r3, stringBase0@l
/* 804ED8DC  38 80 00 1F */	li r4, 0x1f
/* 804ED8E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804ED8E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804ED8E8  3F 85 00 02 */	addis r28, r5, 2
/* 804ED8EC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804ED8F0  7F 85 E3 78 */	mr r5, r28
/* 804ED8F4  38 C0 00 80 */	li r6, 0x80
/* 804ED8F8  4B B4 E9 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804ED8FC  7C 7D 1B 78 */	mr r29, r3
/* 804ED900  3C 60 80 4F */	lis r3, stringBase0@ha
/* 804ED904  38 63 EA 34 */	addi r3, r3, stringBase0@l
/* 804ED908  38 80 00 26 */	li r4, 0x26
/* 804ED90C  7F 85 E3 78 */	mr r5, r28
/* 804ED910  38 C0 00 80 */	li r6, 0x80
/* 804ED914  4B B4 E9 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804ED918  7C 64 1B 78 */	mr r4, r3
/* 804ED91C  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 804ED920  90 01 00 08 */	stw r0, 8(r1)
/* 804ED924  3C 00 00 08 */	lis r0, 8
/* 804ED928  90 01 00 0C */	stw r0, 0xc(r1)
/* 804ED92C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804ED930  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 804ED934  90 01 00 10 */	stw r0, 0x10(r1)
/* 804ED938  7F C3 F3 78 */	mr r3, r30
/* 804ED93C  38 A0 00 00 */	li r5, 0
/* 804ED940  38 C0 00 00 */	li r6, 0
/* 804ED944  7F A7 EB 78 */	mr r7, r29
/* 804ED948  39 00 00 00 */	li r8, 0
/* 804ED94C  3D 20 80 4F */	lis r9, lit_3791@ha
/* 804ED950  C0 29 E8 B4 */	lfs f1, lit_3791@l(r9)
/* 804ED954  39 20 00 00 */	li r9, 0
/* 804ED958  39 40 FF FF */	li r10, -1
/* 804ED95C  4B B2 2E 74 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804ED960  7C 7E 1B 78 */	mr r30, r3
lbl_804ED964:
/* 804ED964  93 DF 05 DC */	stw r30, 0x5dc(r31)
/* 804ED968  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED96C  28 03 00 00 */	cmplwi r3, 0
/* 804ED970  41 82 00 10 */	beq lbl_804ED980
/* 804ED974  80 C3 00 04 */	lwz r6, 4(r3)
/* 804ED978  28 06 00 00 */	cmplwi r6, 0
/* 804ED97C  40 82 00 0C */	bne lbl_804ED988
lbl_804ED980:
/* 804ED980  38 60 00 00 */	li r3, 0
/* 804ED984  48 00 01 50 */	b lbl_804EDAD4
lbl_804ED988:
/* 804ED988  93 E6 00 14 */	stw r31, 0x14(r6)
/* 804ED98C  38 E0 00 00 */	li r7, 0
/* 804ED990  3C 60 80 4E */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 804ED994  38 83 53 7C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 804ED998  48 00 00 20 */	b lbl_804ED9B8
lbl_804ED99C:
/* 804ED99C  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 804ED9A0  41 82 00 14 */	beq lbl_804ED9B4
/* 804ED9A4  80 65 00 28 */	lwz r3, 0x28(r5)
/* 804ED9A8  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 804ED9AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 804ED9B0  90 83 00 04 */	stw r4, 4(r3)
lbl_804ED9B4:
/* 804ED9B4  38 E7 00 01 */	addi r7, r7, 1
lbl_804ED9B8:
/* 804ED9B8  80 A6 00 04 */	lwz r5, 4(r6)
/* 804ED9BC  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 804ED9C0  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 804ED9C4  7C 00 18 40 */	cmplw r0, r3
/* 804ED9C8  41 80 FF D4 */	blt lbl_804ED99C
/* 804ED9CC  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 804ED9D0  7F E4 FB 78 */	mr r4, r31
/* 804ED9D4  3C A0 80 4F */	lis r5, jc_data@ha
/* 804ED9D8  38 A5 EC A8 */	addi r5, r5, jc_data@l
/* 804ED9DC  38 E0 00 0C */	li r7, 0xc
/* 804ED9E0  4B B4 82 C0 */	b init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 804ED9E4  2C 03 00 00 */	cmpwi r3, 0
/* 804ED9E8  40 82 00 0C */	bne lbl_804ED9F4
/* 804ED9EC  38 60 00 00 */	li r3, 0
/* 804ED9F0  48 00 00 E4 */	b lbl_804EDAD4
lbl_804ED9F4:
/* 804ED9F4  3C 60 80 4F */	lis r3, stringBase0@ha
/* 804ED9F8  38 63 EA 34 */	addi r3, r3, stringBase0@l
/* 804ED9FC  38 80 00 27 */	li r4, 0x27
/* 804EDA00  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804EDA04  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804EDA08  3F 85 00 02 */	addis r28, r5, 2
/* 804EDA0C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804EDA10  7F 85 E3 78 */	mr r5, r28
/* 804EDA14  38 C0 00 80 */	li r6, 0x80
/* 804EDA18  4B B4 E8 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804EDA1C  3C 80 00 08 */	lis r4, 8
/* 804EDA20  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804EDA24  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804EDA28  4B B2 72 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804EDA2C  90 7F 05 E4 */	stw r3, 0x5e4(r31)
/* 804EDA30  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 804EDA34  28 00 00 00 */	cmplwi r0, 0
/* 804EDA38  40 82 00 0C */	bne lbl_804EDA44
/* 804EDA3C  38 60 00 00 */	li r3, 0
/* 804EDA40  48 00 00 94 */	b lbl_804EDAD4
lbl_804EDA44:
/* 804EDA44  3C 60 80 4F */	lis r3, stringBase0@ha
/* 804EDA48  38 63 EA 34 */	addi r3, r3, stringBase0@l
/* 804EDA4C  38 80 00 29 */	li r4, 0x29
/* 804EDA50  7F 85 E3 78 */	mr r5, r28
/* 804EDA54  38 C0 00 80 */	li r6, 0x80
/* 804EDA58  4B B4 E8 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804EDA5C  3C 80 00 08 */	lis r4, 8
/* 804EDA60  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804EDA64  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804EDA68  4B B2 71 EC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804EDA6C  90 7F 06 8C */	stw r3, 0x68c(r31)
/* 804EDA70  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 804EDA74  28 00 00 00 */	cmplwi r0, 0
/* 804EDA78  40 82 00 0C */	bne lbl_804EDA84
/* 804EDA7C  38 60 00 00 */	li r3, 0
/* 804EDA80  48 00 00 54 */	b lbl_804EDAD4
lbl_804EDA84:
/* 804EDA84  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 804EDA88  28 00 00 01 */	cmplwi r0, 1
/* 804EDA8C  40 82 00 44 */	bne lbl_804EDAD0
/* 804EDA90  3C 60 80 4F */	lis r3, stringBase0@ha
/* 804EDA94  38 63 EA 34 */	addi r3, r3, stringBase0@l
/* 804EDA98  38 80 00 28 */	li r4, 0x28
/* 804EDA9C  7F 85 E3 78 */	mr r5, r28
/* 804EDAA0  38 C0 00 80 */	li r6, 0x80
/* 804EDAA4  4B B4 E8 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804EDAA8  3C 80 00 08 */	lis r4, 8
/* 804EDAAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804EDAB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804EDAB4  4B B2 71 A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804EDAB8  90 7F 06 90 */	stw r3, 0x690(r31)
/* 804EDABC  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 804EDAC0  28 00 00 00 */	cmplwi r0, 0
/* 804EDAC4  40 82 00 0C */	bne lbl_804EDAD0
/* 804EDAC8  38 60 00 00 */	li r3, 0
/* 804EDACC  48 00 00 08 */	b lbl_804EDAD4
lbl_804EDAD0:
/* 804EDAD0  38 60 00 01 */	li r3, 1
lbl_804EDAD4:
/* 804EDAD4  39 61 00 30 */	addi r11, r1, 0x30
/* 804EDAD8  4B E7 47 4C */	b _restgpr_28
/* 804EDADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EDAE0  7C 08 03 A6 */	mtlr r0
/* 804EDAE4  38 21 00 30 */	addi r1, r1, 0x30
/* 804EDAE8  4E 80 00 20 */	blr 
