lbl_80B53990:
/* 80B53990  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B53994  7C 08 02 A6 */	mflr r0
/* 80B53998  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B5399C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B539A0  4B 80 E8 2C */	b _savegpr_25
/* 80B539A4  7C 7F 1B 78 */	mr r31, r3
/* 80B539A8  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B539AC  3B A3 D7 94 */	addi r29, r3, m__17daNpc_ykM_Param_c@l
/* 80B539B0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B539B4  28 00 00 01 */	cmplwi r0, 1
/* 80B539B8  38 00 00 00 */	li r0, 0
/* 80B539BC  3C 60 80 B6 */	lis r3, l_bmdData@ha
/* 80B539C0  38 63 DB 08 */	addi r3, r3, l_bmdData@l
/* 80B539C4  3B 83 00 04 */	addi r28, r3, 4
/* 80B539C8  54 00 18 38 */	slwi r0, r0, 3
/* 80B539CC  7C BC 00 2E */	lwzx r5, r28, r0
/* 80B539D0  7C 83 00 2E */	lwzx r4, r3, r0
/* 80B539D4  54 A0 10 3A */	slwi r0, r5, 2
/* 80B539D8  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B539DC  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B539E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B539E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B539E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B539EC  3F C5 00 02 */	addis r30, r5, 2
/* 80B539F0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B539F4  7F C5 F3 78 */	mr r5, r30
/* 80B539F8  38 C0 00 80 */	li r6, 0x80
/* 80B539FC  4B 4E 88 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53A00  7C 79 1B 79 */	or. r25, r3, r3
/* 80B53A04  40 82 00 0C */	bne lbl_80B53A10
/* 80B53A08  38 60 00 01 */	li r3, 1
/* 80B53A0C  48 00 04 DC */	b lbl_80B53EE8
lbl_80B53A10:
/* 80B53A10  38 60 00 58 */	li r3, 0x58
/* 80B53A14  4B 77 B2 38 */	b __nw__FUl
/* 80B53A18  7C 60 1B 79 */	or. r0, r3, r3
/* 80B53A1C  41 82 00 48 */	beq lbl_80B53A64
/* 80B53A20  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B53A24  90 01 00 08 */	stw r0, 8(r1)
/* 80B53A28  3C 00 00 08 */	lis r0, 8
/* 80B53A2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B53A30  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B53A34  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B53A38  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B53A3C  7F 24 CB 78 */	mr r4, r25
/* 80B53A40  38 A0 00 00 */	li r5, 0
/* 80B53A44  38 C0 00 00 */	li r6, 0
/* 80B53A48  38 E0 00 00 */	li r7, 0
/* 80B53A4C  39 00 FF FF */	li r8, -1
/* 80B53A50  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80B53A54  39 20 00 00 */	li r9, 0
/* 80B53A58  39 40 FF FF */	li r10, -1
/* 80B53A5C  4B 4B CD 74 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B53A60  7C 60 1B 78 */	mr r0, r3
lbl_80B53A64:
/* 80B53A64  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B53A68  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B53A6C  28 03 00 00 */	cmplwi r3, 0
/* 80B53A70  41 82 00 10 */	beq lbl_80B53A80
/* 80B53A74  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B53A78  28 05 00 00 */	cmplwi r5, 0
/* 80B53A7C  40 82 00 0C */	bne lbl_80B53A88
lbl_80B53A80:
/* 80B53A80  38 60 00 00 */	li r3, 0
/* 80B53A84  48 00 04 64 */	b lbl_80B53EE8
lbl_80B53A88:
/* 80B53A88  38 C0 00 00 */	li r6, 0
/* 80B53A8C  3C 60 80 B5 */	lis r3, ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi@ha
/* 80B53A90  38 83 42 18 */	addi r4, r3, ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi@l
/* 80B53A94  48 00 00 18 */	b lbl_80B53AAC
lbl_80B53A98:
/* 80B53A98  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80B53A9C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B53AA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53AA4  90 83 00 04 */	stw r4, 4(r3)
/* 80B53AA8  38 C6 00 01 */	addi r6, r6, 1
lbl_80B53AAC:
/* 80B53AAC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B53AB0  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80B53AB4  7C 03 00 40 */	cmplw r3, r0
/* 80B53AB8  41 80 FF E0 */	blt lbl_80B53A98
/* 80B53ABC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B53AC0  38 60 01 08 */	li r3, 0x108
/* 80B53AC4  4B 77 B1 88 */	b __nw__FUl
/* 80B53AC8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B53ACC  41 82 00 D0 */	beq lbl_80B53B9C
/* 80B53AD0  7F 7A DB 78 */	mr r26, r27
/* 80B53AD4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B53AD8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B53ADC  90 1B 00 00 */	stw r0, 0(r27)
/* 80B53AE0  38 7A 00 04 */	addi r3, r26, 4
/* 80B53AE4  3C 80 80 B5 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B53AE8  38 84 40 A4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B53AEC  3C A0 80 B5 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B53AF0  38 A5 40 68 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B53AF4  38 C0 00 08 */	li r6, 8
/* 80B53AF8  38 E0 00 02 */	li r7, 2
/* 80B53AFC  4B 80 E2 64 */	b __construct_array
/* 80B53B00  38 7A 00 14 */	addi r3, r26, 0x14
/* 80B53B04  3C 80 80 B5 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B53B08  38 84 40 50 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B53B0C  3C A0 80 B5 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B53B10  38 A5 40 14 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B53B14  38 C0 00 08 */	li r6, 8
/* 80B53B18  38 E0 00 08 */	li r7, 8
/* 80B53B1C  4B 80 E2 44 */	b __construct_array
/* 80B53B20  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B53B24  3C 80 80 B5 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B53B28  38 84 3F F0 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B53B2C  3C A0 80 B5 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B53B30  38 A5 3F A8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B53B34  38 C0 00 0C */	li r6, 0xc
/* 80B53B38  38 E0 00 08 */	li r7, 8
/* 80B53B3C  4B 80 E2 24 */	b __construct_array
/* 80B53B40  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 80B53B44  3C 80 80 B5 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B53B48  38 84 3F 90 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B53B4C  3C A0 80 B5 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B53B50  38 A5 3F 54 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B53B54  38 C0 00 08 */	li r6, 8
/* 80B53B58  38 E0 00 04 */	li r7, 4
/* 80B53B5C  4B 80 E2 04 */	b __construct_array
/* 80B53B60  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 80B53B64  3C 80 80 B5 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B53B68  38 84 3F 3C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B53B6C  3C A0 80 B5 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B53B70  38 A5 3F 00 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B53B74  38 C0 00 08 */	li r6, 8
/* 80B53B78  38 E0 00 04 */	li r7, 4
/* 80B53B7C  4B 80 E1 E4 */	b __construct_array
/* 80B53B80  7F 43 D3 78 */	mr r3, r26
/* 80B53B84  4B 7D 87 9C */	b initialize__14J3DMaterialAnmFv
/* 80B53B88  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B53B8C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B53B90  90 1B 00 00 */	stw r0, 0(r27)
/* 80B53B94  7F 63 DB 78 */	mr r3, r27
/* 80B53B98  4B 5F 1B CC */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B53B9C:
/* 80B53B9C  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 80B53BA0  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B53BA4  28 00 00 00 */	cmplwi r0, 0
/* 80B53BA8  40 82 00 0C */	bne lbl_80B53BB4
/* 80B53BAC  38 60 00 00 */	li r3, 0
/* 80B53BB0  48 00 03 38 */	b lbl_80B53EE8
lbl_80B53BB4:
/* 80B53BB4  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 80B53BB8  2C 00 00 03 */	cmpwi r0, 3
/* 80B53BBC  41 82 02 E0 */	beq lbl_80B53E9C
/* 80B53BC0  40 80 00 14 */	bge lbl_80B53BD4
/* 80B53BC4  2C 00 00 01 */	cmpwi r0, 1
/* 80B53BC8  41 82 00 18 */	beq lbl_80B53BE0
/* 80B53BCC  40 80 00 AC */	bge lbl_80B53C78
/* 80B53BD0  48 00 02 CC */	b lbl_80B53E9C
lbl_80B53BD4:
/* 80B53BD4  2C 00 00 05 */	cmpwi r0, 5
/* 80B53BD8  40 80 02 C4 */	bge lbl_80B53E9C
/* 80B53BDC  48 00 02 60 */	b lbl_80B53E3C
lbl_80B53BE0:
/* 80B53BE0  3B 40 00 00 */	li r26, 0
/* 80B53BE4  3B 20 00 00 */	li r25, 0
/* 80B53BE8  3B 7D 01 10 */	addi r27, r29, 0x110
/* 80B53BEC  3C 60 80 B6 */	lis r3, l_bmdData@ha
/* 80B53BF0  3B 83 DB 08 */	addi r28, r3, l_bmdData@l
lbl_80B53BF4:
/* 80B53BF4  7C 1B C8 2E */	lwzx r0, r27, r25
/* 80B53BF8  54 00 18 38 */	slwi r0, r0, 3
/* 80B53BFC  7C 7C 02 14 */	add r3, r28, r0
/* 80B53C00  80 83 00 00 */	lwz r4, 0(r3)
/* 80B53C04  2C 04 00 00 */	cmpwi r4, 0
/* 80B53C08  41 80 00 28 */	blt lbl_80B53C30
/* 80B53C0C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B53C10  54 00 10 3A */	slwi r0, r0, 2
/* 80B53C14  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B53C18  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B53C1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53C20  7F C5 F3 78 */	mr r5, r30
/* 80B53C24  38 C0 00 80 */	li r6, 0x80
/* 80B53C28  4B 4E 86 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53C2C  48 00 00 08 */	b lbl_80B53C34
lbl_80B53C30:
/* 80B53C30  38 60 00 00 */	li r3, 0
lbl_80B53C34:
/* 80B53C34  28 03 00 00 */	cmplwi r3, 0
/* 80B53C38  41 82 00 20 */	beq lbl_80B53C58
/* 80B53C3C  3C 80 00 08 */	lis r4, 8
/* 80B53C40  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B53C44  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B53C48  4B 4C 10 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B53C4C  38 19 0E 4C */	addi r0, r25, 0xe4c
/* 80B53C50  7C 7F 01 2E */	stwx r3, r31, r0
/* 80B53C54  48 00 00 10 */	b lbl_80B53C64
lbl_80B53C58:
/* 80B53C58  38 60 00 00 */	li r3, 0
/* 80B53C5C  38 19 0E 4C */	addi r0, r25, 0xe4c
/* 80B53C60  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80B53C64:
/* 80B53C64  3B 5A 00 01 */	addi r26, r26, 1
/* 80B53C68  2C 1A 00 03 */	cmpwi r26, 3
/* 80B53C6C  3B 39 00 04 */	addi r25, r25, 4
/* 80B53C70  41 80 FF 84 */	blt lbl_80B53BF4
/* 80B53C74  48 00 02 28 */	b lbl_80B53E9C
lbl_80B53C78:
/* 80B53C78  3C 60 80 B6 */	lis r3, l_bmdData@ha
/* 80B53C7C  38 63 DB 08 */	addi r3, r3, l_bmdData@l
/* 80B53C80  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80B53C84  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B53C88  54 00 10 3A */	slwi r0, r0, 2
/* 80B53C8C  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B53C90  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B53C94  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53C98  7F C5 F3 78 */	mr r5, r30
/* 80B53C9C  38 C0 00 80 */	li r6, 0x80
/* 80B53CA0  4B 4E 86 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53CA4  7C 79 1B 78 */	mr r25, r3
/* 80B53CA8  38 60 00 58 */	li r3, 0x58
/* 80B53CAC  4B 77 AF A0 */	b __nw__FUl
/* 80B53CB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80B53CB4  41 82 00 48 */	beq lbl_80B53CFC
/* 80B53CB8  38 00 00 00 */	li r0, 0
/* 80B53CBC  90 01 00 08 */	stw r0, 8(r1)
/* 80B53CC0  3C 00 00 08 */	lis r0, 8
/* 80B53CC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B53CC8  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80B53CCC  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80B53CD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B53CD4  7F 24 CB 78 */	mr r4, r25
/* 80B53CD8  38 A0 00 00 */	li r5, 0
/* 80B53CDC  38 C0 00 00 */	li r6, 0
/* 80B53CE0  38 E0 00 00 */	li r7, 0
/* 80B53CE4  39 00 FF FF */	li r8, -1
/* 80B53CE8  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80B53CEC  39 20 00 00 */	li r9, 0
/* 80B53CF0  39 40 FF FF */	li r10, -1
/* 80B53CF4  4B 4B CA DC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B53CF8  7C 60 1B 78 */	mr r0, r3
lbl_80B53CFC:
/* 80B53CFC  90 1F 0E 40 */	stw r0, 0xe40(r31)
/* 80B53D00  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80B53D04  28 03 00 00 */	cmplwi r3, 0
/* 80B53D08  41 82 00 10 */	beq lbl_80B53D18
/* 80B53D0C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B53D10  28 00 00 00 */	cmplwi r0, 0
/* 80B53D14  40 82 00 0C */	bne lbl_80B53D20
lbl_80B53D18:
/* 80B53D18  38 60 00 00 */	li r3, 0
/* 80B53D1C  48 00 01 CC */	b lbl_80B53EE8
lbl_80B53D20:
/* 80B53D20  3C 60 80 B6 */	lis r3, l_bmdData@ha
/* 80B53D24  38 63 DB 08 */	addi r3, r3, l_bmdData@l
/* 80B53D28  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80B53D2C  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80B53D30  54 00 10 3A */	slwi r0, r0, 2
/* 80B53D34  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B53D38  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B53D3C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53D40  7F C5 F3 78 */	mr r5, r30
/* 80B53D44  38 C0 00 80 */	li r6, 0x80
/* 80B53D48  4B 4E 85 A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53D4C  7C 79 1B 78 */	mr r25, r3
/* 80B53D50  38 60 00 58 */	li r3, 0x58
/* 80B53D54  4B 77 AE F8 */	b __nw__FUl
/* 80B53D58  7C 60 1B 79 */	or. r0, r3, r3
/* 80B53D5C  41 82 00 48 */	beq lbl_80B53DA4
/* 80B53D60  38 00 00 00 */	li r0, 0
/* 80B53D64  90 01 00 08 */	stw r0, 8(r1)
/* 80B53D68  3C 00 00 08 */	lis r0, 8
/* 80B53D6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B53D70  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80B53D74  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80B53D78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B53D7C  7F 24 CB 78 */	mr r4, r25
/* 80B53D80  38 A0 00 00 */	li r5, 0
/* 80B53D84  38 C0 00 00 */	li r6, 0
/* 80B53D88  38 E0 00 00 */	li r7, 0
/* 80B53D8C  39 00 FF FF */	li r8, -1
/* 80B53D90  C0 3D 01 1C */	lfs f1, 0x11c(r29)
/* 80B53D94  39 20 00 00 */	li r9, 0
/* 80B53D98  39 40 FF FF */	li r10, -1
/* 80B53D9C  4B 4B CA 34 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B53DA0  7C 60 1B 78 */	mr r0, r3
lbl_80B53DA4:
/* 80B53DA4  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 80B53DA8  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80B53DAC  28 03 00 00 */	cmplwi r3, 0
/* 80B53DB0  41 82 00 10 */	beq lbl_80B53DC0
/* 80B53DB4  80 03 00 04 */	lwz r0, 4(r3)
/* 80B53DB8  28 00 00 00 */	cmplwi r0, 0
/* 80B53DBC  40 82 00 0C */	bne lbl_80B53DC8
lbl_80B53DC0:
/* 80B53DC0  38 60 00 00 */	li r3, 0
/* 80B53DC4  48 00 01 24 */	b lbl_80B53EE8
lbl_80B53DC8:
/* 80B53DC8  7F E3 FB 78 */	mr r3, r31
/* 80B53DCC  38 80 00 00 */	li r4, 0
/* 80B53DD0  C0 3D 01 04 */	lfs f1, 0x104(r29)
/* 80B53DD4  48 00 29 15 */	bl setLeafAnm__11daNpc_ykM_cFif
/* 80B53DD8  38 7D 01 10 */	addi r3, r29, 0x110
/* 80B53DDC  80 03 00 04 */	lwz r0, 4(r3)
/* 80B53DE0  54 05 18 38 */	slwi r5, r0, 3
/* 80B53DE4  7C 1C 28 2E */	lwzx r0, r28, r5
/* 80B53DE8  54 00 10 3A */	slwi r0, r0, 2
/* 80B53DEC  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B53DF0  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B53DF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53DF8  3C 80 80 B6 */	lis r4, l_bmdData@ha
/* 80B53DFC  38 84 DB 08 */	addi r4, r4, l_bmdData@l
/* 80B53E00  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B53E04  7F C5 F3 78 */	mr r5, r30
/* 80B53E08  38 C0 00 80 */	li r6, 0x80
/* 80B53E0C  4B 4E 84 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53E10  28 03 00 00 */	cmplwi r3, 0
/* 80B53E14  41 82 00 1C */	beq lbl_80B53E30
/* 80B53E18  3C 80 00 08 */	lis r4, 8
/* 80B53E1C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B53E20  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B53E24  4B 4C 0E 30 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B53E28  90 7F 0E 50 */	stw r3, 0xe50(r31)
/* 80B53E2C  48 00 00 70 */	b lbl_80B53E9C
lbl_80B53E30:
/* 80B53E30  38 00 00 00 */	li r0, 0
/* 80B53E34  90 1F 0E 50 */	stw r0, 0xe50(r31)
/* 80B53E38  48 00 00 64 */	b lbl_80B53E9C
lbl_80B53E3C:
/* 80B53E3C  38 7D 01 10 */	addi r3, r29, 0x110
/* 80B53E40  80 03 00 04 */	lwz r0, 4(r3)
/* 80B53E44  54 05 18 38 */	slwi r5, r0, 3
/* 80B53E48  7C 1C 28 2E */	lwzx r0, r28, r5
/* 80B53E4C  54 00 10 3A */	slwi r0, r0, 2
/* 80B53E50  3C 60 80 B6 */	lis r3, l_resNameList@ha
/* 80B53E54  38 63 DB 88 */	addi r3, r3, l_resNameList@l
/* 80B53E58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B53E5C  3C 80 80 B6 */	lis r4, l_bmdData@ha
/* 80B53E60  38 84 DB 08 */	addi r4, r4, l_bmdData@l
/* 80B53E64  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B53E68  7F C5 F3 78 */	mr r5, r30
/* 80B53E6C  38 C0 00 80 */	li r6, 0x80
/* 80B53E70  4B 4E 84 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B53E74  28 03 00 00 */	cmplwi r3, 0
/* 80B53E78  41 82 00 1C */	beq lbl_80B53E94
/* 80B53E7C  3C 80 00 08 */	lis r4, 8
/* 80B53E80  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B53E84  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B53E88  4B 4C 0D CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B53E8C  90 7F 0E 50 */	stw r3, 0xe50(r31)
/* 80B53E90  48 00 00 0C */	b lbl_80B53E9C
lbl_80B53E94:
/* 80B53E94  38 00 00 00 */	li r0, 0
/* 80B53E98  90 1F 0E 50 */	stw r0, 0xe50(r31)
lbl_80B53E9C:
/* 80B53E9C  7F E3 FB 78 */	mr r3, r31
/* 80B53EA0  38 80 00 01 */	li r4, 1
/* 80B53EA4  38 A0 00 00 */	li r5, 0
/* 80B53EA8  4B 5F 64 E0 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B53EAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B53EB0  41 82 00 34 */	beq lbl_80B53EE4
/* 80B53EB4  7F E3 FB 78 */	mr r3, r31
/* 80B53EB8  38 80 00 00 */	li r4, 0
/* 80B53EBC  C0 3D 01 04 */	lfs f1, 0x104(r29)
/* 80B53EC0  38 A0 00 00 */	li r5, 0
/* 80B53EC4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B53EC8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B53ECC  7D 89 03 A6 */	mtctr r12
/* 80B53ED0  4E 80 04 21 */	bctrl 
/* 80B53ED4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B53ED8  41 82 00 0C */	beq lbl_80B53EE4
/* 80B53EDC  38 60 00 01 */	li r3, 1
/* 80B53EE0  48 00 00 08 */	b lbl_80B53EE8
lbl_80B53EE4:
/* 80B53EE4  38 60 00 00 */	li r3, 0
lbl_80B53EE8:
/* 80B53EE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B53EEC  4B 80 E3 2C */	b _restgpr_25
/* 80B53EF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B53EF4  7C 08 03 A6 */	mtlr r0
/* 80B53EF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B53EFC  4E 80 00 20 */	blr 
