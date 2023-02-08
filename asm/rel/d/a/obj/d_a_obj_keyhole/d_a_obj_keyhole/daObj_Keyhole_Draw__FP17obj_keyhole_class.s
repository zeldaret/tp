lbl_80C4134C:
/* 80C4134C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C41350  7C 08 02 A6 */	mflr r0
/* 80C41354  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C41358  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4135C  4B 72 0E 71 */	bl _savegpr_25
/* 80C41360  7C 7F 1B 78 */	mr r31, r3
/* 80C41364  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C41368  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4136C  38 80 00 10 */	li r4, 0x10
/* 80C41370  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C41374  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C41378  4B 56 24 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C4137C  88 1F 2C A7 */	lbz r0, 0x2ca7(r31)
/* 80C41380  7C 00 07 75 */	extsb. r0, r0
/* 80C41384  40 82 00 54 */	bne lbl_80C413D8
/* 80C41388  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80C4138C  28 04 00 00 */	cmplwi r4, 0
/* 80C41390  41 82 00 24 */	beq lbl_80C413B4
/* 80C41394  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C41398  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C4139C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C413A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C413A4  4B 56 39 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C413A8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C413AC  4B 3C C9 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C413B0  48 00 00 28 */	b lbl_80C413D8
lbl_80C413B4:
/* 80C413B4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C413B8  80 83 00 04 */	lwz r4, 4(r3)
/* 80C413BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C413C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C413C4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C413C8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C413CC  4B 56 39 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C413D0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C413D4  4B 3C F2 AD */	bl entryDL__14mDoExt_McaMorfFv
lbl_80C413D8:
/* 80C413D8  3B 60 00 00 */	li r27, 0
/* 80C413DC  3B C0 00 00 */	li r30, 0
/* 80C413E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C413E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C413E8  3B 83 0F 38 */	addi r28, r3, 0xf38
lbl_80C413EC:
/* 80C413EC  3B 5E 06 24 */	addi r26, r30, 0x624
/* 80C413F0  7F 5F D2 14 */	add r26, r31, r26
/* 80C413F4  3B 20 00 00 */	li r25, 0
/* 80C413F8  3B A0 00 00 */	li r29, 0
/* 80C413FC  48 00 00 20 */	b lbl_80C4141C
lbl_80C41400:
/* 80C41400  7F 83 E3 78 */	mr r3, r28
/* 80C41404  7C 9A E8 2E */	lwzx r4, r26, r29
/* 80C41408  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C4140C  7C 05 07 74 */	extsb r5, r0
/* 80C41410  4B 3E B7 59 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80C41414  3B 39 00 01 */	addi r25, r25, 1
/* 80C41418  3B BD 00 04 */	addi r29, r29, 4
lbl_80C4141C:
/* 80C4141C  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80C41420  7C 19 00 00 */	cmpw r25, r0
/* 80C41424  41 80 FF DC */	blt lbl_80C41400
/* 80C41428  3B 7B 00 01 */	addi r27, r27, 1
/* 80C4142C  2C 1B 00 06 */	cmpwi r27, 6
/* 80C41430  3B DE 06 20 */	addi r30, r30, 0x620
/* 80C41434  41 80 FF B8 */	blt lbl_80C413EC
/* 80C41438  38 60 00 01 */	li r3, 1
/* 80C4143C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C41440  4B 72 0D D9 */	bl _restgpr_25
/* 80C41444  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C41448  7C 08 03 A6 */	mtlr r0
/* 80C4144C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C41450  4E 80 00 20 */	blr 
