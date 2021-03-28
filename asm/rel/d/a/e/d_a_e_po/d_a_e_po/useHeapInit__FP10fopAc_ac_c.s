lbl_80755C94:
/* 80755C94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80755C98  7C 08 02 A6 */	mflr r0
/* 80755C9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80755CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80755CA4  4B C0 C5 34 */	b _savegpr_28
/* 80755CA8  7C 7F 1B 78 */	mr r31, r3
/* 80755CAC  38 60 00 58 */	li r3, 0x58
/* 80755CB0  4B B7 8F 9C */	b __nw__FUl
/* 80755CB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80755CB8  41 82 00 94 */	beq lbl_80755D4C
/* 80755CBC  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755CC0  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755CC4  38 80 00 15 */	li r4, 0x15
/* 80755CC8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80755CCC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80755CD0  3F 85 00 02 */	addis r28, r5, 2
/* 80755CD4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80755CD8  7F 85 E3 78 */	mr r5, r28
/* 80755CDC  38 C0 00 80 */	li r6, 0x80
/* 80755CE0  4B 8E 66 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755CE4  7C 7D 1B 78 */	mr r29, r3
/* 80755CE8  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755CEC  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755CF0  38 80 00 1B */	li r4, 0x1b
/* 80755CF4  7F 85 E3 78 */	mr r5, r28
/* 80755CF8  38 C0 00 80 */	li r6, 0x80
/* 80755CFC  4B 8E 65 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755D00  7C 64 1B 78 */	mr r4, r3
/* 80755D04  38 1F 05 F8 */	addi r0, r31, 0x5f8
/* 80755D08  90 01 00 08 */	stw r0, 8(r1)
/* 80755D0C  3C 00 00 08 */	lis r0, 8
/* 80755D10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80755D14  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80755D18  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80755D1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80755D20  7F C3 F3 78 */	mr r3, r30
/* 80755D24  38 A0 00 00 */	li r5, 0
/* 80755D28  38 C0 00 00 */	li r6, 0
/* 80755D2C  7F A7 EB 78 */	mr r7, r29
/* 80755D30  39 00 00 02 */	li r8, 2
/* 80755D34  3D 20 80 75 */	lis r9, lit_3919@ha
/* 80755D38  C0 29 77 04 */	lfs f1, lit_3919@l(r9)
/* 80755D3C  39 20 00 00 */	li r9, 0
/* 80755D40  39 40 FF FF */	li r10, -1
/* 80755D44  4B 8B AA 8C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80755D48  7C 7E 1B 78 */	mr r30, r3
lbl_80755D4C:
/* 80755D4C  93 DF 05 D4 */	stw r30, 0x5d4(r31)
/* 80755D50  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80755D54  28 03 00 00 */	cmplwi r3, 0
/* 80755D58  41 82 00 10 */	beq lbl_80755D68
/* 80755D5C  80 83 00 04 */	lwz r4, 4(r3)
/* 80755D60  28 04 00 00 */	cmplwi r4, 0
/* 80755D64  40 82 00 0C */	bne lbl_80755D70
lbl_80755D68:
/* 80755D68  38 60 00 00 */	li r3, 0
/* 80755D6C  48 00 02 9C */	b lbl_80756008
lbl_80755D70:
/* 80755D70  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80755D74  38 A0 00 01 */	li r5, 1
/* 80755D78  4B 8B 87 C4 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80755D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80755D80  40 82 00 0C */	bne lbl_80755D8C
/* 80755D84  38 60 00 00 */	li r3, 0
/* 80755D88  48 00 02 80 */	b lbl_80756008
lbl_80755D8C:
/* 80755D8C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80755D90  80 63 00 04 */	lwz r3, 4(r3)
/* 80755D94  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80755D98  38 C0 00 00 */	li r6, 0
/* 80755D9C  3C 60 80 75 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80755DA0  38 83 C7 0C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80755DA4  48 00 00 38 */	b lbl_80755DDC
lbl_80755DA8:
/* 80755DA8  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80755DAC  28 00 00 02 */	cmplwi r0, 2
/* 80755DB0  41 82 00 14 */	beq lbl_80755DC4
/* 80755DB4  28 00 00 11 */	cmplwi r0, 0x11
/* 80755DB8  41 80 00 20 */	blt lbl_80755DD8
/* 80755DBC  28 00 00 16 */	cmplwi r0, 0x16
/* 80755DC0  41 81 00 18 */	bgt lbl_80755DD8
lbl_80755DC4:
/* 80755DC4  80 65 00 04 */	lwz r3, 4(r5)
/* 80755DC8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80755DCC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80755DD0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80755DD4  90 83 00 04 */	stw r4, 4(r3)
lbl_80755DD8:
/* 80755DD8  38 C6 00 01 */	addi r6, r6, 1
lbl_80755DDC:
/* 80755DDC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80755DE0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80755DE4  80 65 00 04 */	lwz r3, 4(r5)
/* 80755DE8  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80755DEC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80755DF0  7C 00 18 40 */	cmplw r0, r3
/* 80755DF4  41 80 FF B4 */	blt lbl_80755DA8
/* 80755DF8  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755DFC  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755E00  38 80 00 1C */	li r4, 0x1c
/* 80755E04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80755E08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80755E0C  3F C5 00 02 */	addis r30, r5, 2
/* 80755E10  3B DE C2 F8 */	addi r30, r30, -15624
/* 80755E14  7F C5 F3 78 */	mr r5, r30
/* 80755E18  38 C0 00 80 */	li r6, 0x80
/* 80755E1C  4B 8E 64 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755E20  3C 80 00 08 */	lis r4, 8
/* 80755E24  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80755E28  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80755E2C  4B 8B EE 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80755E30  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80755E34  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80755E38  28 00 00 00 */	cmplwi r0, 0
/* 80755E3C  40 82 00 0C */	bne lbl_80755E48
/* 80755E40  38 60 00 00 */	li r3, 0
/* 80755E44  48 00 01 C4 */	b lbl_80756008
lbl_80755E48:
/* 80755E48  38 60 00 58 */	li r3, 0x58
/* 80755E4C  4B B7 8E 00 */	b __nw__FUl
/* 80755E50  7C 7D 1B 79 */	or. r29, r3, r3
/* 80755E54  41 82 00 84 */	beq lbl_80755ED8
/* 80755E58  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755E5C  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755E60  38 80 00 17 */	li r4, 0x17
/* 80755E64  7F C5 F3 78 */	mr r5, r30
/* 80755E68  38 C0 00 80 */	li r6, 0x80
/* 80755E6C  4B 8E 64 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755E70  7C 7C 1B 78 */	mr r28, r3
/* 80755E74  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755E78  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755E7C  38 80 00 1D */	li r4, 0x1d
/* 80755E80  7F C5 F3 78 */	mr r5, r30
/* 80755E84  38 C0 00 80 */	li r6, 0x80
/* 80755E88  4B 8E 64 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755E8C  7C 64 1B 78 */	mr r4, r3
/* 80755E90  38 1F 05 F8 */	addi r0, r31, 0x5f8
/* 80755E94  90 01 00 08 */	stw r0, 8(r1)
/* 80755E98  3C 00 00 08 */	lis r0, 8
/* 80755E9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80755EA0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80755EA4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80755EA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80755EAC  7F A3 EB 78 */	mr r3, r29
/* 80755EB0  38 A0 00 00 */	li r5, 0
/* 80755EB4  38 C0 00 00 */	li r6, 0
/* 80755EB8  7F 87 E3 78 */	mr r7, r28
/* 80755EBC  39 00 00 00 */	li r8, 0
/* 80755EC0  3D 20 80 75 */	lis r9, lit_3919@ha
/* 80755EC4  C0 29 77 04 */	lfs f1, lit_3919@l(r9)
/* 80755EC8  39 20 00 00 */	li r9, 0
/* 80755ECC  39 40 FF FF */	li r10, -1
/* 80755ED0  4B 8B A9 00 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80755ED4  7C 7D 1B 78 */	mr r29, r3
lbl_80755ED8:
/* 80755ED8  93 BF 05 D8 */	stw r29, 0x5d8(r31)
/* 80755EDC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80755EE0  28 03 00 00 */	cmplwi r3, 0
/* 80755EE4  41 82 00 10 */	beq lbl_80755EF4
/* 80755EE8  80 03 00 04 */	lwz r0, 4(r3)
/* 80755EEC  28 00 00 00 */	cmplwi r0, 0
/* 80755EF0  40 82 00 0C */	bne lbl_80755EFC
lbl_80755EF4:
/* 80755EF4  38 60 00 00 */	li r3, 0
/* 80755EF8  48 00 01 10 */	b lbl_80756008
lbl_80755EFC:
/* 80755EFC  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755F00  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755F04  38 80 00 1D */	li r4, 0x1d
/* 80755F08  7F C5 F3 78 */	mr r5, r30
/* 80755F0C  38 C0 00 80 */	li r6, 0x80
/* 80755F10  4B 8E 63 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755F14  3C 80 00 08 */	lis r4, 8
/* 80755F18  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80755F1C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80755F20  4B 8B ED 34 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80755F24  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 80755F28  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80755F2C  28 00 00 00 */	cmplwi r0, 0
/* 80755F30  40 82 00 0C */	bne lbl_80755F3C
/* 80755F34  38 60 00 00 */	li r3, 0
/* 80755F38  48 00 00 D0 */	b lbl_80756008
lbl_80755F3C:
/* 80755F3C  38 60 00 54 */	li r3, 0x54
/* 80755F40  4B B7 8D 0C */	b __nw__FUl
/* 80755F44  7C 7C 1B 79 */	or. r28, r3, r3
/* 80755F48  41 82 00 8C */	beq lbl_80755FD4
/* 80755F4C  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755F50  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755F54  38 80 00 04 */	li r4, 4
/* 80755F58  7F C5 F3 78 */	mr r5, r30
/* 80755F5C  38 C0 00 80 */	li r6, 0x80
/* 80755F60  4B 8E 63 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755F64  7C 7D 1B 78 */	mr r29, r3
/* 80755F68  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80755F6C  38 63 7A 88 */	addi r3, r3, stringBase0@l
/* 80755F70  38 80 00 1A */	li r4, 0x1a
/* 80755F74  7F C5 F3 78 */	mr r5, r30
/* 80755F78  38 C0 00 80 */	li r6, 0x80
/* 80755F7C  4B 8E 63 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80755F80  7C 64 1B 78 */	mr r4, r3
/* 80755F84  38 00 00 01 */	li r0, 1
/* 80755F88  90 01 00 08 */	stw r0, 8(r1)
/* 80755F8C  38 00 00 00 */	li r0, 0
/* 80755F90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80755F94  3C 00 00 08 */	lis r0, 8
/* 80755F98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80755F9C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80755FA0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80755FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80755FA8  7F 83 E3 78 */	mr r3, r28
/* 80755FAC  38 A0 00 00 */	li r5, 0
/* 80755FB0  38 C0 00 00 */	li r6, 0
/* 80755FB4  7F A7 EB 78 */	mr r7, r29
/* 80755FB8  39 00 00 02 */	li r8, 2
/* 80755FBC  3D 20 80 75 */	lis r9, lit_3919@ha
/* 80755FC0  C0 29 77 04 */	lfs f1, lit_3919@l(r9)
/* 80755FC4  39 20 00 00 */	li r9, 0
/* 80755FC8  39 40 FF FF */	li r10, -1
/* 80755FCC  4B 8B 9C 80 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80755FD0  7C 7C 1B 78 */	mr r28, r3
lbl_80755FD4:
/* 80755FD4  93 9F 05 F0 */	stw r28, 0x5f0(r31)
/* 80755FD8  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80755FDC  28 03 00 00 */	cmplwi r3, 0
/* 80755FE0  41 82 00 10 */	beq lbl_80755FF0
/* 80755FE4  80 03 00 04 */	lwz r0, 4(r3)
/* 80755FE8  28 00 00 00 */	cmplwi r0, 0
/* 80755FEC  40 82 00 0C */	bne lbl_80755FF8
lbl_80755FF0:
/* 80755FF0  38 60 00 00 */	li r3, 0
/* 80755FF4  48 00 00 14 */	b lbl_80756008
lbl_80755FF8:
/* 80755FF8  7F E3 FB 78 */	mr r3, r31
/* 80755FFC  4B 8C 34 08 */	b initBallModel__13fopEn_enemy_cFv
/* 80756000  30 03 FF FF */	addic r0, r3, -1
/* 80756004  7C 60 19 10 */	subfe r3, r0, r3
lbl_80756008:
/* 80756008  39 61 00 30 */	addi r11, r1, 0x30
/* 8075600C  4B C0 C2 18 */	b _restgpr_28
/* 80756010  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80756014  7C 08 03 A6 */	mtlr r0
/* 80756018  38 21 00 30 */	addi r1, r1, 0x30
/* 8075601C  4E 80 00 20 */	blr 
