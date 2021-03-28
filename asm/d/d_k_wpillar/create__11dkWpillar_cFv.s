lbl_80261B54:
/* 80261B54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80261B58  7C 08 02 A6 */	mflr r0
/* 80261B5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80261B60  39 61 00 30 */	addi r11, r1, 0x30
/* 80261B64  48 10 06 75 */	bl _savegpr_28
/* 80261B68  7C 7F 1B 78 */	mr r31, r3
/* 80261B6C  28 03 00 00 */	cmplwi r3, 0
/* 80261B70  41 82 00 A4 */	beq lbl_80261C14
/* 80261B74  7C 7C 1B 78 */	mr r28, r3
/* 80261B78  3B A3 00 FC */	addi r29, r3, 0xfc
/* 80261B7C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261B80  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261B84  90 1D 00 00 */	stw r0, 0(r29)
/* 80261B88  7F A3 EB 78 */	mr r3, r29
/* 80261B8C  38 80 00 00 */	li r4, 0
/* 80261B90  48 0C 68 6D */	bl init__12J3DFrameCtrlFs
/* 80261B94  38 00 00 00 */	li r0, 0
/* 80261B98  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80261B9C  3B BC 01 18 */	addi r29, r28, 0x118
/* 80261BA0  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261BA4  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261BA8  90 1C 01 18 */	stw r0, 0x118(r28)
/* 80261BAC  7F A3 EB 78 */	mr r3, r29
/* 80261BB0  38 80 00 00 */	li r4, 0
/* 80261BB4  48 0C 68 49 */	bl init__12J3DFrameCtrlFs
/* 80261BB8  38 00 00 00 */	li r0, 0
/* 80261BBC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80261BC0  3B BC 01 30 */	addi r29, r28, 0x130
/* 80261BC4  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80261BC8  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80261BCC  90 1C 01 30 */	stw r0, 0x130(r28)
/* 80261BD0  7F A3 EB 78 */	mr r3, r29
/* 80261BD4  38 80 00 00 */	li r4, 0
/* 80261BD8  48 0C 68 25 */	bl init__12J3DFrameCtrlFs
/* 80261BDC  38 00 00 00 */	li r0, 0
/* 80261BE0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80261BE4  3B BC 01 4C */	addi r29, r28, 0x14c
/* 80261BE8  7F A3 EB 78 */	mr r3, r29
/* 80261BEC  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80261BF0  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80261BF4  48 0C 3A D1 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80261BF8  38 7D 00 74 */	addi r3, r29, 0x74
/* 80261BFC  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha
/* 80261C00  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80261C04  38 A0 00 00 */	li r5, 0
/* 80261C08  38 C0 00 74 */	li r6, 0x74
/* 80261C0C  38 E0 00 06 */	li r7, 6
/* 80261C10  48 10 01 51 */	bl __construct_array
lbl_80261C14:
/* 80261C14  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80261C18  4B DB C0 A5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80261C1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80261C20  41 82 00 40 */	beq lbl_80261C60
/* 80261C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80261C28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80261C2C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80261C30  7F C3 F3 78 */	mr r3, r30
/* 80261C34  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 80261C38  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80261C3C  3B A4 00 14 */	addi r29, r4, 0x14
/* 80261C40  7F A4 EB 78 */	mr r4, r29
/* 80261C44  4B E1 34 BD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80261C48  7C 7C 1B 78 */	mr r28, r3
/* 80261C4C  7F C3 F3 78 */	mr r3, r30
/* 80261C50  7F A4 EB 78 */	mr r4, r29
/* 80261C54  4B E1 2F 95 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80261C58  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80261C5C  48 00 00 10 */	b lbl_80261C6C
lbl_80261C60:
/* 80261C60  8B 8D 87 E4 */	lbz r28, struct_80450D64+0x0(r13)
/* 80261C64  7F 9C 07 74 */	extsb r28, r28
/* 80261C68  38 A0 00 FF */	li r5, 0xff
lbl_80261C6C:
/* 80261C6C  38 7F 01 4C */	addi r3, r31, 0x14c
/* 80261C70  7F 84 07 74 */	extsb r4, r28
/* 80261C74  4B F4 6C 79 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 80261C78  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80261C7C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80261C80  38 80 00 10 */	li r4, 0x10
/* 80261C84  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80261C88  38 DF 01 4C */	addi r6, r31, 0x14c
/* 80261C8C  4B F4 1B 39 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80261C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80261C94  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80261C98  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80261C9C  38 80 00 00 */	li r4, 0
/* 80261CA0  90 81 00 08 */	stw r4, 8(r1)
/* 80261CA4  7F 80 07 74 */	extsb r0, r28
/* 80261CA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80261CAC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80261CB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80261CB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80261CB8  38 80 00 00 */	li r4, 0
/* 80261CBC  38 A0 01 BD */	li r5, 0x1bd
/* 80261CC0  38 DF 00 DC */	addi r6, r31, 0xdc
/* 80261CC4  38 FF 01 4C */	addi r7, r31, 0x14c
/* 80261CC8  39 00 00 00 */	li r8, 0
/* 80261CCC  39 3F 00 E8 */	addi r9, r31, 0xe8
/* 80261CD0  39 40 00 FF */	li r10, 0xff
/* 80261CD4  C0 22 B5 F8 */	lfs f1, lit_3838(r2)
/* 80261CD8  4B DE AD B9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80261CDC  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80261CE0  2C 00 00 03 */	cmpwi r0, 3
/* 80261CE4  41 82 00 48 */	beq lbl_80261D2C
/* 80261CE8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80261CEC  38 80 00 00 */	li r4, 0
/* 80261CF0  90 81 00 08 */	stw r4, 8(r1)
/* 80261CF4  7F 80 07 74 */	extsb r0, r28
/* 80261CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80261CFC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80261D00  90 81 00 14 */	stw r4, 0x14(r1)
/* 80261D04  90 81 00 18 */	stw r4, 0x18(r1)
/* 80261D08  38 80 00 00 */	li r4, 0
/* 80261D0C  38 A0 01 BE */	li r5, 0x1be
/* 80261D10  38 DF 00 DC */	addi r6, r31, 0xdc
/* 80261D14  38 FF 01 4C */	addi r7, r31, 0x14c
/* 80261D18  39 00 00 00 */	li r8, 0
/* 80261D1C  39 3F 00 E8 */	addi r9, r31, 0xe8
/* 80261D20  39 40 00 FF */	li r10, 0xff
/* 80261D24  C0 22 B5 F8 */	lfs f1, lit_3838(r2)
/* 80261D28  4B DE AD 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80261D2C:
/* 80261D2C  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80261D30  2C 00 00 01 */	cmpwi r0, 1
/* 80261D34  40 82 00 0C */	bne lbl_80261D40
/* 80261D38  38 60 00 05 */	li r3, 5
/* 80261D3C  48 00 01 B0 */	b lbl_80261EEC
lbl_80261D40:
/* 80261D40  38 60 22 00 */	li r3, 0x2200
/* 80261D44  38 80 00 20 */	li r4, 0x20
/* 80261D48  4B DA D2 FD */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 80261D4C  90 7F 01 48 */	stw r3, 0x148(r31)
/* 80261D50  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80261D54  28 00 00 00 */	cmplwi r0, 0
/* 80261D58  41 82 01 04 */	beq lbl_80261E5C
/* 80261D5C  38 62 B5 F0 */	la r3, l_arcName(r2) /* 80454FF0-_SDA2_BASE_ */
/* 80261D60  38 80 00 1C */	li r4, 0x1c
/* 80261D64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80261D68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80261D6C  3F 85 00 02 */	addis r28, r5, 2
/* 80261D70  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80261D74  7F 85 E3 78 */	mr r5, r28
/* 80261D78  38 C0 00 80 */	li r6, 0x80
/* 80261D7C  4B DD A5 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80261D80  7C 7D 1B 78 */	mr r29, r3
/* 80261D84  3C 80 00 08 */	lis r4, 8
/* 80261D88  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80261D8C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80261D90  4B DB 2E C5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80261D94  90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 80261D98  38 62 B5 F0 */	la r3, l_arcName(r2) /* 80454FF0-_SDA2_BASE_ */
/* 80261D9C  38 80 00 0B */	li r4, 0xb
/* 80261DA0  7F 85 E3 78 */	mr r5, r28
/* 80261DA4  38 C0 00 80 */	li r6, 0x80
/* 80261DA8  4B DD A5 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80261DAC  7C 64 1B 78 */	mr r4, r3
/* 80261DB0  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80261DB4  38 A0 00 01 */	li r5, 1
/* 80261DB8  38 C0 00 00 */	li r6, 0
/* 80261DBC  C0 22 B5 F8 */	lfs f1, lit_3838(r2)
/* 80261DC0  38 E0 00 00 */	li r7, 0
/* 80261DC4  39 00 FF FF */	li r8, -1
/* 80261DC8  39 20 00 00 */	li r9, 0
/* 80261DCC  4B DA BA 11 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80261DD0  7C 7E 1B 78 */	mr r30, r3
/* 80261DD4  38 62 B5 F0 */	la r3, l_arcName(r2) /* 80454FF0-_SDA2_BASE_ */
/* 80261DD8  38 80 00 3B */	li r4, 0x3b
/* 80261DDC  7F 85 E3 78 */	mr r5, r28
/* 80261DE0  38 C0 00 80 */	li r6, 0x80
/* 80261DE4  4B DD A5 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80261DE8  7C 65 1B 78 */	mr r5, r3
/* 80261DEC  38 7F 01 18 */	addi r3, r31, 0x118
/* 80261DF0  38 9D 00 58 */	addi r4, r29, 0x58
/* 80261DF4  38 C0 00 00 */	li r6, 0
/* 80261DF8  38 E0 00 02 */	li r7, 2
/* 80261DFC  C0 22 B5 F8 */	lfs f1, lit_3838(r2)
/* 80261E00  39 00 00 00 */	li r8, 0
/* 80261E04  39 20 FF FF */	li r9, -1
/* 80261E08  4B DA B8 35 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80261E0C  7F DE 18 38 */	and r30, r30, r3
/* 80261E10  38 62 B5 F0 */	la r3, l_arcName(r2) /* 80454FF0-_SDA2_BASE_ */
/* 80261E14  38 80 00 2E */	li r4, 0x2e
/* 80261E18  7F 85 E3 78 */	mr r5, r28
/* 80261E1C  38 C0 00 80 */	li r6, 0x80
/* 80261E20  4B DD A4 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80261E24  7C 65 1B 78 */	mr r5, r3
/* 80261E28  38 7F 01 30 */	addi r3, r31, 0x130
/* 80261E2C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80261E30  38 C0 00 00 */	li r6, 0
/* 80261E34  38 E0 00 02 */	li r7, 2
/* 80261E38  C0 22 B5 F8 */	lfs f1, lit_3838(r2)
/* 80261E3C  39 00 00 00 */	li r8, 0
/* 80261E40  39 20 FF FF */	li r9, -1
/* 80261E44  4B DA B8 C9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80261E48  7F DE 18 38 */	and r30, r30, r3
/* 80261E4C  4B DA D3 A9 */	bl mDoExt_restoreCurrentHeap__Fv
/* 80261E50  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 80261E54  4B DA D2 39 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 80261E58  48 00 00 0C */	b lbl_80261E64
lbl_80261E5C:
/* 80261E5C  38 60 00 05 */	li r3, 5
/* 80261E60  48 00 00 8C */	b lbl_80261EEC
lbl_80261E64:
/* 80261E64  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80261E68  28 00 00 00 */	cmplwi r0, 0
/* 80261E6C  41 82 00 0C */	beq lbl_80261E78
/* 80261E70  2C 1E 00 00 */	cmpwi r30, 0
/* 80261E74  40 82 00 0C */	bne lbl_80261E80
lbl_80261E78:
/* 80261E78  38 60 00 05 */	li r3, 5
/* 80261E7C  48 00 00 70 */	b lbl_80261EEC
lbl_80261E80:
/* 80261E80  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80261E84  2C 00 00 02 */	cmpwi r0, 2
/* 80261E88  40 82 00 18 */	bne lbl_80261EA0
/* 80261E8C  C0 22 B5 FC */	lfs f1, lit_3839(r2)
/* 80261E90  D0 3F 00 E8 */	stfs f1, 0xe8(r31)
/* 80261E94  C0 02 B6 00 */	lfs f0, lit_3840(r2)
/* 80261E98  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 80261E9C  D0 3F 00 F0 */	stfs f1, 0xf0(r31)
lbl_80261EA0:
/* 80261EA0  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80261EA4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80261EA8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80261EAC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80261EB0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80261EB4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80261EB8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80261EBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80261EC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80261EC4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80261EC8  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 80261ECC  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 80261ED0  48 0E 4A 19 */	bl PSMTXTrans
/* 80261ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80261ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80261EDC  80 9F 00 F8 */	lwz r4, 0xf8(r31)
/* 80261EE0  38 84 00 24 */	addi r4, r4, 0x24
/* 80261EE4  48 0E 45 CD */	bl PSMTXCopy
/* 80261EE8  38 60 00 04 */	li r3, 4
lbl_80261EEC:
/* 80261EEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80261EF0  48 10 03 35 */	bl _restgpr_28
/* 80261EF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80261EF8  7C 08 03 A6 */	mtlr r0
/* 80261EFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80261F00  4E 80 00 20 */	blr 
