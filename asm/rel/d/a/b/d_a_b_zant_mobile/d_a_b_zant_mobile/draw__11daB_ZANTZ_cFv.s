lbl_806507B0:
/* 806507B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806507B4  7C 08 02 A6 */	mflr r0
/* 806507B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806507BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806507C0  93 C1 00 08 */	stw r30, 8(r1)
/* 806507C4  7C 7E 1B 78 */	mr r30, r3
/* 806507C8  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 806507CC  83 E3 00 04 */	lwz r31, 4(r3)
/* 806507D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806507D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806507D8  38 80 00 00 */	li r4, 0
/* 806507DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806507E0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806507E4  4B B5 2F E0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806507E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806507EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806507F0  80 9F 00 04 */	lwz r4, 4(r31)
/* 806507F4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806507F8  4B B5 45 A8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806507FC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80650800  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80650804  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80650808  38 84 00 58 */	addi r4, r4, 0x58
/* 8065080C  4B 9B CF 9C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80650810  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650814  4B 9C 09 AC */	b entryDL__16mDoExt_McaMorfSOFv
/* 80650818  38 60 00 01 */	li r3, 1
/* 8065081C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80650820  83 C1 00 08 */	lwz r30, 8(r1)
/* 80650824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80650828  7C 08 03 A6 */	mtlr r0
/* 8065082C  38 21 00 10 */	addi r1, r1, 0x10
/* 80650830  4E 80 00 20 */	blr 
