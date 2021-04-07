lbl_80C25BB8:
/* 80C25BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25BBC  7C 08 02 A6 */	mflr r0
/* 80C25BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C25BC8  7C 7F 1B 78 */	mr r31, r3
/* 80C25BCC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C25BD0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C25BD4  38 80 00 00 */	li r4, 0
/* 80C25BD8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C25BDC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C25BE0  4B 57 DB E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C25BE4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C25BE8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C25BEC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C25BF0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C25BF4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C25BF8  4B 57 F1 A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C25BFC  80 7F 09 04 */	lwz r3, 0x904(r31)
/* 80C25C00  28 03 00 00 */	cmplwi r3, 0
/* 80C25C04  41 82 00 14 */	beq lbl_80C25C18
/* 80C25C08  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C25C0C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C25C10  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C25C14  4B 3E 7D B9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C25C18:
/* 80C25C18  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C25C1C  4B 3E 80 A9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C25C20  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C25C24  80 63 00 04 */	lwz r3, 4(r3)
/* 80C25C28  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C25C2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C25C30  38 00 00 00 */	li r0, 0
/* 80C25C34  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C25C38  38 60 00 01 */	li r3, 1
/* 80C25C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25C44  7C 08 03 A6 */	mtlr r0
/* 80C25C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25C4C  4E 80 00 20 */	blr 
