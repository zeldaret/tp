lbl_80D137B0:
/* 80D137B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D137B4  7C 08 02 A6 */	mflr r0
/* 80D137B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D137BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D137C0  4B 64 EA 14 */	b _savegpr_27
/* 80D137C4  7C 7B 1B 78 */	mr r27, r3
/* 80D137C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D137CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D137D0  38 80 00 10 */	li r4, 0x10
/* 80D137D4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80D137D8  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80D137DC  4B 48 FF E8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D137E0  3B DB 05 8C */	addi r30, r27, 0x58c
/* 80D137E4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D137E8  7C 00 07 74 */	extsb r0, r0
/* 80D137EC  7C 1D 03 78 */	mr r29, r0
/* 80D137F0  3B 80 00 00 */	li r28, 0
/* 80D137F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D137F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D137FC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D13800  48 00 00 48 */	b lbl_80D13848
lbl_80D13804:
/* 80D13804  88 7E 00 34 */	lbz r3, 0x34(r30)
/* 80D13808  7C 60 07 75 */	extsb. r0, r3
/* 80D1380C  41 82 00 34 */	beq lbl_80D13840
/* 80D13810  7C 60 07 74 */	extsb r0, r3
/* 80D13814  2C 00 00 01 */	cmpwi r0, 1
/* 80D13818  40 82 00 18 */	bne lbl_80D13830
/* 80D1381C  7F E3 FB 78 */	mr r3, r31
/* 80D13820  80 9E 00 00 */	lwz r4, 0(r30)
/* 80D13824  7F A5 EB 78 */	mr r5, r29
/* 80D13828  4B 31 93 40 */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80D1382C  48 00 00 14 */	b lbl_80D13840
lbl_80D13830:
/* 80D13830  7F E3 FB 78 */	mr r3, r31
/* 80D13834  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D13838  7F A5 EB 78 */	mr r5, r29
/* 80D1383C  4B 31 93 2C */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80D13840:
/* 80D13840  3B 9C 00 01 */	addi r28, r28, 1
/* 80D13844  3B DE 00 78 */	addi r30, r30, 0x78
lbl_80D13848:
/* 80D13848  80 1B 63 4C */	lwz r0, 0x634c(r27)
/* 80D1384C  7C 1C 00 00 */	cmpw r28, r0
/* 80D13850  41 80 FF B4 */	blt lbl_80D13804
/* 80D13854  38 60 00 01 */	li r3, 1
/* 80D13858  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1385C  4B 64 E9 C4 */	b _restgpr_27
/* 80D13860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D13864  7C 08 03 A6 */	mtlr r0
/* 80D13868  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1386C  4E 80 00 20 */	blr 
