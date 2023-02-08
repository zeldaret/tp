lbl_80D50AB8:
/* 80D50AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D50ABC  7C 08 02 A6 */	mflr r0
/* 80D50AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D50AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D50AC8  4B 61 17 15 */	bl _savegpr_29
/* 80D50ACC  7C 7F 1B 78 */	mr r31, r3
/* 80D50AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50AD8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D50ADC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D50AE0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D50AE4  A0 84 03 FC */	lhz r4, 0x3fc(r4)
/* 80D50AE8  4B 2E 3E D5 */	bl isEventBit__11dSv_event_cCFUs
/* 80D50AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80D50AF0  41 82 00 0C */	beq lbl_80D50AFC
/* 80D50AF4  38 60 00 01 */	li r3, 1
/* 80D50AF8  48 00 00 EC */	b lbl_80D50BE4
lbl_80D50AFC:
/* 80D50AFC  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D50B00  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D50B04  80 63 00 00 */	lwz r3, 0(r3)
/* 80D50B08  38 80 00 0B */	li r4, 0xb
/* 80D50B0C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50B10  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50B14  3F A5 00 02 */	addis r29, r5, 2
/* 80D50B18  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D50B1C  7F A5 EB 78 */	mr r5, r29
/* 80D50B20  38 C0 00 80 */	li r6, 0x80
/* 80D50B24  4B 2E B7 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D50B28  38 80 00 00 */	li r4, 0
/* 80D50B2C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D50B30  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D50B34  4B 2C 41 21 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D50B38  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80D50B3C  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80D50B40  28 00 00 00 */	cmplwi r0, 0
/* 80D50B44  40 82 00 0C */	bne lbl_80D50B50
/* 80D50B48  38 60 00 00 */	li r3, 0
/* 80D50B4C  48 00 00 98 */	b lbl_80D50BE4
lbl_80D50B50:
/* 80D50B50  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D50B54  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D50B58  80 63 00 00 */	lwz r3, 0(r3)
/* 80D50B5C  38 80 00 07 */	li r4, 7
/* 80D50B60  7F A5 EB 78 */	mr r5, r29
/* 80D50B64  38 C0 00 80 */	li r6, 0x80
/* 80D50B68  4B 2E B7 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D50B6C  7C 7D 1B 78 */	mr r29, r3
/* 80D50B70  38 60 00 1C */	li r3, 0x1c
/* 80D50B74  4B 57 E0 D9 */	bl __nw__FUl
/* 80D50B78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D50B7C  41 82 00 20 */	beq lbl_80D50B9C
/* 80D50B80  3C 80 80 D5 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D51BA4@ha */
/* 80D50B84  38 04 1B A4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D51BA4@l */
/* 80D50B88  90 1E 00 00 */	stw r0, 0(r30)
/* 80D50B8C  38 80 00 00 */	li r4, 0
/* 80D50B90  4B 5D 78 6D */	bl init__12J3DFrameCtrlFs
/* 80D50B94  38 00 00 00 */	li r0, 0
/* 80D50B98  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80D50B9C:
/* 80D50B9C  93 DF 05 6C */	stw r30, 0x56c(r31)
/* 80D50BA0  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D50BA4  28 03 00 00 */	cmplwi r3, 0
/* 80D50BA8  41 82 00 30 */	beq lbl_80D50BD8
/* 80D50BAC  7F A4 EB 78 */	mr r4, r29
/* 80D50BB0  38 A0 00 01 */	li r5, 1
/* 80D50BB4  38 C0 00 02 */	li r6, 2
/* 80D50BB8  3C E0 80 D5 */	lis r7, lit_3698@ha /* 0x80D51AD4@ha */
/* 80D50BBC  C0 27 1A D4 */	lfs f1, lit_3698@l(r7)  /* 0x80D51AD4@l */
/* 80D50BC0  38 E0 00 00 */	li r7, 0
/* 80D50BC4  39 00 FF FF */	li r8, -1
/* 80D50BC8  39 20 00 00 */	li r9, 0
/* 80D50BCC  4B 2B CC 11 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D50BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80D50BD4  40 82 00 0C */	bne lbl_80D50BE0
lbl_80D50BD8:
/* 80D50BD8  38 60 00 00 */	li r3, 0
/* 80D50BDC  48 00 00 08 */	b lbl_80D50BE4
lbl_80D50BE0:
/* 80D50BE0  38 60 00 01 */	li r3, 1
lbl_80D50BE4:
/* 80D50BE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D50BE8  4B 61 16 41 */	bl _restgpr_29
/* 80D50BEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D50BF0  7C 08 03 A6 */	mtlr r0
/* 80D50BF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D50BF8  4E 80 00 20 */	blr 
