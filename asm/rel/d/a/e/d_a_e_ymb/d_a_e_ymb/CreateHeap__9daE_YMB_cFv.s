lbl_80820AF0:
/* 80820AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80820AF4  7C 08 02 A6 */	mflr r0
/* 80820AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80820AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80820B00  4B B4 16 D9 */	bl _savegpr_28
/* 80820B04  7C 7F 1B 78 */	mr r31, r3
/* 80820B08  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820B0C  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820B10  38 80 00 19 */	li r4, 0x19
/* 80820B14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80820B18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820B1C  3F C5 00 02 */	addis r30, r5, 2
/* 80820B20  3B DE C2 F8 */	addi r30, r30, -15624
/* 80820B24  7F C5 F3 78 */	mr r5, r30
/* 80820B28  38 C0 00 80 */	li r6, 0x80
/* 80820B2C  4B 81 B7 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80820B30  7C 7C 1B 78 */	mr r28, r3
/* 80820B34  38 60 00 58 */	li r3, 0x58
/* 80820B38  4B AA E1 15 */	bl __nw__FUl
/* 80820B3C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80820B40  41 82 00 68 */	beq lbl_80820BA8
/* 80820B44  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820B48  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820B4C  38 80 00 11 */	li r4, 0x11
/* 80820B50  7F C5 F3 78 */	mr r5, r30
/* 80820B54  38 C0 00 80 */	li r6, 0x80
/* 80820B58  4B 81 B7 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80820B5C  7C 67 1B 78 */	mr r7, r3
/* 80820B60  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80820B64  90 01 00 08 */	stw r0, 8(r1)
/* 80820B68  3C 00 00 08 */	lis r0, 8
/* 80820B6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80820B70  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 80820B74  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 80820B78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80820B7C  7F A3 EB 78 */	mr r3, r29
/* 80820B80  7F 84 E3 78 */	mr r4, r28
/* 80820B84  38 A0 00 00 */	li r5, 0
/* 80820B88  38 C0 00 00 */	li r6, 0
/* 80820B8C  39 00 00 02 */	li r8, 2
/* 80820B90  3D 20 80 82 */	lis r9, lit_3791@ha /* 0x808218AC@ha */
/* 80820B94  C0 29 18 AC */	lfs f1, lit_3791@l(r9)  /* 0x808218AC@l */
/* 80820B98  39 20 00 00 */	li r9, 0
/* 80820B9C  39 40 FF FF */	li r10, -1
/* 80820BA0  4B 7E FC 31 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80820BA4  7C 7D 1B 78 */	mr r29, r3
lbl_80820BA8:
/* 80820BA8  93 BF 05 BC */	stw r29, 0x5bc(r31)
/* 80820BAC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80820BB0  28 03 00 00 */	cmplwi r3, 0
/* 80820BB4  41 82 00 10 */	beq lbl_80820BC4
/* 80820BB8  80 83 00 04 */	lwz r4, 4(r3)
/* 80820BBC  28 04 00 00 */	cmplwi r4, 0
/* 80820BC0  40 82 00 0C */	bne lbl_80820BCC
lbl_80820BC4:
/* 80820BC4  38 60 00 00 */	li r3, 0
/* 80820BC8  48 00 01 88 */	b lbl_80820D50
lbl_80820BCC:
/* 80820BCC  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80820BD0  38 A0 00 01 */	li r5, 1
/* 80820BD4  4B 7E D9 69 */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80820BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80820BDC  40 82 00 0C */	bne lbl_80820BE8
/* 80820BE0  38 60 00 00 */	li r3, 0
/* 80820BE4  48 00 01 6C */	b lbl_80820D50
lbl_80820BE8:
/* 80820BE8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80820BEC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80820BF0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80820BF4  38 E0 00 01 */	li r7, 1
/* 80820BF8  3C 60 80 81 */	lis r3, JointCallBack__9daE_YMB_cFP8J3DJointi@ha /* 0x808164F0@ha */
/* 80820BFC  38 83 64 F0 */	addi r4, r3, JointCallBack__9daE_YMB_cFP8J3DJointi@l /* 0x808164F0@l */
/* 80820C00  48 00 00 18 */	b lbl_80820C18
lbl_80820C04:
/* 80820C04  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80820C08  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80820C0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80820C10  90 83 00 04 */	stw r4, 4(r3)
/* 80820C14  38 E7 00 01 */	addi r7, r7, 1
lbl_80820C18:
/* 80820C18  80 C5 00 04 */	lwz r6, 4(r5)
/* 80820C1C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80820C20  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80820C24  7C 00 18 40 */	cmplw r0, r3
/* 80820C28  41 80 FF DC */	blt lbl_80820C04
/* 80820C2C  38 60 00 18 */	li r3, 0x18
/* 80820C30  4B AA E0 1D */	bl __nw__FUl
/* 80820C34  7C 7D 1B 79 */	or. r29, r3, r3
/* 80820C38  41 82 00 20 */	beq lbl_80820C58
/* 80820C3C  3C 80 80 82 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80821DF4@ha */
/* 80820C40  38 04 1D F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80821DF4@l */
/* 80820C44  90 1D 00 00 */	stw r0, 0(r29)
/* 80820C48  38 80 00 00 */	li r4, 0
/* 80820C4C  4B B0 77 B1 */	bl init__12J3DFrameCtrlFs
/* 80820C50  38 00 00 00 */	li r0, 0
/* 80820C54  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80820C58:
/* 80820C58  93 BF 05 C0 */	stw r29, 0x5c0(r31)
/* 80820C5C  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 80820C60  28 00 00 00 */	cmplwi r0, 0
/* 80820C64  40 82 00 0C */	bne lbl_80820C70
/* 80820C68  38 60 00 00 */	li r3, 0
/* 80820C6C  48 00 00 E4 */	b lbl_80820D50
lbl_80820C70:
/* 80820C70  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820C74  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820C78  38 80 00 1C */	li r4, 0x1c
/* 80820C7C  7F C5 F3 78 */	mr r5, r30
/* 80820C80  38 C0 00 80 */	li r6, 0x80
/* 80820C84  4B 81 B6 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80820C88  7C 65 1B 78 */	mr r5, r3
/* 80820C8C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80820C90  80 63 00 04 */	lwz r3, 4(r3)
/* 80820C94  80 83 00 04 */	lwz r4, 4(r3)
/* 80820C98  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80820C9C  38 84 00 58 */	addi r4, r4, 0x58
/* 80820CA0  38 C0 00 01 */	li r6, 1
/* 80820CA4  38 E0 00 02 */	li r7, 2
/* 80820CA8  3D 00 80 82 */	lis r8, lit_3791@ha /* 0x808218AC@ha */
/* 80820CAC  C0 28 18 AC */	lfs f1, lit_3791@l(r8)  /* 0x808218AC@l */
/* 80820CB0  39 00 00 00 */	li r8, 0
/* 80820CB4  39 20 FF FF */	li r9, -1
/* 80820CB8  4B 7E CA 55 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80820CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80820CC0  40 82 00 0C */	bne lbl_80820CCC
/* 80820CC4  38 60 00 00 */	li r3, 0
/* 80820CC8  48 00 00 88 */	b lbl_80820D50
lbl_80820CCC:
/* 80820CCC  38 60 00 C0 */	li r3, 0xc0
/* 80820CD0  4B AA DF 7D */	bl __nw__FUl
/* 80820CD4  7C 60 1B 79 */	or. r0, r3, r3
/* 80820CD8  41 82 00 0C */	beq lbl_80820CE4
/* 80820CDC  4B 85 AC 95 */	bl __ct__4dBgWFv
/* 80820CE0  7C 60 1B 78 */	mr r0, r3
lbl_80820CE4:
/* 80820CE4  90 1F 07 98 */	stw r0, 0x798(r31)
/* 80820CE8  80 1F 07 98 */	lwz r0, 0x798(r31)
/* 80820CEC  28 00 00 00 */	cmplwi r0, 0
/* 80820CF0  40 82 00 0C */	bne lbl_80820CFC
/* 80820CF4  38 60 00 00 */	li r3, 0
/* 80820CF8  48 00 00 58 */	b lbl_80820D50
lbl_80820CFC:
/* 80820CFC  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820D00  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820D04  38 80 00 1F */	li r4, 0x1f
/* 80820D08  7F C5 F3 78 */	mr r5, r30
/* 80820D0C  38 C0 00 80 */	li r6, 0x80
/* 80820D10  4B 81 B5 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80820D14  7C 64 1B 78 */	mr r4, r3
/* 80820D18  80 7F 07 98 */	lwz r3, 0x798(r31)
/* 80820D1C  38 A0 00 01 */	li r5, 1
/* 80820D20  38 DF 07 68 */	addi r6, r31, 0x768
/* 80820D24  4B 85 92 15 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80820D28  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80820D2C  28 00 00 01 */	cmplwi r0, 1
/* 80820D30  40 82 00 0C */	bne lbl_80820D3C
/* 80820D34  38 60 00 00 */	li r3, 0
/* 80820D38  48 00 00 18 */	b lbl_80820D50
lbl_80820D3C:
/* 80820D3C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80820D40  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80820D44  80 7F 07 98 */	lwz r3, 0x798(r31)
/* 80820D48  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80820D4C  38 60 00 01 */	li r3, 1
lbl_80820D50:
/* 80820D50  39 61 00 30 */	addi r11, r1, 0x30
/* 80820D54  4B B4 14 D1 */	bl _restgpr_28
/* 80820D58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80820D5C  7C 08 03 A6 */	mtlr r0
/* 80820D60  38 21 00 30 */	addi r1, r1, 0x30
/* 80820D64  4E 80 00 20 */	blr 
