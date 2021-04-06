lbl_8097DEF4:
/* 8097DEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097DEF8  7C 08 02 A6 */	mflr r0
/* 8097DEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097DF00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097DF04  93 C1 00 08 */	stw r30, 8(r1)
/* 8097DF08  7C 7F 1B 78 */	mr r31, r3
/* 8097DF0C  88 03 0B 95 */	lbz r0, 0xb95(r3)
/* 8097DF10  28 00 00 00 */	cmplwi r0, 0
/* 8097DF14  41 82 00 0C */	beq lbl_8097DF20
/* 8097DF18  38 60 00 01 */	li r3, 1
/* 8097DF1C  48 00 00 CC */	b lbl_8097DFE8
lbl_8097DF20:
/* 8097DF20  4B 7D B1 DD */	bl drawNpc__10daNpcCd2_cFv
/* 8097DF24  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 8097DF28  2C 00 00 10 */	cmpwi r0, 0x10
/* 8097DF2C  40 80 00 1C */	bge lbl_8097DF48
/* 8097DF30  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 8097DF34  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 8097DF38  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 8097DF3C  7C 63 02 14 */	add r3, r3, r0
/* 8097DF40  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 8097DF44  48 00 00 18 */	b lbl_8097DF5C
lbl_8097DF48:
/* 8097DF48  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 8097DF4C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 8097DF50  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 8097DF54  7C 63 02 14 */	add r3, r3, r0
/* 8097DF58  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_8097DF5C:
/* 8097DF5C  7F E3 FB 78 */	mr r3, r31
/* 8097DF60  80 9F 0B 58 */	lwz r4, 0xb58(r31)
/* 8097DF64  80 BF 0A C8 */	lwz r5, 0xac8(r31)
/* 8097DF68  4B 7D B0 89 */	bl drawObj__10daNpcCd2_cFiP8J3DModelf
/* 8097DF6C  80 9F 0A CC */	lwz r4, 0xacc(r31)
/* 8097DF70  28 04 00 00 */	cmplwi r4, 0
/* 8097DF74  41 82 00 58 */	beq lbl_8097DFCC
/* 8097DF78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8097DF7C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8097DF80  80 84 00 04 */	lwz r4, 4(r4)
/* 8097DF84  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8097DF88  4B 82 6E 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8097DF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097DF90  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097DF94  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8097DF98  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8097DF9C  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 8097DFA0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8097DFA4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8097DFA8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8097DFAC  80 7F 0A CC */	lwz r3, 0xacc(r31)
/* 8097DFB0  4B 68 FD 15 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8097DFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097DFB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097DFBC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8097DFC0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8097DFC4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8097DFC8  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_8097DFCC:
/* 8097DFCC  7F E3 FB 78 */	mr r3, r31
/* 8097DFD0  3C 80 80 98 */	lis r4, lit_6103@ha /* 0x8097F5A8@ha */
/* 8097DFD4  C0 24 F5 A8 */	lfs f1, lit_6103@l(r4)  /* 0x8097F5A8@l */
/* 8097DFD8  4B 7D AF 95 */	bl drawShadow__10daNpcCd2_cFf
/* 8097DFDC  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 8097DFE0  4B 8D 3B 81 */	bl dbView__16dNpcLib_lookat_cFv
/* 8097DFE4  38 60 00 01 */	li r3, 1
lbl_8097DFE8:
/* 8097DFE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097DFEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097DFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097DFF4  7C 08 03 A6 */	mtlr r0
/* 8097DFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8097DFFC  4E 80 00 20 */	blr 
