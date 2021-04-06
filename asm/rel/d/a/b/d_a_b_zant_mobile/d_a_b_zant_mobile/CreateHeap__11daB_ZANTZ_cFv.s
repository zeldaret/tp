lbl_80651DC4:
/* 80651DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80651DC8  7C 08 02 A6 */	mflr r0
/* 80651DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80651DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80651DD4  4B D1 04 05 */	bl _savegpr_28
/* 80651DD8  7C 7F 1B 78 */	mr r31, r3
/* 80651DDC  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651DE0  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651DE4  38 80 00 4C */	li r4, 0x4c
/* 80651DE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80651DEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80651DF0  3F C5 00 02 */	addis r30, r5, 2
/* 80651DF4  3B DE C2 F8 */	addi r30, r30, -15624
/* 80651DF8  7F C5 F3 78 */	mr r5, r30
/* 80651DFC  38 C0 00 80 */	li r6, 0x80
/* 80651E00  4B 9E A4 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651E04  7C 7C 1B 78 */	mr r28, r3
/* 80651E08  38 60 00 58 */	li r3, 0x58
/* 80651E0C  4B C7 CE 41 */	bl __nw__FUl
/* 80651E10  7C 7D 1B 79 */	or. r29, r3, r3
/* 80651E14  41 82 00 68 */	beq lbl_80651E7C
/* 80651E18  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651E1C  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651E20  38 80 00 44 */	li r4, 0x44
/* 80651E24  7F C5 F3 78 */	mr r5, r30
/* 80651E28  38 C0 00 80 */	li r6, 0x80
/* 80651E2C  4B 9E A4 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651E30  7C 67 1B 78 */	mr r7, r3
/* 80651E34  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80651E38  90 01 00 08 */	stw r0, 8(r1)
/* 80651E3C  38 00 00 00 */	li r0, 0
/* 80651E40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80651E44  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80651E48  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80651E4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80651E50  7F A3 EB 78 */	mr r3, r29
/* 80651E54  7F 84 E3 78 */	mr r4, r28
/* 80651E58  38 A0 00 00 */	li r5, 0
/* 80651E5C  38 C0 00 00 */	li r6, 0
/* 80651E60  39 00 00 00 */	li r8, 0
/* 80651E64  3D 20 80 65 */	lis r9, lit_3795@ha /* 0x8065276C@ha */
/* 80651E68  C0 29 27 6C */	lfs f1, lit_3795@l(r9)  /* 0x8065276C@l */
/* 80651E6C  39 20 00 00 */	li r9, 0
/* 80651E70  39 40 FF FF */	li r10, -1
/* 80651E74  4B 9B E9 5D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80651E78  7C 7D 1B 78 */	mr r29, r3
lbl_80651E7C:
/* 80651E7C  93 BF 05 B4 */	stw r29, 0x5b4(r31)
/* 80651E80  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80651E84  28 00 00 00 */	cmplwi r0, 0
/* 80651E88  40 82 00 0C */	bne lbl_80651E94
/* 80651E8C  38 60 00 00 */	li r3, 0
/* 80651E90  48 00 01 28 */	b lbl_80651FB8
lbl_80651E94:
/* 80651E94  38 60 00 18 */	li r3, 0x18
/* 80651E98  4B C7 CD B5 */	bl __nw__FUl
/* 80651E9C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80651EA0  41 82 00 20 */	beq lbl_80651EC0
/* 80651EA4  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806528D4@ha */
/* 80651EA8  38 04 28 D4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806528D4@l */
/* 80651EAC  90 1D 00 00 */	stw r0, 0(r29)
/* 80651EB0  38 80 00 00 */	li r4, 0
/* 80651EB4  4B CD 65 49 */	bl init__12J3DFrameCtrlFs
/* 80651EB8  38 00 00 00 */	li r0, 0
/* 80651EBC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80651EC0:
/* 80651EC0  93 BF 05 B8 */	stw r29, 0x5b8(r31)
/* 80651EC4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80651EC8  28 00 00 00 */	cmplwi r0, 0
/* 80651ECC  40 82 00 0C */	bne lbl_80651ED8
/* 80651ED0  38 60 00 00 */	li r3, 0
/* 80651ED4  48 00 00 E4 */	b lbl_80651FB8
lbl_80651ED8:
/* 80651ED8  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651EDC  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651EE0  38 80 00 50 */	li r4, 0x50
/* 80651EE4  7F C5 F3 78 */	mr r5, r30
/* 80651EE8  38 C0 00 80 */	li r6, 0x80
/* 80651EEC  4B 9E A4 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651EF0  7C 65 1B 78 */	mr r5, r3
/* 80651EF4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80651EF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80651EFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80651F00  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80651F04  38 84 00 58 */	addi r4, r4, 0x58
/* 80651F08  38 C0 00 01 */	li r6, 1
/* 80651F0C  38 E0 00 02 */	li r7, 2
/* 80651F10  3D 00 80 65 */	lis r8, lit_3649@ha /* 0x8065273C@ha */
/* 80651F14  C0 28 27 3C */	lfs f1, lit_3649@l(r8)  /* 0x8065273C@l */
/* 80651F18  39 00 00 00 */	li r8, 0
/* 80651F1C  39 20 FF FF */	li r9, -1
/* 80651F20  4B 9B B7 ED */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80651F24  2C 03 00 00 */	cmpwi r3, 0
/* 80651F28  40 82 00 0C */	bne lbl_80651F34
/* 80651F2C  38 60 00 00 */	li r3, 0
/* 80651F30  48 00 00 88 */	b lbl_80651FB8
lbl_80651F34:
/* 80651F34  38 60 00 C0 */	li r3, 0xc0
/* 80651F38  4B C7 CD 15 */	bl __nw__FUl
/* 80651F3C  7C 60 1B 79 */	or. r0, r3, r3
/* 80651F40  41 82 00 0C */	beq lbl_80651F4C
/* 80651F44  4B A2 9A 2D */	bl __ct__4dBgWFv
/* 80651F48  7C 60 1B 78 */	mr r0, r3
lbl_80651F4C:
/* 80651F4C  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 80651F50  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 80651F54  28 00 00 00 */	cmplwi r0, 0
/* 80651F58  40 82 00 0C */	bne lbl_80651F64
/* 80651F5C  38 60 00 00 */	li r3, 0
/* 80651F60  48 00 00 58 */	b lbl_80651FB8
lbl_80651F64:
/* 80651F64  3C 60 80 65 */	lis r3, d_a_b_zant_mobile__stringBase0@ha /* 0x806527D0@ha */
/* 80651F68  38 63 27 D0 */	addi r3, r3, d_a_b_zant_mobile__stringBase0@l /* 0x806527D0@l */
/* 80651F6C  38 80 00 57 */	li r4, 0x57
/* 80651F70  7F C5 F3 78 */	mr r5, r30
/* 80651F74  38 C0 00 80 */	li r6, 0x80
/* 80651F78  4B 9E A3 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80651F7C  7C 64 1B 78 */	mr r4, r3
/* 80651F80  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 80651F84  38 A0 00 01 */	li r5, 1
/* 80651F88  38 DF 06 74 */	addi r6, r31, 0x674
/* 80651F8C  4B A2 7F AD */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80651F90  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80651F94  28 00 00 01 */	cmplwi r0, 1
/* 80651F98  40 82 00 0C */	bne lbl_80651FA4
/* 80651F9C  38 60 00 00 */	li r3, 0
/* 80651FA0  48 00 00 18 */	b lbl_80651FB8
lbl_80651FA4:
/* 80651FA4  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80651FA8  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80651FAC  80 7F 06 A4 */	lwz r3, 0x6a4(r31)
/* 80651FB0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80651FB4  38 60 00 01 */	li r3, 1
lbl_80651FB8:
/* 80651FB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80651FBC  4B D1 02 69 */	bl _restgpr_28
/* 80651FC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80651FC4  7C 08 03 A6 */	mtlr r0
/* 80651FC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80651FCC  4E 80 00 20 */	blr 
