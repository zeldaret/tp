lbl_80BD673C:
/* 80BD673C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD6740  7C 08 02 A6 */	mflr r0
/* 80BD6744  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD6748  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD674C  4B 78 BA 89 */	bl _savegpr_27
/* 80BD6750  7C 7B 1B 78 */	mr r27, r3
/* 80BD6754  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD6758  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD675C  38 80 00 10 */	li r4, 0x10
/* 80BD6760  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80BD6764  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80BD6768  4B 5C D0 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD676C  3B 80 00 00 */	li r28, 0
/* 80BD6770  3B E0 00 00 */	li r31, 0
/* 80BD6774  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD6778  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80BD677C:
/* 80BD677C  7F C3 F3 78 */	mr r3, r30
/* 80BD6780  3B BF 05 70 */	addi r29, r31, 0x570
/* 80BD6784  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80BD6788  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD678C  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80BD6790  4B 5C E6 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD6794  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80BD6798  4B 43 75 2D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD679C  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD67A0  2C 1C 00 02 */	cmpwi r28, 2
/* 80BD67A4  3B FF 00 04 */	addi r31, r31, 4
/* 80BD67A8  41 80 FF D4 */	blt lbl_80BD677C
/* 80BD67AC  38 60 00 01 */	li r3, 1
/* 80BD67B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD67B4  4B 78 BA 6D */	bl _restgpr_27
/* 80BD67B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD67BC  7C 08 03 A6 */	mtlr r0
/* 80BD67C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD67C4  4E 80 00 20 */	blr 
