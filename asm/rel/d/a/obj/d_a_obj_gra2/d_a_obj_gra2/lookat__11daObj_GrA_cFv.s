lbl_80C02AE8:
/* 80C02AE8  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80C02AEC  7C 08 02 A6 */	mflr r0
/* 80C02AF0  90 01 01 44 */	stw r0, 0x144(r1)
/* 80C02AF4  39 61 01 40 */	addi r11, r1, 0x140
/* 80C02AF8  4B 75 F6 CD */	bl _savegpr_23
/* 80C02AFC  7C 7F 1B 78 */	mr r31, r3
/* 80C02B00  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C02B04  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C02B08  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C02B0C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80C02B10  A8 7F 04 CA */	lha r3, 0x4ca(r31)
/* 80C02B14  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C02B18  7C 03 00 50 */	subf r0, r3, r0
/* 80C02B1C  7C 1C 07 34 */	extsh r28, r0
/* 80C02B20  3B 60 00 00 */	li r27, 0
/* 80C02B24  88 1F 15 00 */	lbz r0, 0x1500(r31)
/* 80C02B28  28 00 00 00 */	cmplwi r0, 0
/* 80C02B2C  41 82 00 60 */	beq lbl_80C02B8C
/* 80C02B30  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C02B34  38 80 00 00 */	li r4, 0
/* 80C02B38  4B 54 AC E5 */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C02B3C  80 1F 15 04 */	lwz r0, 0x1504(r31)
/* 80C02B40  2C 00 00 02 */	cmpwi r0, 2
/* 80C02B44  41 82 00 34 */	beq lbl_80C02B78
/* 80C02B48  40 80 00 44 */	bge lbl_80C02B8C
/* 80C02B4C  2C 00 00 00 */	cmpwi r0, 0
/* 80C02B50  41 82 00 3C */	beq lbl_80C02B8C
/* 80C02B54  40 80 00 0C */	bge lbl_80C02B60
/* 80C02B58  48 00 00 34 */	b lbl_80C02B8C
/* 80C02B5C  48 00 00 30 */	b lbl_80C02B8C
lbl_80C02B60:
/* 80C02B60  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C02B64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C02B68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C02B6C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C02B70  4B 54 AC AD */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C02B74  48 00 00 18 */	b lbl_80C02B8C
lbl_80C02B78:
/* 80C02B78  38 7F 20 4C */	addi r3, r31, 0x204c
/* 80C02B7C  4B 54 AC BD */	bl getActor__18daBaseNpc_acMngr_cFv
/* 80C02B80  7C 64 1B 78 */	mr r4, r3
/* 80C02B84  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C02B88  4B 54 AC 95 */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
lbl_80C02B8C:
/* 80C02B8C  38 A0 00 00 */	li r5, 0
/* 80C02B90  98 BF 15 00 */	stb r5, 0x1500(r31)
/* 80C02B94  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80C02B98  38 9E 00 00 */	addi r4, r30, 0
/* 80C02B9C  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80C02BA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02BA4  FC 00 00 1E */	fctiwz f0, f0
/* 80C02BA8  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 80C02BAC  80 61 00 DC */	lwz r3, 0xdc(r1)
/* 80C02BB0  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80C02BB4  FC 00 00 50 */	fneg f0, f0
/* 80C02BB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02BBC  FC 00 00 1E */	fctiwz f0, f0
/* 80C02BC0  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80C02BC4  80 C1 00 E4 */	lwz r6, 0xe4(r1)
/* 80C02BC8  38 06 C0 00 */	addi r0, r6, -16384
/* 80C02BCC  B0 01 00 90 */	sth r0, 0x90(r1)
/* 80C02BD0  B0 61 00 92 */	sth r3, 0x92(r1)
/* 80C02BD4  B0 A1 00 94 */	sth r5, 0x94(r1)
/* 80C02BD8  38 60 C0 00 */	li r3, -16384
/* 80C02BDC  B0 61 00 96 */	sth r3, 0x96(r1)
/* 80C02BE0  B0 A1 00 98 */	sth r5, 0x98(r1)
/* 80C02BE4  B0 A1 00 9A */	sth r5, 0x9a(r1)
/* 80C02BE8  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80C02BEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02BF0  FC 00 00 1E */	fctiwz f0, f0
/* 80C02BF4  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80C02BF8  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80C02BFC  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80C02C00  FC 00 00 50 */	fneg f0, f0
/* 80C02C04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02C08  FC 00 00 1E */	fctiwz f0, f0
/* 80C02C0C  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80C02C10  80 C1 00 F4 */	lwz r6, 0xf4(r1)
/* 80C02C14  B0 C1 00 9C */	sth r6, 0x9c(r1)
/* 80C02C18  B0 01 00 9E */	sth r0, 0x9e(r1)
/* 80C02C1C  B0 A1 00 A0 */	sth r5, 0xa0(r1)
/* 80C02C20  B0 A1 00 A2 */	sth r5, 0xa2(r1)
/* 80C02C24  B0 A1 00 A4 */	sth r5, 0xa4(r1)
/* 80C02C28  B0 A1 00 A6 */	sth r5, 0xa6(r1)
/* 80C02C2C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80C02C30  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02C34  FC 00 00 1E */	fctiwz f0, f0
/* 80C02C38  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80C02C3C  80 C1 00 FC */	lwz r6, 0xfc(r1)
/* 80C02C40  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80C02C44  FC 00 00 50 */	fneg f0, f0
/* 80C02C48  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02C4C  FC 00 00 1E */	fctiwz f0, f0
/* 80C02C50  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 80C02C54  80 E1 01 04 */	lwz r7, 0x104(r1)
/* 80C02C58  38 07 C0 00 */	addi r0, r7, -16384
/* 80C02C5C  B0 01 00 78 */	sth r0, 0x78(r1)
/* 80C02C60  B0 C1 00 7A */	sth r6, 0x7a(r1)
/* 80C02C64  B0 A1 00 7C */	sth r5, 0x7c(r1)
/* 80C02C68  B0 61 00 7E */	sth r3, 0x7e(r1)
/* 80C02C6C  B0 A1 00 80 */	sth r5, 0x80(r1)
/* 80C02C70  B0 A1 00 82 */	sth r5, 0x82(r1)
/* 80C02C74  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80C02C78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02C7C  FC 00 00 1E */	fctiwz f0, f0
/* 80C02C80  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80C02C84  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80C02C88  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80C02C8C  FC 00 00 50 */	fneg f0, f0
/* 80C02C90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C02C94  FC 00 00 1E */	fctiwz f0, f0
/* 80C02C98  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80C02C9C  80 61 01 14 */	lwz r3, 0x114(r1)
/* 80C02CA0  B0 61 00 84 */	sth r3, 0x84(r1)
/* 80C02CA4  B0 01 00 86 */	sth r0, 0x86(r1)
/* 80C02CA8  B0 A1 00 88 */	sth r5, 0x88(r1)
/* 80C02CAC  B0 A1 00 8A */	sth r5, 0x8a(r1)
/* 80C02CB0  B0 A1 00 8C */	sth r5, 0x8c(r1)
/* 80C02CB4  B0 A1 00 8E */	sth r5, 0x8e(r1)
/* 80C02CB8  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C02CBC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C02CC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C02CC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C02CC8  38 63 00 30 */	addi r3, r3, 0x30
/* 80C02CCC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02CD0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02CD4  4B 74 37 DD */	bl PSMTXCopy
/* 80C02CD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02CDC  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02CE0  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80C02CE4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C02CE8  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 80C02CEC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80C02CF0  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 80C02CF4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C02CF8  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C02CFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C02D00  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C02D04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C02D08  38 63 00 90 */	addi r3, r3, 0x90
/* 80C02D0C  7F 04 C3 78 */	mr r4, r24
/* 80C02D10  4B 74 37 A1 */	bl PSMTXCopy
/* 80C02D14  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80C02D18  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C02D1C  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 80C02D20  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C02D24  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 80C02D28  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80C02D2C  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C02D30  80 63 00 04 */	lwz r3, 4(r3)
/* 80C02D34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C02D38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C02D3C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80C02D40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02D44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02D48  4B 74 37 69 */	bl PSMTXCopy
/* 80C02D4C  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80C02D50  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C02D54  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80C02D58  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 80C02D5C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80C02D60  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 80C02D64  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80C02D68  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C02D6C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C02D70  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C02D74  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 80C02D78  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C02D7C  4B 40 9F E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C02D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02D88  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 80C02D8C  4B 40 96 A9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C02D90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02D94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02D98  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C02D9C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80C02DA0  4B 74 3F CD */	bl PSMTXMultVec
/* 80C02DA4  80 1F 15 04 */	lwz r0, 0x1504(r31)
/* 80C02DA8  2C 00 00 03 */	cmpwi r0, 3
/* 80C02DAC  41 82 00 30 */	beq lbl_80C02DDC
/* 80C02DB0  40 80 00 78 */	bge lbl_80C02E28
/* 80C02DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80C02DB8  41 82 00 70 */	beq lbl_80C02E28
/* 80C02DBC  40 80 00 08 */	bge lbl_80C02DC4
/* 80C02DC0  48 00 00 68 */	b lbl_80C02E28
lbl_80C02DC4:
/* 80C02DC4  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C02DC8  4B 54 AA 71 */	bl getActor__18daBaseNpc_acMngr_cFv
/* 80C02DCC  28 03 00 00 */	cmplwi r3, 0
/* 80C02DD0  41 82 00 58 */	beq lbl_80C02E28
/* 80C02DD4  3B 63 05 38 */	addi r27, r3, 0x538
/* 80C02DD8  48 00 00 50 */	b lbl_80C02E28
lbl_80C02DDC:
/* 80C02DDC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C02DE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C02DE4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C02DE8  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80C02DEC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C02DF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02DF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02DF8  A8 9F 09 1C */	lha r4, 0x91c(r31)
/* 80C02DFC  4B 40 95 E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C02E00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C02E04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C02E08  38 81 00 60 */	addi r4, r1, 0x60
/* 80C02E0C  7C 85 23 78 */	mr r5, r4
/* 80C02E10  4B 74 3F 5D */	bl PSMTXMultVec
/* 80C02E14  38 61 00 60 */	addi r3, r1, 0x60
/* 80C02E18  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C02E1C  7C 65 1B 78 */	mr r5, r3
/* 80C02E20  4B 74 42 71 */	bl PSVECAdd
/* 80C02E24  3B 61 00 60 */	addi r27, r1, 0x60
lbl_80C02E28:
/* 80C02E28  38 7F 09 20 */	addi r3, r31, 0x920
/* 80C02E2C  7F 64 DB 78 */	mr r4, r27
/* 80C02E30  4B 54 B8 71 */	bl setAttnPos__18daBaseNpc_lookat_cFP4cXyz
/* 80C02E34  3A E0 00 00 */	li r23, 0
/* 80C02E38  3B 60 00 00 */	li r27, 0
/* 80C02E3C  3B 40 00 00 */	li r26, 0
/* 80C02E40  3B 01 00 90 */	addi r24, r1, 0x90
/* 80C02E44  3B 21 00 78 */	addi r25, r1, 0x78
lbl_80C02E48:
/* 80C02E48  7C 78 D2 14 */	add r3, r24, r26
/* 80C02E4C  80 03 00 00 */	lwz r0, 0(r3)
/* 80C02E50  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C02E54  A0 03 00 04 */	lhz r0, 4(r3)
/* 80C02E58  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80C02E5C  38 7F 09 20 */	addi r3, r31, 0x920
/* 80C02E60  38 81 00 40 */	addi r4, r1, 0x40
/* 80C02E64  7E E5 BB 78 */	mr r5, r23
/* 80C02E68  4B 54 B7 CD */	bl setMaxJntLmt__18daBaseNpc_lookat_cF5csXyzi
/* 80C02E6C  7C 79 D2 14 */	add r3, r25, r26
/* 80C02E70  80 03 00 00 */	lwz r0, 0(r3)
/* 80C02E74  90 01 00 38 */	stw r0, 0x38(r1)
/* 80C02E78  A0 03 00 04 */	lhz r0, 4(r3)
/* 80C02E7C  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80C02E80  38 7F 09 20 */	addi r3, r31, 0x920
/* 80C02E84  38 81 00 38 */	addi r4, r1, 0x38
/* 80C02E88  7E E5 BB 78 */	mr r5, r23
/* 80C02E8C  4B 54 B7 CD */	bl setMinJntLmt__18daBaseNpc_lookat_cF5csXyzi
/* 80C02E90  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C02E94  7C 63 DA 14 */	add r3, r3, r27
/* 80C02E98  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C02E9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C02EA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C02EA4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C02EA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C02EAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C02EB0  38 7F 09 20 */	addi r3, r31, 0x920
/* 80C02EB4  38 81 00 48 */	addi r4, r1, 0x48
/* 80C02EB8  7E E5 BB 78 */	mr r5, r23
/* 80C02EBC  4B 54 B7 C1 */	bl setJntPos__18daBaseNpc_lookat_cF4cXyzi
/* 80C02EC0  3A F7 00 01 */	addi r23, r23, 1
/* 80C02EC4  2C 17 00 04 */	cmpwi r23, 4
/* 80C02EC8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80C02ECC  3B 5A 00 06 */	addi r26, r26, 6
/* 80C02ED0  41 80 FF 78 */	blt lbl_80C02E48
/* 80C02ED4  38 7F 09 20 */	addi r3, r31, 0x920
/* 80C02ED8  7F E4 FB 78 */	mr r4, r31
/* 80C02EDC  38 BD 00 24 */	addi r5, r29, 0x24
/* 80C02EE0  7F 86 E3 78 */	mr r6, r28
/* 80C02EE4  4B 54 AC D1 */	bl calc__18daBaseNpc_lookat_cFP10fopAc_ac_cPA4_fs
/* 80C02EE8  80 7E 02 38 */	lwz r3, 0x238(r30)
/* 80C02EEC  80 1E 02 3C */	lwz r0, 0x23c(r30)
/* 80C02EF0  90 61 00 54 */	stw r3, 0x54(r1)
/* 80C02EF4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C02EF8  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 80C02EFC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C02F00  38 1F 09 BC */	addi r0, r31, 0x9bc
/* 80C02F04  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C02F08  38 1F 09 C2 */	addi r0, r31, 0x9c2
/* 80C02F0C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C02F10  38 1F 09 C8 */	addi r0, r31, 0x9c8
/* 80C02F14  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C02F18  3B 60 00 02 */	li r27, 2
/* 80C02F1C  3B C0 00 08 */	li r30, 8
/* 80C02F20  3B A0 00 01 */	li r29, 1
/* 80C02F24  3B 41 00 54 */	addi r26, r1, 0x54
lbl_80C02F28:
/* 80C02F28  7F 80 07 35 */	extsh. r0, r28
/* 80C02F2C  40 82 00 84 */	bne lbl_80C02FB0
/* 80C02F30  38 61 00 30 */	addi r3, r1, 0x30
/* 80C02F34  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02F38  7F 65 DB 78 */	mr r5, r27
/* 80C02F3C  4B 54 B7 71 */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02F40  38 61 00 54 */	addi r3, r1, 0x54
/* 80C02F44  7F 23 F0 2E */	lwzx r25, r3, r30
/* 80C02F48  7F 23 CB 78 */	mr r3, r25
/* 80C02F4C  A8 81 00 30 */	lha r4, 0x30(r1)
/* 80C02F50  38 A0 00 08 */	li r5, 8
/* 80C02F54  38 00 08 00 */	li r0, 0x800
/* 80C02F58  7F 00 EB D6 */	divw r24, r0, r29
/* 80C02F5C  7F 06 07 34 */	extsh r6, r24
/* 80C02F60  4B 66 D6 A9 */	bl cLib_addCalcAngleS2__FPssss
/* 80C02F64  38 61 00 28 */	addi r3, r1, 0x28
/* 80C02F68  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02F6C  7F 65 DB 78 */	mr r5, r27
/* 80C02F70  4B 54 B7 3D */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02F74  38 79 00 02 */	addi r3, r25, 2
/* 80C02F78  A8 81 00 2A */	lha r4, 0x2a(r1)
/* 80C02F7C  38 A0 00 08 */	li r5, 8
/* 80C02F80  7F 06 07 34 */	extsh r6, r24
/* 80C02F84  4B 66 D6 85 */	bl cLib_addCalcAngleS2__FPssss
/* 80C02F88  38 61 00 20 */	addi r3, r1, 0x20
/* 80C02F8C  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02F90  7F 65 DB 78 */	mr r5, r27
/* 80C02F94  4B 54 B7 19 */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02F98  38 79 00 04 */	addi r3, r25, 4
/* 80C02F9C  A8 81 00 24 */	lha r4, 0x24(r1)
/* 80C02FA0  38 A0 00 08 */	li r5, 8
/* 80C02FA4  7F 06 07 34 */	extsh r6, r24
/* 80C02FA8  4B 66 D6 61 */	bl cLib_addCalcAngleS2__FPssss
/* 80C02FAC  48 00 00 54 */	b lbl_80C03000
lbl_80C02FB0:
/* 80C02FB0  38 61 00 18 */	addi r3, r1, 0x18
/* 80C02FB4  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02FB8  7F 65 DB 78 */	mr r5, r27
/* 80C02FBC  4B 54 B6 F1 */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02FC0  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80C02FC4  38 61 00 54 */	addi r3, r1, 0x54
/* 80C02FC8  7F 03 F0 2E */	lwzx r24, r3, r30
/* 80C02FCC  B0 18 00 00 */	sth r0, 0(r24)
/* 80C02FD0  38 61 00 10 */	addi r3, r1, 0x10
/* 80C02FD4  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02FD8  7F 65 DB 78 */	mr r5, r27
/* 80C02FDC  4B 54 B6 D1 */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02FE0  A8 01 00 12 */	lha r0, 0x12(r1)
/* 80C02FE4  B0 18 00 02 */	sth r0, 2(r24)
/* 80C02FE8  38 61 00 08 */	addi r3, r1, 8
/* 80C02FEC  38 9F 09 20 */	addi r4, r31, 0x920
/* 80C02FF0  7F 65 DB 78 */	mr r5, r27
/* 80C02FF4  4B 54 B6 B9 */	bl getRot__18daBaseNpc_lookat_cFi
/* 80C02FF8  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80C02FFC  B0 18 00 04 */	sth r0, 4(r24)
lbl_80C03000:
/* 80C03000  38 60 00 00 */	li r3, 0
/* 80C03004  7C 9A F0 2E */	lwzx r4, r26, r30
/* 80C03008  A8 04 00 00 */	lha r0, 0(r4)
/* 80C0300C  2C 00 00 00 */	cmpwi r0, 0
/* 80C03010  40 82 00 1C */	bne lbl_80C0302C
/* 80C03014  A8 04 00 02 */	lha r0, 2(r4)
/* 80C03018  2C 00 00 00 */	cmpwi r0, 0
/* 80C0301C  40 82 00 10 */	bne lbl_80C0302C
/* 80C03020  A8 04 00 04 */	lha r0, 4(r4)
/* 80C03024  2C 00 00 00 */	cmpwi r0, 0
/* 80C03028  41 82 00 08 */	beq lbl_80C03030
lbl_80C0302C:
/* 80C0302C  38 60 00 01 */	li r3, 1
lbl_80C03030:
/* 80C03030  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C03034  37 7B FF FF */	addic. r27, r27, -1
/* 80C03038  3B DE FF FC */	addi r30, r30, -4
/* 80C0303C  3B BD 00 01 */	addi r29, r29, 1
/* 80C03040  40 80 FE E8 */	bge lbl_80C02F28
/* 80C03044  2C 00 00 00 */	cmpwi r0, 0
/* 80C03048  41 82 00 28 */	beq lbl_80C03070
/* 80C0304C  80 1F 10 9C */	lwz r0, 0x109c(r31)
/* 80C03050  2C 00 00 00 */	cmpwi r0, 0
/* 80C03054  40 82 00 1C */	bne lbl_80C03070
/* 80C03058  7F E3 FB 78 */	mr r3, r31
/* 80C0305C  38 80 00 01 */	li r4, 1
/* 80C03060  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C03064  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80C03068  7D 89 03 A6 */	mtctr r12
/* 80C0306C  4E 80 04 21 */	bctrl 
lbl_80C03070:
/* 80C03070  38 60 00 01 */	li r3, 1
/* 80C03074  39 61 01 40 */	addi r11, r1, 0x140
/* 80C03078  4B 75 F1 99 */	bl _restgpr_23
/* 80C0307C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80C03080  7C 08 03 A6 */	mtlr r0
/* 80C03084  38 21 01 40 */	addi r1, r1, 0x140
/* 80C03088  4E 80 00 20 */	blr 
