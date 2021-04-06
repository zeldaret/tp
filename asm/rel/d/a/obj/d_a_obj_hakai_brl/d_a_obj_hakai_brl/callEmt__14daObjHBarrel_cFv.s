lbl_80C17090:
/* 80C17090  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C17094  7C 08 02 A6 */	mflr r0
/* 80C17098  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C1709C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C170A0  4B 74 B1 35 */	bl _savegpr_27
/* 80C170A4  7C 7E 1B 78 */	mr r30, r3
/* 80C170A8  3C 60 80 C1 */	lis r3, s_CcDCyl__14daObjHBarrel_c@ha /* 0x80C172FC@ha */
/* 80C170AC  3B E3 72 FC */	addi r31, r3, s_CcDCyl__14daObjHBarrel_c@l /* 0x80C172FC@l */
/* 80C170B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C170B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C170B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C170BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C170C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C170C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C170C8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C170CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C170D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C170D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C170D8  3C 60 80 C1 */	lis r3, d_a_obj_hakai_brl__stringBase0@ha /* 0x80C1735C@ha */
/* 80C170DC  38 83 73 5C */	addi r4, r3, d_a_obj_hakai_brl__stringBase0@l /* 0x80C1735C@l */
/* 80C170E0  38 64 00 08 */	addi r3, r4, 8
/* 80C170E4  38 84 00 0F */	addi r4, r4, 0xf
/* 80C170E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C170EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C170F0  3C A5 00 02 */	addis r5, r5, 2
/* 80C170F4  38 C0 00 80 */	li r6, 0x80
/* 80C170F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C170FC  4B 42 52 81 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C17100  7C 7D 1B 78 */	mr r29, r3
/* 80C17104  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C17108  7C 05 07 74 */	extsb r5, r0
/* 80C1710C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C17110  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C17114  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C17118  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 80C1711C  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 80C17120  90 01 00 08 */	stw r0, 8(r1)
/* 80C17124  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80C17128  38 00 00 00 */	li r0, 0
/* 80C1712C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C17130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17134  38 01 00 20 */	addi r0, r1, 0x20
/* 80C17138  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C1713C  38 80 00 00 */	li r4, 0
/* 80C17140  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082AF@ha */
/* 80C17144  38 A5 82 AF */	addi r5, r5, 0x82AF /* 0x000082AF@l */
/* 80C17148  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C1714C  38 E0 00 00 */	li r7, 0
/* 80C17150  39 00 00 00 */	li r8, 0
/* 80C17154  39 20 00 00 */	li r9, 0
/* 80C17158  39 40 00 FF */	li r10, 0xff
/* 80C1715C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C17160  4B 43 59 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C17164  7F A4 EB 78 */	mr r4, r29
/* 80C17168  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C1716C  38 C0 00 03 */	li r6, 3
/* 80C17170  38 E0 00 00 */	li r7, 0
/* 80C17174  39 00 00 00 */	li r8, 0
/* 80C17178  39 20 00 00 */	li r9, 0
/* 80C1717C  4B 43 3A 85 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80C17180  3B 60 00 00 */	li r27, 0
/* 80C17184  3B C0 00 00 */	li r30, 0
/* 80C17188  3B BF 00 54 */	addi r29, r31, 0x54
lbl_80C1718C:
/* 80C1718C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C17190  38 80 00 00 */	li r4, 0
/* 80C17194  90 81 00 08 */	stw r4, 8(r1)
/* 80C17198  38 00 FF FF */	li r0, -1
/* 80C1719C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C171A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C171A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C171A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C171AC  38 80 00 00 */	li r4, 0
/* 80C171B0  7C BD F2 2E */	lhzx r5, r29, r30
/* 80C171B4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80C171B8  38 E0 00 00 */	li r7, 0
/* 80C171BC  39 00 00 00 */	li r8, 0
/* 80C171C0  39 21 00 20 */	addi r9, r1, 0x20
/* 80C171C4  39 40 00 FF */	li r10, 0xff
/* 80C171C8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C171CC  4B 43 58 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C171D0  3B 7B 00 01 */	addi r27, r27, 1
/* 80C171D4  2C 1B 00 03 */	cmpwi r27, 3
/* 80C171D8  3B DE 00 02 */	addi r30, r30, 2
/* 80C171DC  41 80 FF B0 */	blt lbl_80C1718C
/* 80C171E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C171E4  4B 74 B0 3D */	bl _restgpr_27
/* 80C171E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C171EC  7C 08 03 A6 */	mtlr r0
/* 80C171F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80C171F4  4E 80 00 20 */	blr 
