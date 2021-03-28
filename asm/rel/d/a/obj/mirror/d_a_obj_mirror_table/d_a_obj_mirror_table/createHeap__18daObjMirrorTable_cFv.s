lbl_80C99938:
/* 80C99938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C9993C  7C 08 02 A6 */	mflr r0
/* 80C99940  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C99944  39 61 00 30 */	addi r11, r1, 0x30
/* 80C99948  4B 6C 88 88 */	b _savegpr_26
/* 80C9994C  7C 7F 1B 78 */	mr r31, r3
/* 80C99950  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99954  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99958  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9995C  38 80 00 15 */	li r4, 0x15
/* 80C99960  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C99964  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C99968  3F C5 00 02 */	addis r30, r5, 2
/* 80C9996C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C99970  7F C5 F3 78 */	mr r5, r30
/* 80C99974  38 C0 00 80 */	li r6, 0x80
/* 80C99978  4B 3A 29 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9997C  3C 80 00 08 */	lis r4, 8
/* 80C99980  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C99984  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C99988  4B 37 B2 CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9998C  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C99990  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C99994  28 00 00 00 */	cmplwi r0, 0
/* 80C99998  40 82 00 0C */	bne lbl_80C999A4
/* 80C9999C  38 60 00 00 */	li r3, 0
/* 80C999A0  48 00 05 7C */	b lbl_80C99F1C
lbl_80C999A4:
/* 80C999A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C999A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C999AC  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80C999B0  7F 83 E3 78 */	mr r3, r28
/* 80C999B4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C999B8  3B A4 72 88 */	addi r29, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C999BC  A0 9D 02 C4 */	lhz r4, 0x2c4(r29)
/* 80C999C0  4B 39 AF FC */	b isEventBit__11dSv_event_cCFUs
/* 80C999C4  7C 60 1B 79 */	or. r0, r3, r3
/* 80C999C8  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C999CC  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C999D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C999D4  38 80 00 0E */	li r4, 0xe
/* 80C999D8  41 82 00 08 */	beq lbl_80C999E0
/* 80C999DC  38 80 00 0D */	li r4, 0xd
lbl_80C999E0:
/* 80C999E0  7F C5 F3 78 */	mr r5, r30
/* 80C999E4  38 C0 00 80 */	li r6, 0x80
/* 80C999E8  4B 3A 29 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C999EC  38 80 00 00 */	li r4, 0
/* 80C999F0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C999F4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C999F8  4B 37 B2 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C999FC  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 80C99A00  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 80C99A04  28 00 00 00 */	cmplwi r0, 0
/* 80C99A08  40 82 00 0C */	bne lbl_80C99A14
/* 80C99A0C  38 60 00 00 */	li r3, 0
/* 80C99A10  48 00 05 0C */	b lbl_80C99F1C
lbl_80C99A14:
/* 80C99A14  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99A18  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99A1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99A20  38 80 00 0A */	li r4, 0xa
/* 80C99A24  7F C5 F3 78 */	mr r5, r30
/* 80C99A28  38 C0 00 80 */	li r6, 0x80
/* 80C99A2C  4B 3A 28 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99A30  7C 7A 1B 78 */	mr r26, r3
/* 80C99A34  38 60 00 1C */	li r3, 0x1c
/* 80C99A38  4B 63 52 14 */	b __nw__FUl
/* 80C99A3C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C99A40  41 82 00 20 */	beq lbl_80C99A60
/* 80C99A44  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C99A48  38 04 B2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C99A4C  90 1B 00 00 */	stw r0, 0(r27)
/* 80C99A50  38 80 00 00 */	li r4, 0
/* 80C99A54  4B 68 E9 A8 */	b init__12J3DFrameCtrlFs
/* 80C99A58  38 00 00 00 */	li r0, 0
/* 80C99A5C  90 1B 00 18 */	stw r0, 0x18(r27)
lbl_80C99A60:
/* 80C99A60  93 7F 05 80 */	stw r27, 0x580(r31)
/* 80C99A64  7F E3 FB 78 */	mr r3, r31
/* 80C99A68  48 00 05 15 */	bl isSwitch__18daObjMirrorTable_cFv
/* 80C99A6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C99A70  41 82 00 10 */	beq lbl_80C99A80
/* 80C99A74  3C 60 80 CA */	lis r3, lit_3850@ha
/* 80C99A78  C0 23 B2 5C */	lfs f1, lit_3850@l(r3)
/* 80C99A7C  48 00 00 0C */	b lbl_80C99A88
lbl_80C99A80:
/* 80C99A80  3C 60 80 CA */	lis r3, lit_3851@ha
/* 80C99A84  C0 23 B2 60 */	lfs f1, lit_3851@l(r3)
lbl_80C99A88:
/* 80C99A88  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80C99A8C  28 03 00 00 */	cmplwi r3, 0
/* 80C99A90  41 82 00 28 */	beq lbl_80C99AB8
/* 80C99A94  7F 44 D3 78 */	mr r4, r26
/* 80C99A98  38 A0 00 01 */	li r5, 1
/* 80C99A9C  38 C0 00 00 */	li r6, 0
/* 80C99AA0  38 E0 00 00 */	li r7, 0
/* 80C99AA4  39 00 FF FF */	li r8, -1
/* 80C99AA8  39 20 00 00 */	li r9, 0
/* 80C99AAC  4B 37 3D 30 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C99AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80C99AB4  40 82 00 0C */	bne lbl_80C99AC0
lbl_80C99AB8:
/* 80C99AB8  38 60 00 00 */	li r3, 0
/* 80C99ABC  48 00 04 60 */	b lbl_80C99F1C
lbl_80C99AC0:
/* 80C99AC0  7F E3 FB 78 */	mr r3, r31
/* 80C99AC4  48 00 04 B9 */	bl isSwitch__18daObjMirrorTable_cFv
/* 80C99AC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C99ACC  41 82 00 30 */	beq lbl_80C99AFC
/* 80C99AD0  A8 1A 00 06 */	lha r0, 6(r26)
/* 80C99AD4  3C 60 80 CA */	lis r3, lit_3853@ha
/* 80C99AD8  C8 23 B2 64 */	lfd f1, lit_3853@l(r3)
/* 80C99ADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C99AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C99AE4  3C 00 43 30 */	lis r0, 0x4330
/* 80C99AE8  90 01 00 08 */	stw r0, 8(r1)
/* 80C99AEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C99AF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C99AF4  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80C99AF8  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80C99AFC:
/* 80C99AFC  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99B00  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99B04  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99B08  38 80 00 22 */	li r4, 0x22
/* 80C99B0C  7F C5 F3 78 */	mr r5, r30
/* 80C99B10  38 C0 00 80 */	li r6, 0x80
/* 80C99B14  4B 3A 27 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99B18  7C 64 1B 78 */	mr r4, r3
/* 80C99B1C  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C99B20  38 A0 00 01 */	li r5, 1
/* 80C99B24  38 DF 07 DC */	addi r6, r31, 0x7dc
/* 80C99B28  4B 3E 04 10 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C99B2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C99B30  41 82 00 0C */	beq lbl_80C99B3C
/* 80C99B34  38 60 00 00 */	li r3, 0
/* 80C99B38  48 00 03 E4 */	b lbl_80C99F1C
lbl_80C99B3C:
/* 80C99B3C  7F 83 E3 78 */	mr r3, r28
/* 80C99B40  A0 9D 02 C4 */	lhz r4, 0x2c4(r29)
/* 80C99B44  4B 39 AE 78 */	b isEventBit__11dSv_event_cCFUs
/* 80C99B48  7C 60 1B 79 */	or. r0, r3, r3
/* 80C99B4C  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99B50  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99B54  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99B58  38 80 00 20 */	li r4, 0x20
/* 80C99B5C  41 82 00 08 */	beq lbl_80C99B64
/* 80C99B60  38 80 00 1F */	li r4, 0x1f
lbl_80C99B64:
/* 80C99B64  7F C5 F3 78 */	mr r5, r30
/* 80C99B68  38 C0 00 80 */	li r6, 0x80
/* 80C99B6C  4B 3A 27 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99B70  7C 64 1B 78 */	mr r4, r3
/* 80C99B74  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80C99B78  38 A0 00 01 */	li r5, 1
/* 80C99B7C  38 DF 08 0C */	addi r6, r31, 0x80c
/* 80C99B80  4B 3E 03 B8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C99B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C99B88  41 82 00 0C */	beq lbl_80C99B94
/* 80C99B8C  38 60 00 00 */	li r3, 0
/* 80C99B90  48 00 03 8C */	b lbl_80C99F1C
lbl_80C99B94:
/* 80C99B94  38 00 00 00 */	li r0, 0
/* 80C99B98  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80C99B9C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80C99BA0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80C99BA4  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80C99BA8  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80C99BAC  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80C99BB0  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80C99BB4  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80C99BB8  7F 83 E3 78 */	mr r3, r28
/* 80C99BBC  A0 9D 02 C4 */	lhz r4, 0x2c4(r29)
/* 80C99BC0  4B 39 AD FC */	b isEventBit__11dSv_event_cCFUs
/* 80C99BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C99BC8  41 82 03 50 */	beq lbl_80C99F18
/* 80C99BCC  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99BD0  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99BD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99BD8  38 80 00 14 */	li r4, 0x14
/* 80C99BDC  7F C5 F3 78 */	mr r5, r30
/* 80C99BE0  38 C0 00 80 */	li r6, 0x80
/* 80C99BE4  4B 3A 27 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99BE8  7C 7D 1B 78 */	mr r29, r3
/* 80C99BEC  3C 80 00 08 */	lis r4, 8
/* 80C99BF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C99BF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C99BF8  4B 37 B0 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C99BFC  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C99C00  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99C04  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99C08  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99C0C  38 80 00 19 */	li r4, 0x19
/* 80C99C10  7F C5 F3 78 */	mr r5, r30
/* 80C99C14  38 C0 00 80 */	li r6, 0x80
/* 80C99C18  4B 3A 26 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99C1C  7C 7A 1B 78 */	mr r26, r3
/* 80C99C20  38 60 00 18 */	li r3, 0x18
/* 80C99C24  4B 63 50 28 */	b __nw__FUl
/* 80C99C28  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C99C2C  41 82 00 20 */	beq lbl_80C99C4C
/* 80C99C30  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C99C34  38 04 B2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C99C38  90 1C 00 00 */	stw r0, 0(r28)
/* 80C99C3C  38 80 00 00 */	li r4, 0
/* 80C99C40  4B 68 E7 BC */	b init__12J3DFrameCtrlFs
/* 80C99C44  38 00 00 00 */	li r0, 0
/* 80C99C48  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C99C4C:
/* 80C99C4C  93 9F 05 88 */	stw r28, 0x588(r31)
/* 80C99C50  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80C99C54  28 03 00 00 */	cmplwi r3, 0
/* 80C99C58  41 82 00 30 */	beq lbl_80C99C88
/* 80C99C5C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C99C60  7F 45 D3 78 */	mr r5, r26
/* 80C99C64  38 C0 00 01 */	li r6, 1
/* 80C99C68  38 E0 00 00 */	li r7, 0
/* 80C99C6C  3D 00 80 CA */	lis r8, lit_3850@ha
/* 80C99C70  C0 28 B2 5C */	lfs f1, lit_3850@l(r8)
/* 80C99C74  39 00 00 00 */	li r8, 0
/* 80C99C78  39 20 FF FF */	li r9, -1
/* 80C99C7C  4B 37 3A 90 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C99C80  2C 03 00 00 */	cmpwi r3, 0
/* 80C99C84  40 82 00 0C */	bne lbl_80C99C90
lbl_80C99C88:
/* 80C99C88  38 60 00 00 */	li r3, 0
/* 80C99C8C  48 00 02 90 */	b lbl_80C99F1C
lbl_80C99C90:
/* 80C99C90  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99C94  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99C9C  38 80 00 21 */	li r4, 0x21
/* 80C99CA0  7F C5 F3 78 */	mr r5, r30
/* 80C99CA4  38 C0 00 80 */	li r6, 0x80
/* 80C99CA8  4B 3A 26 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99CAC  7C 64 1B 78 */	mr r4, r3
/* 80C99CB0  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80C99CB4  38 A0 00 01 */	li r5, 1
/* 80C99CB8  38 DF 08 3C */	addi r6, r31, 0x83c
/* 80C99CBC  4B 3E 02 7C */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C99CC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C99CC4  41 82 00 0C */	beq lbl_80C99CD0
/* 80C99CC8  38 60 00 00 */	li r3, 0
/* 80C99CCC  48 00 02 50 */	b lbl_80C99F1C
lbl_80C99CD0:
/* 80C99CD0  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99CD4  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99CD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99CDC  38 80 00 13 */	li r4, 0x13
/* 80C99CE0  7F C5 F3 78 */	mr r5, r30
/* 80C99CE4  38 C0 00 80 */	li r6, 0x80
/* 80C99CE8  4B 3A 26 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99CEC  3C 80 00 08 */	lis r4, 8
/* 80C99CF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C99CF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C99CF8  4B 37 AF 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C99CFC  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C99D00  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99D04  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99D08  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99D0C  38 80 00 11 */	li r4, 0x11
/* 80C99D10  7F C5 F3 78 */	mr r5, r30
/* 80C99D14  38 C0 00 80 */	li r6, 0x80
/* 80C99D18  4B 3A 25 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99D1C  7C 7D 1B 78 */	mr r29, r3
/* 80C99D20  3C 80 00 08 */	lis r4, 8
/* 80C99D24  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C99D28  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C99D2C  4B 37 AF 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C99D30  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80C99D34  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99D38  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99D40  38 80 00 1C */	li r4, 0x1c
/* 80C99D44  7F C5 F3 78 */	mr r5, r30
/* 80C99D48  38 C0 00 80 */	li r6, 0x80
/* 80C99D4C  4B 3A 25 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99D50  7C 7A 1B 78 */	mr r26, r3
/* 80C99D54  38 60 00 18 */	li r3, 0x18
/* 80C99D58  4B 63 4E F4 */	b __nw__FUl
/* 80C99D5C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C99D60  41 82 00 20 */	beq lbl_80C99D80
/* 80C99D64  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C99D68  38 04 B2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C99D6C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C99D70  38 80 00 00 */	li r4, 0
/* 80C99D74  4B 68 E6 88 */	b init__12J3DFrameCtrlFs
/* 80C99D78  38 00 00 00 */	li r0, 0
/* 80C99D7C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C99D80:
/* 80C99D80  93 9F 05 90 */	stw r28, 0x590(r31)
/* 80C99D84  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80C99D88  28 03 00 00 */	cmplwi r3, 0
/* 80C99D8C  41 82 00 30 */	beq lbl_80C99DBC
/* 80C99D90  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C99D94  7F 45 D3 78 */	mr r5, r26
/* 80C99D98  38 C0 00 01 */	li r6, 1
/* 80C99D9C  38 E0 00 00 */	li r7, 0
/* 80C99DA0  3D 00 80 CA */	lis r8, lit_3850@ha
/* 80C99DA4  C0 28 B2 5C */	lfs f1, lit_3850@l(r8)
/* 80C99DA8  39 00 00 00 */	li r8, 0
/* 80C99DAC  39 20 FF FF */	li r9, -1
/* 80C99DB0  4B 37 38 8C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C99DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80C99DB8  40 82 00 0C */	bne lbl_80C99DC4
lbl_80C99DBC:
/* 80C99DBC  38 60 00 00 */	li r3, 0
/* 80C99DC0  48 00 01 5C */	b lbl_80C99F1C
lbl_80C99DC4:
/* 80C99DC4  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99DC8  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99DCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99DD0  38 80 00 12 */	li r4, 0x12
/* 80C99DD4  7F C5 F3 78 */	mr r5, r30
/* 80C99DD8  38 C0 00 80 */	li r6, 0x80
/* 80C99DDC  4B 3A 25 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99DE0  7C 7D 1B 78 */	mr r29, r3
/* 80C99DE4  3C 80 00 08 */	lis r4, 8
/* 80C99DE8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C99DEC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C99DF0  4B 37 AE 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C99DF4  90 7F 05 7C */	stw r3, 0x57c(r31)
/* 80C99DF8  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99DFC  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99E00  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99E04  38 80 00 18 */	li r4, 0x18
/* 80C99E08  7F C5 F3 78 */	mr r5, r30
/* 80C99E0C  38 C0 00 80 */	li r6, 0x80
/* 80C99E10  4B 3A 24 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99E14  7C 7B 1B 78 */	mr r27, r3
/* 80C99E18  38 60 00 18 */	li r3, 0x18
/* 80C99E1C  4B 63 4E 30 */	b __nw__FUl
/* 80C99E20  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C99E24  41 82 00 20 */	beq lbl_80C99E44
/* 80C99E28  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C99E2C  38 04 B2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C99E30  90 1C 00 00 */	stw r0, 0(r28)
/* 80C99E34  38 80 00 00 */	li r4, 0
/* 80C99E38  4B 68 E5 C4 */	b init__12J3DFrameCtrlFs
/* 80C99E3C  38 00 00 00 */	li r0, 0
/* 80C99E40  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C99E44:
/* 80C99E44  93 9F 05 8C */	stw r28, 0x58c(r31)
/* 80C99E48  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80C99E4C  28 03 00 00 */	cmplwi r3, 0
/* 80C99E50  41 82 00 30 */	beq lbl_80C99E80
/* 80C99E54  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C99E58  7F 65 DB 78 */	mr r5, r27
/* 80C99E5C  38 C0 00 01 */	li r6, 1
/* 80C99E60  38 E0 00 00 */	li r7, 0
/* 80C99E64  3D 00 80 CA */	lis r8, lit_3850@ha
/* 80C99E68  C0 28 B2 5C */	lfs f1, lit_3850@l(r8)
/* 80C99E6C  39 00 00 00 */	li r8, 0
/* 80C99E70  39 20 FF FF */	li r9, -1
/* 80C99E74  4B 37 38 98 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C99E78  2C 03 00 00 */	cmpwi r3, 0
/* 80C99E7C  40 82 00 0C */	bne lbl_80C99E88
lbl_80C99E80:
/* 80C99E80  38 60 00 00 */	li r3, 0
/* 80C99E84  48 00 00 98 */	b lbl_80C99F1C
lbl_80C99E88:
/* 80C99E88  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C99E8C  38 63 B2 A4 */	addi r3, r3, l_arcName@l
/* 80C99E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80C99E94  38 80 00 09 */	li r4, 9
/* 80C99E98  7F C5 F3 78 */	mr r5, r30
/* 80C99E9C  38 C0 00 80 */	li r6, 0x80
/* 80C99EA0  4B 3A 24 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C99EA4  7C 7B 1B 78 */	mr r27, r3
/* 80C99EA8  38 60 00 1C */	li r3, 0x1c
/* 80C99EAC  4B 63 4D A0 */	b __nw__FUl
/* 80C99EB0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C99EB4  41 82 00 20 */	beq lbl_80C99ED4
/* 80C99EB8  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C99EBC  38 04 B2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C99EC0  90 1C 00 00 */	stw r0, 0(r28)
/* 80C99EC4  38 80 00 00 */	li r4, 0
/* 80C99EC8  4B 68 E5 34 */	b init__12J3DFrameCtrlFs
/* 80C99ECC  38 00 00 00 */	li r0, 0
/* 80C99ED0  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80C99ED4:
/* 80C99ED4  93 9F 05 84 */	stw r28, 0x584(r31)
/* 80C99ED8  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80C99EDC  28 03 00 00 */	cmplwi r3, 0
/* 80C99EE0  41 82 00 30 */	beq lbl_80C99F10
/* 80C99EE4  7F 64 DB 78 */	mr r4, r27
/* 80C99EE8  38 A0 00 01 */	li r5, 1
/* 80C99EEC  38 C0 00 00 */	li r6, 0
/* 80C99EF0  3C E0 80 CA */	lis r7, lit_3850@ha
/* 80C99EF4  C0 27 B2 5C */	lfs f1, lit_3850@l(r7)
/* 80C99EF8  38 E0 00 00 */	li r7, 0
/* 80C99EFC  39 00 FF FF */	li r8, -1
/* 80C99F00  39 20 00 00 */	li r9, 0
/* 80C99F04  4B 37 38 D8 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C99F08  2C 03 00 00 */	cmpwi r3, 0
/* 80C99F0C  40 82 00 0C */	bne lbl_80C99F18
lbl_80C99F10:
/* 80C99F10  38 60 00 00 */	li r3, 0
/* 80C99F14  48 00 00 08 */	b lbl_80C99F1C
lbl_80C99F18:
/* 80C99F18  38 60 00 01 */	li r3, 1
lbl_80C99F1C:
/* 80C99F1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C99F20  4B 6C 82 FC */	b _restgpr_26
/* 80C99F24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C99F28  7C 08 03 A6 */	mtlr r0
/* 80C99F2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C99F30  4E 80 00 20 */	blr 
