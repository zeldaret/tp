lbl_80C44010:
/* 80C44010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44014  7C 08 02 A6 */	mflr r0
/* 80C44018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4401C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44020  93 C1 00 08 */	stw r30, 8(r1)
/* 80C44024  7C 7E 1B 78 */	mr r30, r3
/* 80C44028  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80C4402C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C44030  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C44034  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C44038  38 80 00 00 */	li r4, 0
/* 80C4403C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C44040  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C44044  4B 55 F7 80 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C44048  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C4404C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C44050  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C44054  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C44058  4B 56 0D 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C4405C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C44060  4B 3C C6 20 */	b entryDL__14mDoExt_McaMorfFv
/* 80C44064  38 60 00 01 */	li r3, 1
/* 80C44068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4406C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C44070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44074  7C 08 03 A6 */	mtlr r0
/* 80C44078  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4407C  4E 80 00 20 */	blr 
