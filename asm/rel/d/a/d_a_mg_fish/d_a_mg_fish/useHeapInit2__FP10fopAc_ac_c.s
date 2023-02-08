lbl_805349DC:
/* 805349DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805349E0  7C 08 02 A6 */	mflr r0
/* 805349E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805349E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805349EC  4B E2 D7 ED */	bl _savegpr_28
/* 805349F0  7C 7F 1B 78 */	mr r31, r3
/* 805349F4  88 03 06 34 */	lbz r0, 0x634(r3)
/* 805349F8  28 00 00 14 */	cmplwi r0, 0x14
/* 805349FC  40 82 00 4C */	bne lbl_80534A48
/* 80534A00  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534A04  38 80 00 03 */	li r4, 3
/* 80534A08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534A0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534A10  3C A5 00 02 */	addis r5, r5, 2
/* 80534A14  38 C0 00 80 */	li r6, 0x80
/* 80534A18  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534A1C  4B B0 78 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534A20  3C 80 00 08 */	lis r4, 8
/* 80534A24  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534A28  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534A2C  4B AE 02 29 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534A30  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534A34  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534A38  28 00 00 00 */	cmplwi r0, 0
/* 80534A3C  40 82 03 E0 */	bne lbl_80534E1C
/* 80534A40  38 60 00 00 */	li r3, 0
/* 80534A44  48 00 04 34 */	b lbl_80534E78
lbl_80534A48:
/* 80534A48  28 00 00 16 */	cmplwi r0, 0x16
/* 80534A4C  40 82 00 C8 */	bne lbl_80534B14
/* 80534A50  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534A54  38 80 00 0B */	li r4, 0xb
/* 80534A58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534A5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534A60  3F A5 00 02 */	addis r29, r5, 2
/* 80534A64  3B BD C2 F8 */	addi r29, r29, -15624
/* 80534A68  7F A5 EB 78 */	mr r5, r29
/* 80534A6C  38 C0 00 80 */	li r6, 0x80
/* 80534A70  4B B0 78 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534A74  38 80 00 00 */	li r4, 0
/* 80534A78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534A7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534A80  4B AE 01 D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534A84  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534A88  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534A8C  28 00 00 00 */	cmplwi r0, 0
/* 80534A90  40 82 00 0C */	bne lbl_80534A9C
/* 80534A94  38 60 00 00 */	li r3, 0
/* 80534A98  48 00 03 E0 */	b lbl_80534E78
lbl_80534A9C:
/* 80534A9C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534AA0  38 80 00 05 */	li r4, 5
/* 80534AA4  7F A5 EB 78 */	mr r5, r29
/* 80534AA8  38 C0 00 80 */	li r6, 0x80
/* 80534AAC  4B B0 78 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534AB0  3C 80 00 08 */	lis r4, 8
/* 80534AB4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534AB8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534ABC  4B AE 01 99 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534AC0  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80534AC4  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80534AC8  28 00 00 00 */	cmplwi r0, 0
/* 80534ACC  40 82 00 0C */	bne lbl_80534AD8
/* 80534AD0  38 60 00 00 */	li r3, 0
/* 80534AD4  48 00 03 A4 */	b lbl_80534E78
lbl_80534AD8:
/* 80534AD8  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534ADC  38 80 00 07 */	li r4, 7
/* 80534AE0  7F A5 EB 78 */	mr r5, r29
/* 80534AE4  38 C0 00 80 */	li r6, 0x80
/* 80534AE8  4B B0 78 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534AEC  3C 80 00 08 */	lis r4, 8
/* 80534AF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534AF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534AF8  4B AE 01 5D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534AFC  90 7F 06 1C */	stw r3, 0x61c(r31)
/* 80534B00  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80534B04  28 00 00 00 */	cmplwi r0, 0
/* 80534B08  40 82 03 14 */	bne lbl_80534E1C
/* 80534B0C  38 60 00 00 */	li r3, 0
/* 80534B10  48 00 03 68 */	b lbl_80534E78
lbl_80534B14:
/* 80534B14  28 00 00 15 */	cmplwi r0, 0x15
/* 80534B18  40 82 00 94 */	bne lbl_80534BAC
/* 80534B1C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534B20  38 80 00 03 */	li r4, 3
/* 80534B24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534B28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534B2C  3C A5 00 02 */	addis r5, r5, 2
/* 80534B30  38 C0 00 80 */	li r6, 0x80
/* 80534B34  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534B38  4B B0 77 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534B3C  7C 7D 1B 78 */	mr r29, r3
/* 80534B40  3C 80 00 08 */	lis r4, 8
/* 80534B44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534B48  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534B4C  4B AE 01 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534B50  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534B54  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80534B58  28 03 00 00 */	cmplwi r3, 0
/* 80534B5C  40 82 00 0C */	bne lbl_80534B68
/* 80534B60  38 60 00 00 */	li r3, 0
/* 80534B64  48 00 03 14 */	b lbl_80534E78
lbl_80534B68:
/* 80534B68  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80534B6C  38 A0 00 00 */	li r5, 0
/* 80534B70  3C 60 80 53 */	lis r3, nodeCallBackLH__FP8J3DJointi@ha /* 0x8052AFA0@ha */
/* 80534B74  38 83 AF A0 */	addi r4, r3, nodeCallBackLH__FP8J3DJointi@l /* 0x8052AFA0@l */
/* 80534B78  48 00 00 20 */	b lbl_80534B98
lbl_80534B7C:
/* 80534B7C  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80534B80  80 63 00 04 */	lwz r3, 4(r3)
/* 80534B84  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80534B88  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80534B8C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80534B90  90 83 00 04 */	stw r4, 4(r3)
/* 80534B94  38 A5 00 01 */	addi r5, r5, 1
lbl_80534B98:
/* 80534B98  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80534B9C  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80534BA0  7C 03 00 40 */	cmplw r3, r0
/* 80534BA4  41 80 FF D8 */	blt lbl_80534B7C
/* 80534BA8  48 00 02 74 */	b lbl_80534E1C
lbl_80534BAC:
/* 80534BAC  28 00 00 18 */	cmplwi r0, 0x18
/* 80534BB0  40 82 00 E4 */	bne lbl_80534C94
/* 80534BB4  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534BB8  38 80 00 06 */	li r4, 6
/* 80534BBC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534BC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534BC4  3F 85 00 02 */	addis r28, r5, 2
/* 80534BC8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80534BCC  7F 85 E3 78 */	mr r5, r28
/* 80534BD0  38 C0 00 80 */	li r6, 0x80
/* 80534BD4  4B B0 77 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534BD8  7C 7D 1B 78 */	mr r29, r3
/* 80534BDC  38 80 00 00 */	li r4, 0
/* 80534BE0  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020084@ha */
/* 80534BE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11020084@l */
/* 80534BE8  4B AE 00 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534BEC  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534BF0  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534BF4  28 00 00 00 */	cmplwi r0, 0
/* 80534BF8  40 82 00 0C */	bne lbl_80534C04
/* 80534BFC  38 60 00 00 */	li r3, 0
/* 80534C00  48 00 02 78 */	b lbl_80534E78
lbl_80534C04:
/* 80534C04  38 60 00 18 */	li r3, 0x18
/* 80534C08  4B D9 A0 45 */	bl __nw__FUl
/* 80534C0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80534C10  41 82 00 20 */	beq lbl_80534C30
/* 80534C14  3C 80 80 53 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80536B30@ha */
/* 80534C18  38 04 6B 30 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80536B30@l */
/* 80534C1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80534C20  38 80 00 00 */	li r4, 0
/* 80534C24  4B DF 37 D9 */	bl init__12J3DFrameCtrlFs
/* 80534C28  38 00 00 00 */	li r0, 0
/* 80534C2C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80534C30:
/* 80534C30  93 DF 06 20 */	stw r30, 0x620(r31)
/* 80534C34  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80534C38  28 00 00 00 */	cmplwi r0, 0
/* 80534C3C  40 82 00 0C */	bne lbl_80534C48
/* 80534C40  38 60 00 00 */	li r3, 0
/* 80534C44  48 00 02 34 */	b lbl_80534E78
lbl_80534C48:
/* 80534C48  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534C4C  38 80 00 0F */	li r4, 0xf
/* 80534C50  7F 85 E3 78 */	mr r5, r28
/* 80534C54  38 C0 00 80 */	li r6, 0x80
/* 80534C58  4B B0 76 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534C5C  7C 65 1B 78 */	mr r5, r3
/* 80534C60  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80534C64  38 9D 00 58 */	addi r4, r29, 0x58
/* 80534C68  38 C0 00 01 */	li r6, 1
/* 80534C6C  38 E0 00 00 */	li r7, 0
/* 80534C70  3D 00 80 53 */	lis r8, lit_3679@ha /* 0x80536168@ha */
/* 80534C74  C0 28 61 68 */	lfs f1, lit_3679@l(r8)  /* 0x80536168@l */
/* 80534C78  39 00 00 00 */	li r8, 0
/* 80534C7C  39 20 FF FF */	li r9, -1
/* 80534C80  4B AD 88 CD */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80534C84  2C 03 00 00 */	cmpwi r3, 0
/* 80534C88  40 82 01 94 */	bne lbl_80534E1C
/* 80534C8C  38 60 00 00 */	li r3, 0
/* 80534C90  48 00 01 E8 */	b lbl_80534E78
lbl_80534C94:
/* 80534C94  28 00 00 17 */	cmplwi r0, 0x17
/* 80534C98  40 82 00 94 */	bne lbl_80534D2C
/* 80534C9C  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534CA0  38 80 00 03 */	li r4, 3
/* 80534CA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534CA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534CAC  3C A5 00 02 */	addis r5, r5, 2
/* 80534CB0  38 C0 00 80 */	li r6, 0x80
/* 80534CB4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534CB8  4B B0 76 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534CBC  7C 7E 1B 78 */	mr r30, r3
/* 80534CC0  3C 80 00 08 */	lis r4, 8
/* 80534CC4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534CC8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534CCC  4B AD FF 89 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534CD0  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534CD4  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80534CD8  28 03 00 00 */	cmplwi r3, 0
/* 80534CDC  40 82 00 0C */	bne lbl_80534CE8
/* 80534CE0  38 60 00 00 */	li r3, 0
/* 80534CE4  48 00 01 94 */	b lbl_80534E78
lbl_80534CE8:
/* 80534CE8  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80534CEC  38 A0 00 00 */	li r5, 0
/* 80534CF0  3C 60 80 53 */	lis r3, nodeCallBackBB__FP8J3DJointi@ha /* 0x8052B070@ha */
/* 80534CF4  38 83 B0 70 */	addi r4, r3, nodeCallBackBB__FP8J3DJointi@l /* 0x8052B070@l */
/* 80534CF8  48 00 00 20 */	b lbl_80534D18
lbl_80534CFC:
/* 80534CFC  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80534D00  80 63 00 04 */	lwz r3, 4(r3)
/* 80534D04  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80534D08  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80534D0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80534D10  90 83 00 04 */	stw r4, 4(r3)
/* 80534D14  38 A5 00 01 */	addi r5, r5, 1
lbl_80534D18:
/* 80534D18  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80534D1C  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80534D20  7C 03 00 40 */	cmplw r3, r0
/* 80534D24  41 80 FF D8 */	blt lbl_80534CFC
/* 80534D28  48 00 00 F4 */	b lbl_80534E1C
lbl_80534D2C:
/* 80534D2C  28 00 00 19 */	cmplwi r0, 0x19
/* 80534D30  40 82 00 4C */	bne lbl_80534D7C
/* 80534D34  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534D38  38 80 00 06 */	li r4, 6
/* 80534D3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534D40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534D44  3C A5 00 02 */	addis r5, r5, 2
/* 80534D48  38 C0 00 80 */	li r6, 0x80
/* 80534D4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534D50  4B B0 75 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534D54  3C 80 00 08 */	lis r4, 8
/* 80534D58  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534D5C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534D60  4B AD FE F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534D64  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534D68  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534D6C  28 00 00 00 */	cmplwi r0, 0
/* 80534D70  40 82 00 AC */	bne lbl_80534E1C
/* 80534D74  38 60 00 00 */	li r3, 0
/* 80534D78  48 00 01 00 */	b lbl_80534E78
lbl_80534D7C:
/* 80534D7C  28 00 00 1A */	cmplwi r0, 0x1a
/* 80534D80  40 82 00 4C */	bne lbl_80534DCC
/* 80534D84  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534D88  38 80 00 04 */	li r4, 4
/* 80534D8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534D90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534D94  3C A5 00 02 */	addis r5, r5, 2
/* 80534D98  38 C0 00 80 */	li r6, 0x80
/* 80534D9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534DA0  4B B0 75 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534DA4  3C 80 00 08 */	lis r4, 8
/* 80534DA8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534DAC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534DB0  4B AD FE A5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534DB4  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534DB8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534DBC  28 00 00 00 */	cmplwi r0, 0
/* 80534DC0  40 82 00 5C */	bne lbl_80534E1C
/* 80534DC4  38 60 00 00 */	li r3, 0
/* 80534DC8  48 00 00 B0 */	b lbl_80534E78
lbl_80534DCC:
/* 80534DCC  28 00 00 1B */	cmplwi r0, 0x1b
/* 80534DD0  40 82 00 4C */	bne lbl_80534E1C
/* 80534DD4  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80534DD8  38 80 00 08 */	li r4, 8
/* 80534DDC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80534DE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80534DE4  3C A5 00 02 */	addis r5, r5, 2
/* 80534DE8  38 C0 00 80 */	li r6, 0x80
/* 80534DEC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534DF0  4B B0 74 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534DF4  3C 80 00 08 */	lis r4, 8
/* 80534DF8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80534DFC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80534E00  4B AD FE 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80534E04  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80534E08  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80534E0C  28 00 00 00 */	cmplwi r0, 0
/* 80534E10  40 82 00 0C */	bne lbl_80534E1C
/* 80534E14  38 60 00 00 */	li r3, 0
/* 80534E18  48 00 00 60 */	b lbl_80534E78
lbl_80534E1C:
/* 80534E1C  3B A0 00 00 */	li r29, 0
/* 80534E20  3B C0 00 00 */	li r30, 0
lbl_80534E24:
/* 80534E24  3B 9E 06 14 */	addi r28, r30, 0x614
/* 80534E28  7C 1F E0 2E */	lwzx r0, r31, r28
/* 80534E2C  28 00 00 00 */	cmplwi r0, 0
/* 80534E30  41 82 00 34 */	beq lbl_80534E64
/* 80534E34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80534E38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80534E3C  3C 80 80 53 */	lis r4, lit_3715@ha /* 0x80536180@ha */
/* 80534E40  C0 24 61 80 */	lfs f1, lit_3715@l(r4)  /* 0x80536180@l */
/* 80534E44  FC 40 08 90 */	fmr f2, f1
/* 80534E48  FC 60 08 90 */	fmr f3, f1
/* 80534E4C  4B E1 1B 1D */	bl PSMTXScale
/* 80534E50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80534E54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80534E58  7C 9F E0 2E */	lwzx r4, r31, r28
/* 80534E5C  38 84 00 24 */	addi r4, r4, 0x24
/* 80534E60  4B E1 16 51 */	bl PSMTXCopy
lbl_80534E64:
/* 80534E64  3B BD 00 01 */	addi r29, r29, 1
/* 80534E68  2C 1D 00 03 */	cmpwi r29, 3
/* 80534E6C  3B DE 00 04 */	addi r30, r30, 4
/* 80534E70  41 80 FF B4 */	blt lbl_80534E24
/* 80534E74  38 60 00 01 */	li r3, 1
lbl_80534E78:
/* 80534E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80534E7C  4B E2 D3 A9 */	bl _restgpr_28
/* 80534E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80534E84  7C 08 03 A6 */	mtlr r0
/* 80534E88  38 21 00 20 */	addi r1, r1, 0x20
/* 80534E8C  4E 80 00 20 */	blr 
