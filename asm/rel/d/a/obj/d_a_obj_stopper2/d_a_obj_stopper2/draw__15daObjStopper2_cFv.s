lbl_80CEFD40:
/* 80CEFD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFD44  7C 08 02 A6 */	mflr r0
/* 80CEFD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEFD50  7C 7F 1B 78 */	mr r31, r3
/* 80CEFD54  88 03 05 88 */	lbz r0, 0x588(r3)
/* 80CEFD58  28 00 00 00 */	cmplwi r0, 0
/* 80CEFD5C  40 82 00 0C */	bne lbl_80CEFD68
/* 80CEFD60  38 60 00 01 */	li r3, 1
/* 80CEFD64  48 00 00 40 */	b lbl_80CEFDA4
lbl_80CEFD68:
/* 80CEFD68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CEFD6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CEFD70  38 80 00 10 */	li r4, 0x10
/* 80CEFD74  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CEFD78  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CEFD7C  4B 4B 3A 48 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CEFD80  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CEFD84  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CEFD88  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CEFD8C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CEFD90  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CEFD94  4B 4B 50 0C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CEFD98  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CEFD9C  4B 31 DF 28 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CEFDA0  38 60 00 01 */	li r3, 1
lbl_80CEFDA4:
/* 80CEFDA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEFDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFDAC  7C 08 03 A6 */	mtlr r0
/* 80CEFDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFDB4  4E 80 00 20 */	blr 
