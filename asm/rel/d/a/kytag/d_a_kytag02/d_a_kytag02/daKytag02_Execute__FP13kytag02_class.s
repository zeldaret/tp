lbl_80855AC0:
/* 80855AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80855AC4  7C 08 02 A6 */	mflr r0
/* 80855AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80855ACC  39 61 00 20 */	addi r11, r1, 0x20
/* 80855AD0  4B B0 C7 09 */	bl _savegpr_28
/* 80855AD4  7C 7E 1B 78 */	mr r30, r3
/* 80855AD8  3C 60 80 85 */	lis r3, lit_3666@ha /* 0x80855DFC@ha */
/* 80855ADC  3B 83 5D FC */	addi r28, r3, lit_3666@l /* 0x80855DFC@l */
/* 80855AE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80855AE4  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 80855AE8  4B 80 4F F9 */	bl dKyw_get_wind_vec__Fv
/* 80855AEC  7C 7F 1B 78 */	mr r31, r3
/* 80855AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80855AF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80855AF8  88 9E 05 77 */	lbz r4, 0x577(r30)
/* 80855AFC  88 BE 04 BA */	lbz r5, 0x4ba(r30)
/* 80855B00  7C A5 07 74 */	extsb r5, r5
/* 80855B04  4B 7D F8 5D */	bl isSwitch__10dSv_info_cCFii
/* 80855B08  2C 03 00 00 */	cmpwi r3, 0
/* 80855B0C  41 82 01 34 */	beq lbl_80855C40
/* 80855B10  4B 80 5B 29 */	bl dKyw_evt_wind_set_go__Fv
/* 80855B14  38 60 00 00 */	li r3, 0
/* 80855B18  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80855B1C  4B 80 5B 01 */	bl dKyw_evt_wind_set__Fss
/* 80855B20  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80855B24  28 00 00 63 */	cmplwi r0, 0x63
/* 80855B28  41 82 01 04 */	beq lbl_80855C2C
/* 80855B2C  38 80 00 01 */	li r4, 1
/* 80855B30  98 9D 0E 6E */	stb r4, 0xe6e(r29)
/* 80855B34  38 00 00 04 */	li r0, 4
/* 80855B38  98 1D 0E B5 */	stb r0, 0xeb5(r29)
/* 80855B3C  38 00 00 32 */	li r0, 0x32
/* 80855B40  90 1D 0E B8 */	stw r0, 0xeb8(r29)
/* 80855B44  88 1E 05 76 */	lbz r0, 0x576(r30)
/* 80855B48  2C 00 00 01 */	cmpwi r0, 1
/* 80855B4C  41 82 00 5C */	beq lbl_80855BA8
/* 80855B50  40 80 00 10 */	bge lbl_80855B60
/* 80855B54  2C 00 00 00 */	cmpwi r0, 0
/* 80855B58  40 80 00 14 */	bge lbl_80855B6C
/* 80855B5C  48 00 00 B8 */	b lbl_80855C14
lbl_80855B60:
/* 80855B60  2C 00 00 03 */	cmpwi r0, 3
/* 80855B64  40 80 00 B0 */	bge lbl_80855C14
/* 80855B68  48 00 00 78 */	b lbl_80855BE0
lbl_80855B6C:
/* 80855B6C  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80855B70  2C 00 00 00 */	cmpwi r0, 0
/* 80855B74  41 81 00 A0 */	bgt lbl_80855C14
/* 80855B78  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80855B7C  D0 1D 0E 5C */	stfs f0, 0xe5c(r29)
/* 80855B80  38 00 00 3C */	li r0, 0x3c
/* 80855B84  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80855B88  38 00 00 02 */	li r0, 2
/* 80855B8C  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80855B90  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80855B94  98 03 01 60 */	stb r0, 0x160(r3)
/* 80855B98  88 7E 05 76 */	lbz r3, 0x576(r30)
/* 80855B9C  38 03 00 01 */	addi r0, r3, 1
/* 80855BA0  98 1E 05 76 */	stb r0, 0x576(r30)
/* 80855BA4  48 00 00 70 */	b lbl_80855C14
lbl_80855BA8:
/* 80855BA8  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80855BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80855BB0  41 81 00 64 */	bgt lbl_80855C14
/* 80855BB4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80855BB8  D0 1D 0E 5C */	stfs f0, 0xe5c(r29)
/* 80855BBC  38 00 00 5A */	li r0, 0x5a
/* 80855BC0  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80855BC4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80855BC8  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80855BCC  98 83 01 60 */	stb r4, 0x160(r3)
/* 80855BD0  88 7E 05 76 */	lbz r3, 0x576(r30)
/* 80855BD4  38 03 00 01 */	addi r0, r3, 1
/* 80855BD8  98 1E 05 76 */	stb r0, 0x576(r30)
/* 80855BDC  48 00 00 38 */	b lbl_80855C14
lbl_80855BE0:
/* 80855BE0  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80855BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80855BE8  41 81 00 2C */	bgt lbl_80855C14
/* 80855BEC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80855BF0  D0 1D 0E 5C */	stfs f0, 0xe5c(r29)
/* 80855BF4  38 00 00 5A */	li r0, 0x5a
/* 80855BF8  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80855BFC  38 00 00 00 */	li r0, 0
/* 80855C00  98 1E 05 76 */	stb r0, 0x576(r30)
/* 80855C04  38 00 00 03 */	li r0, 3
/* 80855C08  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80855C0C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80855C10  98 03 01 60 */	stb r0, 0x160(r3)
lbl_80855C14:
/* 80855C14  A8 7E 05 74 */	lha r3, 0x574(r30)
/* 80855C18  2C 03 00 00 */	cmpwi r3, 0
/* 80855C1C  41 82 00 4C */	beq lbl_80855C68
/* 80855C20  38 03 FF FF */	addi r0, r3, -1
/* 80855C24  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80855C28  48 00 00 40 */	b lbl_80855C68
lbl_80855C2C:
/* 80855C2C  38 00 00 FF */	li r0, 0xff
/* 80855C30  98 1D 0E 6E */	stb r0, 0xe6e(r29)
/* 80855C34  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80855C38  D0 1D 0E 5C */	stfs f0, 0xe5c(r29)
/* 80855C3C  48 00 00 2C */	b lbl_80855C68
lbl_80855C40:
/* 80855C40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80855C44  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80855C48  38 60 00 00 */	li r3, 0
/* 80855C4C  98 64 0E 6D */	stb r3, 0xe6d(r4)
/* 80855C50  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80855C54  28 00 00 63 */	cmplwi r0, 0x63
/* 80855C58  41 82 00 08 */	beq lbl_80855C60
/* 80855C5C  90 64 0E B8 */	stw r3, 0xeb8(r4)
lbl_80855C60:
/* 80855C60  38 00 00 00 */	li r0, 0
/* 80855C64  98 04 0E 6E */	stb r0, 0xe6e(r4)
lbl_80855C68:
/* 80855C68  88 1E 05 78 */	lbz r0, 0x578(r30)
/* 80855C6C  28 00 00 63 */	cmplwi r0, 0x63
/* 80855C70  41 82 00 38 */	beq lbl_80855CA8
/* 80855C74  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80855C78  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80855C7C  7F E4 FB 78 */	mr r4, r31
/* 80855C80  4B A7 23 49 */	bl setWindDirection__10Z2EnvSeMgrFP3Vec
/* 80855C84  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80855C88  38 63 0D 64 */	addi r3, r3, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 80855C8C  88 63 00 00 */	lbz r3, 0(r3)
/* 80855C90  7C 63 07 74 */	extsb r3, r3
/* 80855C94  4B 7D 73 D9 */	bl dComIfGp_getReverb__Fi
/* 80855C98  7C 64 1B 78 */	mr r4, r3
/* 80855C9C  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 80855CA0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 80855CA4  4B A7 23 69 */	bl startStrongWindSe__10Z2EnvSeMgrFSc
lbl_80855CA8:
/* 80855CA8  38 60 00 01 */	li r3, 1
/* 80855CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80855CB0  4B B0 C5 75 */	bl _restgpr_28
/* 80855CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80855CB8  7C 08 03 A6 */	mtlr r0
/* 80855CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80855CC0  4E 80 00 20 */	blr 
