lbl_801A5C1C:
/* 801A5C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A5C20  7C 08 02 A6 */	mflr r0
/* 801A5C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A5C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A5C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 801A5C30  3B E0 00 00 */	li r31, 0
/* 801A5C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5C3C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801A5C40  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 801A5C44  7D 89 03 A6 */	mtctr r12
/* 801A5C48  4E 80 04 21 */	bctrl 
/* 801A5C4C  28 03 00 00 */	cmplwi r3, 0
/* 801A5C50  41 82 00 3C */	beq lbl_801A5C8C
/* 801A5C54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5C58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5C5C  88 04 4E 0A */	lbz r0, 0x4e0a(r4)
/* 801A5C60  7C 00 07 74 */	extsb r0, r0
/* 801A5C64  2C 00 FF FF */	cmpwi r0, -1
/* 801A5C68  41 82 00 24 */	beq lbl_801A5C8C
/* 801A5C6C  1C 00 00 41 */	mulli r0, r0, 0x41
/* 801A5C70  7C 63 02 14 */	add r3, r3, r0
/* 801A5C74  88 03 00 40 */	lbz r0, 0x40(r3)
/* 801A5C78  28 00 00 00 */	cmplwi r0, 0
/* 801A5C7C  41 82 00 10 */	beq lbl_801A5C8C
/* 801A5C80  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 801A5C84  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 801A5C88  4B E6 38 BD */	bl create__Q213mDoGph_gInf_c7bloom_cFv
lbl_801A5C8C:
/* 801A5C8C  4B FF 90 0D */	bl envcolor_init__Fv
/* 801A5C90  38 00 00 00 */	li r0, 0
/* 801A5C94  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5C98  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A5C9C  90 03 12 B0 */	stw r0, 0x12b0(r3)
/* 801A5CA0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A5CA4  D0 03 12 54 */	stfs f0, 0x1254(r3)
/* 801A5CA8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A5CAC  D0 03 10 7C */	stfs f0, 0x107c(r3)
/* 801A5CB0  D0 03 10 80 */	stfs f0, 0x1080(r3)
/* 801A5CB4  D0 03 10 84 */	stfs f0, 0x1084(r3)
/* 801A5CB8  98 03 0F 3C */	stb r0, 0xf3c(r3)
/* 801A5CBC  D0 03 0F 40 */	stfs f0, 0xf40(r3)
/* 801A5CC0  98 03 0F 3D */	stb r0, 0xf3d(r3)
/* 801A5CC4  48 00 01 91 */	bl dKy_setLight_init__Fv
/* 801A5CC8  48 00 24 C9 */	bl dKy_Sound_init__Fv
/* 801A5CCC  4B EB 48 F5 */	bl dKyw_wind_set__Fv
/* 801A5CD0  4B FF 8B A5 */	bl dungeonlight_init__Fv
/* 801A5CD4  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A5CD8  7C 03 07 74 */	extsb r3, r0
/* 801A5CDC  48 00 0F 45 */	bl dKy_setLight_nowroom__Fc
/* 801A5CE0  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5CE4  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5CE8  38 63 01 9A */	addi r3, r3, 0x19a
/* 801A5CEC  4B E8 97 49 */	bl dComIfG_getStageRes__FPCc
/* 801A5CF0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5CF4  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5CF8  90 64 12 DC */	stw r3, 0x12dc(r4)
/* 801A5CFC  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D00  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D04  38 63 01 A9 */	addi r3, r3, 0x1a9
/* 801A5D08  4B E8 97 2D */	bl dComIfG_getStageRes__FPCc
/* 801A5D0C  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D10  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5D14  90 64 12 E0 */	stw r3, 0x12e0(r4)
/* 801A5D18  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D1C  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D20  38 63 01 B8 */	addi r3, r3, 0x1b8
/* 801A5D24  4B E8 97 11 */	bl dComIfG_getStageRes__FPCc
/* 801A5D28  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D2C  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5D30  90 64 12 E4 */	stw r3, 0x12e4(r4)
/* 801A5D34  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D38  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D3C  38 63 01 C8 */	addi r3, r3, 0x1c8
/* 801A5D40  4B E8 96 F5 */	bl dComIfG_getStageRes__FPCc
/* 801A5D44  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D48  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5D4C  90 64 12 E8 */	stw r3, 0x12e8(r4)
/* 801A5D50  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D54  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D58  38 63 01 D8 */	addi r3, r3, 0x1d8
/* 801A5D5C  4B E8 96 D9 */	bl dComIfG_getStageRes__FPCc
/* 801A5D60  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D64  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5D68  90 64 12 EC */	stw r3, 0x12ec(r4)
/* 801A5D6C  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D70  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D74  38 63 01 E6 */	addi r3, r3, 0x1e6
/* 801A5D78  4B E8 96 BD */	bl dComIfG_getStageRes__FPCc
/* 801A5D7C  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D80  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5D84  90 64 12 F0 */	stw r3, 0x12f0(r4)
/* 801A5D88  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A5D8C  38 63 4C 6C */	addi r3, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A5D90  38 63 01 F2 */	addi r3, r3, 0x1f2
/* 801A5D94  4B E8 96 A1 */	bl dComIfG_getStageRes__FPCc
/* 801A5D98  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5D9C  3B C4 CA 54 */	addi r30, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A5DA0  90 7E 12 F4 */	stw r3, 0x12f4(r30)
/* 801A5DA4  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A5DA8  C0 3E 12 48 */	lfs f1, 0x1248(r30)
/* 801A5DAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801A5DB0  41 82 00 14 */	beq lbl_801A5DC4
/* 801A5DB4  3B E0 00 01 */	li r31, 1
/* 801A5DB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5DBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5DC0  D0 23 00 34 */	stfs f1, 0x34(r3)
lbl_801A5DC4:
/* 801A5DC4  48 00 67 B9 */	bl dKy_darkworld_check__Fv
/* 801A5DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A5DCC  41 82 00 30 */	beq lbl_801A5DFC
/* 801A5DD0  C0 22 A2 50 */	lfs f1, lit_4507(r2)
/* 801A5DD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5DD8  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A5DDC  C0 04 12 74 */	lfs f0, 0x1274(r4)
/* 801A5DE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A5DE4  40 82 00 4C */	bne lbl_801A5E30
/* 801A5DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5DF0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 801A5DF4  D0 04 12 74 */	stfs f0, 0x1274(r4)
/* 801A5DF8  48 00 00 38 */	b lbl_801A5E30
lbl_801A5DFC:
/* 801A5DFC  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A5E00  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A5E04  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A5E08  C0 24 12 74 */	lfs f1, 0x1274(r4)
/* 801A5E0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801A5E10  41 82 00 20 */	beq lbl_801A5E30
/* 801A5E14  2C 1F 00 00 */	cmpwi r31, 0
/* 801A5E18  40 82 00 10 */	bne lbl_801A5E28
/* 801A5E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5E24  D0 23 00 34 */	stfs f1, 0x34(r3)
lbl_801A5E28:
/* 801A5E28  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A5E2C  D0 04 12 74 */	stfs f0, 0x1274(r4)
lbl_801A5E30:
/* 801A5E30  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A5E34  D0 1E 12 48 */	stfs f0, 0x1248(r30)
/* 801A5E38  38 60 00 04 */	li r3, 4
/* 801A5E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A5E40  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A5E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A5E48  7C 08 03 A6 */	mtlr r0
/* 801A5E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801A5E50  4E 80 00 20 */	blr 
