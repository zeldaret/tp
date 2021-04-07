lbl_80813AF0:
/* 80813AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80813AF4  7C 08 02 A6 */	mflr r0
/* 80813AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80813AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80813B00  4B B4 E6 D9 */	bl _savegpr_28
/* 80813B04  7C 7F 1B 78 */	mr r31, r3
/* 80813B08  88 03 06 CA */	lbz r0, 0x6ca(r3)
/* 80813B0C  28 00 00 01 */	cmplwi r0, 1
/* 80813B10  40 82 01 68 */	bne lbl_80813C78
/* 80813B14  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813B18  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813B1C  38 80 00 11 */	li r4, 0x11
/* 80813B20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80813B24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80813B28  3F C5 00 02 */	addis r30, r5, 2
/* 80813B2C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80813B30  7F C5 F3 78 */	mr r5, r30
/* 80813B34  38 C0 00 80 */	li r6, 0x80
/* 80813B38  4B 82 87 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813B3C  7C 7C 1B 78 */	mr r28, r3
/* 80813B40  38 60 00 58 */	li r3, 0x58
/* 80813B44  4B AB B1 09 */	bl __nw__FUl
/* 80813B48  7C 7D 1B 79 */	or. r29, r3, r3
/* 80813B4C  41 82 00 68 */	beq lbl_80813BB4
/* 80813B50  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813B54  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813B58  38 80 00 0A */	li r4, 0xa
/* 80813B5C  7F C5 F3 78 */	mr r5, r30
/* 80813B60  38 C0 00 80 */	li r6, 0x80
/* 80813B64  4B 82 87 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813B68  7C 67 1B 78 */	mr r7, r3
/* 80813B6C  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80813B70  90 01 00 08 */	stw r0, 8(r1)
/* 80813B74  3C 00 00 08 */	lis r0, 8
/* 80813B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80813B7C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80813B80  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80813B84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80813B88  7F A3 EB 78 */	mr r3, r29
/* 80813B8C  7F 84 E3 78 */	mr r4, r28
/* 80813B90  38 A0 00 00 */	li r5, 0
/* 80813B94  38 C0 00 00 */	li r6, 0
/* 80813B98  39 00 00 00 */	li r8, 0
/* 80813B9C  3D 20 80 81 */	lis r9, lit_3927@ha /* 0x8081599C@ha */
/* 80813BA0  C0 29 59 9C */	lfs f1, lit_3927@l(r9)  /* 0x8081599C@l */
/* 80813BA4  39 20 00 00 */	li r9, 0
/* 80813BA8  39 40 FF FF */	li r10, -1
/* 80813BAC  4B 7F CC 25 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80813BB0  7C 7D 1B 78 */	mr r29, r3
lbl_80813BB4:
/* 80813BB4  93 BF 05 B4 */	stw r29, 0x5b4(r31)
/* 80813BB8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813BBC  28 03 00 00 */	cmplwi r3, 0
/* 80813BC0  41 82 00 10 */	beq lbl_80813BD0
/* 80813BC4  80 03 00 04 */	lwz r0, 4(r3)
/* 80813BC8  28 00 00 00 */	cmplwi r0, 0
/* 80813BCC  40 82 00 0C */	bne lbl_80813BD8
lbl_80813BD0:
/* 80813BD0  38 60 00 00 */	li r3, 0
/* 80813BD4  48 00 02 4C */	b lbl_80813E20
lbl_80813BD8:
/* 80813BD8  38 60 00 18 */	li r3, 0x18
/* 80813BDC  4B AB B0 71 */	bl __nw__FUl
/* 80813BE0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80813BE4  41 82 00 20 */	beq lbl_80813C04
/* 80813BE8  3C 80 80 81 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80815CF8@ha */
/* 80813BEC  38 04 5C F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80815CF8@l */
/* 80813BF0  90 1D 00 00 */	stw r0, 0(r29)
/* 80813BF4  38 80 00 00 */	li r4, 0
/* 80813BF8  4B B1 48 05 */	bl init__12J3DFrameCtrlFs
/* 80813BFC  38 00 00 00 */	li r0, 0
/* 80813C00  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80813C04:
/* 80813C04  93 BF 05 B8 */	stw r29, 0x5b8(r31)
/* 80813C08  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80813C0C  28 00 00 00 */	cmplwi r0, 0
/* 80813C10  40 82 00 0C */	bne lbl_80813C1C
/* 80813C14  38 60 00 00 */	li r3, 0
/* 80813C18  48 00 02 08 */	b lbl_80813E20
lbl_80813C1C:
/* 80813C1C  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813C20  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813C24  38 80 00 14 */	li r4, 0x14
/* 80813C28  7F C5 F3 78 */	mr r5, r30
/* 80813C2C  38 C0 00 80 */	li r6, 0x80
/* 80813C30  4B 82 86 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813C34  7C 65 1B 78 */	mr r5, r3
/* 80813C38  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813C3C  80 63 00 04 */	lwz r3, 4(r3)
/* 80813C40  80 83 00 04 */	lwz r4, 4(r3)
/* 80813C44  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80813C48  38 84 00 58 */	addi r4, r4, 0x58
/* 80813C4C  38 C0 00 01 */	li r6, 1
/* 80813C50  38 E0 00 02 */	li r7, 2
/* 80813C54  3D 00 80 81 */	lis r8, lit_3927@ha /* 0x8081599C@ha */
/* 80813C58  C0 28 59 9C */	lfs f1, lit_3927@l(r8)  /* 0x8081599C@l */
/* 80813C5C  39 00 00 00 */	li r8, 0
/* 80813C60  39 20 FF FF */	li r9, -1
/* 80813C64  4B 7F 9A A9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80813C68  2C 03 00 00 */	cmpwi r3, 0
/* 80813C6C  40 82 01 7C */	bne lbl_80813DE8
/* 80813C70  38 60 00 00 */	li r3, 0
/* 80813C74  48 00 01 AC */	b lbl_80813E20
lbl_80813C78:
/* 80813C78  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813C7C  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813C80  38 63 00 05 */	addi r3, r3, 5
/* 80813C84  38 80 00 13 */	li r4, 0x13
/* 80813C88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80813C8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80813C90  3F C5 00 02 */	addis r30, r5, 2
/* 80813C94  3B DE C2 F8 */	addi r30, r30, -15624
/* 80813C98  7F C5 F3 78 */	mr r5, r30
/* 80813C9C  38 C0 00 80 */	li r6, 0x80
/* 80813CA0  4B 82 86 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813CA4  7C 7C 1B 78 */	mr r28, r3
/* 80813CA8  38 60 00 58 */	li r3, 0x58
/* 80813CAC  4B AB AF A1 */	bl __nw__FUl
/* 80813CB0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80813CB4  41 82 00 6C */	beq lbl_80813D20
/* 80813CB8  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813CBC  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813CC0  38 63 00 05 */	addi r3, r3, 5
/* 80813CC4  38 80 00 10 */	li r4, 0x10
/* 80813CC8  7F C5 F3 78 */	mr r5, r30
/* 80813CCC  38 C0 00 80 */	li r6, 0x80
/* 80813CD0  4B 82 86 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813CD4  7C 67 1B 78 */	mr r7, r3
/* 80813CD8  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80813CDC  90 01 00 08 */	stw r0, 8(r1)
/* 80813CE0  3C 00 00 08 */	lis r0, 8
/* 80813CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80813CE8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80813CEC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80813CF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80813CF4  7F A3 EB 78 */	mr r3, r29
/* 80813CF8  7F 84 E3 78 */	mr r4, r28
/* 80813CFC  38 A0 00 00 */	li r5, 0
/* 80813D00  38 C0 00 00 */	li r6, 0
/* 80813D04  39 00 00 00 */	li r8, 0
/* 80813D08  3D 20 80 81 */	lis r9, lit_3927@ha /* 0x8081599C@ha */
/* 80813D0C  C0 29 59 9C */	lfs f1, lit_3927@l(r9)  /* 0x8081599C@l */
/* 80813D10  39 20 00 00 */	li r9, 0
/* 80813D14  39 40 FF FF */	li r10, -1
/* 80813D18  4B 7F CA B9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80813D1C  7C 7D 1B 78 */	mr r29, r3
lbl_80813D20:
/* 80813D20  93 BF 05 B4 */	stw r29, 0x5b4(r31)
/* 80813D24  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813D28  28 03 00 00 */	cmplwi r3, 0
/* 80813D2C  41 82 00 10 */	beq lbl_80813D3C
/* 80813D30  80 03 00 04 */	lwz r0, 4(r3)
/* 80813D34  28 00 00 00 */	cmplwi r0, 0
/* 80813D38  40 82 00 0C */	bne lbl_80813D44
lbl_80813D3C:
/* 80813D3C  38 60 00 00 */	li r3, 0
/* 80813D40  48 00 00 E0 */	b lbl_80813E20
lbl_80813D44:
/* 80813D44  38 60 00 18 */	li r3, 0x18
/* 80813D48  4B AB AF 05 */	bl __nw__FUl
/* 80813D4C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80813D50  41 82 00 20 */	beq lbl_80813D70
/* 80813D54  3C 80 80 81 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80815CF8@ha */
/* 80813D58  38 04 5C F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80815CF8@l */
/* 80813D5C  90 1D 00 00 */	stw r0, 0(r29)
/* 80813D60  38 80 00 00 */	li r4, 0
/* 80813D64  4B B1 46 99 */	bl init__12J3DFrameCtrlFs
/* 80813D68  38 00 00 00 */	li r0, 0
/* 80813D6C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80813D70:
/* 80813D70  93 BF 05 B8 */	stw r29, 0x5b8(r31)
/* 80813D74  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80813D78  28 00 00 00 */	cmplwi r0, 0
/* 80813D7C  40 82 00 0C */	bne lbl_80813D88
/* 80813D80  38 60 00 00 */	li r3, 0
/* 80813D84  48 00 00 9C */	b lbl_80813E20
lbl_80813D88:
/* 80813D88  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813D8C  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813D90  38 63 00 05 */	addi r3, r3, 5
/* 80813D94  38 80 00 16 */	li r4, 0x16
/* 80813D98  7F C5 F3 78 */	mr r5, r30
/* 80813D9C  38 C0 00 80 */	li r6, 0x80
/* 80813DA0  4B 82 85 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80813DA4  7C 65 1B 78 */	mr r5, r3
/* 80813DA8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80813DAC  80 63 00 04 */	lwz r3, 4(r3)
/* 80813DB0  80 83 00 04 */	lwz r4, 4(r3)
/* 80813DB4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80813DB8  38 84 00 58 */	addi r4, r4, 0x58
/* 80813DBC  38 C0 00 01 */	li r6, 1
/* 80813DC0  38 E0 00 02 */	li r7, 2
/* 80813DC4  3D 00 80 81 */	lis r8, lit_3927@ha /* 0x8081599C@ha */
/* 80813DC8  C0 28 59 9C */	lfs f1, lit_3927@l(r8)  /* 0x8081599C@l */
/* 80813DCC  39 00 00 00 */	li r8, 0
/* 80813DD0  39 20 FF FF */	li r9, -1
/* 80813DD4  4B 7F 99 39 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80813DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80813DDC  40 82 00 0C */	bne lbl_80813DE8
/* 80813DE0  38 60 00 00 */	li r3, 0
/* 80813DE4  48 00 00 3C */	b lbl_80813E20
lbl_80813DE8:
/* 80813DE8  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80813DEC  28 00 00 06 */	cmplwi r0, 6
/* 80813DF0  40 82 00 2C */	bne lbl_80813E1C
/* 80813DF4  38 60 02 2C */	li r3, 0x22c
/* 80813DF8  4B AB AE CD */	bl __nwa__FUl
/* 80813DFC  3C 80 80 81 */	lis r4, __ct__4cXyzFv@ha /* 0x80813E38@ha */
/* 80813E00  38 84 3E 38 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80813E38@l */
/* 80813E04  3C A0 80 81 */	lis r5, __dt__4cXyzFv@ha /* 0x80815900@ha */
/* 80813E08  38 A5 59 00 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80815900@l */
/* 80813E0C  38 C0 00 0C */	li r6, 0xc
/* 80813E10  38 E0 00 2D */	li r7, 0x2d
/* 80813E14  4B B4 E1 01 */	bl __construct_new_array
/* 80813E18  90 7F 06 D0 */	stw r3, 0x6d0(r31)
lbl_80813E1C:
/* 80813E1C  38 60 00 01 */	li r3, 1
lbl_80813E20:
/* 80813E20  39 61 00 30 */	addi r11, r1, 0x30
/* 80813E24  4B B4 E4 01 */	bl _restgpr_28
/* 80813E28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80813E2C  7C 08 03 A6 */	mtlr r0
/* 80813E30  38 21 00 30 */	addi r1, r1, 0x30
/* 80813E34  4E 80 00 20 */	blr 
