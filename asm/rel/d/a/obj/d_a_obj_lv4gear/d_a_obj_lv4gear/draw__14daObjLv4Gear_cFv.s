lbl_80C683E0:
/* 80C683E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C683E4  7C 08 02 A6 */	mflr r0
/* 80C683E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C683EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C683F0  7C 7F 1B 78 */	mr r31, r3
/* 80C683F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C683F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C683FC  38 80 00 00 */	li r4, 0
/* 80C68400  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C68404  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C68408  4B 53 B3 BD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6840C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C68410  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C68414  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C68418  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6841C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C68420  4B 53 C9 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C68424  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C68428  4B 3A 58 9D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6842C  38 60 00 01 */	li r3, 1
/* 80C68430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68438  7C 08 03 A6 */	mtlr r0
/* 80C6843C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68440  4E 80 00 20 */	blr 
