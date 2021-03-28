lbl_80997BB8:
/* 80997BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80997BBC  7C 08 02 A6 */	mflr r0
/* 80997BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80997BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80997BC8  4B 9C A6 14 */	b _savegpr_29
/* 80997BCC  7C 7D 1B 78 */	mr r29, r3
/* 80997BD0  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80997BD4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80997BD8  83 DF 00 04 */	lwz r30, 4(r31)
/* 80997BDC  C0 3D 0F 8C */	lfs f1, 0xf8c(r29)
/* 80997BE0  38 7D 0F 7C */	addi r3, r29, 0xf7c
/* 80997BE4  38 9E 00 58 */	addi r4, r30, 0x58
/* 80997BE8  4B 67 59 30 */	b entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
/* 80997BEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80997BF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80997BF4  38 80 00 00 */	li r4, 0
/* 80997BF8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80997BFC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80997C00  4B 80 BB C4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80997C04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80997C08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80997C0C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80997C10  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80997C14  4B 80 D1 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80997C18  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80997C1C  4B 67 95 A4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80997C20  38 7E 00 58 */	addi r3, r30, 0x58
/* 80997C24  80 9D 0F 90 */	lwz r4, 0xf90(r29)
/* 80997C28  4B 99 7A 24 */	b removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
/* 80997C2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80997C30  4B 9C A5 F8 */	b _restgpr_29
/* 80997C34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80997C38  7C 08 03 A6 */	mtlr r0
/* 80997C3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80997C40  4E 80 00 20 */	blr 
