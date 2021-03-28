lbl_80778998:
/* 80778998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077899C  7C 08 02 A6 */	mflr r0
/* 807789A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807789A4  39 61 00 30 */	addi r11, r1, 0x30
/* 807789A8  4B BE 98 2C */	b _savegpr_27
/* 807789AC  7C 7F 1B 78 */	mr r31, r3
/* 807789B0  38 60 00 58 */	li r3, 0x58
/* 807789B4  4B B5 62 98 */	b __nw__FUl
/* 807789B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 807789BC  41 82 00 8C */	beq lbl_80778A48
/* 807789C0  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 807789C4  38 80 00 4C */	li r4, 0x4c
/* 807789C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807789CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807789D0  3F 85 00 02 */	addis r28, r5, 2
/* 807789D4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807789D8  7F 85 E3 78 */	mr r5, r28
/* 807789DC  38 C0 00 80 */	li r6, 0x80
/* 807789E0  4B 8C 39 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807789E4  7C 7D 1B 78 */	mr r29, r3
/* 807789E8  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 807789EC  38 80 00 51 */	li r4, 0x51
/* 807789F0  7F 85 E3 78 */	mr r5, r28
/* 807789F4  38 C0 00 80 */	li r6, 0x80
/* 807789F8  4B 8C 38 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807789FC  7C 64 1B 78 */	mr r4, r3
/* 80778A00  38 1F 05 D0 */	addi r0, r31, 0x5d0
/* 80778A04  90 01 00 08 */	stw r0, 8(r1)
/* 80778A08  3C 00 00 08 */	lis r0, 8
/* 80778A0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80778A10  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80778A14  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80778A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80778A1C  7F C3 F3 78 */	mr r3, r30
/* 80778A20  38 A0 00 00 */	li r5, 0
/* 80778A24  38 C0 00 00 */	li r6, 0
/* 80778A28  7F A7 EB 78 */	mr r7, r29
/* 80778A2C  39 00 00 00 */	li r8, 0
/* 80778A30  3D 20 80 78 */	lis r9, lit_4020@ha
/* 80778A34  C0 29 9E 04 */	lfs f1, lit_4020@l(r9)
/* 80778A38  39 20 00 00 */	li r9, 0
/* 80778A3C  39 40 FF FF */	li r10, -1
/* 80778A40  4B 89 7D 90 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80778A44  7C 7E 1B 78 */	mr r30, r3
lbl_80778A48:
/* 80778A48  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 80778A4C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80778A50  28 03 00 00 */	cmplwi r3, 0
/* 80778A54  41 82 00 10 */	beq lbl_80778A64
/* 80778A58  80 C3 00 04 */	lwz r6, 4(r3)
/* 80778A5C  28 06 00 00 */	cmplwi r6, 0
/* 80778A60  40 82 00 0C */	bne lbl_80778A6C
lbl_80778A64:
/* 80778A64  38 60 00 00 */	li r3, 0
/* 80778A68  48 00 03 10 */	b lbl_80778D78
lbl_80778A6C:
/* 80778A6C  93 E6 00 14 */	stw r31, 0x14(r6)
/* 80778A70  38 E0 00 00 */	li r7, 0
/* 80778A74  3C 60 80 77 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80778A78  38 83 BF 6C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80778A7C  48 00 00 18 */	b lbl_80778A94
lbl_80778A80:
/* 80778A80  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80778A84  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80778A88  7C 63 00 2E */	lwzx r3, r3, r0
/* 80778A8C  90 83 00 04 */	stw r4, 4(r3)
/* 80778A90  38 E7 00 01 */	addi r7, r7, 1
lbl_80778A94:
/* 80778A94  80 A6 00 04 */	lwz r5, 4(r6)
/* 80778A98  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80778A9C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80778AA0  7C 00 18 40 */	cmplw r0, r3
/* 80778AA4  41 80 FF DC */	blt lbl_80778A80
/* 80778AA8  38 7F 06 80 */	addi r3, r31, 0x680
/* 80778AAC  7F E4 FB 78 */	mr r4, r31
/* 80778AB0  3C A0 80 78 */	lis r5, jc_data@ha
/* 80778AB4  38 A5 A6 38 */	addi r5, r5, jc_data@l
/* 80778AB8  38 E0 00 0B */	li r7, 0xb
/* 80778ABC  4B 8B D1 E4 */	b init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 80778AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80778AC4  40 82 00 0C */	bne lbl_80778AD0
/* 80778AC8  38 60 00 00 */	li r3, 0
/* 80778ACC  48 00 02 AC */	b lbl_80778D78
lbl_80778AD0:
/* 80778AD0  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 80778AD4  28 00 00 01 */	cmplwi r0, 1
/* 80778AD8  40 82 00 4C */	bne lbl_80778B24
/* 80778ADC  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778AE0  38 80 00 55 */	li r4, 0x55
/* 80778AE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80778AE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80778AEC  3C A5 00 02 */	addis r5, r5, 2
/* 80778AF0  38 C0 00 80 */	li r6, 0x80
/* 80778AF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80778AF8  4B 8C 37 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778AFC  3C 80 00 08 */	lis r4, 8
/* 80778B00  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80778B04  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80778B08  4B 89 C1 4C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80778B0C  90 7F 06 90 */	stw r3, 0x690(r31)
/* 80778B10  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80778B14  28 00 00 00 */	cmplwi r0, 0
/* 80778B18  40 82 01 98 */	bne lbl_80778CB0
/* 80778B1C  38 60 00 00 */	li r3, 0
/* 80778B20  48 00 02 58 */	b lbl_80778D78
lbl_80778B24:
/* 80778B24  28 00 00 02 */	cmplwi r0, 2
/* 80778B28  41 80 01 88 */	blt lbl_80778CB0
/* 80778B2C  38 60 00 58 */	li r3, 0x58
/* 80778B30  4B B5 61 1C */	b __nw__FUl
/* 80778B34  7C 7D 1B 79 */	or. r29, r3, r3
/* 80778B38  41 82 00 8C */	beq lbl_80778BC4
/* 80778B3C  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778B40  38 80 00 0B */	li r4, 0xb
/* 80778B44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80778B48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80778B4C  3F 85 00 02 */	addis r28, r5, 2
/* 80778B50  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80778B54  7F 85 E3 78 */	mr r5, r28
/* 80778B58  38 C0 00 80 */	li r6, 0x80
/* 80778B5C  4B 8C 37 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778B60  7C 7E 1B 78 */	mr r30, r3
/* 80778B64  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778B68  38 80 00 54 */	li r4, 0x54
/* 80778B6C  7F 85 E3 78 */	mr r5, r28
/* 80778B70  38 C0 00 80 */	li r6, 0x80
/* 80778B74  4B 8C 37 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778B78  7C 64 1B 78 */	mr r4, r3
/* 80778B7C  38 00 00 00 */	li r0, 0
/* 80778B80  90 01 00 08 */	stw r0, 8(r1)
/* 80778B84  3C 00 00 08 */	lis r0, 8
/* 80778B88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80778B8C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80778B90  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80778B94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80778B98  7F A3 EB 78 */	mr r3, r29
/* 80778B9C  38 A0 00 00 */	li r5, 0
/* 80778BA0  38 C0 00 00 */	li r6, 0
/* 80778BA4  7F C7 F3 78 */	mr r7, r30
/* 80778BA8  39 00 00 00 */	li r8, 0
/* 80778BAC  3D 20 80 78 */	lis r9, lit_4020@ha
/* 80778BB0  C0 29 9E 04 */	lfs f1, lit_4020@l(r9)
/* 80778BB4  39 20 00 00 */	li r9, 0
/* 80778BB8  39 40 FF FF */	li r10, -1
/* 80778BBC  4B 89 7C 14 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80778BC0  7C 7D 1B 78 */	mr r29, r3
lbl_80778BC4:
/* 80778BC4  93 BF 06 94 */	stw r29, 0x694(r31)
/* 80778BC8  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80778BCC  28 03 00 00 */	cmplwi r3, 0
/* 80778BD0  41 82 00 10 */	beq lbl_80778BE0
/* 80778BD4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80778BD8  28 05 00 00 */	cmplwi r5, 0
/* 80778BDC  40 82 00 0C */	bne lbl_80778BE8
lbl_80778BE0:
/* 80778BE0  38 60 00 00 */	li r3, 0
/* 80778BE4  48 00 01 94 */	b lbl_80778D78
lbl_80778BE8:
/* 80778BE8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80778BEC  38 E0 00 00 */	li r7, 0
/* 80778BF0  3C 60 80 77 */	lis r3, nodeCallBack_bow__FP8J3DJointi@ha
/* 80778BF4  38 83 C4 84 */	addi r4, r3, nodeCallBack_bow__FP8J3DJointi@l
/* 80778BF8  48 00 00 2C */	b lbl_80778C24
lbl_80778BFC:
/* 80778BFC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80778C00  28 00 00 02 */	cmplwi r0, 2
/* 80778C04  41 82 00 0C */	beq lbl_80778C10
/* 80778C08  28 00 00 03 */	cmplwi r0, 3
/* 80778C0C  40 82 00 14 */	bne lbl_80778C20
lbl_80778C10:
/* 80778C10  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80778C14  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80778C18  7C 63 00 2E */	lwzx r3, r3, r0
/* 80778C1C  90 83 00 04 */	stw r4, 4(r3)
lbl_80778C20:
/* 80778C20  38 E7 00 01 */	addi r7, r7, 1
lbl_80778C24:
/* 80778C24  80 C5 00 04 */	lwz r6, 4(r5)
/* 80778C28  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80778C2C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80778C30  7C 00 18 40 */	cmplw r0, r3
/* 80778C34  41 80 FF C8 */	blt lbl_80778BFC
/* 80778C38  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 80778C3C  28 00 00 04 */	cmplwi r0, 4
/* 80778C40  40 82 00 28 */	bne lbl_80778C68
/* 80778C44  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778C48  38 80 00 53 */	li r4, 0x53
/* 80778C4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80778C50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80778C54  3C A5 00 02 */	addis r5, r5, 2
/* 80778C58  38 C0 00 80 */	li r6, 0x80
/* 80778C5C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80778C60  4B 8C 36 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778C64  48 00 00 24 */	b lbl_80778C88
lbl_80778C68:
/* 80778C68  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778C6C  38 80 00 52 */	li r4, 0x52
/* 80778C70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80778C74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80778C78  3C A5 00 02 */	addis r5, r5, 2
/* 80778C7C  38 C0 00 80 */	li r6, 0x80
/* 80778C80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80778C84  4B 8C 36 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80778C88:
/* 80778C88  3C 80 00 08 */	lis r4, 8
/* 80778C8C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80778C90  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80778C94  4B 89 BF C0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80778C98  90 7F 06 90 */	stw r3, 0x690(r31)
/* 80778C9C  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80778CA0  28 00 00 00 */	cmplwi r0, 0
/* 80778CA4  40 82 00 0C */	bne lbl_80778CB0
/* 80778CA8  38 60 00 00 */	li r3, 0
/* 80778CAC  48 00 00 CC */	b lbl_80778D78
lbl_80778CB0:
/* 80778CB0  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80778CB4  38 80 00 50 */	li r4, 0x50
/* 80778CB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80778CBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80778CC0  3F 85 00 02 */	addis r28, r5, 2
/* 80778CC4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80778CC8  7F 85 E3 78 */	mr r5, r28
/* 80778CCC  38 C0 00 80 */	li r6, 0x80
/* 80778CD0  4B 8C 36 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778CD4  7C 7D 1B 78 */	mr r29, r3
/* 80778CD8  3B 60 00 00 */	li r27, 0
/* 80778CDC  3F C0 11 00 */	lis r30, 0x1100
/* 80778CE0  48 00 00 38 */	b lbl_80778D18
lbl_80778CE4:
/* 80778CE4  7F A3 EB 78 */	mr r3, r29
/* 80778CE8  3C 80 00 08 */	lis r4, 8
/* 80778CEC  38 BE 00 84 */	addi r5, r30, 0x84
/* 80778CF0  4B 89 BF 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80778CF4  57 64 13 BA */	rlwinm r4, r27, 2, 0xe, 0x1d
/* 80778CF8  38 04 0A 28 */	addi r0, r4, 0xa28
/* 80778CFC  7C 7F 01 2E */	stwx r3, r31, r0
/* 80778D00  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80778D04  28 00 00 00 */	cmplwi r0, 0
/* 80778D08  40 82 00 0C */	bne lbl_80778D14
/* 80778D0C  38 60 00 00 */	li r3, 0
/* 80778D10  48 00 00 68 */	b lbl_80778D78
lbl_80778D14:
/* 80778D14  3B 7B 00 01 */	addi r27, r27, 1
lbl_80778D18:
/* 80778D18  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80778D1C  28 00 00 02 */	cmplwi r0, 2
/* 80778D20  41 80 FF C4 */	blt lbl_80778CE4
/* 80778D24  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80778D28  28 00 00 0C */	cmplwi r0, 0xc
/* 80778D2C  40 82 00 48 */	bne lbl_80778D74
/* 80778D30  3C 60 80 78 */	lis r3, stringBase0@ha
/* 80778D34  38 63 A0 BC */	addi r3, r3, stringBase0@l
/* 80778D38  38 63 00 08 */	addi r3, r3, 8
/* 80778D3C  38 80 00 03 */	li r4, 3
/* 80778D40  7F 85 E3 78 */	mr r5, r28
/* 80778D44  38 C0 00 80 */	li r6, 0x80
/* 80778D48  4B 8C 35 A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80778D4C  3C 80 00 08 */	lis r4, 8
/* 80778D50  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80778D54  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80778D58  4B 89 BE FC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80778D5C  90 7F 06 98 */	stw r3, 0x698(r31)
/* 80778D60  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80778D64  28 00 00 00 */	cmplwi r0, 0
/* 80778D68  40 82 00 0C */	bne lbl_80778D74
/* 80778D6C  38 60 00 00 */	li r3, 0
/* 80778D70  48 00 00 08 */	b lbl_80778D78
lbl_80778D74:
/* 80778D74  38 60 00 01 */	li r3, 1
lbl_80778D78:
/* 80778D78  39 61 00 30 */	addi r11, r1, 0x30
/* 80778D7C  4B BE 94 A4 */	b _restgpr_27
/* 80778D80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80778D84  7C 08 03 A6 */	mtlr r0
/* 80778D88  38 21 00 30 */	addi r1, r1, 0x30
/* 80778D8C  4E 80 00 20 */	blr 
