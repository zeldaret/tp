lbl_80712A08:
/* 80712A08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80712A0C  7C 08 02 A6 */	mflr r0
/* 80712A10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80712A14  39 61 00 30 */	addi r11, r1, 0x30
/* 80712A18  4B C4 F7 C1 */	bl _savegpr_28
/* 80712A1C  7C 7F 1B 78 */	mr r31, r3
/* 80712A20  38 60 00 58 */	li r3, 0x58
/* 80712A24  4B BB C2 29 */	bl __nw__FUl
/* 80712A28  7C 7E 1B 79 */	or. r30, r3, r3
/* 80712A2C  41 82 00 94 */	beq lbl_80712AC0
/* 80712A30  3C 60 80 71 */	lis r3, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 80712A34  38 63 3A F4 */	addi r3, r3, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 80712A38  38 80 00 1F */	li r4, 0x1f
/* 80712A3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80712A40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80712A44  3F 85 00 02 */	addis r28, r5, 2
/* 80712A48  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80712A4C  7F 85 E3 78 */	mr r5, r28
/* 80712A50  38 C0 00 80 */	li r6, 0x80
/* 80712A54  4B 92 98 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80712A58  7C 7D 1B 78 */	mr r29, r3
/* 80712A5C  3C 60 80 71 */	lis r3, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 80712A60  38 63 3A F4 */	addi r3, r3, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 80712A64  38 80 00 26 */	li r4, 0x26
/* 80712A68  7F 85 E3 78 */	mr r5, r28
/* 80712A6C  38 C0 00 80 */	li r6, 0x80
/* 80712A70  4B 92 98 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80712A74  7C 64 1B 78 */	mr r4, r3
/* 80712A78  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80712A7C  90 01 00 08 */	stw r0, 8(r1)
/* 80712A80  3C 00 00 08 */	lis r0, 8
/* 80712A84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80712A88  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80712A8C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80712A90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80712A94  7F C3 F3 78 */	mr r3, r30
/* 80712A98  38 A0 00 00 */	li r5, 0
/* 80712A9C  38 C0 00 00 */	li r6, 0
/* 80712AA0  7F A7 EB 78 */	mr r7, r29
/* 80712AA4  39 00 00 00 */	li r8, 0
/* 80712AA8  3D 20 80 71 */	lis r9, lit_3830@ha /* 0x8071397C@ha */
/* 80712AAC  C0 29 39 7C */	lfs f1, lit_3830@l(r9)  /* 0x8071397C@l */
/* 80712AB0  39 20 00 00 */	li r9, 0
/* 80712AB4  39 40 FF FF */	li r10, -1
/* 80712AB8  4B 8F DD 19 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80712ABC  7C 7E 1B 78 */	mr r30, r3
lbl_80712AC0:
/* 80712AC0  93 DF 05 DC */	stw r30, 0x5dc(r31)
/* 80712AC4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80712AC8  28 03 00 00 */	cmplwi r3, 0
/* 80712ACC  41 82 00 10 */	beq lbl_80712ADC
/* 80712AD0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80712AD4  28 06 00 00 */	cmplwi r6, 0
/* 80712AD8  40 82 00 0C */	bne lbl_80712AE4
lbl_80712ADC:
/* 80712ADC  38 60 00 00 */	li r3, 0
/* 80712AE0  48 00 00 F8 */	b lbl_80712BD8
lbl_80712AE4:
/* 80712AE4  93 E6 00 14 */	stw r31, 0x14(r6)
/* 80712AE8  38 E0 00 00 */	li r7, 0
/* 80712AEC  3C 60 80 71 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x8070A8D8@ha */
/* 80712AF0  38 83 A8 D8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x8070A8D8@l */
/* 80712AF4  48 00 00 20 */	b lbl_80712B14
lbl_80712AF8:
/* 80712AF8  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80712AFC  41 82 00 14 */	beq lbl_80712B10
/* 80712B00  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80712B04  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80712B08  7C 63 00 2E */	lwzx r3, r3, r0
/* 80712B0C  90 83 00 04 */	stw r4, 4(r3)
lbl_80712B10:
/* 80712B10  38 E7 00 01 */	addi r7, r7, 1
lbl_80712B14:
/* 80712B14  80 A6 00 04 */	lwz r5, 4(r6)
/* 80712B18  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80712B1C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80712B20  7C 00 18 40 */	cmplw r0, r3
/* 80712B24  41 80 FF D4 */	blt lbl_80712AF8
/* 80712B28  38 7F 06 94 */	addi r3, r31, 0x694
/* 80712B2C  7F E4 FB 78 */	mr r4, r31
/* 80712B30  3C A0 80 71 */	lis r5, jc_data@ha /* 0x80713CE4@ha */
/* 80712B34  38 A5 3C E4 */	addi r5, r5, jc_data@l /* 0x80713CE4@l */
/* 80712B38  38 E0 00 0C */	li r7, 0xc
/* 80712B3C  4B 92 31 65 */	bl init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 80712B40  2C 03 00 00 */	cmpwi r3, 0
/* 80712B44  40 82 00 0C */	bne lbl_80712B50
/* 80712B48  38 60 00 00 */	li r3, 0
/* 80712B4C  48 00 00 8C */	b lbl_80712BD8
lbl_80712B50:
/* 80712B50  3C 60 80 71 */	lis r3, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 80712B54  38 63 3A F4 */	addi r3, r3, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 80712B58  38 80 00 27 */	li r4, 0x27
/* 80712B5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80712B60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80712B64  3F 85 00 02 */	addis r28, r5, 2
/* 80712B68  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80712B6C  7F 85 E3 78 */	mr r5, r28
/* 80712B70  38 C0 00 80 */	li r6, 0x80
/* 80712B74  4B 92 97 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80712B78  3C 80 00 08 */	lis r4, 8
/* 80712B7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80712B80  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80712B84  4B 90 20 D1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80712B88  90 7F 05 E4 */	stw r3, 0x5e4(r31)
/* 80712B8C  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 80712B90  28 00 00 00 */	cmplwi r0, 0
/* 80712B94  40 82 00 0C */	bne lbl_80712BA0
/* 80712B98  38 60 00 00 */	li r3, 0
/* 80712B9C  48 00 00 3C */	b lbl_80712BD8
lbl_80712BA0:
/* 80712BA0  3C 60 80 71 */	lis r3, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 80712BA4  38 63 3A F4 */	addi r3, r3, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 80712BA8  38 80 00 28 */	li r4, 0x28
/* 80712BAC  7F 85 E3 78 */	mr r5, r28
/* 80712BB0  38 C0 00 80 */	li r6, 0x80
/* 80712BB4  4B 92 97 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80712BB8  3C 80 00 08 */	lis r4, 8
/* 80712BBC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80712BC0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80712BC4  4B 90 20 91 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80712BC8  90 7F 06 8C */	stw r3, 0x68c(r31)
/* 80712BCC  80 7F 06 8C */	lwz r3, 0x68c(r31)
/* 80712BD0  30 03 FF FF */	addic r0, r3, -1
/* 80712BD4  7C 60 19 10 */	subfe r3, r0, r3
lbl_80712BD8:
/* 80712BD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80712BDC  4B C4 F6 49 */	bl _restgpr_28
/* 80712BE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80712BE4  7C 08 03 A6 */	mtlr r0
/* 80712BE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80712BEC  4E 80 00 20 */	blr 
