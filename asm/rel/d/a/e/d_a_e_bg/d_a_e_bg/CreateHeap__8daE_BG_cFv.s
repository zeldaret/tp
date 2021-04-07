lbl_80689A0C:
/* 80689A0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80689A10  7C 08 02 A6 */	mflr r0
/* 80689A14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80689A18  39 61 00 30 */	addi r11, r1, 0x30
/* 80689A1C  4B CD 87 BD */	bl _savegpr_28
/* 80689A20  7C 7D 1B 78 */	mr r29, r3
/* 80689A24  3C 60 80 69 */	lis r3, d_a_e_bg__stringBase0@ha /* 0x8068A308@ha */
/* 80689A28  38 63 A3 08 */	addi r3, r3, d_a_e_bg__stringBase0@l /* 0x8068A308@l */
/* 80689A2C  38 80 00 0A */	li r4, 0xa
/* 80689A30  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80689A34  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80689A38  3F E5 00 02 */	addis r31, r5, 2
/* 80689A3C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80689A40  7F E5 FB 78 */	mr r5, r31
/* 80689A44  38 C0 00 80 */	li r6, 0x80
/* 80689A48  4B 9B 28 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80689A4C  7C 7E 1B 78 */	mr r30, r3
/* 80689A50  38 60 00 58 */	li r3, 0x58
/* 80689A54  4B C4 51 F9 */	bl __nw__FUl
/* 80689A58  7C 7C 1B 79 */	or. r28, r3, r3
/* 80689A5C  41 82 00 68 */	beq lbl_80689AC4
/* 80689A60  3C 60 80 69 */	lis r3, d_a_e_bg__stringBase0@ha /* 0x8068A308@ha */
/* 80689A64  38 63 A3 08 */	addi r3, r3, d_a_e_bg__stringBase0@l /* 0x8068A308@l */
/* 80689A68  38 80 00 07 */	li r4, 7
/* 80689A6C  7F E5 FB 78 */	mr r5, r31
/* 80689A70  38 C0 00 80 */	li r6, 0x80
/* 80689A74  4B 9B 28 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80689A78  7C 67 1B 78 */	mr r7, r3
/* 80689A7C  38 1D 05 BC */	addi r0, r29, 0x5bc
/* 80689A80  90 01 00 08 */	stw r0, 8(r1)
/* 80689A84  3C 00 00 08 */	lis r0, 8
/* 80689A88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80689A8C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80689A90  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80689A94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80689A98  7F 83 E3 78 */	mr r3, r28
/* 80689A9C  7F C4 F3 78 */	mr r4, r30
/* 80689AA0  38 A0 00 00 */	li r5, 0
/* 80689AA4  38 C0 00 00 */	li r6, 0
/* 80689AA8  39 00 00 00 */	li r8, 0
/* 80689AAC  3D 20 80 69 */	lis r9, lit_3891@ha /* 0x8068A268@ha */
/* 80689AB0  C0 29 A2 68 */	lfs f1, lit_3891@l(r9)  /* 0x8068A268@l */
/* 80689AB4  39 20 00 00 */	li r9, 0
/* 80689AB8  39 40 FF FF */	li r10, -1
/* 80689ABC  4B 98 6D 15 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80689AC0  7C 7C 1B 78 */	mr r28, r3
lbl_80689AC4:
/* 80689AC4  93 9D 05 B4 */	stw r28, 0x5b4(r29)
/* 80689AC8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80689ACC  28 03 00 00 */	cmplwi r3, 0
/* 80689AD0  41 82 00 10 */	beq lbl_80689AE0
/* 80689AD4  83 C3 00 04 */	lwz r30, 4(r3)
/* 80689AD8  28 1E 00 00 */	cmplwi r30, 0
/* 80689ADC  40 82 00 0C */	bne lbl_80689AE8
lbl_80689AE0:
/* 80689AE0  38 60 00 00 */	li r3, 0
/* 80689AE4  48 00 00 D4 */	b lbl_80689BB8
lbl_80689AE8:
/* 80689AE8  93 BE 00 14 */	stw r29, 0x14(r30)
/* 80689AEC  38 C0 00 01 */	li r6, 1
/* 80689AF0  3C 60 80 68 */	lis r3, JointCallBack__8daE_BG_cFP8J3DJointi@ha /* 0x80685948@ha */
/* 80689AF4  38 83 59 48 */	addi r4, r3, JointCallBack__8daE_BG_cFP8J3DJointi@l /* 0x80685948@l */
/* 80689AF8  48 00 00 18 */	b lbl_80689B10
lbl_80689AFC:
/* 80689AFC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80689B00  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80689B04  7C 63 00 2E */	lwzx r3, r3, r0
/* 80689B08  90 83 00 04 */	stw r4, 4(r3)
/* 80689B0C  38 C6 00 01 */	addi r6, r6, 1
lbl_80689B10:
/* 80689B10  80 BE 00 04 */	lwz r5, 4(r30)
/* 80689B14  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80689B18  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80689B1C  7C 00 18 40 */	cmplw r0, r3
/* 80689B20  41 80 FF DC */	blt lbl_80689AFC
/* 80689B24  38 60 00 18 */	li r3, 0x18
/* 80689B28  4B C4 51 25 */	bl __nw__FUl
/* 80689B2C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80689B30  41 82 00 20 */	beq lbl_80689B50
/* 80689B34  3C 80 80 69 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8068A498@ha */
/* 80689B38  38 04 A4 98 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8068A498@l */
/* 80689B3C  90 1C 00 00 */	stw r0, 0(r28)
/* 80689B40  38 80 00 00 */	li r4, 0
/* 80689B44  4B C9 E8 B9 */	bl init__12J3DFrameCtrlFs
/* 80689B48  38 00 00 00 */	li r0, 0
/* 80689B4C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80689B50:
/* 80689B50  93 9D 05 B8 */	stw r28, 0x5b8(r29)
/* 80689B54  80 1D 05 B8 */	lwz r0, 0x5b8(r29)
/* 80689B58  28 00 00 00 */	cmplwi r0, 0
/* 80689B5C  40 82 00 0C */	bne lbl_80689B68
/* 80689B60  38 60 00 00 */	li r3, 0
/* 80689B64  48 00 00 54 */	b lbl_80689BB8
lbl_80689B68:
/* 80689B68  3C 60 80 69 */	lis r3, d_a_e_bg__stringBase0@ha /* 0x8068A308@ha */
/* 80689B6C  38 63 A3 08 */	addi r3, r3, d_a_e_bg__stringBase0@l /* 0x8068A308@l */
/* 80689B70  38 63 00 05 */	addi r3, r3, 5
/* 80689B74  38 80 00 0D */	li r4, 0xd
/* 80689B78  7F E5 FB 78 */	mr r5, r31
/* 80689B7C  38 C0 00 80 */	li r6, 0x80
/* 80689B80  4B 9B 27 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80689B84  7C 65 1B 78 */	mr r5, r3
/* 80689B88  80 9E 00 04 */	lwz r4, 4(r30)
/* 80689B8C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80689B90  38 84 00 58 */	addi r4, r4, 0x58
/* 80689B94  38 C0 00 01 */	li r6, 1
/* 80689B98  38 E0 00 00 */	li r7, 0
/* 80689B9C  3D 00 80 69 */	lis r8, lit_3891@ha /* 0x8068A268@ha */
/* 80689BA0  C0 28 A2 68 */	lfs f1, lit_3891@l(r8)  /* 0x8068A268@l */
/* 80689BA4  39 00 00 00 */	li r8, 0
/* 80689BA8  39 20 FF FF */	li r9, -1
/* 80689BAC  4B 98 3B 61 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80689BB0  30 03 FF FF */	addic r0, r3, -1
/* 80689BB4  7C 60 19 10 */	subfe r3, r0, r3
lbl_80689BB8:
/* 80689BB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80689BBC  4B CD 86 69 */	bl _restgpr_28
/* 80689BC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80689BC4  7C 08 03 A6 */	mtlr r0
/* 80689BC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80689BCC  4E 80 00 20 */	blr 
