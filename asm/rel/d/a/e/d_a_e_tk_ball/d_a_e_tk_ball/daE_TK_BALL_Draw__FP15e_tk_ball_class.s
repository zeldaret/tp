lbl_807BBFF8:
/* 807BBFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBFFC  7C 08 02 A6 */	mflr r0
/* 807BC000  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BC004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BC008  7C 7F 1B 78 */	mr r31, r3
/* 807BC00C  88 03 08 C8 */	lbz r0, 0x8c8(r3)
/* 807BC010  28 00 00 00 */	cmplwi r0, 0
/* 807BC014  41 82 00 0C */	beq lbl_807BC020
/* 807BC018  38 60 00 01 */	li r3, 1
/* 807BC01C  48 00 00 40 */	b lbl_807BC05C
lbl_807BC020:
/* 807BC020  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BC024  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BC028  38 80 00 00 */	li r4, 0
/* 807BC02C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807BC030  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807BC034  4B 9E 77 91 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807BC038  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BC03C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BC040  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807BC044  80 84 00 04 */	lwz r4, 4(r4)
/* 807BC048  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807BC04C  4B 9E 8D 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807BC050  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BC054  4B 85 1C 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 807BC058  38 60 00 01 */	li r3, 1
lbl_807BC05C:
/* 807BC05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BC060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BC064  7C 08 03 A6 */	mtlr r0
/* 807BC068  38 21 00 10 */	addi r1, r1, 0x10
/* 807BC06C  4E 80 00 20 */	blr 
