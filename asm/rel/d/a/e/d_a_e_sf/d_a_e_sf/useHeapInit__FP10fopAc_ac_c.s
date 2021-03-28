lbl_80788DA8:
/* 80788DA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80788DAC  7C 08 02 A6 */	mflr r0
/* 80788DB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80788DB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80788DB8  4B BD 94 20 */	b _savegpr_28
/* 80788DBC  7C 7F 1B 78 */	mr r31, r3
/* 80788DC0  38 60 00 58 */	li r3, 0x58
/* 80788DC4  4B B4 5E 88 */	b __nw__FUl
/* 80788DC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80788DCC  41 82 00 94 */	beq lbl_80788E60
/* 80788DD0  3C 60 80 79 */	lis r3, stringBase0@ha
/* 80788DD4  38 63 9D 84 */	addi r3, r3, stringBase0@l
/* 80788DD8  38 80 00 0C */	li r4, 0xc
/* 80788DDC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80788DE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80788DE4  3F 85 00 02 */	addis r28, r5, 2
/* 80788DE8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80788DEC  7F 85 E3 78 */	mr r5, r28
/* 80788DF0  38 C0 00 80 */	li r6, 0x80
/* 80788DF4  4B 8B 34 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80788DF8  7C 7D 1B 78 */	mr r29, r3
/* 80788DFC  3C 60 80 79 */	lis r3, stringBase0@ha
/* 80788E00  38 63 9D 84 */	addi r3, r3, stringBase0@l
/* 80788E04  38 80 00 13 */	li r4, 0x13
/* 80788E08  7F 85 E3 78 */	mr r5, r28
/* 80788E0C  38 C0 00 80 */	li r6, 0x80
/* 80788E10  4B 8B 34 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80788E14  7C 64 1B 78 */	mr r4, r3
/* 80788E18  38 1F 05 E4 */	addi r0, r31, 0x5e4
/* 80788E1C  90 01 00 08 */	stw r0, 8(r1)
/* 80788E20  3C 00 00 08 */	lis r0, 8
/* 80788E24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80788E28  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80788E2C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80788E30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80788E34  7F C3 F3 78 */	mr r3, r30
/* 80788E38  38 A0 00 00 */	li r5, 0
/* 80788E3C  38 C0 00 00 */	li r6, 0
/* 80788E40  7F A7 EB 78 */	mr r7, r29
/* 80788E44  39 00 00 00 */	li r8, 0
/* 80788E48  3D 20 80 79 */	lis r9, lit_3910@ha
/* 80788E4C  C0 29 9C 40 */	lfs f1, lit_3910@l(r9)
/* 80788E50  39 20 00 00 */	li r9, 0
/* 80788E54  39 40 FF FF */	li r10, -1
/* 80788E58  4B 88 79 78 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80788E5C  7C 7E 1B 78 */	mr r30, r3
lbl_80788E60:
/* 80788E60  93 DF 05 D4 */	stw r30, 0x5d4(r31)
/* 80788E64  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80788E68  28 03 00 00 */	cmplwi r3, 0
/* 80788E6C  41 82 00 10 */	beq lbl_80788E7C
/* 80788E70  80 A3 00 04 */	lwz r5, 4(r3)
/* 80788E74  28 05 00 00 */	cmplwi r5, 0
/* 80788E78  40 82 00 0C */	bne lbl_80788E84
lbl_80788E7C:
/* 80788E7C  38 60 00 00 */	li r3, 0
/* 80788E80  48 00 00 F0 */	b lbl_80788F70
lbl_80788E84:
/* 80788E84  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80788E88  38 E0 00 00 */	li r7, 0
/* 80788E8C  3C 60 80 78 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80788E90  38 83 52 34 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80788E94  48 00 00 20 */	b lbl_80788EB4
lbl_80788E98:
/* 80788E98  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80788E9C  41 82 00 14 */	beq lbl_80788EB0
/* 80788EA0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80788EA4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80788EA8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80788EAC  90 83 00 04 */	stw r4, 4(r3)
lbl_80788EB0:
/* 80788EB0  38 E7 00 01 */	addi r7, r7, 1
lbl_80788EB4:
/* 80788EB4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80788EB8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80788EBC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80788EC0  7C 00 18 40 */	cmplw r0, r3
/* 80788EC4  41 80 FF D4 */	blt lbl_80788E98
/* 80788EC8  3C 60 80 79 */	lis r3, stringBase0@ha
/* 80788ECC  38 63 9D 84 */	addi r3, r3, stringBase0@l
/* 80788ED0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80788ED4  54 00 10 3A */	slwi r0, r0, 2
/* 80788ED8  3C 80 80 79 */	lis r4, wepon_data@ha
/* 80788EDC  38 84 9E 9C */	addi r4, r4, wepon_data@l
/* 80788EE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80788EE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80788EE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80788EEC  3F 85 00 02 */	addis r28, r5, 2
/* 80788EF0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80788EF4  7F 85 E3 78 */	mr r5, r28
/* 80788EF8  38 C0 00 80 */	li r6, 0x80
/* 80788EFC  4B 8B 33 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80788F00  3C 80 00 08 */	lis r4, 8
/* 80788F04  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80788F08  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80788F0C  4B 88 BD 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80788F10  90 7F 05 DC */	stw r3, 0x5dc(r31)
/* 80788F14  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80788F18  28 00 00 00 */	cmplwi r0, 0
/* 80788F1C  40 82 00 0C */	bne lbl_80788F28
/* 80788F20  38 60 00 00 */	li r3, 0
/* 80788F24  48 00 00 4C */	b lbl_80788F70
lbl_80788F28:
/* 80788F28  3C 60 80 79 */	lis r3, stringBase0@ha
/* 80788F2C  38 63 9D 84 */	addi r3, r3, stringBase0@l
/* 80788F30  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 80788F34  54 00 10 3A */	slwi r0, r0, 2
/* 80788F38  3C 80 80 79 */	lis r4, tate_data@ha
/* 80788F3C  38 84 9E A4 */	addi r4, r4, tate_data@l
/* 80788F40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80788F44  7F 85 E3 78 */	mr r5, r28
/* 80788F48  38 C0 00 80 */	li r6, 0x80
/* 80788F4C  4B 8B 33 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80788F50  3C 80 00 08 */	lis r4, 8
/* 80788F54  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80788F58  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80788F5C  4B 88 BC F8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80788F60  90 7F 05 E0 */	stw r3, 0x5e0(r31)
/* 80788F64  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80788F68  30 03 FF FF */	addic r0, r3, -1
/* 80788F6C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80788F70:
/* 80788F70  39 61 00 30 */	addi r11, r1, 0x30
/* 80788F74  4B BD 92 B0 */	b _restgpr_28
/* 80788F78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80788F7C  7C 08 03 A6 */	mtlr r0
/* 80788F80  38 21 00 30 */	addi r1, r1, 0x30
/* 80788F84  4E 80 00 20 */	blr 
