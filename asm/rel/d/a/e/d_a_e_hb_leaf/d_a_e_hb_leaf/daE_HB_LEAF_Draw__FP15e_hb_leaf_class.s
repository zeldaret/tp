lbl_806DFF58:
/* 806DFF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFF5C  7C 08 02 A6 */	mflr r0
/* 806DFF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFF64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DFF68  7C 7F 1B 78 */	mr r31, r3
/* 806DFF6C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806DFF70  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806DFF74  38 80 00 00 */	li r4, 0
/* 806DFF78  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806DFF7C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806DFF80  4B AC 38 45 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806DFF84  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DFF88  80 83 00 04 */	lwz r4, 4(r3)
/* 806DFF8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806DFF90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806DFF94  80 84 00 04 */	lwz r4, 4(r4)
/* 806DFF98  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806DFF9C  4B AC 4E 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806DFFA0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DFFA4  4B 93 06 DD */	bl entryDL__14mDoExt_McaMorfFv
/* 806DFFA8  38 60 00 01 */	li r3, 1
/* 806DFFAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DFFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFFB4  7C 08 03 A6 */	mtlr r0
/* 806DFFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFFBC  4E 80 00 20 */	blr 
