lbl_80156F74:
/* 80156F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156F78  7C 08 02 A6 */	mflr r0
/* 80156F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156F84  7C 7F 1B 78 */	mr r31, r3
/* 80156F88  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 80156F8C  28 00 00 00 */	cmplwi r0, 0
/* 80156F90  41 82 00 20 */	beq lbl_80156FB0
/* 80156F94  48 00 84 91 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80156F98  2C 03 00 00 */	cmpwi r3, 0
/* 80156F9C  40 82 00 14 */	bne lbl_80156FB0
/* 80156FA0  7F E3 FB 78 */	mr r3, r31
/* 80156FA4  48 00 03 C9 */	bl setHitodamaParticle__9daNpcCd_cFv
/* 80156FA8  38 60 00 01 */	li r3, 1
/* 80156FAC  48 00 00 C4 */	b lbl_80157070
lbl_80156FB0:
/* 80156FB0  88 1F 09 E8 */	lbz r0, 0x9e8(r31)
/* 80156FB4  28 00 00 00 */	cmplwi r0, 0
/* 80156FB8  41 82 00 20 */	beq lbl_80156FD8
/* 80156FBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80156FC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80156FC4  38 80 00 04 */	li r4, 4
/* 80156FC8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80156FCC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80156FD0  48 04 C7 F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80156FD4  48 00 00 1C */	b lbl_80156FF0
lbl_80156FD8:
/* 80156FD8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80156FDC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80156FE0  38 80 00 00 */	li r4, 0
/* 80156FE4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80156FE8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80156FEC  48 04 C7 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80156FF0:
/* 80156FF0  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80156FF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80156FF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80156FFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80157000  80 84 00 04 */	lwz r4, 4(r4)
/* 80157004  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80157008  48 04 DD 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8015700C  88 1F 09 E8 */	lbz r0, 0x9e8(r31)
/* 80157010  28 00 00 00 */	cmplwi r0, 0
/* 80157014  41 82 00 24 */	beq lbl_80157038
/* 80157018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015701C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80157020  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80157024  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80157028  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8015702C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80157030  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80157034  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_80157038:
/* 80157038  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8015703C  4B EB A1 85 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80157040  88 1F 09 E8 */	lbz r0, 0x9e8(r31)
/* 80157044  28 00 00 00 */	cmplwi r0, 0
/* 80157048  41 82 00 24 */	beq lbl_8015706C
/* 8015704C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80157050  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80157054  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 80157058  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8015705C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80157060  90 03 00 48 */	stw r0, 0x48(r3)
/* 80157064  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 80157068  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_8015706C:
/* 8015706C  38 60 00 01 */	li r3, 1
lbl_80157070:
/* 80157070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80157074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157078  7C 08 03 A6 */	mtlr r0
/* 8015707C  38 21 00 10 */	addi r1, r1, 0x10
/* 80157080  4E 80 00 20 */	blr 
