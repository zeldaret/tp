lbl_807D1C8C:
/* 807D1C8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D1C90  7C 08 02 A6 */	mflr r0
/* 807D1C94  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D1C98  39 61 00 20 */	addi r11, r1, 0x20
/* 807D1C9C  4B B9 05 40 */	b _savegpr_29
/* 807D1CA0  7C 7E 1B 78 */	mr r30, r3
/* 807D1CA4  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807D1CA8  38 63 22 80 */	addi r3, r3, stringBase0@l
/* 807D1CAC  38 63 00 08 */	addi r3, r3, 8
/* 807D1CB0  38 80 00 05 */	li r4, 5
/* 807D1CB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807D1CB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807D1CBC  3F E5 00 02 */	addis r31, r5, 2
/* 807D1CC0  3B FF C2 F8 */	addi r31, r31, -15624
/* 807D1CC4  7F E5 FB 78 */	mr r5, r31
/* 807D1CC8  38 C0 00 80 */	li r6, 0x80
/* 807D1CCC  4B 86 A6 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807D1CD0  3C 80 00 08 */	lis r4, 8
/* 807D1CD4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 807D1CD8  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 807D1CDC  4B 84 2F 78 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807D1CE0  90 7E 05 74 */	stw r3, 0x574(r30)
/* 807D1CE4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 807D1CE8  28 00 00 00 */	cmplwi r0, 0
/* 807D1CEC  40 82 00 0C */	bne lbl_807D1CF8
/* 807D1CF0  38 60 00 00 */	li r3, 0
/* 807D1CF4  48 00 01 EC */	b lbl_807D1EE0
lbl_807D1CF8:
/* 807D1CF8  38 60 00 18 */	li r3, 0x18
/* 807D1CFC  4B AF CF 50 */	b __nw__FUl
/* 807D1D00  7C 7D 1B 79 */	or. r29, r3, r3
/* 807D1D04  41 82 00 20 */	beq lbl_807D1D24
/* 807D1D08  3C 80 80 7D */	lis r4, __vt__12J3DFrameCtrl@ha
/* 807D1D0C  38 04 23 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 807D1D10  90 1D 00 00 */	stw r0, 0(r29)
/* 807D1D14  38 80 00 00 */	li r4, 0
/* 807D1D18  4B B5 66 E4 */	b init__12J3DFrameCtrlFs
/* 807D1D1C  38 00 00 00 */	li r0, 0
/* 807D1D20  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_807D1D24:
/* 807D1D24  93 BE 05 78 */	stw r29, 0x578(r30)
/* 807D1D28  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 807D1D2C  28 00 00 00 */	cmplwi r0, 0
/* 807D1D30  40 82 00 0C */	bne lbl_807D1D3C
/* 807D1D34  38 60 00 00 */	li r3, 0
/* 807D1D38  48 00 01 A8 */	b lbl_807D1EE0
lbl_807D1D3C:
/* 807D1D3C  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807D1D40  38 63 22 80 */	addi r3, r3, stringBase0@l
/* 807D1D44  38 63 00 08 */	addi r3, r3, 8
/* 807D1D48  38 80 00 0E */	li r4, 0xe
/* 807D1D4C  7F E5 FB 78 */	mr r5, r31
/* 807D1D50  38 C0 00 80 */	li r6, 0x80
/* 807D1D54  4B 86 A5 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807D1D58  7C 65 1B 78 */	mr r5, r3
/* 807D1D5C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 807D1D60  80 83 00 04 */	lwz r4, 4(r3)
/* 807D1D64  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 807D1D68  38 84 00 58 */	addi r4, r4, 0x58
/* 807D1D6C  38 C0 00 01 */	li r6, 1
/* 807D1D70  38 E0 00 02 */	li r7, 2
/* 807D1D74  3D 00 80 7D */	lis r8, lit_3914@ha
/* 807D1D78  C0 28 20 B8 */	lfs f1, lit_3914@l(r8)
/* 807D1D7C  39 00 00 00 */	li r8, 0
/* 807D1D80  39 20 FF FF */	li r9, -1
/* 807D1D84  4B 83 B8 B8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 807D1D88  2C 03 00 00 */	cmpwi r3, 0
/* 807D1D8C  40 82 00 0C */	bne lbl_807D1D98
/* 807D1D90  38 60 00 00 */	li r3, 0
/* 807D1D94  48 00 01 4C */	b lbl_807D1EE0
lbl_807D1D98:
/* 807D1D98  38 60 00 18 */	li r3, 0x18
/* 807D1D9C  4B AF CE B0 */	b __nw__FUl
/* 807D1DA0  7C 7D 1B 79 */	or. r29, r3, r3
/* 807D1DA4  41 82 00 20 */	beq lbl_807D1DC4
/* 807D1DA8  3C 80 80 7D */	lis r4, __vt__12J3DFrameCtrl@ha
/* 807D1DAC  38 04 23 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 807D1DB0  90 1D 00 00 */	stw r0, 0(r29)
/* 807D1DB4  38 80 00 00 */	li r4, 0
/* 807D1DB8  4B B5 66 44 */	b init__12J3DFrameCtrlFs
/* 807D1DBC  38 00 00 00 */	li r0, 0
/* 807D1DC0  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_807D1DC4:
/* 807D1DC4  93 BE 05 7C */	stw r29, 0x57c(r30)
/* 807D1DC8  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 807D1DCC  28 00 00 00 */	cmplwi r0, 0
/* 807D1DD0  40 82 00 0C */	bne lbl_807D1DDC
/* 807D1DD4  38 60 00 00 */	li r3, 0
/* 807D1DD8  48 00 01 08 */	b lbl_807D1EE0
lbl_807D1DDC:
/* 807D1DDC  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807D1DE0  38 63 22 80 */	addi r3, r3, stringBase0@l
/* 807D1DE4  38 63 00 08 */	addi r3, r3, 8
/* 807D1DE8  38 80 00 0A */	li r4, 0xa
/* 807D1DEC  7F E5 FB 78 */	mr r5, r31
/* 807D1DF0  38 C0 00 80 */	li r6, 0x80
/* 807D1DF4  4B 86 A4 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807D1DF8  7C 65 1B 78 */	mr r5, r3
/* 807D1DFC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 807D1E00  80 83 00 04 */	lwz r4, 4(r3)
/* 807D1E04  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 807D1E08  38 84 00 58 */	addi r4, r4, 0x58
/* 807D1E0C  38 C0 00 01 */	li r6, 1
/* 807D1E10  38 E0 00 00 */	li r7, 0
/* 807D1E14  3D 00 80 7D */	lis r8, lit_3914@ha
/* 807D1E18  C0 28 20 B8 */	lfs f1, lit_3914@l(r8)
/* 807D1E1C  39 00 00 00 */	li r8, 0
/* 807D1E20  39 20 FF FF */	li r9, -1
/* 807D1E24  4B 83 B8 E8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807D1E28  2C 03 00 00 */	cmpwi r3, 0
/* 807D1E2C  40 82 00 0C */	bne lbl_807D1E38
/* 807D1E30  38 60 00 00 */	li r3, 0
/* 807D1E34  48 00 00 AC */	b lbl_807D1EE0
lbl_807D1E38:
/* 807D1E38  3C 60 80 7D */	lis r3, lit_3911@ha
/* 807D1E3C  C0 03 20 AC */	lfs f0, lit_3911@l(r3)
/* 807D1E40  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 807D1E44  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807D1E48  38 60 00 18 */	li r3, 0x18
/* 807D1E4C  4B AF CE 00 */	b __nw__FUl
/* 807D1E50  7C 7D 1B 79 */	or. r29, r3, r3
/* 807D1E54  41 82 00 20 */	beq lbl_807D1E74
/* 807D1E58  3C 80 80 7D */	lis r4, __vt__12J3DFrameCtrl@ha
/* 807D1E5C  38 04 23 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 807D1E60  90 1D 00 00 */	stw r0, 0(r29)
/* 807D1E64  38 80 00 00 */	li r4, 0
/* 807D1E68  4B B5 65 94 */	b init__12J3DFrameCtrlFs
/* 807D1E6C  38 00 00 00 */	li r0, 0
/* 807D1E70  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_807D1E74:
/* 807D1E74  93 BE 05 80 */	stw r29, 0x580(r30)
/* 807D1E78  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 807D1E7C  28 00 00 00 */	cmplwi r0, 0
/* 807D1E80  40 82 00 0C */	bne lbl_807D1E8C
/* 807D1E84  38 60 00 00 */	li r3, 0
/* 807D1E88  48 00 00 58 */	b lbl_807D1EE0
lbl_807D1E8C:
/* 807D1E8C  3C 60 80 7D */	lis r3, stringBase0@ha
/* 807D1E90  38 63 22 80 */	addi r3, r3, stringBase0@l
/* 807D1E94  38 63 00 08 */	addi r3, r3, 8
/* 807D1E98  38 80 00 0B */	li r4, 0xb
/* 807D1E9C  7F E5 FB 78 */	mr r5, r31
/* 807D1EA0  38 C0 00 80 */	li r6, 0x80
/* 807D1EA4  4B 86 A4 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807D1EA8  7C 65 1B 78 */	mr r5, r3
/* 807D1EAC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 807D1EB0  80 83 00 04 */	lwz r4, 4(r3)
/* 807D1EB4  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 807D1EB8  38 84 00 58 */	addi r4, r4, 0x58
/* 807D1EBC  38 C0 00 01 */	li r6, 1
/* 807D1EC0  38 E0 00 00 */	li r7, 0
/* 807D1EC4  3D 00 80 7D */	lis r8, lit_3914@ha
/* 807D1EC8  C0 28 20 B8 */	lfs f1, lit_3914@l(r8)
/* 807D1ECC  39 00 00 00 */	li r8, 0
/* 807D1ED0  39 20 FF FF */	li r9, -1
/* 807D1ED4  4B 83 B8 38 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807D1ED8  30 03 FF FF */	addic r0, r3, -1
/* 807D1EDC  7C 60 19 10 */	subfe r3, r0, r3
lbl_807D1EE0:
/* 807D1EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 807D1EE4  4B B9 03 44 */	b _restgpr_29
/* 807D1EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D1EEC  7C 08 03 A6 */	mtlr r0
/* 807D1EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 807D1EF4  4E 80 00 20 */	blr 
