lbl_800CC298:
/* 800CC298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CC29C  7C 08 02 A6 */	mflr r0
/* 800CC2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CC2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CC2A8  7C 65 1B 78 */	mr r5, r3
/* 800CC2AC  7C 9F 23 78 */	mr r31, r4
/* 800CC2B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800CC2B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800CC2B8  80 84 00 04 */	lwz r4, 4(r4)
/* 800CC2BC  38 A5 01 0C */	addi r5, r5, 0x10c
/* 800CC2C0  48 0D 8A E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 800CC2C4  7F E3 FB 78 */	mr r3, r31
/* 800CC2C8  4B F4 1A 9D */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 800CC2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CC2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CC2D4  7C 08 03 A6 */	mtlr r0
/* 800CC2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800CC2DC  4E 80 00 20 */	blr 
