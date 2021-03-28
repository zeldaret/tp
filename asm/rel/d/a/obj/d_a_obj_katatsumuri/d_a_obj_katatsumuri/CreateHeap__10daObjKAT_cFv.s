lbl_80C39B98:
/* 80C39B98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C39B9C  7C 08 02 A6 */	mflr r0
/* 80C39BA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C39BA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C39BA8  4B 72 86 30 */	b _savegpr_28
/* 80C39BAC  7C 7F 1B 78 */	mr r31, r3
/* 80C39BB0  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39BB4  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39BB8  38 80 00 09 */	li r4, 9
/* 80C39BBC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C39BC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C39BC4  3F C5 00 02 */	addis r30, r5, 2
/* 80C39BC8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C39BCC  7F C5 F3 78 */	mr r5, r30
/* 80C39BD0  38 C0 00 80 */	li r6, 0x80
/* 80C39BD4  4B 40 27 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39BD8  7C 7D 1B 78 */	mr r29, r3
/* 80C39BDC  38 60 00 58 */	li r3, 0x58
/* 80C39BE0  4B 69 50 6C */	b __nw__FUl
/* 80C39BE4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C39BE8  41 82 00 68 */	beq lbl_80C39C50
/* 80C39BEC  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39BF0  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39BF4  38 80 00 06 */	li r4, 6
/* 80C39BF8  7F C5 F3 78 */	mr r5, r30
/* 80C39BFC  38 C0 00 80 */	li r6, 0x80
/* 80C39C00  4B 40 26 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39C04  7C 67 1B 78 */	mr r7, r3
/* 80C39C08  38 1F 09 94 */	addi r0, r31, 0x994
/* 80C39C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80C39C10  38 00 00 00 */	li r0, 0
/* 80C39C14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C39C18  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80C39C1C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80C39C20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C39C24  7F 83 E3 78 */	mr r3, r28
/* 80C39C28  7F A4 EB 78 */	mr r4, r29
/* 80C39C2C  38 A0 00 00 */	li r5, 0
/* 80C39C30  38 C0 00 00 */	li r6, 0
/* 80C39C34  39 00 00 02 */	li r8, 2
/* 80C39C38  3D 20 80 C4 */	lis r9, lit_3775@ha
/* 80C39C3C  C0 29 C6 74 */	lfs f1, lit_3775@l(r9)
/* 80C39C40  39 20 00 00 */	li r9, 0
/* 80C39C44  39 40 FF FF */	li r10, -1
/* 80C39C48  4B 3D 6B 88 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C39C4C  7C 7C 1B 78 */	mr r28, r3
lbl_80C39C50:
/* 80C39C50  93 9F 0A 64 */	stw r28, 0xa64(r31)
/* 80C39C54  80 7F 0A 64 */	lwz r3, 0xa64(r31)
/* 80C39C58  28 03 00 00 */	cmplwi r3, 0
/* 80C39C5C  41 82 00 10 */	beq lbl_80C39C6C
/* 80C39C60  83 A3 00 04 */	lwz r29, 4(r3)
/* 80C39C64  28 1D 00 00 */	cmplwi r29, 0
/* 80C39C68  40 82 00 0C */	bne lbl_80C39C74
lbl_80C39C6C:
/* 80C39C6C  38 60 00 00 */	li r3, 0
/* 80C39C70  48 00 01 F8 */	b lbl_80C39E68
lbl_80C39C74:
/* 80C39C74  38 60 00 18 */	li r3, 0x18
/* 80C39C78  4B 69 4F D4 */	b __nw__FUl
/* 80C39C7C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C39C80  41 82 00 20 */	beq lbl_80C39CA0
/* 80C39C84  3C 80 80 C4 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C39C88  38 04 C8 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C39C8C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C39C90  38 80 00 00 */	li r4, 0
/* 80C39C94  4B 6E E7 68 */	b init__12J3DFrameCtrlFs
/* 80C39C98  38 00 00 00 */	li r0, 0
/* 80C39C9C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C39CA0:
/* 80C39CA0  93 9F 07 F8 */	stw r28, 0x7f8(r31)
/* 80C39CA4  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 80C39CA8  28 00 00 00 */	cmplwi r0, 0
/* 80C39CAC  40 82 00 0C */	bne lbl_80C39CB8
/* 80C39CB0  38 60 00 00 */	li r3, 0
/* 80C39CB4  48 00 01 B4 */	b lbl_80C39E68
lbl_80C39CB8:
/* 80C39CB8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C39CBC  28 00 00 01 */	cmplwi r0, 1
/* 80C39CC0  40 82 00 58 */	bne lbl_80C39D18
/* 80C39CC4  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39CC8  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39CCC  38 80 00 0C */	li r4, 0xc
/* 80C39CD0  7F C5 F3 78 */	mr r5, r30
/* 80C39CD4  38 C0 00 80 */	li r6, 0x80
/* 80C39CD8  4B 40 26 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39CDC  7C 65 1B 78 */	mr r5, r3
/* 80C39CE0  80 9D 00 04 */	lwz r4, 4(r29)
/* 80C39CE4  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80C39CE8  38 84 00 58 */	addi r4, r4, 0x58
/* 80C39CEC  38 C0 00 01 */	li r6, 1
/* 80C39CF0  38 E0 00 02 */	li r7, 2
/* 80C39CF4  3D 00 80 C4 */	lis r8, lit_3775@ha
/* 80C39CF8  C0 28 C6 74 */	lfs f1, lit_3775@l(r8)
/* 80C39CFC  39 00 00 00 */	li r8, 0
/* 80C39D00  39 20 FF FF */	li r9, -1
/* 80C39D04  4B 3D 3A 08 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C39D08  2C 03 00 00 */	cmpwi r3, 0
/* 80C39D0C  40 82 00 60 */	bne lbl_80C39D6C
/* 80C39D10  38 60 00 00 */	li r3, 0
/* 80C39D14  48 00 01 54 */	b lbl_80C39E68
lbl_80C39D18:
/* 80C39D18  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39D1C  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39D20  38 80 00 0D */	li r4, 0xd
/* 80C39D24  7F C5 F3 78 */	mr r5, r30
/* 80C39D28  38 C0 00 80 */	li r6, 0x80
/* 80C39D2C  4B 40 25 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39D30  7C 65 1B 78 */	mr r5, r3
/* 80C39D34  80 9D 00 04 */	lwz r4, 4(r29)
/* 80C39D38  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80C39D3C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C39D40  38 C0 00 01 */	li r6, 1
/* 80C39D44  38 E0 00 02 */	li r7, 2
/* 80C39D48  3D 00 80 C4 */	lis r8, lit_3775@ha
/* 80C39D4C  C0 28 C6 74 */	lfs f1, lit_3775@l(r8)
/* 80C39D50  39 00 00 00 */	li r8, 0
/* 80C39D54  39 20 FF FF */	li r9, -1
/* 80C39D58  4B 3D 39 B4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C39D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80C39D60  40 82 00 0C */	bne lbl_80C39D6C
/* 80C39D64  38 60 00 00 */	li r3, 0
/* 80C39D68  48 00 01 00 */	b lbl_80C39E68
lbl_80C39D6C:
/* 80C39D6C  38 60 00 18 */	li r3, 0x18
/* 80C39D70  4B 69 4E DC */	b __nw__FUl
/* 80C39D74  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C39D78  41 82 00 20 */	beq lbl_80C39D98
/* 80C39D7C  3C 80 80 C4 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C39D80  38 04 C8 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C39D84  90 1C 00 00 */	stw r0, 0(r28)
/* 80C39D88  38 80 00 00 */	li r4, 0
/* 80C39D8C  4B 6E E6 70 */	b init__12J3DFrameCtrlFs
/* 80C39D90  38 00 00 00 */	li r0, 0
/* 80C39D94  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80C39D98:
/* 80C39D98  93 9F 07 FC */	stw r28, 0x7fc(r31)
/* 80C39D9C  80 1F 07 FC */	lwz r0, 0x7fc(r31)
/* 80C39DA0  28 00 00 00 */	cmplwi r0, 0
/* 80C39DA4  40 82 00 0C */	bne lbl_80C39DB0
/* 80C39DA8  38 60 00 00 */	li r3, 0
/* 80C39DAC  48 00 00 BC */	b lbl_80C39E68
lbl_80C39DB0:
/* 80C39DB0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C39DB4  28 00 00 01 */	cmplwi r0, 1
/* 80C39DB8  40 82 00 58 */	bne lbl_80C39E10
/* 80C39DBC  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39DC0  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39DC4  38 80 00 10 */	li r4, 0x10
/* 80C39DC8  7F C5 F3 78 */	mr r5, r30
/* 80C39DCC  38 C0 00 80 */	li r6, 0x80
/* 80C39DD0  4B 40 25 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39DD4  7C 65 1B 78 */	mr r5, r3
/* 80C39DD8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80C39DDC  80 7F 07 FC */	lwz r3, 0x7fc(r31)
/* 80C39DE0  38 84 00 58 */	addi r4, r4, 0x58
/* 80C39DE4  38 C0 00 01 */	li r6, 1
/* 80C39DE8  38 E0 00 02 */	li r7, 2
/* 80C39DEC  3D 00 80 C4 */	lis r8, lit_3775@ha
/* 80C39DF0  C0 28 C6 74 */	lfs f1, lit_3775@l(r8)
/* 80C39DF4  39 00 00 00 */	li r8, 0
/* 80C39DF8  39 20 FF FF */	li r9, -1
/* 80C39DFC  4B 3D 38 40 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C39E00  2C 03 00 00 */	cmpwi r3, 0
/* 80C39E04  40 82 00 60 */	bne lbl_80C39E64
/* 80C39E08  38 60 00 00 */	li r3, 0
/* 80C39E0C  48 00 00 5C */	b lbl_80C39E68
lbl_80C39E10:
/* 80C39E10  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C39E14  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C39E18  38 80 00 11 */	li r4, 0x11
/* 80C39E1C  7F C5 F3 78 */	mr r5, r30
/* 80C39E20  38 C0 00 80 */	li r6, 0x80
/* 80C39E24  4B 40 24 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C39E28  7C 65 1B 78 */	mr r5, r3
/* 80C39E2C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80C39E30  80 7F 07 FC */	lwz r3, 0x7fc(r31)
/* 80C39E34  38 84 00 58 */	addi r4, r4, 0x58
/* 80C39E38  38 C0 00 01 */	li r6, 1
/* 80C39E3C  38 E0 00 02 */	li r7, 2
/* 80C39E40  3D 00 80 C4 */	lis r8, lit_3775@ha
/* 80C39E44  C0 28 C6 74 */	lfs f1, lit_3775@l(r8)
/* 80C39E48  39 00 00 00 */	li r8, 0
/* 80C39E4C  39 20 FF FF */	li r9, -1
/* 80C39E50  4B 3D 37 EC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C39E54  2C 03 00 00 */	cmpwi r3, 0
/* 80C39E58  40 82 00 0C */	bne lbl_80C39E64
/* 80C39E5C  38 60 00 00 */	li r3, 0
/* 80C39E60  48 00 00 08 */	b lbl_80C39E68
lbl_80C39E64:
/* 80C39E64  38 60 00 01 */	li r3, 1
lbl_80C39E68:
/* 80C39E68  39 61 00 30 */	addi r11, r1, 0x30
/* 80C39E6C  4B 72 83 B8 */	b _restgpr_28
/* 80C39E70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C39E74  7C 08 03 A6 */	mtlr r0
/* 80C39E78  38 21 00 30 */	addi r1, r1, 0x30
/* 80C39E7C  4E 80 00 20 */	blr 
