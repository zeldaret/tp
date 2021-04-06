lbl_8057F104:
/* 8057F104  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8057F108  7C 08 02 A6 */	mflr r0
/* 8057F10C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057F110  39 61 00 60 */	addi r11, r1, 0x60
/* 8057F114  4B DE 30 B9 */	bl _savegpr_25
/* 8057F118  7C 7E 1B 78 */	mr r30, r3
/* 8057F11C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8057F120  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057F124  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8057F128  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8057F12C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8057F130  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8057F134  3C 60 80 58 */	lis r3, lit_4697@ha /* 0x8057F660@ha */
/* 8057F138  C0 03 F6 60 */	lfs f0, lit_4697@l(r3)  /* 0x8057F660@l */
/* 8057F13C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057F140  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057F144  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8057F148  3C 60 80 58 */	lis r3, d_a_obj_gpTaru__stringBase0@ha /* 0x8057F664@ha */
/* 8057F14C  38 83 F6 64 */	addi r4, r3, d_a_obj_gpTaru__stringBase0@l /* 0x8057F664@l */
/* 8057F150  38 64 00 09 */	addi r3, r4, 9
/* 8057F154  38 84 00 10 */	addi r4, r4, 0x10
/* 8057F158  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057F15C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057F160  3C A5 00 02 */	addis r5, r5, 2
/* 8057F164  38 C0 00 80 */	li r6, 0x80
/* 8057F168  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8057F16C  4B AB D2 11 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8057F170  7C 7B 1B 78 */	mr r27, r3
/* 8057F174  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8057F178  7C 05 07 74 */	extsb r5, r0
/* 8057F17C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057F180  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057F184  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057F188  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 8057F18C  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 8057F190  90 01 00 08 */	stw r0, 8(r1)
/* 8057F194  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8057F198  38 00 00 00 */	li r0, 0
/* 8057F19C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8057F1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F1A4  38 01 00 20 */	addi r0, r1, 0x20
/* 8057F1A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057F1AC  38 80 00 00 */	li r4, 0
/* 8057F1B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008744@ha */
/* 8057F1B4  38 A5 87 44 */	addi r5, r5, 0x8744 /* 0x00008744@l */
/* 8057F1B8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8057F1BC  38 E0 00 00 */	li r7, 0
/* 8057F1C0  39 00 00 00 */	li r8, 0
/* 8057F1C4  39 20 00 00 */	li r9, 0
/* 8057F1C8  39 40 00 FF */	li r10, 0xff
/* 8057F1CC  3D 60 80 58 */	lis r11, lit_3660@ha /* 0x8057F580@ha */
/* 8057F1D0  C0 2B F5 80 */	lfs f1, lit_3660@l(r11)  /* 0x8057F580@l */
/* 8057F1D4  4B AC D8 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057F1D8  7F 64 DB 78 */	mr r4, r27
/* 8057F1DC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8057F1E0  38 C0 00 03 */	li r6, 3
/* 8057F1E4  38 E0 00 00 */	li r7, 0
/* 8057F1E8  39 00 00 00 */	li r8, 0
/* 8057F1EC  39 20 00 00 */	li r9, 0
/* 8057F1F0  4B AC BA 11 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 8057F1F4  3B 20 00 00 */	li r25, 0
/* 8057F1F8  3B A0 00 00 */	li r29, 0
/* 8057F1FC  3C 60 80 58 */	lis r3, l_HIO@ha /* 0x8057F8E4@ha */
/* 8057F200  38 63 F8 E4 */	addi r3, r3, l_HIO@l /* 0x8057F8E4@l */
/* 8057F204  3B 43 00 30 */	addi r26, r3, 0x30
/* 8057F208  3C 60 80 58 */	lis r3, effName@ha /* 0x8057F794@ha */
/* 8057F20C  3B 63 F7 94 */	addi r27, r3, effName@l /* 0x8057F794@l */
/* 8057F210  3C 60 80 58 */	lis r3, lit_3660@ha /* 0x8057F580@ha */
/* 8057F214  3B 83 F5 80 */	addi r28, r3, lit_3660@l /* 0x8057F580@l */
lbl_8057F218:
/* 8057F218  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057F21C  38 80 00 00 */	li r4, 0
/* 8057F220  90 81 00 08 */	stw r4, 8(r1)
/* 8057F224  38 00 FF FF */	li r0, -1
/* 8057F228  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057F22C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057F230  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057F234  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057F238  38 80 00 00 */	li r4, 0
/* 8057F23C  7C BB EA 2E */	lhzx r5, r27, r29
/* 8057F240  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8057F244  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8057F248  39 00 00 00 */	li r8, 0
/* 8057F24C  7F 49 D3 78 */	mr r9, r26
/* 8057F250  39 40 00 FF */	li r10, 0xff
/* 8057F254  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8057F258  4B AC D8 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057F25C  3B 39 00 01 */	addi r25, r25, 1
/* 8057F260  2C 19 00 08 */	cmpwi r25, 8
/* 8057F264  3B BD 00 02 */	addi r29, r29, 2
/* 8057F268  41 80 FF B0 */	blt lbl_8057F218
/* 8057F26C  39 61 00 60 */	addi r11, r1, 0x60
/* 8057F270  4B DE 2F A9 */	bl _restgpr_25
/* 8057F274  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8057F278  7C 08 03 A6 */	mtlr r0
/* 8057F27C  38 21 00 60 */	addi r1, r1, 0x60
/* 8057F280  4E 80 00 20 */	blr 
