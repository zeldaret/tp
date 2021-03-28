lbl_80B39C18:
/* 80B39C18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B39C1C  7C 08 02 A6 */	mflr r0
/* 80B39C20  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B39C24  39 61 00 50 */	addi r11, r1, 0x50
/* 80B39C28  4B 82 85 AC */	b _savegpr_27
/* 80B39C2C  7C 7D 1B 78 */	mr r29, r3
/* 80B39C30  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha
/* 80B39C34  3B C4 16 DC */	addi r30, r4, m__21daNpcWrestler_Param_c@l
/* 80B39C38  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B39C3C  2C 00 00 02 */	cmpwi r0, 2
/* 80B39C40  41 82 00 64 */	beq lbl_80B39CA4
/* 80B39C44  40 80 00 10 */	bge lbl_80B39C54
/* 80B39C48  2C 00 00 00 */	cmpwi r0, 0
/* 80B39C4C  41 82 00 14 */	beq lbl_80B39C60
/* 80B39C50  48 00 03 1C */	b lbl_80B39F6C
lbl_80B39C54:
/* 80B39C54  2C 00 00 04 */	cmpwi r0, 4
/* 80B39C58  40 80 03 14 */	bge lbl_80B39F6C
/* 80B39C5C  48 00 02 DC */	b lbl_80B39F38
lbl_80B39C60:
/* 80B39C60  38 80 00 05 */	li r4, 5
/* 80B39C64  38 A0 00 01 */	li r5, 1
/* 80B39C68  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B39C6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B39C70  7D 89 03 A6 */	mtctr r12
/* 80B39C74  4E 80 04 21 */	bctrl 
/* 80B39C78  7F A3 EB 78 */	mr r3, r29
/* 80B39C7C  38 80 00 17 */	li r4, 0x17
/* 80B39C80  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B39C84  38 A0 00 00 */	li r5, 0
/* 80B39C88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B39C8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B39C90  7D 89 03 A6 */	mtctr r12
/* 80B39C94  4E 80 04 21 */	bctrl 
/* 80B39C98  38 00 00 02 */	li r0, 2
/* 80B39C9C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39CA0  48 00 02 CC */	b lbl_80B39F6C
lbl_80B39CA4:
/* 80B39CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B39CA8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B39CAC  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80B39CB0  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B39CB4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B39CB8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B39CBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B39CC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B39CC4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B39CC8  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80B39CCC  4B 4D 30 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B39CD0  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80B39CD4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B39CD8  4B 73 6F 2C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B39CDC  A8 1D 0E 94 */	lha r0, 0xe94(r29)
/* 80B39CE0  7C 00 1A 14 */	add r0, r0, r3
/* 80B39CE4  7C 04 07 34 */	extsh r4, r0
/* 80B39CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B39CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B39CF0  4B 4D 27 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80B39CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B39CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B39CFC  38 81 00 08 */	addi r4, r1, 8
/* 80B39D00  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B39D04  4B 80 D0 68 */	b PSMTXMultVec
/* 80B39D08  7F A3 EB 78 */	mr r3, r29
/* 80B39D0C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B39D10  4B 4E 0A 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B39D14  7C 64 1B 78 */	mr r4, r3
/* 80B39D18  38 7D 08 F2 */	addi r3, r29, 0x8f2
/* 80B39D1C  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B39D20  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B39D24  38 C0 40 00 */	li r6, 0x4000
/* 80B39D28  38 E0 00 40 */	li r7, 0x40
/* 80B39D2C  4B 73 68 14 */	b cLib_addCalcAngleS__FPsssss
/* 80B39D30  7F A3 EB 78 */	mr r3, r29
/* 80B39D34  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B39D38  4B 61 A5 18 */	b setAngle__8daNpcF_cFs
/* 80B39D3C  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80B39D40  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B39D44  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 80B39D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B39D4C  4C 41 13 82 */	cror 2, 1, 2
/* 80B39D50  40 82 01 04 */	bne lbl_80B39E54
/* 80B39D54  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80B39D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B39D5C  4C 40 13 82 */	cror 2, 0, 2
/* 80B39D60  40 82 00 F4 */	bne lbl_80B39E54
/* 80B39D64  88 7D 0E 9B */	lbz r3, 0xe9b(r29)
/* 80B39D68  28 03 00 00 */	cmplwi r3, 0
/* 80B39D6C  38 00 00 18 */	li r0, 0x18
/* 80B39D70  40 82 00 08 */	bne lbl_80B39D78
/* 80B39D74  38 00 00 1A */	li r0, 0x1a
lbl_80B39D78:
/* 80B39D78  28 03 00 00 */	cmplwi r3, 0
/* 80B39D7C  3B 60 00 1B */	li r27, 0x1b
/* 80B39D80  40 82 00 08 */	bne lbl_80B39D88
/* 80B39D84  3B 60 00 1E */	li r27, 0x1e
lbl_80B39D88:
/* 80B39D88  80 64 00 04 */	lwz r3, 4(r4)
/* 80B39D8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B39D90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B39D94  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B39D98  7C 63 02 14 */	add r3, r3, r0
/* 80B39D9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B39DA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B39DA4  4B 80 C7 0C */	b PSMTXCopy
/* 80B39DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B39DAC  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80B39DB0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B39DB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B39DB8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B39DBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B39DC0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B39DC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B39DC8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B39DCC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B39DD0  38 7D 0D E8 */	addi r3, r29, 0xde8
/* 80B39DD4  38 80 00 00 */	li r4, 0
/* 80B39DD8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B39DDC  38 DD 08 F0 */	addi r6, r29, 0x8f0
/* 80B39DE0  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80B39DE4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80B39DE8  39 00 00 00 */	li r8, 0
/* 80B39DEC  4B 4E 32 34 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B39DF0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39DF4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B39DF8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B39DFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B39E00  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B39E04  7C 63 02 14 */	add r3, r3, r0
/* 80B39E08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B39E0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B39E10  4B 80 C6 A0 */	b PSMTXCopy
/* 80B39E14  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B39E18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B39E1C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B39E20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B39E24  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B39E28  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B39E2C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B39E30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B39E34  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80B39E38  38 80 00 00 */	li r4, 0
/* 80B39E3C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B39E40  38 DD 08 F0 */	addi r6, r29, 0x8f0
/* 80B39E44  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80B39E48  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80B39E4C  39 00 00 00 */	li r8, 0
/* 80B39E50  4B 4E 31 D0 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80B39E54:
/* 80B39E54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B39E58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B39E5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B39E60  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B39E64  38 80 00 02 */	li r4, 2
/* 80B39E68  4B 77 7F 8C */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 80B39E6C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B39E70  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39E74  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B39E78  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B39E7C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B39E80  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B39E84  7D 89 03 A6 */	mtctr r12
/* 80B39E88  4E 80 04 21 */	bctrl 
/* 80B39E8C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39E90  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B39E94  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B39E98  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B39E9C  28 00 00 16 */	cmplwi r0, 0x16
/* 80B39EA0  40 82 00 CC */	bne lbl_80B39F6C
/* 80B39EA4  3C 60 80 B4 */	lis r3, lit_8834@ha
/* 80B39EA8  38 83 2B D4 */	addi r4, r3, lit_8834@l
/* 80B39EAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B39EB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B39EB4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B39EB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B39EBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B39EC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B39EC4  38 00 00 03 */	li r0, 3
/* 80B39EC8  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39ECC  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39ED0  4B 82 81 48 */	b __ptmf_test
/* 80B39ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80B39ED8  41 82 00 18 */	beq lbl_80B39EF0
/* 80B39EDC  7F A3 EB 78 */	mr r3, r29
/* 80B39EE0  38 80 00 00 */	li r4, 0
/* 80B39EE4  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39EE8  4B 82 81 9C */	b __ptmf_scall
/* 80B39EEC  60 00 00 00 */	nop 
lbl_80B39EF0:
/* 80B39EF0  38 00 00 00 */	li r0, 0
/* 80B39EF4  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39EF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B39EFC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B39F00  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B39F04  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B39F08  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B39F0C  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B39F10  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39F14  4B 82 81 04 */	b __ptmf_test
/* 80B39F18  2C 03 00 00 */	cmpwi r3, 0
/* 80B39F1C  41 82 00 50 */	beq lbl_80B39F6C
/* 80B39F20  7F A3 EB 78 */	mr r3, r29
/* 80B39F24  38 80 00 00 */	li r4, 0
/* 80B39F28  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39F2C  4B 82 81 58 */	b __ptmf_scall
/* 80B39F30  60 00 00 00 */	nop 
/* 80B39F34  48 00 00 38 */	b lbl_80B39F6C
lbl_80B39F38:
/* 80B39F38  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B39F3C  28 00 00 00 */	cmplwi r0, 0
/* 80B39F40  41 82 00 2C */	beq lbl_80B39F6C
/* 80B39F44  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B39F48  2C 00 00 02 */	cmpwi r0, 2
/* 80B39F4C  41 82 00 0C */	beq lbl_80B39F58
/* 80B39F50  38 00 00 02 */	li r0, 2
/* 80B39F54  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B39F58:
/* 80B39F58  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B39F5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B39F60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B39F64  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B39F68  4B 61 67 54 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80B39F6C:
/* 80B39F6C  38 60 00 01 */	li r3, 1
/* 80B39F70  39 61 00 50 */	addi r11, r1, 0x50
/* 80B39F74  4B 82 82 AC */	b _restgpr_27
/* 80B39F78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B39F7C  7C 08 03 A6 */	mtlr r0
/* 80B39F80  38 21 00 50 */	addi r1, r1, 0x50
/* 80B39F84  4E 80 00 20 */	blr 
