lbl_80BA28C0:
/* 80BA28C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA28C4  7C 08 02 A6 */	mflr r0
/* 80BA28C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA28CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA28D0  4B 7B F9 0C */	b _savegpr_29
/* 80BA28D4  7C 7F 1B 78 */	mr r31, r3
/* 80BA28D8  88 03 06 30 */	lbz r0, 0x630(r3)
/* 80BA28DC  28 00 00 01 */	cmplwi r0, 1
/* 80BA28E0  40 82 00 30 */	bne lbl_80BA2910
/* 80BA28E4  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA28E8  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA28EC  38 80 00 09 */	li r4, 9
/* 80BA28F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA28F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA28F8  3C A5 00 02 */	addis r5, r5, 2
/* 80BA28FC  38 C0 00 80 */	li r6, 0x80
/* 80BA2900  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2904  4B 49 99 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2908  7C 7E 1B 78 */	mr r30, r3
/* 80BA290C  48 00 00 2C */	b lbl_80BA2938
lbl_80BA2910:
/* 80BA2910  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA2914  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2918  38 80 00 0A */	li r4, 0xa
/* 80BA291C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2920  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA2924  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2928  38 C0 00 80 */	li r6, 0x80
/* 80BA292C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2930  4B 49 99 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2934  7C 7E 1B 78 */	mr r30, r3
lbl_80BA2938:
/* 80BA2938  38 60 00 58 */	li r3, 0x58
/* 80BA293C  4B 72 C3 10 */	b __nw__FUl
/* 80BA2940  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BA2944  41 82 00 74 */	beq lbl_80BA29B8
/* 80BA2948  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA294C  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2950  38 80 00 06 */	li r4, 6
/* 80BA2954  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2958  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA295C  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2960  38 C0 00 80 */	li r6, 0x80
/* 80BA2964  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2968  4B 49 99 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA296C  7C 67 1B 78 */	mr r7, r3
/* 80BA2970  38 1F 07 C0 */	addi r0, r31, 0x7c0
/* 80BA2974  90 01 00 08 */	stw r0, 8(r1)
/* 80BA2978  38 00 00 00 */	li r0, 0
/* 80BA297C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA2980  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80BA2984  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80BA2988  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA298C  7F A3 EB 78 */	mr r3, r29
/* 80BA2990  7F C4 F3 78 */	mr r4, r30
/* 80BA2994  38 A0 00 00 */	li r5, 0
/* 80BA2998  38 C0 00 00 */	li r6, 0
/* 80BA299C  39 00 00 02 */	li r8, 2
/* 80BA29A0  3D 20 80 BA */	lis r9, lit_3933@ha
/* 80BA29A4  C0 29 54 68 */	lfs f1, lit_3933@l(r9)
/* 80BA29A8  39 20 00 00 */	li r9, 0
/* 80BA29AC  39 40 FF FF */	li r10, -1
/* 80BA29B0  4B 46 DE 20 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80BA29B4  7C 7D 1B 78 */	mr r29, r3
lbl_80BA29B8:
/* 80BA29B8  93 BF 0A 68 */	stw r29, 0xa68(r31)
/* 80BA29BC  80 7F 0A 68 */	lwz r3, 0xa68(r31)
/* 80BA29C0  28 03 00 00 */	cmplwi r3, 0
/* 80BA29C4  41 82 00 10 */	beq lbl_80BA29D4
/* 80BA29C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80BA29CC  28 1E 00 00 */	cmplwi r30, 0
/* 80BA29D0  40 82 00 0C */	bne lbl_80BA29DC
lbl_80BA29D4:
/* 80BA29D4  38 60 00 00 */	li r3, 0
/* 80BA29D8  48 00 02 28 */	b lbl_80BA2C00
lbl_80BA29DC:
/* 80BA29DC  38 60 00 18 */	li r3, 0x18
/* 80BA29E0  4B 72 C2 6C */	b __nw__FUl
/* 80BA29E4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BA29E8  41 82 00 20 */	beq lbl_80BA2A08
/* 80BA29EC  3C 80 80 BA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BA29F0  38 04 55 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BA29F4  90 1D 00 00 */	stw r0, 0(r29)
/* 80BA29F8  38 80 00 00 */	li r4, 0
/* 80BA29FC  4B 78 5A 00 */	b init__12J3DFrameCtrlFs
/* 80BA2A00  38 00 00 00 */	li r0, 0
/* 80BA2A04  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80BA2A08:
/* 80BA2A08  93 BF 06 20 */	stw r29, 0x620(r31)
/* 80BA2A0C  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80BA2A10  28 00 00 00 */	cmplwi r0, 0
/* 80BA2A14  40 82 00 0C */	bne lbl_80BA2A20
/* 80BA2A18  38 60 00 00 */	li r3, 0
/* 80BA2A1C  48 00 01 E4 */	b lbl_80BA2C00
lbl_80BA2A20:
/* 80BA2A20  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80BA2A24  28 00 00 01 */	cmplwi r0, 1
/* 80BA2A28  40 82 00 64 */	bne lbl_80BA2A8C
/* 80BA2A2C  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA2A30  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2A34  38 80 00 0D */	li r4, 0xd
/* 80BA2A38  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2A3C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA2A40  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2A44  38 C0 00 80 */	li r6, 0x80
/* 80BA2A48  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2A4C  4B 49 98 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2A50  7C 65 1B 78 */	mr r5, r3
/* 80BA2A54  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BA2A58  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80BA2A5C  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA2A60  38 C0 00 01 */	li r6, 1
/* 80BA2A64  38 E0 00 02 */	li r7, 2
/* 80BA2A68  3D 00 80 BA */	lis r8, lit_3934@ha
/* 80BA2A6C  C0 28 54 6C */	lfs f1, lit_3934@l(r8)
/* 80BA2A70  39 00 00 00 */	li r8, 0
/* 80BA2A74  39 20 FF FF */	li r9, -1
/* 80BA2A78  4B 46 AC 94 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BA2A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA2A80  40 82 00 6C */	bne lbl_80BA2AEC
/* 80BA2A84  38 60 00 00 */	li r3, 0
/* 80BA2A88  48 00 01 78 */	b lbl_80BA2C00
lbl_80BA2A8C:
/* 80BA2A8C  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA2A90  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2A94  38 80 00 0E */	li r4, 0xe
/* 80BA2A98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2A9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA2AA0  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2AA4  38 C0 00 80 */	li r6, 0x80
/* 80BA2AA8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2AAC  4B 49 98 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2AB0  7C 65 1B 78 */	mr r5, r3
/* 80BA2AB4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BA2AB8  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80BA2ABC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA2AC0  38 C0 00 01 */	li r6, 1
/* 80BA2AC4  38 E0 00 02 */	li r7, 2
/* 80BA2AC8  3D 00 80 BA */	lis r8, lit_3934@ha
/* 80BA2ACC  C0 28 54 6C */	lfs f1, lit_3934@l(r8)
/* 80BA2AD0  39 00 00 00 */	li r8, 0
/* 80BA2AD4  39 20 FF FF */	li r9, -1
/* 80BA2AD8  4B 46 AC 34 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BA2ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA2AE0  40 82 00 0C */	bne lbl_80BA2AEC
/* 80BA2AE4  38 60 00 00 */	li r3, 0
/* 80BA2AE8  48 00 01 18 */	b lbl_80BA2C00
lbl_80BA2AEC:
/* 80BA2AEC  38 60 00 18 */	li r3, 0x18
/* 80BA2AF0  4B 72 C1 5C */	b __nw__FUl
/* 80BA2AF4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BA2AF8  41 82 00 20 */	beq lbl_80BA2B18
/* 80BA2AFC  3C 80 80 BA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BA2B00  38 04 55 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BA2B04  90 1D 00 00 */	stw r0, 0(r29)
/* 80BA2B08  38 80 00 00 */	li r4, 0
/* 80BA2B0C  4B 78 58 F0 */	b init__12J3DFrameCtrlFs
/* 80BA2B10  38 00 00 00 */	li r0, 0
/* 80BA2B14  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80BA2B18:
/* 80BA2B18  93 BF 06 24 */	stw r29, 0x624(r31)
/* 80BA2B1C  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80BA2B20  28 00 00 00 */	cmplwi r0, 0
/* 80BA2B24  40 82 00 0C */	bne lbl_80BA2B30
/* 80BA2B28  38 60 00 00 */	li r3, 0
/* 80BA2B2C  48 00 00 D4 */	b lbl_80BA2C00
lbl_80BA2B30:
/* 80BA2B30  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80BA2B34  28 00 00 01 */	cmplwi r0, 1
/* 80BA2B38  40 82 00 64 */	bne lbl_80BA2B9C
/* 80BA2B3C  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA2B40  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2B44  38 80 00 11 */	li r4, 0x11
/* 80BA2B48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2B4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA2B50  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2B54  38 C0 00 80 */	li r6, 0x80
/* 80BA2B58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2B5C  4B 49 97 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2B60  7C 65 1B 78 */	mr r5, r3
/* 80BA2B64  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BA2B68  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80BA2B6C  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA2B70  38 C0 00 01 */	li r6, 1
/* 80BA2B74  38 E0 00 02 */	li r7, 2
/* 80BA2B78  3D 00 80 BA */	lis r8, lit_3934@ha
/* 80BA2B7C  C0 28 54 6C */	lfs f1, lit_3934@l(r8)
/* 80BA2B80  39 00 00 00 */	li r8, 0
/* 80BA2B84  39 20 FF FF */	li r9, -1
/* 80BA2B88  4B 46 AA B4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BA2B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA2B90  40 82 00 6C */	bne lbl_80BA2BFC
/* 80BA2B94  38 60 00 00 */	li r3, 0
/* 80BA2B98  48 00 00 68 */	b lbl_80BA2C00
lbl_80BA2B9C:
/* 80BA2B9C  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA2BA0  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA2BA4  38 80 00 12 */	li r4, 0x12
/* 80BA2BA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA2BAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA2BB0  3C A5 00 02 */	addis r5, r5, 2
/* 80BA2BB4  38 C0 00 80 */	li r6, 0x80
/* 80BA2BB8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA2BBC  4B 49 97 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA2BC0  7C 65 1B 78 */	mr r5, r3
/* 80BA2BC4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BA2BC8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80BA2BCC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BA2BD0  38 C0 00 01 */	li r6, 1
/* 80BA2BD4  38 E0 00 02 */	li r7, 2
/* 80BA2BD8  3D 00 80 BA */	lis r8, lit_3934@ha
/* 80BA2BDC  C0 28 54 6C */	lfs f1, lit_3934@l(r8)
/* 80BA2BE0  39 00 00 00 */	li r8, 0
/* 80BA2BE4  39 20 FF FF */	li r9, -1
/* 80BA2BE8  4B 46 AA 54 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BA2BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA2BF0  40 82 00 0C */	bne lbl_80BA2BFC
/* 80BA2BF4  38 60 00 00 */	li r3, 0
/* 80BA2BF8  48 00 00 08 */	b lbl_80BA2C00
lbl_80BA2BFC:
/* 80BA2BFC  38 60 00 01 */	li r3, 1
lbl_80BA2C00:
/* 80BA2C00  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA2C04  4B 7B F6 24 */	b _restgpr_29
/* 80BA2C08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA2C0C  7C 08 03 A6 */	mtlr r0
/* 80BA2C10  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA2C14  4E 80 00 20 */	blr 
