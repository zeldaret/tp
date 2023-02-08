lbl_80D2D278:
/* 80D2D278  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D2D27C  7C 08 02 A6 */	mflr r0
/* 80D2D280  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D2D284  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2D288  4B 63 4F 55 */	bl _savegpr_29
/* 80D2D28C  7C 7E 1B 78 */	mr r30, r3
/* 80D2D290  3C 60 80 D3 */	lis r3, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2D294  3B E3 E7 70 */	addi r31, r3, lit_3645@l /* 0x80D2E770@l */
/* 80D2D298  C0 7E 07 90 */	lfs f3, 0x790(r30)
/* 80D2D29C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D2D2A0  EC 23 10 28 */	fsubs f1, f3, f2
/* 80D2D2A4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D2D2A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2D2AC  4C 41 13 82 */	cror 2, 1, 2
/* 80D2D2B0  40 82 01 34 */	bne lbl_80D2D3E4
/* 80D2D2B4  C0 1E 0A E0 */	lfs f0, 0xae0(r30)
/* 80D2D2B8  EC 02 00 2A */	fadds f0, f2, f0
/* 80D2D2BC  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80D2D2C0  4C 41 13 82 */	cror 2, 1, 2
/* 80D2D2C4  40 82 01 20 */	bne lbl_80D2D3E4
/* 80D2D2C8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2D2CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D2D2D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D2D2D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D2D2D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2D2DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2D2E0  C0 3E 0B 24 */	lfs f1, 0xb24(r30)
/* 80D2D2E4  C0 5E 0B 28 */	lfs f2, 0xb28(r30)
/* 80D2D2E8  C0 7E 0B 2C */	lfs f3, 0xb2c(r30)
/* 80D2D2EC  4B 61 95 FD */	bl PSMTXTrans
/* 80D2D2F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2D2F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2D2F8  38 81 00 38 */	addi r4, r1, 0x38
/* 80D2D2FC  7C 85 23 78 */	mr r5, r4
/* 80D2D300  4B 61 9A 6D */	bl PSMTXMultVec
/* 80D2D304  38 61 00 20 */	addi r3, r1, 0x20
/* 80D2D308  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D2D30C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80D2D310  4B 53 97 D5 */	bl __pl__4cXyzCFRC3Vec
/* 80D2D314  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D2D318  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D2D31C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D2D320  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D2D324  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D2D328  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D2D32C  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80D2D330  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D2D334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2D338  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2D33C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D2D340  38 00 00 FF */	li r0, 0xff
/* 80D2D344  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D348  38 80 00 00 */	li r4, 0
/* 80D2D34C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D350  38 00 FF FF */	li r0, -1
/* 80D2D354  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D358  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D35C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D360  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D364  80 9E 0B 64 */	lwz r4, 0xb64(r30)
/* 80D2D368  38 A0 00 00 */	li r5, 0
/* 80D2D36C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000888F@ha */
/* 80D2D370  38 C6 88 8F */	addi r6, r6, 0x888F /* 0x0000888F@l */
/* 80D2D374  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80D2D378  39 00 00 00 */	li r8, 0
/* 80D2D37C  39 20 00 00 */	li r9, 0
/* 80D2D380  39 40 00 00 */	li r10, 0
/* 80D2D384  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D2D388  4B 32 01 45 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D38C  90 7E 0B 64 */	stw r3, 0xb64(r30)
/* 80D2D390  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D2D394  38 00 00 FF */	li r0, 0xff
/* 80D2D398  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D39C  38 80 00 00 */	li r4, 0
/* 80D2D3A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D3A4  38 00 FF FF */	li r0, -1
/* 80D2D3A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D3AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D3B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D3B4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D3B8  80 9E 0B 68 */	lwz r4, 0xb68(r30)
/* 80D2D3BC  38 A0 00 00 */	li r5, 0
/* 80D2D3C0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008890@ha */
/* 80D2D3C4  38 C6 88 90 */	addi r6, r6, 0x8890 /* 0x00008890@l */
/* 80D2D3C8  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80D2D3CC  39 00 00 00 */	li r8, 0
/* 80D2D3D0  39 20 00 00 */	li r9, 0
/* 80D2D3D4  39 40 00 00 */	li r10, 0
/* 80D2D3D8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D2D3DC  4B 32 00 F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D3E0  90 7E 0B 68 */	stw r3, 0xb68(r30)
lbl_80D2D3E4:
/* 80D2D3E4  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2D3E8  4B 63 4E 41 */	bl _restgpr_29
/* 80D2D3EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D2D3F0  7C 08 03 A6 */	mtlr r0
/* 80D2D3F4  38 21 00 60 */	addi r1, r1, 0x60
/* 80D2D3F8  4E 80 00 20 */	blr 
