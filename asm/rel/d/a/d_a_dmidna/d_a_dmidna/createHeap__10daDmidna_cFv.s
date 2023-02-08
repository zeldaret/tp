lbl_8045CED8:
/* 8045CED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045CEDC  7C 08 02 A6 */	mflr r0
/* 8045CEE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045CEE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8045CEE8  4B F0 52 F1 */	bl _savegpr_28
/* 8045CEEC  7C 7F 1B 78 */	mr r31, r3
/* 8045CEF0  38 60 00 58 */	li r3, 0x58
/* 8045CEF4  4B E7 1D 59 */	bl __nw__FUl
/* 8045CEF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8045CEFC  41 82 00 88 */	beq lbl_8045CF84
/* 8045CF00  3C 60 80 46 */	lis r3, l_arcName@ha /* 0x8045D290@ha */
/* 8045CF04  38 63 D2 90 */	addi r3, r3, l_arcName@l /* 0x8045D290@l */
/* 8045CF08  38 80 00 04 */	li r4, 4
/* 8045CF0C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045CF10  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045CF14  3F 85 00 02 */	addis r28, r5, 2
/* 8045CF18  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8045CF1C  7F 85 E3 78 */	mr r5, r28
/* 8045CF20  38 C0 00 80 */	li r6, 0x80
/* 8045CF24  4B BD F3 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8045CF28  7C 7D 1B 78 */	mr r29, r3
/* 8045CF2C  3C 60 80 46 */	lis r3, l_arcName@ha /* 0x8045D290@ha */
/* 8045CF30  38 63 D2 90 */	addi r3, r3, l_arcName@l /* 0x8045D290@l */
/* 8045CF34  38 80 00 08 */	li r4, 8
/* 8045CF38  7F 85 E3 78 */	mr r5, r28
/* 8045CF3C  38 C0 00 80 */	li r6, 0x80
/* 8045CF40  4B BD F3 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8045CF44  7C 64 1B 78 */	mr r4, r3
/* 8045CF48  38 00 00 00 */	li r0, 0
/* 8045CF4C  90 01 00 08 */	stw r0, 8(r1)
/* 8045CF50  90 01 00 0C */	stw r0, 0xc(r1)
/* 8045CF54  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045CF58  7F C3 F3 78 */	mr r3, r30
/* 8045CF5C  38 A0 00 00 */	li r5, 0
/* 8045CF60  38 C0 00 00 */	li r6, 0
/* 8045CF64  7F A7 EB 78 */	mr r7, r29
/* 8045CF68  39 00 00 02 */	li r8, 2
/* 8045CF6C  3D 20 80 46 */	lis r9, lit_3769@ha /* 0x8045D298@ha */
/* 8045CF70  C0 29 D2 98 */	lfs f1, lit_3769@l(r9)  /* 0x8045D298@l */
/* 8045CF74  39 20 00 00 */	li r9, 0
/* 8045CF78  39 40 FF FF */	li r10, -1
/* 8045CF7C  4B BB 38 55 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8045CF80  7C 7E 1B 78 */	mr r30, r3
lbl_8045CF84:
/* 8045CF84  93 DF 05 74 */	stw r30, 0x574(r31)
/* 8045CF88  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8045CF8C  28 03 00 00 */	cmplwi r3, 0
/* 8045CF90  41 82 00 10 */	beq lbl_8045CFA0
/* 8045CF94  80 03 00 04 */	lwz r0, 4(r3)
/* 8045CF98  28 00 00 00 */	cmplwi r0, 0
/* 8045CF9C  40 82 00 0C */	bne lbl_8045CFA8
lbl_8045CFA0:
/* 8045CFA0  38 60 00 00 */	li r3, 0
/* 8045CFA4  48 00 00 08 */	b lbl_8045CFAC
lbl_8045CFA8:
/* 8045CFA8  38 60 00 01 */	li r3, 1
lbl_8045CFAC:
/* 8045CFAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8045CFB0  4B F0 52 75 */	bl _restgpr_28
/* 8045CFB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045CFB8  7C 08 03 A6 */	mtlr r0
/* 8045CFBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8045CFC0  4E 80 00 20 */	blr 
