lbl_807BA660:
/* 807BA660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA664  7C 08 02 A6 */	mflr r0
/* 807BA668  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA670  93 C1 00 08 */	stw r30, 8(r1)
/* 807BA674  7C 7E 1B 78 */	mr r30, r3
/* 807BA678  80 63 05 B8 */	lwz r3, 0x5b8(r3)
/* 807BA67C  83 E3 00 04 */	lwz r31, 4(r3)
/* 807BA680  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BA684  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BA688  38 80 00 00 */	li r4, 0
/* 807BA68C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807BA690  38 DE 01 0C */	addi r6, r30, 0x10c
/* 807BA694  4B 9E 91 31 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807BA698  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BA69C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BA6A0  80 9F 00 04 */	lwz r4, 4(r31)
/* 807BA6A4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 807BA6A8  4B 9E A6 F9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807BA6AC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BA6B0  4B 85 6B 11 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807BA6B4  38 60 00 01 */	li r3, 1
/* 807BA6B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA6BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807BA6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA6C4  7C 08 03 A6 */	mtlr r0
/* 807BA6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA6CC  4E 80 00 20 */	blr 
