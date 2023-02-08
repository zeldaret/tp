lbl_80D264E8:
/* 80D264E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D264EC  7C 08 02 A6 */	mflr r0
/* 80D264F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D264F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D264F8  4B 63 BC E5 */	bl _savegpr_29
/* 80D264FC  7C 7D 1B 78 */	mr r29, r3
/* 80D26500  3C 60 80 D2 */	lis r3, l_midna_offset@ha /* 0x80D26B5C@ha */
/* 80D26504  3B C3 6B 5C */	addi r30, r3, l_midna_offset@l /* 0x80D26B5C@l */
/* 80D26508  88 1D 09 62 */	lbz r0, 0x962(r29)
/* 80D2650C  28 00 00 00 */	cmplwi r0, 0
/* 80D26510  41 82 00 0C */	beq lbl_80D2651C
/* 80D26514  38 60 00 01 */	li r3, 1
/* 80D26518  48 00 01 CC */	b lbl_80D266E4
lbl_80D2651C:
/* 80D2651C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D26520  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D26524  38 80 00 00 */	li r4, 0
/* 80D26528  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D2652C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80D26530  4B 47 D2 95 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D26534  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D26538  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D2653C  80 9D 05 A8 */	lwz r4, 0x5a8(r29)
/* 80D26540  80 84 00 04 */	lwz r4, 4(r4)
/* 80D26544  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80D26548  4B 47 E8 59 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2654C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D26550  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D26554  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D26558  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D2655C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D26560  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D26564  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D26568  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2656C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D26570  80 83 00 04 */	lwz r4, 4(r3)
/* 80D26574  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80D26578  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D2657C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D26580  4B 2E 71 59 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D26584  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D26588  80 83 00 04 */	lwz r4, 4(r3)
/* 80D2658C  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80D26590  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D26594  38 84 00 58 */	addi r4, r4, 0x58
/* 80D26598  4B 2E 72 11 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D2659C  88 1D 05 CB */	lbz r0, 0x5cb(r29)
/* 80D265A0  28 00 00 00 */	cmplwi r0, 0
/* 80D265A4  41 82 00 18 */	beq lbl_80D265BC
/* 80D265A8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D265AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80D265B0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80D265B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D265B8  4B 2E 74 15 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80D265BC:
/* 80D265BC  88 1D 09 60 */	lbz r0, 0x960(r29)
/* 80D265C0  28 00 00 00 */	cmplwi r0, 0
/* 80D265C4  40 82 00 10 */	bne lbl_80D265D4
/* 80D265C8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D265CC  4B 2E 76 F9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D265D0  48 00 00 18 */	b lbl_80D265E8
lbl_80D265D4:
/* 80D265D4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D265D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80D265DC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D265E0  7D 89 03 A6 */	mtctr r12
/* 80D265E4  4E 80 04 21 */	bctrl 
lbl_80D265E8:
/* 80D265E8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D265EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80D265F0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D265F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D265F8  38 00 00 00 */	li r0, 0
/* 80D265FC  90 03 00 54 */	stw r0, 0x54(r3)
/* 80D26600  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D26604  80 63 00 04 */	lwz r3, 4(r3)
/* 80D26608  4B 2E 77 E9 */	bl mDoExt_btkAnmRemove__FP12J3DModelData
/* 80D2660C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D26610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D26614  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D26618  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2661C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D26620  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D26624  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D26628  D0 1D 04 44 */	stfs f0, 0x444(r29)
/* 80D2662C  C0 1D 09 6C */	lfs f0, 0x96c(r29)
/* 80D26630  D0 1D 04 48 */	stfs f0, 0x448(r29)
/* 80D26634  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D26638  D0 1D 04 4C */	stfs f0, 0x44c(r29)
/* 80D2663C  C0 1D 09 78 */	lfs f0, 0x978(r29)
/* 80D26640  D0 1D 04 50 */	stfs f0, 0x450(r29)
/* 80D26644  80 7D 09 74 */	lwz r3, 0x974(r29)
/* 80D26648  38 80 00 00 */	li r4, 0
/* 80D2664C  80 BD 05 A8 */	lwz r5, 0x5a8(r29)
/* 80D26650  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80D26654  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D26658  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80D2665C  C0 7D 09 6C */	lfs f3, 0x96c(r29)
/* 80D26660  C0 9D 06 64 */	lfs f4, 0x664(r29)
/* 80D26664  38 FD 06 BC */	addi r7, r29, 0x6bc
/* 80D26668  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80D2666C  39 20 00 00 */	li r9, 0
/* 80D26670  C0 BE 00 20 */	lfs f5, 0x20(r30)
/* 80D26674  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80D26678  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80D2667C  4B 30 82 95 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80D26680  90 7D 09 74 */	stw r3, 0x974(r29)
/* 80D26684  88 1D 09 5E */	lbz r0, 0x95e(r29)
/* 80D26688  28 00 00 00 */	cmplwi r0, 0
/* 80D2668C  41 82 00 54 */	beq lbl_80D266E0
/* 80D26690  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D26694  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D26698  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 80D2669C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D266A0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80D266A4  4B 47 E6 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D266A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80D266AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80D266B0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80D266B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D266B8  38 84 00 58 */	addi r4, r4, 0x58
/* 80D266BC  4B 2E 70 1D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D266C0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80D266C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D266C8  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80D266CC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D266D0  38 84 00 58 */	addi r4, r4, 0x58
/* 80D266D4  4B 2E 70 D5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D266D8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80D266DC  4B 2E 75 E9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D266E0:
/* 80D266E0  38 60 00 01 */	li r3, 1
lbl_80D266E4:
/* 80D266E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D266E8  4B 63 BB 41 */	bl _restgpr_29
/* 80D266EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D266F0  7C 08 03 A6 */	mtlr r0
/* 80D266F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D266F8  4E 80 00 20 */	blr 
