lbl_80162D38:
/* 80162D38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80162D3C  7C 08 02 A6 */	mflr r0
/* 80162D40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80162D44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80162D48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80162D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80162D50  48 1F F4 8D */	bl _savegpr_29
/* 80162D54  7C 7E 1B 78 */	mr r30, r3
/* 80162D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80162D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80162D60  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 80162D64  80 AD 8A 98 */	lwz r5, m_midnaActor__9daPy_py_c(r13)
/* 80162D68  38 60 00 00 */	li r3, 0
/* 80162D6C  80 04 05 70 */	lwz r0, 0x570(r4)
/* 80162D70  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80162D74  41 82 00 14 */	beq lbl_80162D88
/* 80162D78  80 05 08 90 */	lwz r0, 0x890(r5)
/* 80162D7C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80162D80  40 82 00 08 */	bne lbl_80162D88
/* 80162D84  38 60 00 01 */	li r3, 1
lbl_80162D88:
/* 80162D88  98 7E 01 94 */	stb r3, 0x194(r30)
/* 80162D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80162D90  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80162D94  80 7F 5D 7C */	lwz r3, 0x5d7c(r31)
/* 80162D98  38 00 F7 FB */	li r0, -2053
/* 80162D9C  7C 60 00 38 */	and r0, r3, r0
/* 80162DA0  90 1F 5D 7C */	stw r0, 0x5d7c(r31)
/* 80162DA4  80 9E 06 0C */	lwz r4, 0x60c(r30)
/* 80162DA8  3C 60 EF E9 */	lis r3, 0xEFE9 /* 0xEFE973DE@ha */
/* 80162DAC  38 03 73 DE */	addi r0, r3, 0x73DE /* 0xEFE973DE@l */
/* 80162DB0  7C 80 00 38 */	and r0, r4, r0
/* 80162DB4  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80162DB8  7F C3 F3 78 */	mr r3, r30
/* 80162DBC  48 00 52 31 */	bl checkGroundInfo__9dCamera_cFv
/* 80162DC0  80 1F 5D 7C */	lwz r0, 0x5d7c(r31)
/* 80162DC4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80162DC8  90 1F 5D 7C */	stw r0, 0x5d7c(r31)
/* 80162DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80162DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80162DD4  80 03 51 84 */	lwz r0, 0x5184(r3)
/* 80162DD8  2C 00 00 00 */	cmpwi r0, 0
/* 80162DDC  40 82 00 10 */	bne lbl_80162DEC
/* 80162DE0  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80162DE4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80162DE8  41 82 00 AC */	beq lbl_80162E94
lbl_80162DEC:
/* 80162DEC  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 80162DF0  3C 60 80 43 */	lis r3, data_8042C8F8@ha
/* 80162DF4  3B A3 C8 F8 */	addi r29, r3, data_8042C8F8@l
/* 80162DF8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80162DFC  7C 04 00 00 */	cmpw r4, r0
/* 80162E00  41 82 00 48 */	beq lbl_80162E48
/* 80162E04  7F C3 F3 78 */	mr r3, r30
/* 80162E08  38 9E 00 B0 */	addi r4, r30, 0xb0
/* 80162E0C  38 A0 00 01 */	li r5, 1
/* 80162E10  48 00 1E 55 */	bl pushInfo__9dCamera_cFPQ29dCamera_c10dCamInfo_cs
/* 80162E14  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80162E18  90 1E 04 F4 */	stw r0, 0x4f4(r30)
/* 80162E1C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80162E20  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 80162E24  38 7E 0A EC */	addi r3, r30, 0xaec
/* 80162E28  3C 80 45 4E */	lis r4, 0x454E /* 0x454E3031@ha */
/* 80162E2C  38 84 30 31 */	addi r4, r4, 0x3031 /* 0x454E3031@l */
/* 80162E30  4B F2 57 F1 */	bl SearchStyle__11dCamParam_cFUl
/* 80162E34  90 7E 06 7C */	stw r3, 0x67c(r30)
/* 80162E38  38 00 00 00 */	li r0, 0
/* 80162E3C  90 1E 01 70 */	stw r0, 0x170(r30)
/* 80162E40  90 1E 01 60 */	stw r0, 0x160(r30)
/* 80162E44  90 1E 01 74 */	stw r0, 0x174(r30)
lbl_80162E48:
/* 80162E48  7F C3 F3 78 */	mr r3, r30
/* 80162E4C  80 9E 06 84 */	lwz r4, 0x684(r30)
/* 80162E50  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80162E54  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80162E58  7C 84 02 14 */	add r4, r4, r0
/* 80162E5C  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 80162E60  1C 00 00 16 */	mulli r0, r0, 0x16
/* 80162E64  7C 84 02 14 */	add r4, r4, r0
/* 80162E68  A8 84 00 1E */	lha r4, 0x1e(r4)
/* 80162E6C  48 01 C9 BD */	bl eventCamera__9dCamera_cFl
/* 80162E70  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 80162E74  38 03 00 01 */	addi r0, r3, 1
/* 80162E78  90 1E 01 70 */	stw r0, 0x170(r30)
/* 80162E7C  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 80162E80  38 03 00 01 */	addi r0, r3, 1
/* 80162E84  90 1E 01 60 */	stw r0, 0x160(r30)
/* 80162E88  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80162E8C  38 03 00 01 */	addi r0, r3, 1
/* 80162E90  90 1E 01 74 */	stw r0, 0x174(r30)
lbl_80162E94:
/* 80162E94  80 1F 5D 7C */	lwz r0, 0x5d7c(r31)
/* 80162E98  60 00 00 14 */	ori r0, r0, 0x14
/* 80162E9C  90 1F 5D 7C */	stw r0, 0x5d7c(r31)
/* 80162EA0  80 9E 06 0C */	lwz r4, 0x60c(r30)
/* 80162EA4  3C 60 FF F8 */	lis r3, 0xFFF8 /* 0xFFF7FF7F@ha */
/* 80162EA8  38 03 FF 7F */	addi r0, r3, 0xFF7F /* 0xFFF7FF7F@l */
/* 80162EAC  7C 80 00 38 */	and r0, r4, r0
/* 80162EB0  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80162EB4  38 7E 02 28 */	addi r3, r30, 0x228
/* 80162EB8  48 01 F7 2D */	bl Off__14dCamForcusLineFv
/* 80162EBC  7F C3 F3 78 */	mr r3, r30
/* 80162EC0  48 01 DE 65 */	bl shakeCamera__9dCamera_cFv
/* 80162EC4  7F C3 F3 78 */	mr r3, r30
/* 80162EC8  48 01 E3 B9 */	bl blureCamera__9dCamera_cFv
/* 80162ECC  38 00 00 00 */	li r0, 0
/* 80162ED0  98 1E 00 21 */	stb r0, 0x21(r30)
/* 80162ED4  A8 7E 09 4C */	lha r3, 0x94c(r30)
/* 80162ED8  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80162EDC  7C 03 00 00 */	cmpw r3, r0
/* 80162EE0  41 82 00 08 */	beq lbl_80162EE8
/* 80162EE4  B0 7E 00 54 */	sth r3, 0x54(r30)
lbl_80162EE8:
/* 80162EE8  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80162EEC  B0 1E 09 4C */	sth r0, 0x94c(r30)
/* 80162EF0  7F C3 F3 78 */	mr r3, r30
/* 80162EF4  38 9E 00 3C */	addi r4, r30, 0x3c
/* 80162EF8  48 00 4F FD */	bl getWaterSurfaceHeight__9dCamera_cFP4cXyz
/* 80162EFC  FF E0 08 90 */	fmr f31, f1
/* 80162F00  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80162F04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80162F08  40 81 00 24 */	ble lbl_80162F2C
/* 80162F0C  38 60 00 01 */	li r3, 1
/* 80162F10  48 04 83 61 */	bl dKy_camera_water_in_status_set__FUc
/* 80162F14  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80162F18  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80162F1C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80162F20  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80162F24  48 15 38 65 */	bl setCameraInWaterDepth__11Z2StatusMgrFf
/* 80162F28  48 00 00 1C */	b lbl_80162F44
lbl_80162F2C:
/* 80162F2C  38 60 00 00 */	li r3, 0
/* 80162F30  48 04 83 41 */	bl dKy_camera_water_in_status_set__FUc
/* 80162F34  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80162F38  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80162F3C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80162F40  48 15 38 49 */	bl setCameraInWaterDepth__11Z2StatusMgrFf
lbl_80162F44:
/* 80162F44  80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 80162F48  38 03 00 01 */	addi r0, r3, 1
/* 80162F4C  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 80162F50  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 80162F54  38 03 00 01 */	addi r0, r3, 1
/* 80162F58  90 1E 00 AC */	stw r0, 0xac(r30)
/* 80162F5C  38 60 00 FF */	li r3, 0xff
/* 80162F60  90 7E 08 8C */	stw r3, 0x88c(r30)
/* 80162F64  90 7E 08 90 */	stw r3, 0x890(r30)
/* 80162F68  38 00 00 00 */	li r0, 0
/* 80162F6C  98 1E 08 9A */	stb r0, 0x89a(r30)
/* 80162F70  90 1E 08 94 */	stw r0, 0x894(r30)
/* 80162F74  98 7E 08 9B */	stb r3, 0x89b(r30)
/* 80162F78  B0 7E 08 98 */	sth r3, 0x898(r30)
/* 80162F7C  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 80162F80  90 7E 08 CC */	stw r3, 0x8cc(r30)
/* 80162F84  98 1E 08 D6 */	stb r0, 0x8d6(r30)
/* 80162F88  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 80162F8C  98 7E 08 D7 */	stb r3, 0x8d7(r30)
/* 80162F90  B0 7E 08 D4 */	sth r3, 0x8d4(r30)
/* 80162F94  38 60 00 01 */	li r3, 1
/* 80162F98  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80162F9C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80162FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80162FA4  48 1F F2 85 */	bl _restgpr_29
/* 80162FA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80162FAC  7C 08 03 A6 */	mtlr r0
/* 80162FB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80162FB4  4E 80 00 20 */	blr 
