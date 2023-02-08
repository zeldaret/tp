lbl_805F9BE4:
/* 805F9BE4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 805F9BE8  7C 08 02 A6 */	mflr r0
/* 805F9BEC  90 01 01 34 */	stw r0, 0x134(r1)
/* 805F9BF0  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 805F9BF4  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 805F9BF8  39 61 01 20 */	addi r11, r1, 0x120
/* 805F9BFC  4B D6 85 CD */	bl _savegpr_24
/* 805F9C00  7C 7F 1B 78 */	mr r31, r3
/* 805F9C04  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F9C08  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F9C0C  80 1F 07 5C */	lwz r0, 0x75c(r31)
/* 805F9C10  2C 00 00 09 */	cmpwi r0, 9
/* 805F9C14  40 82 00 58 */	bne lbl_805F9C6C
/* 805F9C18  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805F9C1C  38 63 00 0C */	addi r3, r3, 0xc
/* 805F9C20  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805F9C24  4B D2 E8 09 */	bl checkPass__12J3DFrameCtrlFf
/* 805F9C28  2C 03 00 00 */	cmpwi r3, 0
/* 805F9C2C  41 82 00 14 */	beq lbl_805F9C40
/* 805F9C30  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9C34  60 00 00 03 */	ori r0, r0, 3
/* 805F9C38  98 1F 26 98 */	stb r0, 0x2698(r31)
/* 805F9C3C  48 00 00 28 */	b lbl_805F9C64
lbl_805F9C40:
/* 805F9C40  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805F9C44  38 63 00 0C */	addi r3, r3, 0xc
/* 805F9C48  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 805F9C4C  4B D2 E7 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F9C50  2C 03 00 00 */	cmpwi r3, 0
/* 805F9C54  41 82 00 10 */	beq lbl_805F9C64
/* 805F9C58  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9C5C  60 00 00 0C */	ori r0, r0, 0xc
/* 805F9C60  98 1F 26 98 */	stb r0, 0x2698(r31)
lbl_805F9C64:
/* 805F9C64  38 00 00 01 */	li r0, 1
/* 805F9C68  B0 1F 0C 6A */	sth r0, 0xc6a(r31)
lbl_805F9C6C:
/* 805F9C6C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805F9C70  4B A7 D9 0D */	bl __ct__11dBgS_GndChkFv
/* 805F9C74  38 61 00 50 */	addi r3, r1, 0x50
/* 805F9C78  4B A7 DB 39 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 805F9C7C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F9C80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805F9C84  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805F9C88  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805F9C8C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805F9C90  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F9C94  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805F9C98  EC 01 00 2A */	fadds f0, f1, f0
/* 805F9C9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805F9CA0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805F9CA4  38 81 00 44 */	addi r4, r1, 0x44
/* 805F9CA8  4B C6 E0 81 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805F9CAC  38 61 00 50 */	addi r3, r1, 0x50
/* 805F9CB0  38 81 00 44 */	addi r4, r1, 0x44
/* 805F9CB4  4B C6 E0 75 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805F9CB8  3B 60 00 00 */	li r27, 0
/* 805F9CBC  3B 40 00 00 */	li r26, 0
/* 805F9CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F9CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F9CC8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 805F9CCC  7F 83 E3 78 */	mr r3, r28
/* 805F9CD0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805F9CD4  4B A7 A7 CD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805F9CD8  FF E0 08 90 */	fmr f31, f1
/* 805F9CDC  7F 83 E3 78 */	mr r3, r28
/* 805F9CE0  38 81 00 50 */	addi r4, r1, 0x50
/* 805F9CE4  4B A7 A7 BD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805F9CE8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 805F9CEC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F9CF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F9CF4  40 81 00 08 */	ble lbl_805F9CFC
/* 805F9CF8  3B 60 00 01 */	li r27, 1
lbl_805F9CFC:
/* 805F9CFC  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9D00  28 00 00 00 */	cmplwi r0, 0
/* 805F9D04  41 82 03 68 */	beq lbl_805FA06C
/* 805F9D08  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805F9D0C  83 A3 00 04 */	lwz r29, 4(r3)
/* 805F9D10  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F9D14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805F9D18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805F9D1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F9D20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F9D24  41 82 00 CC */	beq lbl_805F9DF0
/* 805F9D28  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F9D2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9D30  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 805F9D34  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805F9D38  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805F9D3C  80 84 00 00 */	lwz r4, 0(r4)
/* 805F9D40  4B D4 C7 71 */	bl PSMTXCopy
/* 805F9D44  38 61 00 44 */	addi r3, r1, 0x44
/* 805F9D48  38 81 00 38 */	addi r4, r1, 0x38
/* 805F9D4C  4B C7 71 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F9D50  7F 60 07 75 */	extsb. r0, r27
/* 805F9D54  41 82 00 0C */	beq lbl_805F9D60
/* 805F9D58  3B 40 00 01 */	li r26, 1
/* 805F9D5C  48 00 00 94 */	b lbl_805F9DF0
lbl_805F9D60:
/* 805F9D60  38 7F 25 B0 */	addi r3, r31, 0x25b0
/* 805F9D64  38 9F 25 D0 */	addi r4, r31, 0x25d0
/* 805F9D68  38 A1 00 38 */	addi r5, r1, 0x38
/* 805F9D6C  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805F9D70  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F9D74  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805F9D78  EC 21 00 32 */	fmuls f1, f1, f0
/* 805F9D7C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805F9D80  39 00 00 00 */	li r8, 0
/* 805F9D84  4B A2 32 9D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805F9D88  A8 1F 0C 6A */	lha r0, 0xc6a(r31)
/* 805F9D8C  2C 00 00 00 */	cmpwi r0, 0
/* 805F9D90  41 82 00 60 */	beq lbl_805F9DF0
/* 805F9D94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F9D98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F9D9C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F9DA0  38 00 00 FF */	li r0, 0xff
/* 805F9DA4  90 01 00 08 */	stw r0, 8(r1)
/* 805F9DA8  38 80 00 00 */	li r4, 0
/* 805F9DAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F9DB0  38 00 FF FF */	li r0, -1
/* 805F9DB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F9DB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F9DBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F9DC0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F9DC4  80 9F 25 C0 */	lwz r4, 0x25c0(r31)
/* 805F9DC8  38 A0 00 00 */	li r5, 0
/* 805F9DCC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 805F9DD0  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 805F9DD4  38 E1 00 38 */	addi r7, r1, 0x38
/* 805F9DD8  39 00 00 00 */	li r8, 0
/* 805F9DDC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805F9DE0  39 40 00 00 */	li r10, 0
/* 805F9DE4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F9DE8  4B A5 36 E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F9DEC  90 7F 25 C0 */	stw r3, 0x25c0(r31)
lbl_805F9DF0:
/* 805F9DF0  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9DF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805F9DF8  41 82 00 CC */	beq lbl_805F9EC4
/* 805F9DFC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F9E00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9E04  38 63 01 20 */	addi r3, r3, 0x120
/* 805F9E08  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805F9E0C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805F9E10  80 84 00 00 */	lwz r4, 0(r4)
/* 805F9E14  4B D4 C6 9D */	bl PSMTXCopy
/* 805F9E18  38 61 00 44 */	addi r3, r1, 0x44
/* 805F9E1C  38 81 00 38 */	addi r4, r1, 0x38
/* 805F9E20  4B C7 70 CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F9E24  7F 60 07 75 */	extsb. r0, r27
/* 805F9E28  41 82 00 0C */	beq lbl_805F9E34
/* 805F9E2C  3B 40 00 01 */	li r26, 1
/* 805F9E30  48 00 00 94 */	b lbl_805F9EC4
lbl_805F9E34:
/* 805F9E34  38 7F 25 AC */	addi r3, r31, 0x25ac
/* 805F9E38  38 9F 25 CC */	addi r4, r31, 0x25cc
/* 805F9E3C  38 A1 00 38 */	addi r5, r1, 0x38
/* 805F9E40  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805F9E44  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F9E48  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805F9E4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 805F9E50  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805F9E54  39 00 00 00 */	li r8, 0
/* 805F9E58  4B A2 31 C9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805F9E5C  A8 1F 0C 6A */	lha r0, 0xc6a(r31)
/* 805F9E60  2C 00 00 00 */	cmpwi r0, 0
/* 805F9E64  41 82 00 60 */	beq lbl_805F9EC4
/* 805F9E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F9E6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F9E70  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F9E74  38 00 00 FF */	li r0, 0xff
/* 805F9E78  90 01 00 08 */	stw r0, 8(r1)
/* 805F9E7C  38 80 00 00 */	li r4, 0
/* 805F9E80  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F9E84  38 00 FF FF */	li r0, -1
/* 805F9E88  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F9E8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F9E90  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F9E94  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F9E98  80 9F 25 BC */	lwz r4, 0x25bc(r31)
/* 805F9E9C  38 A0 00 00 */	li r5, 0
/* 805F9EA0  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 805F9EA4  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 805F9EA8  38 E1 00 38 */	addi r7, r1, 0x38
/* 805F9EAC  39 00 00 00 */	li r8, 0
/* 805F9EB0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805F9EB4  39 40 00 00 */	li r10, 0
/* 805F9EB8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F9EBC  4B A5 36 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F9EC0  90 7F 25 BC */	stw r3, 0x25bc(r31)
lbl_805F9EC4:
/* 805F9EC4  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9EC8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 805F9ECC  41 82 00 CC */	beq lbl_805F9F98
/* 805F9ED0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F9ED4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9ED8  38 63 06 60 */	addi r3, r3, 0x660
/* 805F9EDC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805F9EE0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805F9EE4  80 84 00 00 */	lwz r4, 0(r4)
/* 805F9EE8  4B D4 C5 C9 */	bl PSMTXCopy
/* 805F9EEC  38 61 00 44 */	addi r3, r1, 0x44
/* 805F9EF0  38 81 00 38 */	addi r4, r1, 0x38
/* 805F9EF4  4B C7 6F F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F9EF8  7F 60 07 75 */	extsb. r0, r27
/* 805F9EFC  41 82 00 0C */	beq lbl_805F9F08
/* 805F9F00  3B 40 00 01 */	li r26, 1
/* 805F9F04  48 00 00 94 */	b lbl_805F9F98
lbl_805F9F08:
/* 805F9F08  38 7F 25 B4 */	addi r3, r31, 0x25b4
/* 805F9F0C  38 9F 25 D4 */	addi r4, r31, 0x25d4
/* 805F9F10  38 A1 00 38 */	addi r5, r1, 0x38
/* 805F9F14  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805F9F18  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F9F1C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805F9F20  EC 21 00 32 */	fmuls f1, f1, f0
/* 805F9F24  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805F9F28  39 00 00 00 */	li r8, 0
/* 805F9F2C  4B A2 30 F5 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805F9F30  A8 1F 0C 6A */	lha r0, 0xc6a(r31)
/* 805F9F34  2C 00 00 00 */	cmpwi r0, 0
/* 805F9F38  41 82 00 60 */	beq lbl_805F9F98
/* 805F9F3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F9F40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F9F44  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F9F48  38 00 00 FF */	li r0, 0xff
/* 805F9F4C  90 01 00 08 */	stw r0, 8(r1)
/* 805F9F50  38 80 00 00 */	li r4, 0
/* 805F9F54  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F9F58  38 00 FF FF */	li r0, -1
/* 805F9F5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F9F60  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F9F64  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F9F68  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F9F6C  80 9F 25 C4 */	lwz r4, 0x25c4(r31)
/* 805F9F70  38 A0 00 00 */	li r5, 0
/* 805F9F74  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 805F9F78  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 805F9F7C  38 E1 00 38 */	addi r7, r1, 0x38
/* 805F9F80  39 00 00 00 */	li r8, 0
/* 805F9F84  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805F9F88  39 40 00 00 */	li r10, 0
/* 805F9F8C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F9F90  4B A5 35 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F9F94  90 7F 25 C4 */	stw r3, 0x25c4(r31)
lbl_805F9F98:
/* 805F9F98  88 1F 26 98 */	lbz r0, 0x2698(r31)
/* 805F9F9C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805F9FA0  41 82 00 CC */	beq lbl_805FA06C
/* 805F9FA4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805F9FA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9FAC  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 805F9FB0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805F9FB4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805F9FB8  80 84 00 00 */	lwz r4, 0(r4)
/* 805F9FBC  4B D4 C4 F5 */	bl PSMTXCopy
/* 805F9FC0  38 61 00 44 */	addi r3, r1, 0x44
/* 805F9FC4  38 81 00 38 */	addi r4, r1, 0x38
/* 805F9FC8  4B C7 6F 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805F9FCC  7F 60 07 75 */	extsb. r0, r27
/* 805F9FD0  41 82 00 0C */	beq lbl_805F9FDC
/* 805F9FD4  3B 40 00 01 */	li r26, 1
/* 805F9FD8  48 00 00 94 */	b lbl_805FA06C
lbl_805F9FDC:
/* 805F9FDC  38 7F 25 B8 */	addi r3, r31, 0x25b8
/* 805F9FE0  38 9F 25 D8 */	addi r4, r31, 0x25d8
/* 805F9FE4  38 A1 00 38 */	addi r5, r1, 0x38
/* 805F9FE8  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805F9FEC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F9FF0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805F9FF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 805F9FF8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805F9FFC  39 00 00 00 */	li r8, 0
/* 805FA000  4B A2 30 21 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805FA004  A8 1F 0C 6A */	lha r0, 0xc6a(r31)
/* 805FA008  2C 00 00 00 */	cmpwi r0, 0
/* 805FA00C  41 82 00 60 */	beq lbl_805FA06C
/* 805FA010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FA014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FA018  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805FA01C  38 00 00 FF */	li r0, 0xff
/* 805FA020  90 01 00 08 */	stw r0, 8(r1)
/* 805FA024  38 80 00 00 */	li r4, 0
/* 805FA028  90 81 00 0C */	stw r4, 0xc(r1)
/* 805FA02C  38 00 FF FF */	li r0, -1
/* 805FA030  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FA034  90 81 00 14 */	stw r4, 0x14(r1)
/* 805FA038  90 81 00 18 */	stw r4, 0x18(r1)
/* 805FA03C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805FA040  80 9F 25 C8 */	lwz r4, 0x25c8(r31)
/* 805FA044  38 A0 00 00 */	li r5, 0
/* 805FA048  3C C0 00 01 */	lis r6, 0x0001 /* 0x000080E3@ha */
/* 805FA04C  38 C6 80 E3 */	addi r6, r6, 0x80E3 /* 0x000080E3@l */
/* 805FA050  38 E1 00 38 */	addi r7, r1, 0x38
/* 805FA054  39 00 00 00 */	li r8, 0
/* 805FA058  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805FA05C  39 40 00 00 */	li r10, 0
/* 805FA060  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FA064  4B A5 34 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805FA068  90 7F 25 C8 */	stw r3, 0x25c8(r31)
lbl_805FA06C:
/* 805FA06C  88 1F 26 99 */	lbz r0, 0x2699(r31)
/* 805FA070  28 00 00 00 */	cmplwi r0, 0
/* 805FA074  41 82 00 84 */	beq lbl_805FA0F8
/* 805FA078  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805FA07C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FA080  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FA084  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805FA088  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805FA08C  80 63 00 04 */	lwz r3, 4(r3)
/* 805FA090  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805FA094  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FA098  38 63 00 60 */	addi r3, r3, 0x60
/* 805FA09C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805FA0A0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805FA0A4  80 84 00 00 */	lwz r4, 0(r4)
/* 805FA0A8  4B D4 C4 09 */	bl PSMTXCopy
/* 805FA0AC  38 61 00 44 */	addi r3, r1, 0x44
/* 805FA0B0  38 81 00 38 */	addi r4, r1, 0x38
/* 805FA0B4  4B C7 6E 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805FA0B8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 805FA0BC  88 1F 26 99 */	lbz r0, 0x2699(r31)
/* 805FA0C0  28 00 00 02 */	cmplwi r0, 2
/* 805FA0C4  40 82 00 08 */	bne lbl_805FA0CC
/* 805FA0C8  C0 3E 01 00 */	lfs f1, 0x100(r30)
lbl_805FA0CC:
/* 805FA0CC  7F 60 07 75 */	extsb. r0, r27
/* 805FA0D0  41 82 00 0C */	beq lbl_805FA0DC
/* 805FA0D4  3B 40 00 01 */	li r26, 1
/* 805FA0D8  48 00 00 20 */	b lbl_805FA0F8
lbl_805FA0DC:
/* 805FA0DC  38 7F 25 DC */	addi r3, r31, 0x25dc
/* 805FA0E0  38 9F 25 E0 */	addi r4, r31, 0x25e0
/* 805FA0E4  38 A1 00 38 */	addi r5, r1, 0x38
/* 805FA0E8  38 C0 00 00 */	li r6, 0
/* 805FA0EC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805FA0F0  39 00 00 01 */	li r8, 1
/* 805FA0F4  4B A2 2F 2D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_805FA0F8:
/* 805FA0F8  7F 40 07 75 */	extsb. r0, r26
/* 805FA0FC  41 82 00 BC */	beq lbl_805FA1B8
/* 805FA100  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 805FA104  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805FA108  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805FA10C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805FA110  38 61 00 24 */	addi r3, r1, 0x24
/* 805FA114  38 80 00 00 */	li r4, 0
/* 805FA118  38 A0 00 00 */	li r5, 0
/* 805FA11C  38 C0 00 00 */	li r6, 0
/* 805FA120  4B C6 D2 D5 */	bl __ct__5csXyzFsss
/* 805FA124  7F 83 E3 78 */	mr r3, r28
/* 805FA128  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805FA12C  4B A7 A3 75 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805FA130  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805FA134  3B 00 00 00 */	li r24, 0
/* 805FA138  3B 40 00 00 */	li r26, 0
/* 805FA13C  3B 60 00 00 */	li r27, 0
/* 805FA140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FA144  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FA148  3C 60 80 60 */	lis r3, w_eff_name@ha /* 0x80602AD4@ha */
/* 805FA14C  3B 83 2A D4 */	addi r28, r3, w_eff_name@l /* 0x80602AD4@l */
lbl_805FA150:
/* 805FA150  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805FA154  38 00 00 FF */	li r0, 0xff
/* 805FA158  90 01 00 08 */	stw r0, 8(r1)
/* 805FA15C  38 80 00 00 */	li r4, 0
/* 805FA160  90 81 00 0C */	stw r4, 0xc(r1)
/* 805FA164  38 00 FF FF */	li r0, -1
/* 805FA168  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FA16C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805FA170  90 81 00 18 */	stw r4, 0x18(r1)
/* 805FA174  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805FA178  3B 3B 25 E4 */	addi r25, r27, 0x25e4
/* 805FA17C  7C 9F C8 2E */	lwzx r4, r31, r25
/* 805FA180  38 A0 00 00 */	li r5, 0
/* 805FA184  7C DC D2 2E */	lhzx r6, r28, r26
/* 805FA188  38 E1 00 38 */	addi r7, r1, 0x38
/* 805FA18C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 805FA190  39 21 00 24 */	addi r9, r1, 0x24
/* 805FA194  39 41 00 2C */	addi r10, r1, 0x2c
/* 805FA198  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FA19C  4B A5 33 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805FA1A0  7C 7F C9 2E */	stwx r3, r31, r25
/* 805FA1A4  3B 18 00 01 */	addi r24, r24, 1
/* 805FA1A8  2C 18 00 03 */	cmpwi r24, 3
/* 805FA1AC  3B 5A 00 02 */	addi r26, r26, 2
/* 805FA1B0  3B 7B 00 04 */	addi r27, r27, 4
/* 805FA1B4  41 80 FF 9C */	blt lbl_805FA150
lbl_805FA1B8:
/* 805FA1B8  38 00 00 00 */	li r0, 0
/* 805FA1BC  98 1F 26 98 */	stb r0, 0x2698(r31)
/* 805FA1C0  B0 1F 0C 6A */	sth r0, 0xc6a(r31)
/* 805FA1C4  98 1F 26 99 */	stb r0, 0x2699(r31)
/* 805FA1C8  88 1F 1E 08 */	lbz r0, 0x1e08(r31)
/* 805FA1CC  28 00 00 00 */	cmplwi r0, 0
/* 805FA1D0  41 82 00 F4 */	beq lbl_805FA2C4
/* 805FA1D4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805FA1D8  80 63 00 04 */	lwz r3, 4(r3)
/* 805FA1DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805FA1E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805FA1E4  38 63 00 30 */	addi r3, r3, 0x30
/* 805FA1E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FA1EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FA1F0  4B D4 C2 C1 */	bl PSMTXCopy
/* 805FA1F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805FA1F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805FA1FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805FA200  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805FA204  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805FA208  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805FA20C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805FA210  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805FA214  3B 00 00 00 */	li r24, 0
/* 805FA218  3B 40 00 00 */	li r26, 0
/* 805FA21C  3B 60 00 00 */	li r27, 0
/* 805FA220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805FA224  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805FA228  3C 60 80 60 */	lis r3, e_name_6046@ha /* 0x80602AE4@ha */
/* 805FA22C  3B 83 2A E4 */	addi r28, r3, e_name_6046@l /* 0x80602AE4@l */
lbl_805FA230:
/* 805FA230  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805FA234  38 00 00 FF */	li r0, 0xff
/* 805FA238  90 01 00 08 */	stw r0, 8(r1)
/* 805FA23C  38 80 00 00 */	li r4, 0
/* 805FA240  90 81 00 0C */	stw r4, 0xc(r1)
/* 805FA244  38 00 FF FF */	li r0, -1
/* 805FA248  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FA24C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805FA250  90 81 00 18 */	stw r4, 0x18(r1)
/* 805FA254  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805FA258  3B 3B 26 8C */	addi r25, r27, 0x268c
/* 805FA25C  7C 9F C8 2E */	lwzx r4, r31, r25
/* 805FA260  38 A0 00 00 */	li r5, 0
/* 805FA264  7C DC D2 2E */	lhzx r6, r28, r26
/* 805FA268  38 E1 00 38 */	addi r7, r1, 0x38
/* 805FA26C  39 00 00 00 */	li r8, 0
/* 805FA270  39 20 00 00 */	li r9, 0
/* 805FA274  39 40 00 00 */	li r10, 0
/* 805FA278  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805FA27C  4B A5 32 51 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805FA280  7C 7F C9 2E */	stwx r3, r31, r25
/* 805FA284  3B 18 00 01 */	addi r24, r24, 1
/* 805FA288  2C 18 00 03 */	cmpwi r24, 3
/* 805FA28C  3B 5A 00 02 */	addi r26, r26, 2
/* 805FA290  3B 7B 00 04 */	addi r27, r27, 4
/* 805FA294  41 80 FF 9C */	blt lbl_805FA230
/* 805FA298  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070514@ha */
/* 805FA29C  38 03 05 14 */	addi r0, r3, 0x0514 /* 0x00070514@l */
/* 805FA2A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805FA2A4  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805FA2A8  38 81 00 20 */	addi r4, r1, 0x20
/* 805FA2AC  38 A0 00 00 */	li r5, 0
/* 805FA2B0  38 C0 FF FF */	li r6, -1
/* 805FA2B4  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805FA2B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805FA2BC  7D 89 03 A6 */	mtctr r12
/* 805FA2C0  4E 80 04 21 */	bctrl 
lbl_805FA2C4:
/* 805FA2C4  38 61 00 50 */	addi r3, r1, 0x50
/* 805FA2C8  38 80 FF FF */	li r4, -1
/* 805FA2CC  4B A7 D5 7D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 805FA2D0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805FA2D4  38 80 FF FF */	li r4, -1
/* 805FA2D8  4B A7 D3 19 */	bl __dt__11dBgS_GndChkFv
/* 805FA2DC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 805FA2E0  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 805FA2E4  39 61 01 20 */	addi r11, r1, 0x120
/* 805FA2E8  4B D6 7F 2D */	bl _restgpr_24
/* 805FA2EC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 805FA2F0  7C 08 03 A6 */	mtlr r0
/* 805FA2F4  38 21 01 30 */	addi r1, r1, 0x130
/* 805FA2F8  4E 80 00 20 */	blr 
