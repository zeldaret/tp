lbl_80126928:
/* 80126928  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012692C  7C 08 02 A6 */	mflr r0
/* 80126930  90 01 00 34 */	stw r0, 0x34(r1)
/* 80126934  39 61 00 30 */	addi r11, r1, 0x30
/* 80126938  48 23 B8 99 */	bl _savegpr_26
/* 8012693C  7C 7F 1B 78 */	mr r31, r3
/* 80126940  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 80126944  3B C3 D6 58 */	addi r30, r3, lit_3757@l /* 0x8038D658@l */
/* 80126948  38 7F 20 F0 */	addi r3, r31, 0x20f0
/* 8012694C  48 03 88 1D */	bl setAnimeHeap__14daPy_anmHeap_cFv
/* 80126950  7C 7C 1B 78 */	mr r28, r3
/* 80126954  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126958  38 80 00 0E */	li r4, 0xe
/* 8012695C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80126960  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80126964  3F A5 00 02 */	addis r29, r5, 2
/* 80126968  3B BD C2 F8 */	addi r29, r29, -15624
/* 8012696C  7F A5 EB 78 */	mr r5, r29
/* 80126970  38 C0 00 80 */	li r6, 0x80
/* 80126974  4B F1 59 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126978  7C 64 1B 78 */	mr r4, r3
/* 8012697C  7F E3 FB 78 */	mr r3, r31
/* 80126980  3C A0 00 08 */	lis r5, 8
/* 80126984  3C C0 00 02 */	lis r6, 0x0002 /* 0x00020200@ha */
/* 80126988  38 C6 02 00 */	addi r6, r6, 0x0200 /* 0x00020200@l */
/* 8012698C  4B F7 D3 F1 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80126990  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80126994  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126998  38 80 00 0F */	li r4, 0xf
/* 8012699C  7F A5 EB 78 */	mr r5, r29
/* 801269A0  38 C0 00 80 */	li r6, 0x80
/* 801269A4  4B F1 59 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801269A8  7C 7B 1B 78 */	mr r27, r3
/* 801269AC  3B 40 00 00 */	li r26, 0
/* 801269B0  48 00 00 28 */	b lbl_801269D8
lbl_801269B4:
/* 801269B4  7F E3 FB 78 */	mr r3, r31
/* 801269B8  7F 64 DB 78 */	mr r4, r27
/* 801269BC  3C A0 00 08 */	lis r5, 8
/* 801269C0  38 C0 00 00 */	li r6, 0
/* 801269C4  4B F7 D3 B9 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801269C8  57 44 13 BA */	rlwinm r4, r26, 2, 0xe, 0x1d
/* 801269CC  38 04 07 8C */	addi r0, r4, 0x78c
/* 801269D0  7C 7F 01 2E */	stwx r3, r31, r0
/* 801269D4  3B 5A 00 01 */	addi r26, r26, 1
lbl_801269D8:
/* 801269D8  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 801269DC  28 00 00 04 */	cmplwi r0, 4
/* 801269E0  41 80 FF D4 */	blt lbl_801269B4
/* 801269E4  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 801269E8  38 80 00 0A */	li r4, 0xa
/* 801269EC  7F A5 EB 78 */	mr r5, r29
/* 801269F0  38 C0 00 80 */	li r6, 0x80
/* 801269F4  4B F1 58 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801269F8  7C 64 1B 78 */	mr r4, r3
/* 801269FC  7F E3 FB 78 */	mr r3, r31
/* 80126A00  38 A0 00 00 */	li r5, 0
/* 80126A04  3C C0 01 02 */	lis r6, 0x0102 /* 0x01020200@ha */
/* 80126A08  38 C6 02 00 */	addi r6, r6, 0x0200 /* 0x01020200@l */
/* 80126A0C  4B F7 D3 71 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80126A10  90 7F 07 9C */	stw r3, 0x79c(r31)
/* 80126A14  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126A18  38 80 00 07 */	li r4, 7
/* 80126A1C  7F A5 EB 78 */	mr r5, r29
/* 80126A20  38 C0 00 80 */	li r6, 0x80
/* 80126A24  4B F1 58 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126A28  7C 64 1B 78 */	mr r4, r3
/* 80126A2C  7F E3 FB 78 */	mr r3, r31
/* 80126A30  3C A0 00 08 */	lis r5, 8
/* 80126A34  3C C0 01 00 */	lis r6, 0x100
/* 80126A38  4B F7 D3 45 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80126A3C  90 7F 07 A0 */	stw r3, 0x7a0(r31)
/* 80126A40  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126A44  38 80 00 06 */	li r4, 6
/* 80126A48  7F A5 EB 78 */	mr r5, r29
/* 80126A4C  38 C0 00 80 */	li r6, 0x80
/* 80126A50  4B F1 58 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126A54  7C 64 1B 78 */	mr r4, r3
/* 80126A58  7F E3 FB 78 */	mr r3, r31
/* 80126A5C  3C A0 00 08 */	lis r5, 8
/* 80126A60  3C C0 01 00 */	lis r6, 0x100
/* 80126A64  4B F7 D3 19 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80126A68  90 7F 07 A4 */	stw r3, 0x7a4(r31)
/* 80126A6C  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126A70  38 80 00 0B */	li r4, 0xb
/* 80126A74  7F A5 EB 78 */	mr r5, r29
/* 80126A78  38 C0 00 80 */	li r6, 0x80
/* 80126A7C  4B F1 58 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126A80  7C 64 1B 78 */	mr r4, r3
/* 80126A84  7F E3 FB 78 */	mr r3, r31
/* 80126A88  38 A0 00 00 */	li r5, 0
/* 80126A8C  3C C0 01 00 */	lis r6, 0x100
/* 80126A90  4B F7 D2 ED */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80126A94  90 7F 07 A8 */	stw r3, 0x7a8(r31)
/* 80126A98  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126A9C  38 80 00 12 */	li r4, 0x12
/* 80126AA0  7F A5 EB 78 */	mr r5, r29
/* 80126AA4  38 C0 00 80 */	li r6, 0x80
/* 80126AA8  4B F1 58 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126AAC  90 7F 07 AC */	stw r3, 0x7ac(r31)
/* 80126AB0  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 80126AB4  80 83 00 04 */	lwz r4, 4(r3)
/* 80126AB8  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 80126ABC  48 20 4D C1 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 80126AC0  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 80126AC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80126AC8  38 63 00 58 */	addi r3, r3, 0x58
/* 80126ACC  80 9F 07 AC */	lwz r4, 0x7ac(r31)
/* 80126AD0  48 20 93 A1 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80126AD4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80126AD8  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 80126ADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80126AE0  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126AE4  38 80 00 15 */	li r4, 0x15
/* 80126AE8  7F A5 EB 78 */	mr r5, r29
/* 80126AEC  38 C0 00 80 */	li r6, 0x80
/* 80126AF0  4B F1 57 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126AF4  90 7F 07 B0 */	stw r3, 0x7b0(r31)
/* 80126AF8  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 80126AFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80126B00  80 7F 07 B0 */	lwz r3, 0x7b0(r31)
/* 80126B04  48 20 4D 79 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 80126B08  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 80126B0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80126B10  38 63 00 58 */	addi r3, r3, 0x58
/* 80126B14  80 9F 07 B0 */	lwz r4, 0x7b0(r31)
/* 80126B18  48 20 93 59 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80126B1C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80126B20  80 7F 07 B0 */	lwz r3, 0x7b0(r31)
/* 80126B24  D0 03 00 08 */	stfs f0, 8(r3)
/* 80126B28  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126B2C  38 80 00 14 */	li r4, 0x14
/* 80126B30  7F A5 EB 78 */	mr r5, r29
/* 80126B34  38 C0 00 80 */	li r6, 0x80
/* 80126B38  4B F1 57 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126B3C  90 7F 07 B4 */	stw r3, 0x7b4(r31)
/* 80126B40  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 80126B44  80 83 00 04 */	lwz r4, 4(r3)
/* 80126B48  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 80126B4C  48 20 4D 31 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 80126B50  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 80126B54  80 63 00 04 */	lwz r3, 4(r3)
/* 80126B58  38 63 00 58 */	addi r3, r3, 0x58
/* 80126B5C  80 9F 07 B4 */	lwz r4, 0x7b4(r31)
/* 80126B60  48 20 93 11 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80126B64  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80126B68  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 80126B6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80126B70  38 62 92 50 */	la r3, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 80126B74  38 80 00 13 */	li r4, 0x13
/* 80126B78  7F A5 EB 78 */	mr r5, r29
/* 80126B7C  38 C0 00 80 */	li r6, 0x80
/* 80126B80  4B F1 57 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126B84  90 7F 07 B8 */	stw r3, 0x7b8(r31)
/* 80126B88  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 80126B8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80126B90  80 7F 07 B8 */	lwz r3, 0x7b8(r31)
/* 80126B94  48 20 4C E9 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 80126B98  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 80126B9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80126BA0  38 63 00 58 */	addi r3, r3, 0x58
/* 80126BA4  80 9F 07 B8 */	lwz r4, 0x7b8(r31)
/* 80126BA8  48 20 92 C9 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80126BAC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80126BB0  80 7F 07 B8 */	lwz r3, 0x7b8(r31)
/* 80126BB4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80126BB8  7F 83 E3 78 */	mr r3, r28
/* 80126BBC  4B EE 86 11 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80126BC0  38 00 00 01 */	li r0, 1
/* 80126BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80126BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80126BCC  98 03 00 1E */	stb r0, 0x1e(r3)
/* 80126BD0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80126BD4  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80126BD8  7F E3 FB 78 */	mr r3, r31
/* 80126BDC  38 80 00 00 */	li r4, 0
/* 80126BE0  48 01 99 71 */	bl changeModelDataDirectWolf__9daAlink_cFi
/* 80126BE4  38 7F 21 88 */	addi r3, r31, 0x2188
/* 80126BE8  80 9F 06 4C */	lwz r4, 0x64c(r31)
/* 80126BEC  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80126BF0  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80126BF4  38 A5 02 18 */	addi r5, r5, 0x218
/* 80126BF8  4B F7 5D 6D */	bl entry__8dEyeHL_cFP12J3DModelDataPCc
/* 80126BFC  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 80126C00  80 83 00 04 */	lwz r4, 4(r3)
/* 80126C04  38 7F 21 9C */	addi r3, r31, 0x219c
/* 80126C08  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80126C0C  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80126C10  38 A5 02 27 */	addi r5, r5, 0x227
/* 80126C14  4B F7 5D 51 */	bl entry__8dEyeHL_cFP12J3DModelDataPCc
/* 80126C18  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80126C1C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80126C20  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80126C24  80 1F 21 80 */	lwz r0, 0x2180(r31)
/* 80126C28  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80126C2C  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80126C30  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80126C34  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80126C38  80 1F 21 84 */	lwz r0, 0x2184(r31)
/* 80126C3C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80126C40  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80126C44  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80126C48  80 63 00 04 */	lwz r3, 4(r3)
/* 80126C4C  80 03 00 08 */	lwz r0, 8(r3)
/* 80126C50  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 80126C54  7F E3 FB 78 */	mr r3, r31
/* 80126C58  4B FF FA E9 */	bl changeCommon__9daAlink_cFv
/* 80126C5C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80126C60  64 00 02 00 */	oris r0, r0, 0x200
/* 80126C64  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80126C68  7F E3 FB 78 */	mr r3, r31
/* 80126C6C  38 80 00 00 */	li r4, 0
/* 80126C70  38 A0 00 00 */	li r5, 0
/* 80126C74  4B F9 A6 69 */	bl deleteEquipItem__9daAlink_cFii
/* 80126C78  38 7F 2E 44 */	addi r3, r31, 0x2e44
/* 80126C7C  7F E4 FB 78 */	mr r4, r31
/* 80126C80  3C A0 80 3B */	lis r5, l_wolfJntColData@ha /* 0x803B2B68@ha */
/* 80126C84  38 A5 2B 68 */	addi r5, r5, l_wolfJntColData@l /* 0x803B2B68@l */
/* 80126C88  80 DF 06 50 */	lwz r6, 0x650(r31)
/* 80126C8C  38 E0 00 12 */	li r7, 0x12
/* 80126C90  4B F0 F0 11 */	bl init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 80126C94  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80126C98  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80126C9C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80126CA0  C0 02 97 30 */	lfs f0, lit_42933(r2)
/* 80126CA4  D0 1F 05 98 */	stfs f0, 0x598(r31)
/* 80126CA8  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80126CAC  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
/* 80126CB0  38 7E 17 D0 */	addi r3, r30, 0x17d0
/* 80126CB4  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 80126CB8  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 80126CBC  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 80126CC0  38 7E 1B 48 */	addi r3, r30, 0x1b48
/* 80126CC4  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80126CC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80126CCC  D0 0D 81 10 */	stfs f0, l_autoUpHeight(r13)
/* 80126CD0  FC 00 00 50 */	fneg f0, f0
/* 80126CD4  D0 0D 81 14 */	stfs f0, l_autoDownHeight(r13)
/* 80126CD8  C0 22 94 D4 */	lfs f1, lit_18929(r2)
/* 80126CDC  38 9E 1D 98 */	addi r4, r30, 0x1d98
/* 80126CE0  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 80126CE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80126CE8  FC 00 00 1E */	fctiwz f0, f0
/* 80126CEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80126CF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80126CF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80126CF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80126CFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80126D00  7C 63 02 14 */	add r3, r3, r0
/* 80126D04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80126D08  D0 1F 34 70 */	stfs f0, 0x3470(r31)
/* 80126D0C  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80126D10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80126D14  FC 00 00 1E */	fctiwz f0, f0
/* 80126D18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80126D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80126D20  B0 1F 31 22 */	sth r0, 0x3122(r31)
/* 80126D24  C0 02 97 18 */	lfs f0, lit_42493(r2)
/* 80126D28  D0 1F 34 58 */	stfs f0, 0x3458(r31)
/* 80126D2C  C0 02 97 34 */	lfs f0, lit_42934(r2)
/* 80126D30  D0 1F 34 5C */	stfs f0, 0x345c(r31)
/* 80126D34  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 80126D38  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80126D3C  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 80126D40  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 80126D44  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80126D48  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 80126D4C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80126D50  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80126D54  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80126D58  7F E3 FB 78 */	mr r3, r31
/* 80126D5C  38 80 00 00 */	li r4, 0
/* 80126D60  4B FB B8 21 */	bl setHeavyBoots__9daAlink_cFi
/* 80126D64  38 60 00 00 */	li r3, 0
/* 80126D68  7C 65 1B 78 */	mr r5, r3
/* 80126D6C  7C 64 1B 78 */	mr r4, r3
/* 80126D70  38 00 00 03 */	li r0, 3
/* 80126D74  7C 09 03 A6 */	mtctr r0
lbl_80126D78:
/* 80126D78  7C DF 1A 14 */	add r6, r31, r3
/* 80126D7C  B0 A6 30 94 */	sth r5, 0x3094(r6)
/* 80126D80  B0 86 30 9A */	sth r4, 0x309a(r6)
/* 80126D84  38 63 00 02 */	addi r3, r3, 2
/* 80126D88  42 00 FF F0 */	bdnz lbl_80126D78
/* 80126D8C  38 00 00 01 */	li r0, 1
/* 80126D90  98 1F 2D 68 */	stb r0, 0x2d68(r31)
/* 80126D94  38 80 00 00 */	li r4, 0
/* 80126D98  B0 9F 30 D6 */	sth r4, 0x30d6(r31)
/* 80126D9C  98 9F 2F A6 */	stb r4, 0x2fa6(r31)
/* 80126DA0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80126DA4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80126DA8  D0 1F 2E 80 */	stfs f0, 0x2e80(r31)
/* 80126DAC  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80126DB0  D0 1F 2E 84 */	stfs f0, 0x2e84(r31)
/* 80126DB4  90 9F 06 70 */	stw r4, 0x670(r31)
/* 80126DB8  C0 02 93 DC */	lfs f0, lit_11471(r2)
/* 80126DBC  D0 1F 34 20 */	stfs f0, 0x3420(r31)
/* 80126DC0  38 00 00 28 */	li r0, 0x28
/* 80126DC4  B0 1F 30 C6 */	sth r0, 0x30c6(r31)
/* 80126DC8  38 00 00 03 */	li r0, 3
/* 80126DCC  B0 1F 30 A8 */	sth r0, 0x30a8(r31)
/* 80126DD0  38 00 00 0F */	li r0, 0xf
/* 80126DD4  B0 1F 30 AA */	sth r0, 0x30aa(r31)
/* 80126DD8  38 00 10 00 */	li r0, 0x1000
/* 80126DDC  B0 1F 30 AE */	sth r0, 0x30ae(r31)
/* 80126DE0  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 80126DE4  D0 1F 34 24 */	stfs f0, 0x3424(r31)
/* 80126DE8  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 80126DEC  D0 1F 34 28 */	stfs f0, 0x3428(r31)
/* 80126DF0  38 1E 24 8C */	addi r0, r30, 0x248c
/* 80126DF4  90 1F 2F 50 */	stw r0, 0x2f50(r31)
/* 80126DF8  38 1E 24 74 */	addi r0, r30, 0x2474
/* 80126DFC  90 1F 2F 54 */	stw r0, 0x2f54(r31)
/* 80126E00  90 9F 22 04 */	stw r4, 0x2204(r31)
/* 80126E04  7F E3 FB 78 */	mr r3, r31
/* 80126E08  38 80 00 00 */	li r4, 0
/* 80126E0C  4B F8 3B D1 */	bl resetAtCollision__9daAlink_cFi
/* 80126E10  38 60 00 13 */	li r3, 0x13
/* 80126E14  B0 7F 30 B8 */	sth r3, 0x30b8(r31)
/* 80126E18  38 00 00 18 */	li r0, 0x18
/* 80126E1C  B0 1F 30 BA */	sth r0, 0x30ba(r31)
/* 80126E20  B0 7F 30 C0 */	sth r3, 0x30c0(r31)
/* 80126E24  B0 1F 30 C2 */	sth r0, 0x30c2(r31)
/* 80126E28  38 00 00 03 */	li r0, 3
/* 80126E2C  B0 1F 30 C4 */	sth r0, 0x30c4(r31)
/* 80126E30  38 00 00 04 */	li r0, 4
/* 80126E34  B0 1F 30 B4 */	sth r0, 0x30b4(r31)
/* 80126E38  38 00 00 1F */	li r0, 0x1f
/* 80126E3C  B0 1F 30 BC */	sth r0, 0x30bc(r31)
/* 80126E40  38 00 00 24 */	li r0, 0x24
/* 80126E44  B0 1F 30 BE */	sth r0, 0x30be(r31)
/* 80126E48  38 00 00 01 */	li r0, 1
/* 80126E4C  B0 1F 32 C4 */	sth r0, 0x32c4(r31)
/* 80126E50  38 00 00 02 */	li r0, 2
/* 80126E54  B0 1F 32 C6 */	sth r0, 0x32c6(r31)
/* 80126E58  B0 1F 30 B6 */	sth r0, 0x30b6(r31)
/* 80126E5C  38 00 00 32 */	li r0, 0x32
/* 80126E60  B0 1F 05 4E */	sth r0, 0x54e(r31)
/* 80126E64  38 7F 08 50 */	addi r3, r31, 0x850
/* 80126E68  38 00 00 03 */	li r0, 3
/* 80126E6C  7C 09 03 A6 */	mtctr r0
lbl_80126E70:
/* 80126E70  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80126E74  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80126E78  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80126E7C  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80126E80  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80126E84  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80126E88  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80126E8C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80126E90  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80126E94  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80126E98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80126E9C  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80126EA0  38 63 01 3C */	addi r3, r3, 0x13c
/* 80126EA4  42 00 FF CC */	bdnz lbl_80126E70
/* 80126EA8  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80126EAC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80126EB0  4B F5 DB C9 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 80126EB4  80 1F 0F B8 */	lwz r0, 0xfb8(r31)
/* 80126EB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80126EBC  90 1F 0F B8 */	stw r0, 0xfb8(r31)
/* 80126EC0  80 1F 0F D0 */	lwz r0, 0xfd0(r31)
/* 80126EC4  60 00 00 01 */	ori r0, r0, 1
/* 80126EC8  90 1F 0F D0 */	stw r0, 0xfd0(r31)
/* 80126ECC  80 1F 0F E4 */	lwz r0, 0xfe4(r31)
/* 80126ED0  60 00 00 01 */	ori r0, r0, 1
/* 80126ED4  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 80126ED8  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80126EDC  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 80126EE0  48 14 88 29 */	bl SetR__8cM3dGSphFf
/* 80126EE4  38 00 00 00 */	li r0, 0
/* 80126EE8  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 80126EEC  90 1F 06 58 */	stw r0, 0x658(r31)
/* 80126EF0  90 1F 06 54 */	stw r0, 0x654(r31)
/* 80126EF4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80126EF8  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 80126EFC  90 1F 06 80 */	stw r0, 0x680(r31)
/* 80126F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80126F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80126F08  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80126F0C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80126F10  7D 89 03 A6 */	mtctr r12
/* 80126F14  4E 80 04 21 */	bctrl 
/* 80126F18  88 03 00 09 */	lbz r0, 9(r3)
/* 80126F1C  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80126F20  98 1F 2F C7 */	stb r0, 0x2fc7(r31)
/* 80126F24  39 61 00 30 */	addi r11, r1, 0x30
/* 80126F28  48 23 B2 F5 */	bl _restgpr_26
/* 80126F2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80126F30  7C 08 03 A6 */	mtlr r0
/* 80126F34  38 21 00 30 */	addi r1, r1, 0x30
/* 80126F38  4E 80 00 20 */	blr 
