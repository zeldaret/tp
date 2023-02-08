lbl_80B38C90:
/* 80B38C90  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B38C94  7C 08 02 A6 */	mflr r0
/* 80B38C98  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B38C9C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B38CA0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B38CA4  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80B38CA8  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80B38CAC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B38CB0  4B 82 95 21 */	bl _savegpr_26
/* 80B38CB4  7C 7F 1B 78 */	mr r31, r3
/* 80B38CB8  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B38CBC  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B38CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B38CC4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B38CC8  83 9A 5D AC */	lwz r28, 0x5dac(r26)
/* 80B38CCC  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B38CD0  28 00 00 00 */	cmplwi r0, 0
/* 80B38CD4  3B A0 00 18 */	li r29, 0x18
/* 80B38CD8  40 82 00 08 */	bne lbl_80B38CE0
/* 80B38CDC  3B A0 00 1A */	li r29, 0x1a
lbl_80B38CE0:
/* 80B38CE0  28 00 00 00 */	cmplwi r0, 0
/* 80B38CE4  3B 60 00 1B */	li r27, 0x1b
/* 80B38CE8  40 82 00 08 */	bne lbl_80B38CF0
/* 80B38CEC  3B 60 00 1E */	li r27, 0x1e
lbl_80B38CF0:
/* 80B38CF0  A0 1F 0E 96 */	lhz r0, 0xe96(r31)
/* 80B38CF4  2C 00 00 02 */	cmpwi r0, 2
/* 80B38CF8  41 82 00 7C */	beq lbl_80B38D74
/* 80B38CFC  40 80 00 10 */	bge lbl_80B38D0C
/* 80B38D00  2C 00 00 00 */	cmpwi r0, 0
/* 80B38D04  41 82 00 14 */	beq lbl_80B38D18
/* 80B38D08  48 00 06 00 */	b lbl_80B39308
lbl_80B38D0C:
/* 80B38D0C  2C 00 00 04 */	cmpwi r0, 4
/* 80B38D10  40 80 05 F8 */	bge lbl_80B39308
/* 80B38D14  48 00 05 EC */	b lbl_80B39300
lbl_80B38D18:
/* 80B38D18  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80B38D1C  A8 03 00 24 */	lha r0, 0x24(r3)
/* 80B38D20  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B38D24  7F E3 FB 78 */	mr r3, r31
/* 80B38D28  38 80 00 10 */	li r4, 0x10
/* 80B38D2C  38 A0 00 01 */	li r5, 1
/* 80B38D30  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B38D34  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B38D38  7D 89 03 A6 */	mtctr r12
/* 80B38D3C  4E 80 04 21 */	bctrl 
/* 80B38D40  7F E3 FB 78 */	mr r3, r31
/* 80B38D44  38 80 00 15 */	li r4, 0x15
/* 80B38D48  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B38D4C  38 A0 00 00 */	li r5, 0
/* 80B38D50  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B38D54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B38D58  7D 89 03 A6 */	mtctr r12
/* 80B38D5C  4E 80 04 21 */	bctrl 
/* 80B38D60  38 00 00 05 */	li r0, 5
/* 80B38D64  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 80B38D68  38 00 00 02 */	li r0, 2
/* 80B38D6C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B38D70  48 00 05 98 */	b lbl_80B39308
lbl_80B38D74:
/* 80B38D74  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80B38D78  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B38D7C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B38D80  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B38D84  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B38D88  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B38D8C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80B38D90  4B 4D 3F D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B38D94  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80B38D98  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B38D9C  4B 73 7E 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B38DA0  A8 1F 0E 94 */	lha r0, 0xe94(r31)
/* 80B38DA4  7C 00 1A 14 */	add r0, r0, r3
/* 80B38DA8  7C 04 07 34 */	extsh r4, r0
/* 80B38DAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38DB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38DB4  4B 4D 36 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B38DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38DC0  38 81 00 40 */	addi r4, r1, 0x40
/* 80B38DC4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B38DC8  4B 80 DF A5 */	bl PSMTXMultVec
/* 80B38DCC  7F E3 FB 78 */	mr r3, r31
/* 80B38DD0  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80B38DD4  4B 4E 19 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B38DD8  7C 64 1B 78 */	mr r4, r3
/* 80B38DDC  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B38DE0  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80B38DE4  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B38DE8  38 C0 40 00 */	li r6, 0x4000
/* 80B38DEC  38 E0 00 40 */	li r7, 0x40
/* 80B38DF0  4B 73 77 51 */	bl cLib_addCalcAngleS__FPsssss
/* 80B38DF4  7F E3 FB 78 */	mr r3, r31
/* 80B38DF8  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B38DFC  4B 61 B4 55 */	bl setAngle__8daNpcF_cFs
/* 80B38E00  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B38E04  80 63 00 04 */	lwz r3, 4(r3)
/* 80B38E08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B38E0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B38E10  1C 1D 00 30 */	mulli r0, r29, 0x30
/* 80B38E14  7C 63 02 14 */	add r3, r3, r0
/* 80B38E18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38E1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38E20  4B 80 D6 91 */	bl PSMTXCopy
/* 80B38E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38E28  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38E2C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80B38E30  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B38E34  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80B38E38  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B38E3C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80B38E40  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B38E44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B38E48  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B38E4C  38 7F 0D E8 */	addi r3, r31, 0xde8
/* 80B38E50  38 80 00 00 */	li r4, 0
/* 80B38E54  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80B38E58  38 DF 08 F0 */	addi r6, r31, 0x8f0
/* 80B38E5C  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80B38E60  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80B38E64  39 00 00 00 */	li r8, 0
/* 80B38E68  4B 4E 41 B9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B38E6C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B38E70  80 63 00 04 */	lwz r3, 4(r3)
/* 80B38E74  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B38E78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B38E7C  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B38E80  7C 63 02 14 */	add r3, r3, r0
/* 80B38E84  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B38E88  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B38E8C  4B 80 D6 25 */	bl PSMTXCopy
/* 80B38E90  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80B38E94  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B38E98  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80B38E9C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B38EA0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80B38EA4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B38EA8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B38EAC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B38EB0  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80B38EB4  38 80 00 00 */	li r4, 0
/* 80B38EB8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80B38EBC  38 DF 08 F0 */	addi r6, r31, 0x8f0
/* 80B38EC0  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80B38EC4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80B38EC8  39 00 00 00 */	li r8, 0
/* 80B38ECC  4B 4E 41 55 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B38ED0  38 61 00 70 */	addi r3, r1, 0x70
/* 80B38ED4  7F E4 FB 78 */	mr r4, r31
/* 80B38ED8  7F A5 EB 78 */	mr r5, r29
/* 80B38EDC  4B FF CA 15 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B38EE0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B38EE4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B38EE8  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B38EEC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B38EF0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B38EF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B38EF8  C0 5F 0D F8 */	lfs f2, 0xdf8(r31)
/* 80B38EFC  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B38F00  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B38F04  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B38F08  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80B38F0C  38 61 00 28 */	addi r3, r1, 0x28
/* 80B38F10  38 81 00 34 */	addi r4, r1, 0x34
/* 80B38F14  4B 80 E4 89 */	bl PSVECSquareDistance
/* 80B38F18  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B38F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B38F20  40 81 00 58 */	ble lbl_80B38F78
/* 80B38F24  FC 00 08 34 */	frsqrte f0, f1
/* 80B38F28  C8 9E 06 00 */	lfd f4, 0x600(r30)
/* 80B38F2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B38F30  C8 7E 06 08 */	lfd f3, 0x608(r30)
/* 80B38F34  FC 00 00 32 */	fmul f0, f0, f0
/* 80B38F38  FC 01 00 32 */	fmul f0, f1, f0
/* 80B38F3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B38F40  FC 02 00 32 */	fmul f0, f2, f0
/* 80B38F44  FC 44 00 32 */	fmul f2, f4, f0
/* 80B38F48  FC 00 00 32 */	fmul f0, f0, f0
/* 80B38F4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B38F50  FC 03 00 28 */	fsub f0, f3, f0
/* 80B38F54  FC 02 00 32 */	fmul f0, f2, f0
/* 80B38F58  FC 44 00 32 */	fmul f2, f4, f0
/* 80B38F5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B38F60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B38F64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B38F68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B38F6C  FF E1 00 32 */	fmul f31, f1, f0
/* 80B38F70  FF E0 F8 18 */	frsp f31, f31
/* 80B38F74  48 00 00 90 */	b lbl_80B39004
lbl_80B38F78:
/* 80B38F78  C8 1E 06 10 */	lfd f0, 0x610(r30)
/* 80B38F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B38F80  40 80 00 10 */	bge lbl_80B38F90
/* 80B38F84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B38F88  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B38F8C  48 00 00 78 */	b lbl_80B39004
lbl_80B38F90:
/* 80B38F90  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B38F94  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B38F98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B38F9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B38FA0  7C 03 00 00 */	cmpw r3, r0
/* 80B38FA4  41 82 00 14 */	beq lbl_80B38FB8
/* 80B38FA8  40 80 00 40 */	bge lbl_80B38FE8
/* 80B38FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B38FB0  41 82 00 20 */	beq lbl_80B38FD0
/* 80B38FB4  48 00 00 34 */	b lbl_80B38FE8
lbl_80B38FB8:
/* 80B38FB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B38FBC  41 82 00 0C */	beq lbl_80B38FC8
/* 80B38FC0  38 00 00 01 */	li r0, 1
/* 80B38FC4  48 00 00 28 */	b lbl_80B38FEC
lbl_80B38FC8:
/* 80B38FC8  38 00 00 02 */	li r0, 2
/* 80B38FCC  48 00 00 20 */	b lbl_80B38FEC
lbl_80B38FD0:
/* 80B38FD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B38FD4  41 82 00 0C */	beq lbl_80B38FE0
/* 80B38FD8  38 00 00 05 */	li r0, 5
/* 80B38FDC  48 00 00 10 */	b lbl_80B38FEC
lbl_80B38FE0:
/* 80B38FE0  38 00 00 03 */	li r0, 3
/* 80B38FE4  48 00 00 08 */	b lbl_80B38FEC
lbl_80B38FE8:
/* 80B38FE8  38 00 00 04 */	li r0, 4
lbl_80B38FEC:
/* 80B38FEC  2C 00 00 01 */	cmpwi r0, 1
/* 80B38FF0  40 82 00 10 */	bne lbl_80B39000
/* 80B38FF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B38FF8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B38FFC  48 00 00 08 */	b lbl_80B39004
lbl_80B39000:
/* 80B39000  FF E0 08 90 */	fmr f31, f1
lbl_80B39004:
/* 80B39004  38 61 00 64 */	addi r3, r1, 0x64
/* 80B39008  7F E4 FB 78 */	mr r4, r31
/* 80B3900C  7F 65 DB 78 */	mr r5, r27
/* 80B39010  4B FF C8 E1 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B39014  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B39018  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3901C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B39020  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B39024  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B39028  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3902C  C0 5F 0D F8 */	lfs f2, 0xdf8(r31)
/* 80B39030  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B39034  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B39038  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B3903C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B39040  38 61 00 10 */	addi r3, r1, 0x10
/* 80B39044  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B39048  4B 80 E3 55 */	bl PSVECSquareDistance
/* 80B3904C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B39050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B39054  40 81 00 58 */	ble lbl_80B390AC
/* 80B39058  FC 00 08 34 */	frsqrte f0, f1
/* 80B3905C  C8 9E 06 00 */	lfd f4, 0x600(r30)
/* 80B39060  FC 44 00 32 */	fmul f2, f4, f0
/* 80B39064  C8 7E 06 08 */	lfd f3, 0x608(r30)
/* 80B39068  FC 00 00 32 */	fmul f0, f0, f0
/* 80B3906C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39070  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39074  FC 02 00 32 */	fmul f0, f2, f0
/* 80B39078  FC 44 00 32 */	fmul f2, f4, f0
/* 80B3907C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B39080  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39084  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39088  FC 02 00 32 */	fmul f0, f2, f0
/* 80B3908C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B39090  FC 00 00 32 */	fmul f0, f0, f0
/* 80B39094  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39098  FC 03 00 28 */	fsub f0, f3, f0
/* 80B3909C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B390A0  FF C1 00 32 */	fmul f30, f1, f0
/* 80B390A4  FF C0 F0 18 */	frsp f30, f30
/* 80B390A8  48 00 00 90 */	b lbl_80B39138
lbl_80B390AC:
/* 80B390AC  C8 1E 06 10 */	lfd f0, 0x610(r30)
/* 80B390B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B390B4  40 80 00 10 */	bge lbl_80B390C4
/* 80B390B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B390BC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B390C0  48 00 00 78 */	b lbl_80B39138
lbl_80B390C4:
/* 80B390C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B390C8  80 81 00 08 */	lwz r4, 8(r1)
/* 80B390CC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B390D0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B390D4  7C 03 00 00 */	cmpw r3, r0
/* 80B390D8  41 82 00 14 */	beq lbl_80B390EC
/* 80B390DC  40 80 00 40 */	bge lbl_80B3911C
/* 80B390E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B390E4  41 82 00 20 */	beq lbl_80B39104
/* 80B390E8  48 00 00 34 */	b lbl_80B3911C
lbl_80B390EC:
/* 80B390EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B390F0  41 82 00 0C */	beq lbl_80B390FC
/* 80B390F4  38 00 00 01 */	li r0, 1
/* 80B390F8  48 00 00 28 */	b lbl_80B39120
lbl_80B390FC:
/* 80B390FC  38 00 00 02 */	li r0, 2
/* 80B39100  48 00 00 20 */	b lbl_80B39120
lbl_80B39104:
/* 80B39104  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B39108  41 82 00 0C */	beq lbl_80B39114
/* 80B3910C  38 00 00 05 */	li r0, 5
/* 80B39110  48 00 00 10 */	b lbl_80B39120
lbl_80B39114:
/* 80B39114  38 00 00 03 */	li r0, 3
/* 80B39118  48 00 00 08 */	b lbl_80B39120
lbl_80B3911C:
/* 80B3911C  38 00 00 04 */	li r0, 4
lbl_80B39120:
/* 80B39120  2C 00 00 01 */	cmpwi r0, 1
/* 80B39124  40 82 00 10 */	bne lbl_80B39134
/* 80B39128  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B3912C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B39130  48 00 00 08 */	b lbl_80B39138
lbl_80B39134:
/* 80B39134  FF C0 08 90 */	fmr f30, f1
lbl_80B39138:
/* 80B39138  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3913C  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80B39140  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B39144  41 81 00 0C */	bgt lbl_80B39150
/* 80B39148  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B3914C  40 81 00 1C */	ble lbl_80B39168
lbl_80B39150:
/* 80B39150  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B39154  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B39158  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3915C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B39160  38 80 00 03 */	li r4, 3
/* 80B39164  4B 77 8C 91 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_80B39168:
/* 80B39168  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B3916C  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80B39170  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B39174  41 81 00 0C */	bgt lbl_80B39180
/* 80B39178  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B3917C  40 81 00 0C */	ble lbl_80B39188
lbl_80B39180:
/* 80B39180  38 00 00 09 */	li r0, 9
/* 80B39184  98 1C 05 6A */	stb r0, 0x56a(r28)
lbl_80B39188:
/* 80B39188  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3918C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B39190  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B39194  7F 83 E3 78 */	mr r3, r28
/* 80B39198  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B3919C  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B391A0  7D 89 03 A6 */	mtctr r12
/* 80B391A4  4E 80 04 21 */	bctrl 
/* 80B391A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B391AC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B391B0  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 80B391B4  38 03 FF FF */	addi r0, r3, -1
/* 80B391B8  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80B391BC  7F E3 FB 78 */	mr r3, r31
/* 80B391C0  4B FF C5 C1 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B391C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B391C8  41 82 00 98 */	beq lbl_80B39260
/* 80B391CC  3C 60 80 B4 */	lis r3, lit_8395@ha /* 0x80B42B98@ha */
/* 80B391D0  38 83 2B 98 */	addi r4, r3, lit_8395@l /* 0x80B42B98@l */
/* 80B391D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B391D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B391DC  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B391E0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B391E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B391E8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B391EC  38 00 00 03 */	li r0, 3
/* 80B391F0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B391F4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B391F8  4B 82 8E 21 */	bl __ptmf_test
/* 80B391FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B39200  41 82 00 18 */	beq lbl_80B39218
/* 80B39204  7F E3 FB 78 */	mr r3, r31
/* 80B39208  38 80 00 00 */	li r4, 0
/* 80B3920C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B39210  4B 82 8E 75 */	bl __ptmf_scall
/* 80B39214  60 00 00 00 */	nop 
lbl_80B39218:
/* 80B39218  38 00 00 00 */	li r0, 0
/* 80B3921C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B39220  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80B39224  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B39228  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3922C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B39230  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B39234  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B39238  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3923C  4B 82 8D DD */	bl __ptmf_test
/* 80B39240  2C 03 00 00 */	cmpwi r3, 0
/* 80B39244  41 82 00 C4 */	beq lbl_80B39308
/* 80B39248  7F E3 FB 78 */	mr r3, r31
/* 80B3924C  38 80 00 00 */	li r4, 0
/* 80B39250  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B39254  4B 82 8E 31 */	bl __ptmf_scall
/* 80B39258  60 00 00 00 */	nop 
/* 80B3925C  48 00 00 AC */	b lbl_80B39308
lbl_80B39260:
/* 80B39260  80 1F 0E 80 */	lwz r0, 0xe80(r31)
/* 80B39264  2C 00 00 00 */	cmpwi r0, 0
/* 80B39268  40 80 00 A0 */	bge lbl_80B39308
/* 80B3926C  3C 60 80 B4 */	lis r3, lit_8400@ha /* 0x80B42BA4@ha */
/* 80B39270  38 83 2B A4 */	addi r4, r3, lit_8400@l /* 0x80B42BA4@l */
/* 80B39274  80 64 00 00 */	lwz r3, 0(r4)
/* 80B39278  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3927C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B39280  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B39284  80 04 00 08 */	lwz r0, 8(r4)
/* 80B39288  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B3928C  38 00 00 03 */	li r0, 3
/* 80B39290  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B39294  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B39298  4B 82 8D 81 */	bl __ptmf_test
/* 80B3929C  2C 03 00 00 */	cmpwi r3, 0
/* 80B392A0  41 82 00 18 */	beq lbl_80B392B8
/* 80B392A4  7F E3 FB 78 */	mr r3, r31
/* 80B392A8  38 80 00 00 */	li r4, 0
/* 80B392AC  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B392B0  4B 82 8D D5 */	bl __ptmf_scall
/* 80B392B4  60 00 00 00 */	nop 
lbl_80B392B8:
/* 80B392B8  38 00 00 00 */	li r0, 0
/* 80B392BC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B392C0  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80B392C4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80B392C8  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B392CC  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B392D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B392D4  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B392D8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B392DC  4B 82 8D 3D */	bl __ptmf_test
/* 80B392E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B392E4  41 82 00 24 */	beq lbl_80B39308
/* 80B392E8  7F E3 FB 78 */	mr r3, r31
/* 80B392EC  38 80 00 00 */	li r4, 0
/* 80B392F0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B392F4  4B 82 8D 91 */	bl __ptmf_scall
/* 80B392F8  60 00 00 00 */	nop 
/* 80B392FC  48 00 00 0C */	b lbl_80B39308
lbl_80B39300:
/* 80B39300  38 00 00 24 */	li r0, 0x24
/* 80B39304  98 1C 05 6A */	stb r0, 0x56a(r28)
lbl_80B39308:
/* 80B39308  38 60 00 01 */	li r3, 1
/* 80B3930C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B39310  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B39314  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80B39318  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80B3931C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B39320  4B 82 8E FD */	bl _restgpr_26
/* 80B39324  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B39328  7C 08 03 A6 */	mtlr r0
/* 80B3932C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B39330  4E 80 00 20 */	blr 
