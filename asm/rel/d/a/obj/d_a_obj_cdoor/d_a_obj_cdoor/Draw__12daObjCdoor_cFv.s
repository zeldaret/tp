lbl_80BC7C04:
/* 80BC7C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7C08  7C 08 02 A6 */	mflr r0
/* 80BC7C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC7C14  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC7C18  7C 7E 1B 78 */	mr r30, r3
/* 80BC7C1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BC7C20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BC7C24  38 80 00 10 */	li r4, 0x10
/* 80BC7C28  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC7C2C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BC7C30  4B 5D BB 94 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BC7C34  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BC7C38  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BC7C3C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BC7C40  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC7C44  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BC7C48  4B 5D D1 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC7C4C  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BC7C50  28 00 00 01 */	cmplwi r0, 1
/* 80BC7C54  40 82 00 34 */	bne lbl_80BC7C88
/* 80BC7C58  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC7C5C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC7C60  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80BC7C64  28 00 00 00 */	cmplwi r0, 0
/* 80BC7C68  41 82 00 14 */	beq lbl_80BC7C7C
/* 80BC7C6C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80BC7C70  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80BC7C74  4B 44 5D 58 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BC7C78  48 00 00 10 */	b lbl_80BC7C88
lbl_80BC7C7C:
/* 80BC7C7C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80BC7C80  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 80BC7C84  4B 44 5D 48 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80BC7C88:
/* 80BC7C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC7C8C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BC7C90  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BC7C94  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BC7C98  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BC7C9C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC7CA0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BC7CA4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC7CA8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC7CAC  4B 44 60 18 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC7CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC7CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC7CB8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BC7CBC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC7CC0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BC7CC4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC7CC8  38 60 00 01 */	li r3, 1
/* 80BC7CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC7CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7CD8  7C 08 03 A6 */	mtlr r0
/* 80BC7CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7CE0  4E 80 00 20 */	blr 
