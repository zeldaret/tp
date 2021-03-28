lbl_80466538:
/* 80466538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046653C  7C 08 02 A6 */	mflr r0
/* 80466540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80466544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80466548  93 C1 00 08 */	stw r30, 8(r1)
/* 8046654C  7C 7E 1B 78 */	mr r30, r3
/* 80466550  7C 9F 23 78 */	mr r31, r4
/* 80466554  80 03 00 00 */	lwz r0, 0(r3)
/* 80466558  28 00 00 00 */	cmplwi r0, 0
/* 8046655C  41 82 00 3C */	beq lbl_80466598
/* 80466560  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80466564  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80466568  38 80 00 10 */	li r4, 0x10
/* 8046656C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80466570  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80466574  4B D3 D2 50 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80466578  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046657C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80466580  80 9E 00 00 */	lwz r4, 0(r30)
/* 80466584  80 84 00 04 */	lwz r4, 4(r4)
/* 80466588  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8046658C  4B D3 E8 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80466590  80 7E 00 00 */	lwz r3, 0(r30)
/* 80466594  4B BA 77 30 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80466598:
/* 80466598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046659C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804665A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804665A4  7C 08 03 A6 */	mtlr r0
/* 804665A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804665AC  4E 80 00 20 */	blr 
