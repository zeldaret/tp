lbl_80734C10:
/* 80734C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80734C14  7C 08 02 A6 */	mflr r0
/* 80734C18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80734C1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80734C20  4B C2 D5 B9 */	bl _savegpr_28
/* 80734C24  7C 7E 1B 78 */	mr r30, r3
/* 80734C28  80 63 06 A4 */	lwz r3, 0x6a4(r3)
/* 80734C2C  38 80 00 03 */	li r4, 3
/* 80734C30  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80734C34  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80734C38  3F E5 00 02 */	addis r31, r5, 2
/* 80734C3C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80734C40  7F E5 FB 78 */	mr r5, r31
/* 80734C44  38 C0 00 80 */	li r6, 0x80
/* 80734C48  4B 90 76 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80734C4C  7C 7C 1B 78 */	mr r28, r3
/* 80734C50  38 60 00 58 */	li r3, 0x58
/* 80734C54  4B B9 9F F9 */	bl __nw__FUl
/* 80734C58  7C 7D 1B 79 */	or. r29, r3, r3
/* 80734C5C  41 82 00 6C */	beq lbl_80734CC8
/* 80734C60  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 80734C64  38 63 5D 0C */	addi r3, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80734C68  38 63 00 05 */	addi r3, r3, 5
/* 80734C6C  38 80 00 1B */	li r4, 0x1b
/* 80734C70  7F E5 FB 78 */	mr r5, r31
/* 80734C74  38 C0 00 80 */	li r6, 0x80
/* 80734C78  4B 90 76 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80734C7C  7C 67 1B 78 */	mr r7, r3
/* 80734C80  38 1E 05 C4 */	addi r0, r30, 0x5c4
/* 80734C84  90 01 00 08 */	stw r0, 8(r1)
/* 80734C88  3C 00 00 08 */	lis r0, 8
/* 80734C8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80734C90  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80734C94  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80734C98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80734C9C  7F A3 EB 78 */	mr r3, r29
/* 80734CA0  7F 84 E3 78 */	mr r4, r28
/* 80734CA4  38 A0 00 00 */	li r5, 0
/* 80734CA8  38 C0 00 00 */	li r6, 0
/* 80734CAC  39 00 00 00 */	li r8, 0
/* 80734CB0  3D 20 80 73 */	lis r9, lit_3913@ha /* 0x80735B30@ha */
/* 80734CB4  C0 29 5B 30 */	lfs f1, lit_3913@l(r9)  /* 0x80735B30@l */
/* 80734CB8  39 20 00 00 */	li r9, 0
/* 80734CBC  39 40 FF FF */	li r10, -1
/* 80734CC0  4B 8D BB 11 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80734CC4  7C 7D 1B 78 */	mr r29, r3
lbl_80734CC8:
/* 80734CC8  93 BE 05 BC */	stw r29, 0x5bc(r30)
/* 80734CCC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80734CD0  28 03 00 00 */	cmplwi r3, 0
/* 80734CD4  41 82 00 10 */	beq lbl_80734CE4
/* 80734CD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80734CDC  28 05 00 00 */	cmplwi r5, 0
/* 80734CE0  40 82 00 0C */	bne lbl_80734CEC
lbl_80734CE4:
/* 80734CE4  38 60 00 00 */	li r3, 0
/* 80734CE8  48 00 00 88 */	b lbl_80734D70
lbl_80734CEC:
/* 80734CEC  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80734CF0  38 E0 00 01 */	li r7, 1
/* 80734CF4  3C 60 80 73 */	lis r3, JointCallBack__8daE_OC_cFP8J3DJointi@ha /* 0x8072C6E8@ha */
/* 80734CF8  38 83 C6 E8 */	addi r4, r3, JointCallBack__8daE_OC_cFP8J3DJointi@l /* 0x8072C6E8@l */
/* 80734CFC  48 00 00 2C */	b lbl_80734D28
lbl_80734D00:
/* 80734D00  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80734D04  28 00 00 11 */	cmplwi r0, 0x11
/* 80734D08  41 82 00 0C */	beq lbl_80734D14
/* 80734D0C  28 00 00 0C */	cmplwi r0, 0xc
/* 80734D10  40 82 00 14 */	bne lbl_80734D24
lbl_80734D14:
/* 80734D14  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80734D18  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80734D1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80734D20  90 83 00 04 */	stw r4, 4(r3)
lbl_80734D24:
/* 80734D24  38 E7 00 01 */	addi r7, r7, 1
lbl_80734D28:
/* 80734D28  80 C5 00 04 */	lwz r6, 4(r5)
/* 80734D2C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80734D30  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80734D34  7C 00 18 40 */	cmplw r0, r3
/* 80734D38  41 80 FF C8 */	blt lbl_80734D00
/* 80734D3C  80 7E 06 A4 */	lwz r3, 0x6a4(r30)
/* 80734D40  38 80 00 04 */	li r4, 4
/* 80734D44  7F E5 FB 78 */	mr r5, r31
/* 80734D48  38 C0 00 80 */	li r6, 0x80
/* 80734D4C  4B 90 75 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80734D50  3C 80 00 08 */	lis r4, 8
/* 80734D54  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80734D58  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80734D5C  4B 8D FE F9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80734D60  90 7E 05 C0 */	stw r3, 0x5c0(r30)
/* 80734D64  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80734D68  30 03 FF FF */	addic r0, r3, -1
/* 80734D6C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80734D70:
/* 80734D70  39 61 00 30 */	addi r11, r1, 0x30
/* 80734D74  4B C2 D4 B1 */	bl _restgpr_28
/* 80734D78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80734D7C  7C 08 03 A6 */	mtlr r0
/* 80734D80  38 21 00 30 */	addi r1, r1, 0x30
/* 80734D84  4E 80 00 20 */	blr 
