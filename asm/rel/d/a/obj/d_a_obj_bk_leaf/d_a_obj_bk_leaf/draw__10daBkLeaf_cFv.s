lbl_80BB65C4:
/* 80BB65C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB65C8  7C 08 02 A6 */	mflr r0
/* 80BB65CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB65D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB65D4  7C 7F 1B 78 */	mr r31, r3
/* 80BB65D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB65DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB65E0  38 80 00 00 */	li r4, 0
/* 80BB65E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BB65E8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BB65EC  4B 5E D1 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BB65F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB65F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB65F8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BB65FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB6600  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BB6604  4B 5E E7 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB6608  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BB660C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB6610  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BB6614  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BB6618  4B 45 73 B5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BB661C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BB6620  4B 45 76 A5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB6624  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BB6628  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB662C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BB6630  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB6634  38 00 00 00 */	li r0, 0
/* 80BB6638  90 03 00 54 */	stw r0, 0x54(r3)
/* 80BB663C  38 60 00 01 */	li r3, 1
/* 80BB6640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6648  7C 08 03 A6 */	mtlr r0
/* 80BB664C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6650  4E 80 00 20 */	blr 
