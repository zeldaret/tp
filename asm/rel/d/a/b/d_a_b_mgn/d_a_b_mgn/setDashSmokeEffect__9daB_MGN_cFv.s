lbl_80605D78:
/* 80605D78  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80605D7C  7C 08 02 A6 */	mflr r0
/* 80605D80  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80605D84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80605D88  4B D5 C4 4D */	bl _savegpr_27
/* 80605D8C  7C 7B 1B 78 */	mr r27, r3
/* 80605D90  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 80605D94  3B E4 FD E0 */	addi r31, r4, lit_3928@l /* 0x8060FDE0@l */
/* 80605D98  3B A0 FF FF */	li r29, -1
/* 80605D9C  3B C0 00 00 */	li r30, 0
/* 80605DA0  38 80 00 15 */	li r4, 0x15
/* 80605DA4  48 00 1C 29 */	bl checkBck__9daB_MGN_cFi
/* 80605DA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80605DAC  40 82 00 18 */	bne lbl_80605DC4
/* 80605DB0  7F 63 DB 78 */	mr r3, r27
/* 80605DB4  38 80 00 0F */	li r4, 0xf
/* 80605DB8  48 00 1C 15 */	bl checkBck__9daB_MGN_cFi
/* 80605DBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80605DC0  41 82 00 08 */	beq lbl_80605DC8
lbl_80605DC4:
/* 80605DC4  3B C0 00 04 */	li r30, 4
lbl_80605DC8:
/* 80605DC8  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80605DCC  38 63 00 0C */	addi r3, r3, 0xc
/* 80605DD0  57 DE 10 3A */	slwi r30, r30, 2
/* 80605DD4  3C 80 80 61 */	lis r4, foot_rand_frame@ha /* 0x8061019C@ha */
/* 80605DD8  38 84 01 9C */	addi r4, r4, foot_rand_frame@l /* 0x8061019C@l */
/* 80605DDC  7C 24 F4 2E */	lfsx f1, r4, r30
/* 80605DE0  4B D2 26 4D */	bl checkPass__12J3DFrameCtrlFf
/* 80605DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80605DE8  41 82 00 6C */	beq lbl_80605E54
/* 80605DEC  3B A0 00 34 */	li r29, 0x34
/* 80605DF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80605DF4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80605DF8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80605DFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80605E00  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80605E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80605E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80605E0C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80605E10  38 80 00 02 */	li r4, 2
/* 80605E14  38 A0 00 1F */	li r5, 0x1f
/* 80605E18  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80605E1C  4B A6 9C 09 */	bl StartShock__12dVibration_cFii4cXyz
/* 80605E20  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 80605E24  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 80605E28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80605E2C  38 7B 09 E0 */	addi r3, r27, 0x9e0
/* 80605E30  38 81 00 0C */	addi r4, r1, 0xc
/* 80605E34  38 A0 00 00 */	li r5, 0
/* 80605E38  38 C0 FF FF */	li r6, -1
/* 80605E3C  81 9B 09 E0 */	lwz r12, 0x9e0(r27)
/* 80605E40  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80605E44  7D 89 03 A6 */	mtctr r12
/* 80605E48  4E 80 04 21 */	bctrl 
/* 80605E4C  3B 80 00 00 */	li r28, 0
/* 80605E50  48 00 00 EC */	b lbl_80605F3C
lbl_80605E54:
/* 80605E54  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80605E58  38 63 00 0C */	addi r3, r3, 0xc
/* 80605E5C  3C 80 80 61 */	lis r4, foot_rand_frame@ha /* 0x8061019C@ha */
/* 80605E60  38 04 01 9C */	addi r0, r4, foot_rand_frame@l /* 0x8061019C@l */
/* 80605E64  7C 80 F2 14 */	add r4, r0, r30
/* 80605E68  C0 24 00 04 */	lfs f1, 4(r4)
/* 80605E6C  4B D2 25 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80605E70  2C 03 00 00 */	cmpwi r3, 0
/* 80605E74  41 82 00 6C */	beq lbl_80605EE0
/* 80605E78  3B A0 00 25 */	li r29, 0x25
/* 80605E7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80605E80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80605E84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80605E88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80605E8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80605E90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80605E94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80605E98  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80605E9C  38 80 00 02 */	li r4, 2
/* 80605EA0  38 A0 00 1F */	li r5, 0x1f
/* 80605EA4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80605EA8  4B A6 9B 7D */	bl StartShock__12dVibration_cFii4cXyz
/* 80605EAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 80605EB0  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 80605EB4  90 01 00 08 */	stw r0, 8(r1)
/* 80605EB8  38 7B 09 E0 */	addi r3, r27, 0x9e0
/* 80605EBC  38 81 00 08 */	addi r4, r1, 8
/* 80605EC0  38 A0 00 00 */	li r5, 0
/* 80605EC4  38 C0 FF FF */	li r6, -1
/* 80605EC8  81 9B 09 E0 */	lwz r12, 0x9e0(r27)
/* 80605ECC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80605ED0  7D 89 03 A6 */	mtctr r12
/* 80605ED4  4E 80 04 21 */	bctrl 
/* 80605ED8  3B 80 00 01 */	li r28, 1
/* 80605EDC  48 00 00 60 */	b lbl_80605F3C
lbl_80605EE0:
/* 80605EE0  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80605EE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80605EE8  3C 80 80 61 */	lis r4, foot_rand_frame@ha /* 0x8061019C@ha */
/* 80605EEC  38 04 01 9C */	addi r0, r4, foot_rand_frame@l /* 0x8061019C@l */
/* 80605EF0  7C 80 F2 14 */	add r4, r0, r30
/* 80605EF4  C0 24 00 08 */	lfs f1, 8(r4)
/* 80605EF8  4B D2 25 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80605EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80605F00  41 82 00 10 */	beq lbl_80605F10
/* 80605F04  3B A0 00 47 */	li r29, 0x47
/* 80605F08  3B 80 00 02 */	li r28, 2
/* 80605F0C  48 00 00 30 */	b lbl_80605F3C
lbl_80605F10:
/* 80605F10  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80605F14  38 63 00 0C */	addi r3, r3, 0xc
/* 80605F18  3C 80 80 61 */	lis r4, foot_rand_frame@ha /* 0x8061019C@ha */
/* 80605F1C  38 04 01 9C */	addi r0, r4, foot_rand_frame@l /* 0x8061019C@l */
/* 80605F20  7C 80 F2 14 */	add r4, r0, r30
/* 80605F24  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80605F28  4B D2 25 05 */	bl checkPass__12J3DFrameCtrlFf
/* 80605F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80605F30  41 82 00 0C */	beq lbl_80605F3C
/* 80605F34  3B A0 00 43 */	li r29, 0x43
/* 80605F38  3B 80 00 03 */	li r28, 3
lbl_80605F3C:
/* 80605F3C  2C 1D FF FF */	cmpwi r29, -1
/* 80605F40  41 82 00 C4 */	beq lbl_80606004
/* 80605F44  38 61 00 34 */	addi r3, r1, 0x34
/* 80605F48  4B A7 16 35 */	bl __ct__11dBgS_GndChkFv
/* 80605F4C  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80605F50  80 63 00 04 */	lwz r3, 4(r3)
/* 80605F54  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80605F58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80605F5C  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80605F60  7C 63 02 14 */	add r3, r3, r0
/* 80605F64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80605F68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80605F6C  4B D4 05 45 */	bl PSMTXCopy
/* 80605F70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80605F74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80605F78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80605F7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80605F80  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80605F84  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80605F88  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80605F8C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80605F90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80605F94  EC 01 00 2A */	fadds f0, f1, f0
/* 80605F98  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80605F9C  38 61 00 34 */	addi r3, r1, 0x34
/* 80605FA0  38 81 00 28 */	addi r4, r1, 0x28
/* 80605FA4  4B C6 1D 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80605FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80605FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80605FB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80605FB4  38 81 00 34 */	addi r4, r1, 0x34
/* 80605FB8  4B A6 E4 E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80605FBC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80605FC0  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80605FC4  FC 00 08 18 */	frsp f0, f1
/* 80605FC8  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80605FCC  41 82 00 2C */	beq lbl_80605FF8
/* 80605FD0  57 80 10 3A */	slwi r0, r28, 2
/* 80605FD4  7C 9B 02 14 */	add r4, r27, r0
/* 80605FD8  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 80605FDC  38 84 26 08 */	addi r4, r4, 0x2608
/* 80605FE0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80605FE4  38 C0 00 00 */	li r6, 0
/* 80605FE8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80605FEC  38 FB 01 0C */	addi r7, r27, 0x10c
/* 80605FF0  39 00 00 01 */	li r8, 1
/* 80605FF4  4B A1 70 2D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80605FF8:
/* 80605FF8  38 61 00 34 */	addi r3, r1, 0x34
/* 80605FFC  38 80 FF FF */	li r4, -1
/* 80606000  4B A7 15 F1 */	bl __dt__11dBgS_GndChkFv
lbl_80606004:
/* 80606004  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80606008  4B D5 C2 19 */	bl _restgpr_27
/* 8060600C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80606010  7C 08 03 A6 */	mtlr r0
/* 80606014  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80606018  4E 80 00 20 */	blr 
