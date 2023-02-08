lbl_80BA3C38:
/* 80BA3C38  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80BA3C3C  7C 08 02 A6 */	mflr r0
/* 80BA3C40  90 01 01 74 */	stw r0, 0x174(r1)
/* 80BA3C44  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80BA3C48  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80BA3C4C  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 80BA3C50  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 80BA3C54  39 61 01 50 */	addi r11, r1, 0x150
/* 80BA3C58  4B 7B E5 79 */	bl _savegpr_26
/* 80BA3C5C  7C 7A 1B 78 */	mr r26, r3
/* 80BA3C60  3C 80 80 BA */	lis r4, lit_3776@ha /* 0x80BA5408@ha */
/* 80BA3C64  3B C4 54 08 */	addi r30, r4, lit_3776@l /* 0x80BA5408@l */
/* 80BA3C68  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80BA3C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80BA3C70  40 81 00 70 */	ble lbl_80BA3CE0
/* 80BA3C74  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80BA3C78  80 1A 06 2C */	lwz r0, 0x62c(r26)
/* 80BA3C7C  C8 3E 00 B8 */	lfd f1, 0xb8(r30)
/* 80BA3C80  90 01 01 24 */	stw r0, 0x124(r1)
/* 80BA3C84  3C 00 43 30 */	lis r0, 0x4330
/* 80BA3C88  90 01 01 20 */	stw r0, 0x120(r1)
/* 80BA3C8C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 80BA3C90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BA3C94  EC 02 00 2A */	fadds f0, f2, f0
/* 80BA3C98  D0 1A 06 28 */	stfs f0, 0x628(r26)
/* 80BA3C9C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BA3CA0  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BA3CA4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80BA3CA8  38 7A 07 C0 */	addi r3, r26, 0x7c0
/* 80BA3CAC  38 81 00 30 */	addi r4, r1, 0x30
/* 80BA3CB0  38 A0 00 00 */	li r5, 0
/* 80BA3CB4  38 C0 FF FF */	li r6, -1
/* 80BA3CB8  81 9A 07 C0 */	lwz r12, 0x7c0(r26)
/* 80BA3CBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BA3CC0  7D 89 03 A6 */	mtctr r12
/* 80BA3CC4  4E 80 04 21 */	bctrl 
/* 80BA3CC8  7F 43 D3 78 */	mr r3, r26
/* 80BA3CCC  4B 5B A3 AD */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80BA3CD0  7F 43 D3 78 */	mr r3, r26
/* 80BA3CD4  4B FF FA 2D */	bl ParticleSet__10daObjARI_cFv
/* 80BA3CD8  38 60 00 01 */	li r3, 1
/* 80BA3CDC  48 00 07 EC */	b lbl_80BA44C8
lbl_80BA3CE0:
/* 80BA3CE0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3CE4  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80BA3CE8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA3CEC  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80BA3CF0  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3CF4  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80BA3CF8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3CFC  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80BA3D00  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA3D04  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3D08  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3D0C  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80BA3D10  C0 3A 05 3C */	lfs f1, 0x53c(r26)
/* 80BA3D14  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80BA3D18  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA3D1C  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3D20  88 1A 06 31 */	lbz r0, 0x631(r26)
/* 80BA3D24  2C 00 00 02 */	cmpwi r0, 2
/* 80BA3D28  41 82 06 F0 */	beq lbl_80BA4418
/* 80BA3D2C  40 80 00 14 */	bge lbl_80BA3D40
/* 80BA3D30  2C 00 00 00 */	cmpwi r0, 0
/* 80BA3D34  41 82 00 18 */	beq lbl_80BA3D4C
/* 80BA3D38  40 80 01 D4 */	bge lbl_80BA3F0C
/* 80BA3D3C  48 00 06 DC */	b lbl_80BA4418
lbl_80BA3D40:
/* 80BA3D40  2C 00 00 04 */	cmpwi r0, 4
/* 80BA3D44  40 80 06 D4 */	bge lbl_80BA4418
/* 80BA3D48  48 00 00 F8 */	b lbl_80BA3E40
lbl_80BA3D4C:
/* 80BA3D4C  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80BA3D50  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80BA3D54  40 82 00 0C */	bne lbl_80BA3D60
/* 80BA3D58  4B FF F6 25 */	bl Action__10daObjARI_cFv
/* 80BA3D5C  48 00 00 1C */	b lbl_80BA3D78
lbl_80BA3D60:
/* 80BA3D60  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3D64  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80BA3D68  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA3D6C  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 80BA3D70  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3D74  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
lbl_80BA3D78:
/* 80BA3D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA3D80  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BA3D84  38 00 00 FF */	li r0, 0xff
/* 80BA3D88  90 01 00 08 */	stw r0, 8(r1)
/* 80BA3D8C  38 80 00 00 */	li r4, 0
/* 80BA3D90  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BA3D94  38 00 FF FF */	li r0, -1
/* 80BA3D98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA3D9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA3DA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA3DA4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BA3DA8  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 80BA3DAC  38 A0 00 00 */	li r5, 0
/* 80BA3DB0  38 C0 0A 1C */	li r6, 0xa1c
/* 80BA3DB4  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 80BA3DB8  39 1A 01 0C */	addi r8, r26, 0x10c
/* 80BA3DBC  39 3A 04 E4 */	addi r9, r26, 0x4e4
/* 80BA3DC0  39 40 00 00 */	li r10, 0
/* 80BA3DC4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BA3DC8  4B 4A 97 05 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA3DCC  90 7A 05 74 */	stw r3, 0x574(r26)
/* 80BA3DD0  7F 43 D3 78 */	mr r3, r26
/* 80BA3DD4  4B FF E9 55 */	bl SetCcSph__10daObjARI_cFv
/* 80BA3DD8  7F 43 D3 78 */	mr r3, r26
/* 80BA3DDC  4B FF FD 5D */	bl ObjHit__10daObjARI_cFv
/* 80BA3DE0  7F 43 D3 78 */	mr r3, r26
/* 80BA3DE4  4B FF FA 41 */	bl BoomChk__10daObjARI_cFv
/* 80BA3DE8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3DEC  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80BA3DF0  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA3DF4  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3DF8  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3DFC  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80BA3E00  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80BA3E04  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80BA3E08  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA3E0C  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3E10  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 80BA3E14  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80BA3E18  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80BA3E1C  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80BA3E20  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 80BA3E24  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80BA3E28  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 80BA3E2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA3E30  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80BA3E34  7F 43 D3 78 */	mr r3, r26
/* 80BA3E38  4B FF F8 C9 */	bl ParticleSet__10daObjARI_cFv
/* 80BA3E3C  48 00 05 DC */	b lbl_80BA4418
lbl_80BA3E40:
/* 80BA3E40  4B FF F8 8D */	bl FallAction__10daObjARI_cFv
/* 80BA3E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA3E4C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BA3E50  38 00 00 FF */	li r0, 0xff
/* 80BA3E54  90 01 00 08 */	stw r0, 8(r1)
/* 80BA3E58  38 80 00 00 */	li r4, 0
/* 80BA3E5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BA3E60  38 00 FF FF */	li r0, -1
/* 80BA3E64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA3E68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA3E6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA3E70  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BA3E74  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 80BA3E78  38 A0 00 00 */	li r5, 0
/* 80BA3E7C  38 C0 0A 1C */	li r6, 0xa1c
/* 80BA3E80  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 80BA3E84  39 1A 01 0C */	addi r8, r26, 0x10c
/* 80BA3E88  39 3A 04 E4 */	addi r9, r26, 0x4e4
/* 80BA3E8C  39 40 00 00 */	li r10, 0
/* 80BA3E90  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BA3E94  4B 4A 96 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA3E98  90 7A 05 74 */	stw r3, 0x574(r26)
/* 80BA3E9C  7F 43 D3 78 */	mr r3, r26
/* 80BA3EA0  4B FF E8 89 */	bl SetCcSph__10daObjARI_cFv
/* 80BA3EA4  7F 43 D3 78 */	mr r3, r26
/* 80BA3EA8  4B FF FC 91 */	bl ObjHit__10daObjARI_cFv
/* 80BA3EAC  7F 43 D3 78 */	mr r3, r26
/* 80BA3EB0  4B FF F9 75 */	bl BoomChk__10daObjARI_cFv
/* 80BA3EB4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3EB8  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80BA3EBC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA3EC0  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3EC4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3EC8  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80BA3ECC  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80BA3ED0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80BA3ED4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA3ED8  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80BA3EDC  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 80BA3EE0  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80BA3EE4  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80BA3EE8  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80BA3EEC  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 80BA3EF0  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80BA3EF4  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 80BA3EF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA3EFC  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80BA3F00  7F 43 D3 78 */	mr r3, r26
/* 80BA3F04  4B FF F7 FD */	bl ParticleSet__10daObjARI_cFv
/* 80BA3F08  48 00 05 10 */	b lbl_80BA4418
lbl_80BA3F0C:
/* 80BA3F0C  A8 7A 05 EA */	lha r3, 0x5ea(r26)
/* 80BA3F10  38 03 FF FF */	addi r0, r3, -1
/* 80BA3F14  B0 1A 05 EA */	sth r0, 0x5ea(r26)
/* 80BA3F18  A8 1A 05 EA */	lha r0, 0x5ea(r26)
/* 80BA3F1C  2C 00 00 00 */	cmpwi r0, 0
/* 80BA3F20  41 81 00 0C */	bgt lbl_80BA3F2C
/* 80BA3F24  38 00 00 00 */	li r0, 0
/* 80BA3F28  B0 1A 05 EA */	sth r0, 0x5ea(r26)
lbl_80BA3F2C:
/* 80BA3F2C  7F 43 D3 78 */	mr r3, r26
/* 80BA3F30  4B FF F3 41 */	bl MoveAction__10daObjARI_cFv
/* 80BA3F34  88 1A 05 FC */	lbz r0, 0x5fc(r26)
/* 80BA3F38  28 00 00 00 */	cmplwi r0, 0
/* 80BA3F3C  40 82 04 DC */	bne lbl_80BA4418
/* 80BA3F40  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BA3F44  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80BA3F48  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80BA3F4C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80BA3F50  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80BA3F54  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80BA3F58  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80BA3F5C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80BA3F60  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80BA3F64  4B 4D 3D 05 */	bl __ct__11dBgS_LinChkFv
/* 80BA3F68  38 61 01 08 */	addi r3, r1, 0x108
/* 80BA3F6C  4B 4D 4E FD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BA3F70  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3F74  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BA3F78  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80BA3F7C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80BA3F80  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA3F84  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BA3F88  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80BA3F8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA3F90  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BA3F94  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80BA3F98  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80BA3F9C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80BA3FA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BA3FA4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA3FA8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BA3FAC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80BA3FB0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80BA3FB4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80BA3FB8  38 81 00 64 */	addi r4, r1, 0x64
/* 80BA3FBC  38 A1 00 70 */	addi r5, r1, 0x70
/* 80BA3FC0  38 C0 00 00 */	li r6, 0
/* 80BA3FC4  4B 4D 3D A1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA3FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA3FD0  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80BA3FD4  7F 83 E3 78 */	mr r3, r28
/* 80BA3FD8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80BA3FDC  4B 4D 03 D9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BA3FE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA3FE4  41 82 01 D0 */	beq lbl_80BA41B4
/* 80BA3FE8  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA3FEC  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA3FF0  90 01 00 AC */	stw r0, 0xac(r1)
/* 80BA3FF4  7F 83 E3 78 */	mr r3, r28
/* 80BA3FF8  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80BA3FFC  38 A1 00 9C */	addi r5, r1, 0x9c
/* 80BA4000  4B 4D 07 45 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA4004  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80BA4008  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80BA400C  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80BA4010  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80BA4014  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80BA4018  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80BA401C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA4020  D0 1A 06 14 */	stfs f0, 0x614(r26)
/* 80BA4024  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA4028  D0 1A 06 18 */	stfs f0, 0x618(r26)
/* 80BA402C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA4030  D0 1A 06 1C */	stfs f0, 0x61c(r26)
/* 80BA4034  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA4038  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80BA403C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA4040  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80BA4044  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA4048  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80BA404C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA4050  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BA4054  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BA4058  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BA405C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BA4060  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80BA4064  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BA4068  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80BA406C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BA4070  38 61 00 58 */	addi r3, r1, 0x58
/* 80BA4074  38 81 00 4C */	addi r4, r1, 0x4c
/* 80BA4078  4B 7A 33 25 */	bl PSVECSquareDistance
/* 80BA407C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA4080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4084  40 81 00 58 */	ble lbl_80BA40DC
/* 80BA4088  FC 00 08 34 */	frsqrte f0, f1
/* 80BA408C  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80BA4090  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA4094  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80BA4098  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA409C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA40A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA40A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA40A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA40AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA40B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA40B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA40B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA40BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA40C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA40C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA40C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA40CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA40D0  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA40D4  FC 40 10 18 */	frsp f2, f2
/* 80BA40D8  48 00 00 90 */	b lbl_80BA4168
lbl_80BA40DC:
/* 80BA40DC  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80BA40E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA40E4  40 80 00 10 */	bge lbl_80BA40F4
/* 80BA40E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA40EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA40F0  48 00 00 78 */	b lbl_80BA4168
lbl_80BA40F4:
/* 80BA40F4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BA40F8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80BA40FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA4100  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA4104  7C 03 00 00 */	cmpw r3, r0
/* 80BA4108  41 82 00 14 */	beq lbl_80BA411C
/* 80BA410C  40 80 00 40 */	bge lbl_80BA414C
/* 80BA4110  2C 03 00 00 */	cmpwi r3, 0
/* 80BA4114  41 82 00 20 */	beq lbl_80BA4134
/* 80BA4118  48 00 00 34 */	b lbl_80BA414C
lbl_80BA411C:
/* 80BA411C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA4120  41 82 00 0C */	beq lbl_80BA412C
/* 80BA4124  38 00 00 01 */	li r0, 1
/* 80BA4128  48 00 00 28 */	b lbl_80BA4150
lbl_80BA412C:
/* 80BA412C  38 00 00 02 */	li r0, 2
/* 80BA4130  48 00 00 20 */	b lbl_80BA4150
lbl_80BA4134:
/* 80BA4134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA4138  41 82 00 0C */	beq lbl_80BA4144
/* 80BA413C  38 00 00 05 */	li r0, 5
/* 80BA4140  48 00 00 10 */	b lbl_80BA4150
lbl_80BA4144:
/* 80BA4144  38 00 00 03 */	li r0, 3
/* 80BA4148  48 00 00 08 */	b lbl_80BA4150
lbl_80BA414C:
/* 80BA414C  38 00 00 04 */	li r0, 4
lbl_80BA4150:
/* 80BA4150  2C 00 00 01 */	cmpwi r0, 1
/* 80BA4154  40 82 00 10 */	bne lbl_80BA4164
/* 80BA4158  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA415C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA4160  48 00 00 08 */	b lbl_80BA4168
lbl_80BA4164:
/* 80BA4164  FC 40 08 90 */	fmr f2, f1
lbl_80BA4168:
/* 80BA4168  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80BA416C  4B 6C 35 09 */	bl cM_atan2s__Fff
/* 80BA4170  7C 03 00 D0 */	neg r0, r3
/* 80BA4174  B0 1A 06 02 */	sth r0, 0x602(r26)
/* 80BA4178  B0 1A 06 08 */	sth r0, 0x608(r26)
/* 80BA417C  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80BA4180  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80BA4184  4B 6C 34 F1 */	bl cM_atan2s__Fff
/* 80BA4188  B0 7A 05 FE */	sth r3, 0x5fe(r26)
/* 80BA418C  B0 7A 06 04 */	sth r3, 0x604(r26)
/* 80BA4190  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80BA4194  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 80BA4198  4B 6C 34 DD */	bl cM_atan2s__Fff
/* 80BA419C  B0 7A 06 0E */	sth r3, 0x60e(r26)
/* 80BA41A0  38 00 00 01 */	li r0, 1
/* 80BA41A4  98 1A 05 FC */	stb r0, 0x5fc(r26)
/* 80BA41A8  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA41AC  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA41B0  90 01 00 AC */	stw r0, 0xac(r1)
lbl_80BA41B4:
/* 80BA41B4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA41B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BA41BC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BA41C0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BA41C4  3B 60 00 00 */	li r27, 0
/* 80BA41C8  3B A1 00 C4 */	addi r29, r1, 0xc4
/* 80BA41CC  C3 DE 00 D4 */	lfs f30, 0xd4(r30)
/* 80BA41D0  CB FE 00 58 */	lfd f31, 0x58(r30)
/* 80BA41D4  3F E0 43 30 */	lis r31, 0x4330
lbl_80BA41D8:
/* 80BA41D8  38 61 00 70 */	addi r3, r1, 0x70
/* 80BA41DC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA41E0  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BA41E4  90 01 01 24 */	stw r0, 0x124(r1)
/* 80BA41E8  93 E1 01 20 */	stw r31, 0x120(r1)
/* 80BA41EC  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 80BA41F0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BA41F4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BA41F8  FC 00 00 1E */	fctiwz f0, f0
/* 80BA41FC  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80BA4200  80 A1 01 2C */	lwz r5, 0x12c(r1)
/* 80BA4204  38 C1 00 7C */	addi r6, r1, 0x7c
/* 80BA4208  4B 6C CB B9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80BA420C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80BA4210  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA4214  38 A1 00 70 */	addi r5, r1, 0x70
/* 80BA4218  38 C0 00 00 */	li r6, 0
/* 80BA421C  4B 4D 3B 49 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA4220  7F 83 E3 78 */	mr r3, r28
/* 80BA4224  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80BA4228  4B 4D 01 8D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BA422C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4230  41 82 01 D0 */	beq lbl_80BA4400
/* 80BA4234  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA4238  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA423C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80BA4240  7F 83 E3 78 */	mr r3, r28
/* 80BA4244  7F A4 EB 78 */	mr r4, r29
/* 80BA4248  38 A1 00 88 */	addi r5, r1, 0x88
/* 80BA424C  4B 4D 04 F9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA4250  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80BA4254  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80BA4258  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80BA425C  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80BA4260  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80BA4264  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80BA4268  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA426C  D0 1A 06 14 */	stfs f0, 0x614(r26)
/* 80BA4270  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA4274  D0 1A 06 18 */	stfs f0, 0x618(r26)
/* 80BA4278  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA427C  D0 1A 06 1C */	stfs f0, 0x61c(r26)
/* 80BA4280  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA4284  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80BA4288  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA428C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80BA4290  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA4294  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80BA4298  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA429C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BA42A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BA42A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BA42A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BA42AC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80BA42B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BA42B4  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80BA42B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BA42BC  38 61 00 40 */	addi r3, r1, 0x40
/* 80BA42C0  38 81 00 34 */	addi r4, r1, 0x34
/* 80BA42C4  4B 7A 30 D9 */	bl PSVECSquareDistance
/* 80BA42C8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA42CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA42D0  40 81 00 58 */	ble lbl_80BA4328
/* 80BA42D4  FC 00 08 34 */	frsqrte f0, f1
/* 80BA42D8  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80BA42DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA42E0  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80BA42E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA42E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA42EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA42F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA42F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA42F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA42FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4300  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4304  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA4308  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA430C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA4310  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4314  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4318  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA431C  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA4320  FC 40 10 18 */	frsp f2, f2
/* 80BA4324  48 00 00 90 */	b lbl_80BA43B4
lbl_80BA4328:
/* 80BA4328  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80BA432C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4330  40 80 00 10 */	bge lbl_80BA4340
/* 80BA4334  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA4338  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA433C  48 00 00 78 */	b lbl_80BA43B4
lbl_80BA4340:
/* 80BA4340  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BA4344  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80BA4348  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA434C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA4350  7C 03 00 00 */	cmpw r3, r0
/* 80BA4354  41 82 00 14 */	beq lbl_80BA4368
/* 80BA4358  40 80 00 40 */	bge lbl_80BA4398
/* 80BA435C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA4360  41 82 00 20 */	beq lbl_80BA4380
/* 80BA4364  48 00 00 34 */	b lbl_80BA4398
lbl_80BA4368:
/* 80BA4368  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA436C  41 82 00 0C */	beq lbl_80BA4378
/* 80BA4370  38 00 00 01 */	li r0, 1
/* 80BA4374  48 00 00 28 */	b lbl_80BA439C
lbl_80BA4378:
/* 80BA4378  38 00 00 02 */	li r0, 2
/* 80BA437C  48 00 00 20 */	b lbl_80BA439C
lbl_80BA4380:
/* 80BA4380  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA4384  41 82 00 0C */	beq lbl_80BA4390
/* 80BA4388  38 00 00 05 */	li r0, 5
/* 80BA438C  48 00 00 10 */	b lbl_80BA439C
lbl_80BA4390:
/* 80BA4390  38 00 00 03 */	li r0, 3
/* 80BA4394  48 00 00 08 */	b lbl_80BA439C
lbl_80BA4398:
/* 80BA4398  38 00 00 04 */	li r0, 4
lbl_80BA439C:
/* 80BA439C  2C 00 00 01 */	cmpwi r0, 1
/* 80BA43A0  40 82 00 10 */	bne lbl_80BA43B0
/* 80BA43A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA43A8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA43AC  48 00 00 08 */	b lbl_80BA43B4
lbl_80BA43B0:
/* 80BA43B0  FC 40 08 90 */	fmr f2, f1
lbl_80BA43B4:
/* 80BA43B4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80BA43B8  4B 6C 32 BD */	bl cM_atan2s__Fff
/* 80BA43BC  7C 03 00 D0 */	neg r0, r3
/* 80BA43C0  B0 1A 06 02 */	sth r0, 0x602(r26)
/* 80BA43C4  B0 1A 06 08 */	sth r0, 0x608(r26)
/* 80BA43C8  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 80BA43CC  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 80BA43D0  4B 6C 32 A5 */	bl cM_atan2s__Fff
/* 80BA43D4  B0 7A 05 FE */	sth r3, 0x5fe(r26)
/* 80BA43D8  B0 7A 06 04 */	sth r3, 0x604(r26)
/* 80BA43DC  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80BA43E0  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80BA43E4  4B 6C 32 91 */	bl cM_atan2s__Fff
/* 80BA43E8  B0 7A 06 0E */	sth r3, 0x60e(r26)
/* 80BA43EC  38 00 00 01 */	li r0, 1
/* 80BA43F0  98 1A 05 FC */	stb r0, 0x5fc(r26)
/* 80BA43F4  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA43F8  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA43FC  90 01 00 98 */	stw r0, 0x98(r1)
lbl_80BA4400:
/* 80BA4400  3B 7B 00 01 */	addi r27, r27, 1
/* 80BA4404  2C 1B 00 04 */	cmpwi r27, 4
/* 80BA4408  41 80 FD D0 */	blt lbl_80BA41D8
/* 80BA440C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80BA4410  38 80 FF FF */	li r4, -1
/* 80BA4414  4B 4D 38 C9 */	bl __dt__11dBgS_LinChkFv
lbl_80BA4418:
/* 80BA4418  88 1A 07 BC */	lbz r0, 0x7bc(r26)
/* 80BA441C  28 00 00 00 */	cmplwi r0, 0
/* 80BA4420  41 82 00 18 */	beq lbl_80BA4438
/* 80BA4424  38 7A 08 90 */	addi r3, r26, 0x890
/* 80BA4428  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA442C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4430  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BA4434  4B 4D 26 79 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80BA4438:
/* 80BA4438  80 7A 06 20 */	lwz r3, 0x620(r26)
/* 80BA443C  4B 46 8F ED */	bl play__14mDoExt_baseAnmFv
/* 80BA4440  80 7A 06 24 */	lwz r3, 0x624(r26)
/* 80BA4444  4B 46 8F E5 */	bl play__14mDoExt_baseAnmFv
/* 80BA4448  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80BA444C  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80BA4450  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BA4454  38 7A 07 C0 */	addi r3, r26, 0x7c0
/* 80BA4458  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BA445C  38 A0 00 00 */	li r5, 0
/* 80BA4460  38 C0 FF FF */	li r6, -1
/* 80BA4464  81 9A 07 C0 */	lwz r12, 0x7c0(r26)
/* 80BA4468  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BA446C  7D 89 03 A6 */	mtctr r12
/* 80BA4470  4E 80 04 21 */	bctrl 
/* 80BA4474  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80BA4478  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80BA447C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BA4480  38 7A 07 C0 */	addi r3, r26, 0x7c0
/* 80BA4484  38 81 00 28 */	addi r4, r1, 0x28
/* 80BA4488  38 A0 00 00 */	li r5, 0
/* 80BA448C  38 C0 FF FF */	li r6, -1
/* 80BA4490  81 9A 07 C0 */	lwz r12, 0x7c0(r26)
/* 80BA4494  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BA4498  7D 89 03 A6 */	mtctr r12
/* 80BA449C  4E 80 04 21 */	bctrl 
/* 80BA44A0  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80BA44A4  7C 03 07 74 */	extsb r3, r0
/* 80BA44A8  4B 48 8B C5 */	bl dComIfGp_getReverb__Fi
/* 80BA44AC  7C 65 1B 78 */	mr r5, r3
/* 80BA44B0  80 7A 0A 68 */	lwz r3, 0xa68(r26)
/* 80BA44B4  38 80 00 00 */	li r4, 0
/* 80BA44B8  4B 46 CB F9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80BA44BC  7F 43 D3 78 */	mr r3, r26
/* 80BA44C0  48 00 02 15 */	bl setBaseMtx__10daObjARI_cFv
/* 80BA44C4  38 60 00 01 */	li r3, 1
lbl_80BA44C8:
/* 80BA44C8  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80BA44CC  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80BA44D0  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 80BA44D4  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 80BA44D8  39 61 01 50 */	addi r11, r1, 0x150
/* 80BA44DC  4B 7B DD 41 */	bl _restgpr_26
/* 80BA44E0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80BA44E4  7C 08 03 A6 */	mtlr r0
/* 80BA44E8  38 21 01 70 */	addi r1, r1, 0x170
/* 80BA44EC  4E 80 00 20 */	blr 
