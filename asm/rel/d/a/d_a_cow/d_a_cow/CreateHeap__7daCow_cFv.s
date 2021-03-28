lbl_80661AF0:
/* 80661AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80661AF4  7C 08 02 A6 */	mflr r0
/* 80661AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80661AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80661B00  4B D0 06 DC */	b _savegpr_29
/* 80661B04  7C 7D 1B 78 */	mr r29, r3
/* 80661B08  3C 60 80 66 */	lis r3, stringBase0@ha
/* 80661B0C  38 63 2F 18 */	addi r3, r3, stringBase0@l
/* 80661B10  38 80 00 1F */	li r4, 0x1f
/* 80661B14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80661B18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80661B1C  3F C5 00 02 */	addis r30, r5, 2
/* 80661B20  3B DE C2 F8 */	addi r30, r30, -15624
/* 80661B24  7F C5 F3 78 */	mr r5, r30
/* 80661B28  38 C0 00 80 */	li r6, 0x80
/* 80661B2C  4B 9D A7 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80661B30  7C 7F 1B 78 */	mr r31, r3
/* 80661B34  38 60 00 58 */	li r3, 0x58
/* 80661B38  4B C6 D1 14 */	b __nw__FUl
/* 80661B3C  7C 60 1B 79 */	or. r0, r3, r3
/* 80661B40  41 82 00 4C */	beq lbl_80661B8C
/* 80661B44  38 1D 05 7C */	addi r0, r29, 0x57c
/* 80661B48  90 01 00 08 */	stw r0, 8(r1)
/* 80661B4C  3C 00 00 08 */	lis r0, 8
/* 80661B50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80661B54  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80661B58  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80661B5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80661B60  7F E4 FB 78 */	mr r4, r31
/* 80661B64  38 A0 00 00 */	li r5, 0
/* 80661B68  38 C0 00 00 */	li r6, 0
/* 80661B6C  38 E0 00 00 */	li r7, 0
/* 80661B70  39 00 FF FF */	li r8, -1
/* 80661B74  3D 20 80 66 */	lis r9, lit_3989@ha
/* 80661B78  C0 29 2D B8 */	lfs f1, lit_3989@l(r9)
/* 80661B7C  39 20 00 00 */	li r9, 0
/* 80661B80  39 40 FF FF */	li r10, -1
/* 80661B84  4B 9A EC 4C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80661B88  7C 60 1B 78 */	mr r0, r3
lbl_80661B8C:
/* 80661B8C  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80661B90  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80661B94  28 03 00 00 */	cmplwi r3, 0
/* 80661B98  41 82 00 10 */	beq lbl_80661BA8
/* 80661B9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80661BA0  28 03 00 00 */	cmplwi r3, 0
/* 80661BA4  40 82 00 0C */	bne lbl_80661BB0
lbl_80661BA8:
/* 80661BA8  38 60 00 00 */	li r3, 0
/* 80661BAC  48 00 01 18 */	b lbl_80661CC4
lbl_80661BB0:
/* 80661BB0  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80661BB4  38 A0 00 00 */	li r5, 0
/* 80661BB8  3C 60 80 66 */	lis r3, ctrlJointCallBack__7daCow_cFP8J3DJointi@ha
/* 80661BBC  38 83 29 20 */	addi r4, r3, ctrlJointCallBack__7daCow_cFP8J3DJointi@l
/* 80661BC0  48 00 00 34 */	b lbl_80661BF4
lbl_80661BC4:
/* 80661BC4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80661BC8  28 00 00 01 */	cmplwi r0, 1
/* 80661BCC  41 82 00 14 */	beq lbl_80661BE0
/* 80661BD0  28 00 00 08 */	cmplwi r0, 8
/* 80661BD4  41 82 00 0C */	beq lbl_80661BE0
/* 80661BD8  28 00 00 00 */	cmplwi r0, 0
/* 80661BDC  40 82 00 14 */	bne lbl_80661BF0
lbl_80661BE0:
/* 80661BE0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80661BE4  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80661BE8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80661BEC  90 83 00 04 */	stw r4, 4(r3)
lbl_80661BF0:
/* 80661BF0  38 A5 00 01 */	addi r5, r5, 1
lbl_80661BF4:
/* 80661BF4  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80661BF8  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80661BFC  7C 03 00 40 */	cmplw r3, r0
/* 80661C00  41 80 FF C4 */	blt lbl_80661BC4
/* 80661C04  7F A3 EB 78 */	mr r3, r29
/* 80661C08  38 80 00 1A */	li r4, 0x1a
/* 80661C0C  38 A0 00 02 */	li r5, 2
/* 80661C10  3C C0 80 66 */	lis r6, lit_3998@ha
/* 80661C14  C0 26 2D C8 */	lfs f1, lit_3998@l(r6)
/* 80661C18  3C C0 80 66 */	lis r6, lit_3989@ha
/* 80661C1C  C0 46 2D B8 */	lfs f2, lit_3989@l(r6)
/* 80661C20  4B FF 6B 11 */	bl setBck__7daCow_cFiUcff
/* 80661C24  38 60 00 18 */	li r3, 0x18
/* 80661C28  4B C6 D0 24 */	b __nw__FUl
/* 80661C2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80661C30  41 82 00 20 */	beq lbl_80661C50
/* 80661C34  3C 80 80 66 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80661C38  38 04 34 40 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80661C3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80661C40  38 80 00 00 */	li r4, 0
/* 80661C44  4B CC 67 B8 */	b init__12J3DFrameCtrlFs
/* 80661C48  38 00 00 00 */	li r0, 0
/* 80661C4C  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80661C50:
/* 80661C50  93 FD 05 78 */	stw r31, 0x578(r29)
/* 80661C54  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80661C58  28 00 00 00 */	cmplwi r0, 0
/* 80661C5C  40 82 00 0C */	bne lbl_80661C68
/* 80661C60  38 60 00 05 */	li r3, 5
/* 80661C64  48 00 00 60 */	b lbl_80661CC4
lbl_80661C68:
/* 80661C68  3C 60 80 66 */	lis r3, stringBase0@ha
/* 80661C6C  38 63 2F 18 */	addi r3, r3, stringBase0@l
/* 80661C70  38 80 00 22 */	li r4, 0x22
/* 80661C74  7F C5 F3 78 */	mr r5, r30
/* 80661C78  38 C0 00 80 */	li r6, 0x80
/* 80661C7C  4B 9D A6 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80661C80  7C 65 1B 78 */	mr r5, r3
/* 80661C84  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80661C88  80 63 00 04 */	lwz r3, 4(r3)
/* 80661C8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80661C90  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80661C94  38 84 00 58 */	addi r4, r4, 0x58
/* 80661C98  38 C0 00 01 */	li r6, 1
/* 80661C9C  38 E0 00 00 */	li r7, 0
/* 80661CA0  3D 00 80 66 */	lis r8, lit_3989@ha
/* 80661CA4  C0 28 2D B8 */	lfs f1, lit_3989@l(r8)
/* 80661CA8  39 00 00 00 */	li r8, 0
/* 80661CAC  39 20 FF FF */	li r9, -1
/* 80661CB0  4B 9A B8 9C */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80661CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80661CB8  38 60 00 05 */	li r3, 5
/* 80661CBC  41 82 00 08 */	beq lbl_80661CC4
/* 80661CC0  38 60 00 01 */	li r3, 1
lbl_80661CC4:
/* 80661CC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80661CC8  4B D0 05 60 */	b _restgpr_29
/* 80661CCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80661CD0  7C 08 03 A6 */	mtlr r0
/* 80661CD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80661CD8  4E 80 00 20 */	blr 
