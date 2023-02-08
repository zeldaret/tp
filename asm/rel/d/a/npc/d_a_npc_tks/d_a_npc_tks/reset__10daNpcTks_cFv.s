lbl_80B15A24:
/* 80B15A24  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B15A28  7C 08 02 A6 */	mflr r0
/* 80B15A2C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B15A30  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B15A34  4B 84 C7 A5 */	bl _savegpr_28
/* 80B15A38  7C 7D 1B 78 */	mr r29, r3
/* 80B15A3C  3C 80 80 B2 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B1E0E4@ha */
/* 80B15A40  3B C4 E0 E4 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B1E0E4@l */
/* 80B15A44  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B15A48  3B E4 DD 58 */	addi r31, r4, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B15A4C  4B 63 CE 7D */	bl initialize__8daNpcF_cFv
/* 80B15A50  80 7D 11 60 */	lwz r3, 0x1160(r29)
/* 80B15A54  4B 63 AC E5 */	bl initialize__15daNpcF_MatAnm_cFv
/* 80B15A58  38 7D 11 64 */	addi r3, r29, 0x1164
/* 80B15A5C  4B 63 B5 DD */	bl initialize__15daNpcF_Lookat_cFv
/* 80B15A60  38 7D 12 00 */	addi r3, r29, 0x1200
/* 80B15A64  4B 63 AC 4D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B15A68  38 00 00 2B */	li r0, 0x2b
/* 80B15A6C  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80B15A70  38 00 00 10 */	li r0, 0x10
/* 80B15A74  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B15A78  38 A0 00 00 */	li r5, 0
/* 80B15A7C  90 BD 13 70 */	stw r5, 0x1370(r29)
/* 80B15A80  90 BD 13 74 */	stw r5, 0x1374(r29)
/* 80B15A84  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B15A88  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B15A8C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B15A90  80 04 00 04 */	lwz r0, 4(r4)
/* 80B15A94  90 7D 13 4C */	stw r3, 0x134c(r29)
/* 80B15A98  90 1D 13 50 */	stw r0, 0x1350(r29)
/* 80B15A9C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B15AA0  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 80B15AA4  38 60 FF FF */	li r3, -1
/* 80B15AA8  B0 7D 13 86 */	sth r3, 0x1386(r29)
/* 80B15AAC  B0 BD 13 88 */	sth r5, 0x1388(r29)
/* 80B15AB0  38 00 00 01 */	li r0, 1
/* 80B15AB4  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15AB8  90 7D 13 78 */	stw r3, 0x1378(r29)
/* 80B15ABC  38 7F 00 00 */	addi r3, r31, 0
/* 80B15AC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B15AC4  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B15AC8  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B15ACC  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B15AD0  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80B15AD4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B15AD8  7C 04 07 74 */	extsb r4, r0
/* 80B15ADC  38 A0 00 FF */	li r5, 0xff
/* 80B15AE0  4B 69 2E 0D */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 80B15AE4  7F A3 EB 78 */	mr r3, r29
/* 80B15AE8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80B15AEC  4B 63 E7 65 */	bl setAngle__8daNpcF_cFs
/* 80B15AF0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B15AF4  D0 1D 11 4C */	stfs f0, 0x114c(r29)
/* 80B15AF8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B15AFC  D0 1D 11 50 */	stfs f0, 0x1150(r29)
/* 80B15B00  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B15B04  D0 1D 11 54 */	stfs f0, 0x1154(r29)
/* 80B15B08  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80B15B0C  B0 1D 11 58 */	sth r0, 0x1158(r29)
/* 80B15B10  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B15B14  B0 1D 11 5A */	sth r0, 0x115a(r29)
/* 80B15B18  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80B15B1C  B0 1D 11 5C */	sth r0, 0x115c(r29)
/* 80B15B20  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B15B24  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B15B28  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B15B2C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B15B30  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B15B34  38 00 FF FF */	li r0, -1
/* 80B15B38  90 1D 13 68 */	stw r0, 0x1368(r29)
/* 80B15B3C  D0 1D 09 74 */	stfs f0, 0x974(r29)
/* 80B15B40  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80B15B44  80 9D 00 B0 */	lwz r4, 0xb0(r29)
/* 80B15B48  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80B15B4C  2C 00 00 06 */	cmpwi r0, 6
/* 80B15B50  41 82 04 08 */	beq lbl_80B15F58
/* 80B15B54  40 80 00 30 */	bge lbl_80B15B84
/* 80B15B58  2C 00 00 02 */	cmpwi r0, 2
/* 80B15B5C  41 82 01 78 */	beq lbl_80B15CD4
/* 80B15B60  40 80 00 14 */	bge lbl_80B15B74
/* 80B15B64  2C 00 00 00 */	cmpwi r0, 0
/* 80B15B68  41 82 00 40 */	beq lbl_80B15BA8
/* 80B15B6C  40 80 00 CC */	bge lbl_80B15C38
/* 80B15B70  48 00 05 20 */	b lbl_80B16090
lbl_80B15B74:
/* 80B15B74  2C 00 00 04 */	cmpwi r0, 4
/* 80B15B78  41 82 02 C8 */	beq lbl_80B15E40
/* 80B15B7C  40 80 02 F8 */	bge lbl_80B15E74
/* 80B15B80  48 00 01 F0 */	b lbl_80B15D70
lbl_80B15B84:
/* 80B15B84  2C 00 00 09 */	cmpwi r0, 9
/* 80B15B88  41 82 04 D8 */	beq lbl_80B16060
/* 80B15B8C  40 80 00 10 */	bge lbl_80B15B9C
/* 80B15B90  2C 00 00 08 */	cmpwi r0, 8
/* 80B15B94  40 80 04 98 */	bge lbl_80B1602C
/* 80B15B98  48 00 04 5C */	b lbl_80B15FF4
lbl_80B15B9C:
/* 80B15B9C  2C 00 00 FF */	cmpwi r0, 0xff
/* 80B15BA0  41 82 00 08 */	beq lbl_80B15BA8
/* 80B15BA4  48 00 04 EC */	b lbl_80B16090
lbl_80B15BA8:
/* 80B15BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B15BAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B15BB0  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 80B15BB4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80B15BB8  7C 05 07 74 */	extsb r5, r0
/* 80B15BBC  4B 51 F7 A5 */	bl isSwitch__10dSv_info_cCFii
/* 80B15BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B15BC4  41 82 00 44 */	beq lbl_80B15C08
/* 80B15BC8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80B15BCC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B15BD0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B15BD4  38 00 00 00 */	li r0, 0
/* 80B15BD8  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15BDC  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15BE0  80 7E 01 50 */	lwz r3, 0x150(r30)
/* 80B15BE4  80 1E 01 54 */	lwz r0, 0x154(r30)
/* 80B15BE8  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80B15BEC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80B15BF0  80 1E 01 58 */	lwz r0, 0x158(r30)
/* 80B15BF4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B15BF8  7F A3 EB 78 */	mr r3, r29
/* 80B15BFC  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B15C00  48 00 04 A9 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15C04  48 00 04 8C */	b lbl_80B16090
lbl_80B15C08:
/* 80B15C08  38 00 00 01 */	li r0, 1
/* 80B15C0C  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15C10  80 7E 01 5C */	lwz r3, 0x15c(r30)
/* 80B15C14  80 1E 01 60 */	lwz r0, 0x160(r30)
/* 80B15C18  90 61 00 90 */	stw r3, 0x90(r1)
/* 80B15C1C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B15C20  80 1E 01 64 */	lwz r0, 0x164(r30)
/* 80B15C24  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B15C28  7F A3 EB 78 */	mr r3, r29
/* 80B15C2C  38 81 00 90 */	addi r4, r1, 0x90
/* 80B15C30  48 00 04 79 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15C34  48 00 04 5C */	b lbl_80B16090
lbl_80B15C38:
/* 80B15C38  38 00 00 00 */	li r0, 0
/* 80B15C3C  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15C40  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15C44  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 80B15C48  80 1E 01 6C */	lwz r0, 0x16c(r30)
/* 80B15C4C  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B15C50  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B15C54  80 1E 01 70 */	lwz r0, 0x170(r30)
/* 80B15C58  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B15C5C  7F A3 EB 78 */	mr r3, r29
/* 80B15C60  38 81 00 84 */	addi r4, r1, 0x84
/* 80B15C64  48 00 04 45 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15C68  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B15C6C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B15C70  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B15C74  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80B15C78  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B15C7C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B15C80  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B15C84  EC 01 00 2A */	fadds f0, f1, f0
/* 80B15C88  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B15C8C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B15C90  7C 07 07 74 */	extsb r7, r0
/* 80B15C94  38 00 00 00 */	li r0, 0
/* 80B15C98  90 01 00 08 */	stw r0, 8(r1)
/* 80B15C9C  38 60 02 76 */	li r3, 0x276
/* 80B15CA0  28 1D 00 00 */	cmplwi r29, 0
/* 80B15CA4  41 82 00 0C */	beq lbl_80B15CB0
/* 80B15CA8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80B15CAC  48 00 00 08 */	b lbl_80B15CB4
lbl_80B15CB0:
/* 80B15CB0  38 80 FF FF */	li r4, -1
lbl_80B15CB4:
/* 80B15CB4  38 A0 00 03 */	li r5, 3
/* 80B15CB8  38 C1 00 CC */	addi r6, r1, 0xcc
/* 80B15CBC  39 1D 08 F0 */	addi r8, r29, 0x8f0
/* 80B15CC0  39 20 00 00 */	li r9, 0
/* 80B15CC4  39 40 FF FF */	li r10, -1
/* 80B15CC8  4B 50 42 29 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80B15CCC  90 7D 04 A4 */	stw r3, 0x4a4(r29)
/* 80B15CD0  48 00 03 C0 */	b lbl_80B16090
lbl_80B15CD4:
/* 80B15CD4  38 00 00 00 */	li r0, 0
/* 80B15CD8  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15CDC  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15CE0  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80B15CE4  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 80B15CE8  90 61 00 78 */	stw r3, 0x78(r1)
/* 80B15CEC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80B15CF0  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 80B15CF4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B15CF8  7F A3 EB 78 */	mr r3, r29
/* 80B15CFC  38 81 00 78 */	addi r4, r1, 0x78
/* 80B15D00  48 00 03 A9 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15D04  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B15D08  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B15D0C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B15D10  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 80B15D14  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B15D18  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B15D1C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B15D20  EC 01 00 2A */	fadds f0, f1, f0
/* 80B15D24  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B15D28  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B15D2C  7C 07 07 74 */	extsb r7, r0
/* 80B15D30  38 00 00 00 */	li r0, 0
/* 80B15D34  90 01 00 08 */	stw r0, 8(r1)
/* 80B15D38  38 60 02 76 */	li r3, 0x276
/* 80B15D3C  28 1D 00 00 */	cmplwi r29, 0
/* 80B15D40  41 82 00 0C */	beq lbl_80B15D4C
/* 80B15D44  80 9D 00 04 */	lwz r4, 4(r29)
/* 80B15D48  48 00 00 08 */	b lbl_80B15D50
lbl_80B15D4C:
/* 80B15D4C  38 80 FF FF */	li r4, -1
lbl_80B15D50:
/* 80B15D50  38 A0 00 03 */	li r5, 3
/* 80B15D54  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 80B15D58  39 1D 08 F0 */	addi r8, r29, 0x8f0
/* 80B15D5C  39 20 00 00 */	li r9, 0
/* 80B15D60  39 40 FF FF */	li r10, -1
/* 80B15D64  4B 50 41 8D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80B15D68  90 7D 04 A4 */	stw r3, 0x4a4(r29)
/* 80B15D6C  48 00 03 24 */	b lbl_80B16090
lbl_80B15D70:
/* 80B15D70  38 00 00 00 */	li r0, 0
/* 80B15D74  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15D78  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15D7C  38 00 00 0A */	li r0, 0xa
/* 80B15D80  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 80B15D84  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80B15D88  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80B15D8C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80B15D90  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B15D94  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 80B15D98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B15D9C  7F A3 EB 78 */	mr r3, r29
/* 80B15DA0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B15DA4  48 00 03 05 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15DA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B15DAC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B15DB0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B15DB4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B15DB8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B15DBC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B15DC0  7F A3 EB 78 */	mr r3, r29
/* 80B15DC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B15DC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B15DCC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B15DD0  4B 50 49 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B15DD4  7C 65 1B 78 */	mr r5, r3
/* 80B15DD8  38 61 00 10 */	addi r3, r1, 0x10
/* 80B15DDC  38 80 00 00 */	li r4, 0
/* 80B15DE0  38 C0 00 00 */	li r6, 0
/* 80B15DE4  4B 75 16 11 */	bl __ct__5csXyzFsss
/* 80B15DE8  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80B15DEC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B15DF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B15DF4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B15DF8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B15DFC  7C 07 07 74 */	extsb r7, r0
/* 80B15E00  38 00 00 00 */	li r0, 0
/* 80B15E04  90 01 00 08 */	stw r0, 8(r1)
/* 80B15E08  38 60 02 76 */	li r3, 0x276
/* 80B15E0C  28 1D 00 00 */	cmplwi r29, 0
/* 80B15E10  41 82 00 0C */	beq lbl_80B15E1C
/* 80B15E14  80 9D 00 04 */	lwz r4, 4(r29)
/* 80B15E18  48 00 00 08 */	b lbl_80B15E20
lbl_80B15E1C:
/* 80B15E1C  38 80 FF FF */	li r4, -1
lbl_80B15E20:
/* 80B15E20  38 A0 00 04 */	li r5, 4
/* 80B15E24  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 80B15E28  39 01 00 10 */	addi r8, r1, 0x10
/* 80B15E2C  39 20 00 00 */	li r9, 0
/* 80B15E30  39 40 FF FF */	li r10, -1
/* 80B15E34  4B 50 40 BD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80B15E38  90 7D 04 A4 */	stw r3, 0x4a4(r29)
/* 80B15E3C  48 00 02 54 */	b lbl_80B16090
lbl_80B15E40:
/* 80B15E40  38 00 00 00 */	li r0, 0
/* 80B15E44  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15E48  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15E4C  80 7E 01 8C */	lwz r3, 0x18c(r30)
/* 80B15E50  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 80B15E54  90 61 00 60 */	stw r3, 0x60(r1)
/* 80B15E58  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B15E5C  80 1E 01 94 */	lwz r0, 0x194(r30)
/* 80B15E60  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B15E64  7F A3 EB 78 */	mr r3, r29
/* 80B15E68  38 81 00 60 */	addi r4, r1, 0x60
/* 80B15E6C  48 00 02 3D */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15E70  48 00 02 20 */	b lbl_80B16090
lbl_80B15E74:
/* 80B15E74  38 00 00 00 */	li r0, 0
/* 80B15E78  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15E7C  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B15E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B15E88  3B 83 4E 00 */	addi r28, r3, 0x4e00
/* 80B15E8C  7F 83 E3 78 */	mr r3, r28
/* 80B15E90  3C 80 80 B2 */	lis r4, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B15E94  38 84 E0 48 */	addi r4, r4, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B15E98  38 84 00 29 */	addi r4, r4, 0x29
/* 80B15E9C  4B 85 2A F9 */	bl strcmp
/* 80B15EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B15EA4  40 82 00 10 */	bne lbl_80B15EB4
/* 80B15EA8  38 00 00 05 */	li r0, 5
/* 80B15EAC  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 80B15EB0  48 00 00 80 */	b lbl_80B15F30
lbl_80B15EB4:
/* 80B15EB4  7F 83 E3 78 */	mr r3, r28
/* 80B15EB8  3C 80 80 B2 */	lis r4, d_a_npc_tks__stringBase0@ha /* 0x80B1E048@ha */
/* 80B15EBC  38 84 E0 48 */	addi r4, r4, d_a_npc_tks__stringBase0@l /* 0x80B1E048@l */
/* 80B15EC0  38 84 00 30 */	addi r4, r4, 0x30
/* 80B15EC4  4B 85 2A D1 */	bl strcmp
/* 80B15EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80B15ECC  40 82 00 5C */	bne lbl_80B15F28
/* 80B15ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B15ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B15ED8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B15EDC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80B15EE0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80B15EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B15EE8  40 80 00 10 */	bge lbl_80B15EF8
/* 80B15EEC  38 00 00 05 */	li r0, 5
/* 80B15EF0  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 80B15EF4  48 00 00 3C */	b lbl_80B15F30
lbl_80B15EF8:
/* 80B15EF8  38 00 00 05 */	li r0, 5
/* 80B15EFC  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 80B15F00  80 7E 01 98 */	lwz r3, 0x198(r30)
/* 80B15F04  80 1E 01 9C */	lwz r0, 0x19c(r30)
/* 80B15F08  90 61 00 54 */	stw r3, 0x54(r1)
/* 80B15F0C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B15F10  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 80B15F14  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B15F18  7F A3 EB 78 */	mr r3, r29
/* 80B15F1C  38 81 00 54 */	addi r4, r1, 0x54
/* 80B15F20  48 00 01 89 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15F24  48 00 01 6C */	b lbl_80B16090
lbl_80B15F28:
/* 80B15F28  38 00 00 00 */	li r0, 0
/* 80B15F2C  90 1D 13 70 */	stw r0, 0x1370(r29)
lbl_80B15F30:
/* 80B15F30  80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 80B15F34  80 1E 01 A8 */	lwz r0, 0x1a8(r30)
/* 80B15F38  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B15F3C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B15F40  80 1E 01 AC */	lwz r0, 0x1ac(r30)
/* 80B15F44  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B15F48  7F A3 EB 78 */	mr r3, r29
/* 80B15F4C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B15F50  48 00 01 59 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15F54  48 00 01 3C */	b lbl_80B16090
lbl_80B15F58:
/* 80B15F58  38 00 00 00 */	li r0, 0
/* 80B15F5C  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15F60  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B15F64  80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 80B15F68  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 80B15F6C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B15F70  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B15F74  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 80B15F78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B15F7C  7F A3 EB 78 */	mr r3, r29
/* 80B15F80  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B15F84  48 00 01 25 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B15F88  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B15F8C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B15F90  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B15F94  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80B15F98  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B15F9C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B15FA0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B15FA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B15FA8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B15FAC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B15FB0  7C 07 07 74 */	extsb r7, r0
/* 80B15FB4  38 00 00 00 */	li r0, 0
/* 80B15FB8  90 01 00 08 */	stw r0, 8(r1)
/* 80B15FBC  38 60 02 76 */	li r3, 0x276
/* 80B15FC0  28 1D 00 00 */	cmplwi r29, 0
/* 80B15FC4  41 82 00 0C */	beq lbl_80B15FD0
/* 80B15FC8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80B15FCC  48 00 00 08 */	b lbl_80B15FD4
lbl_80B15FD0:
/* 80B15FD0  38 80 FF FF */	li r4, -1
lbl_80B15FD4:
/* 80B15FD4  38 A0 00 04 */	li r5, 4
/* 80B15FD8  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 80B15FDC  39 1D 08 F0 */	addi r8, r29, 0x8f0
/* 80B15FE0  39 20 00 00 */	li r9, 0
/* 80B15FE4  39 40 FF FF */	li r10, -1
/* 80B15FE8  4B 50 3F 09 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80B15FEC  90 7D 04 A4 */	stw r3, 0x4a4(r29)
/* 80B15FF0  48 00 00 A0 */	b lbl_80B16090
lbl_80B15FF4:
/* 80B15FF4  38 00 00 00 */	li r0, 0
/* 80B15FF8  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B15FFC  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B16000  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80B16004  80 7E 01 BC */	lwz r3, 0x1bc(r30)
/* 80B16008  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 80B1600C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B16010  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B16014  80 1E 01 C4 */	lwz r0, 0x1c4(r30)
/* 80B16018  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B1601C  7F A3 EB 78 */	mr r3, r29
/* 80B16020  38 81 00 30 */	addi r4, r1, 0x30
/* 80B16024  48 00 00 85 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B16028  48 00 00 68 */	b lbl_80B16090
lbl_80B1602C:
/* 80B1602C  38 00 00 00 */	li r0, 0
/* 80B16030  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B16034  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B16038  80 7E 01 C8 */	lwz r3, 0x1c8(r30)
/* 80B1603C  80 1E 01 CC */	lwz r0, 0x1cc(r30)
/* 80B16040  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B16044  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B16048  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80B1604C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B16050  7F A3 EB 78 */	mr r3, r29
/* 80B16054  38 81 00 24 */	addi r4, r1, 0x24
/* 80B16058  48 00 00 51 */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
/* 80B1605C  48 00 00 34 */	b lbl_80B16090
lbl_80B16060:
/* 80B16060  38 00 00 00 */	li r0, 0
/* 80B16064  98 1D 11 5E */	stb r0, 0x115e(r29)
/* 80B16068  98 1D 13 8A */	stb r0, 0x138a(r29)
/* 80B1606C  80 7E 01 D4 */	lwz r3, 0x1d4(r30)
/* 80B16070  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 80B16074  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B16078  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1607C  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 80B16080  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B16084  7F A3 EB 78 */	mr r3, r29
/* 80B16088  38 81 00 18 */	addi r4, r1, 0x18
/* 80B1608C  48 00 00 1D */	bl setAction__10daNpcTks_cFM10daNpcTks_cFPCvPv_v
lbl_80B16090:
/* 80B16090  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B16094  4B 84 C1 91 */	bl _restgpr_28
/* 80B16098  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B1609C  7C 08 03 A6 */	mtlr r0
/* 80B160A0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B160A4  4E 80 00 20 */	blr 
