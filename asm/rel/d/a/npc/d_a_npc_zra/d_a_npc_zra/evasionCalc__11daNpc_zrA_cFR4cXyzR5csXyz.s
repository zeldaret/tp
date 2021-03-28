lbl_80B81D68:
/* 80B81D68  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B81D6C  7C 08 02 A6 */	mflr r0
/* 80B81D70  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B81D74  39 61 00 60 */	addi r11, r1, 0x60
/* 80B81D78  4B 7E 04 5C */	b _savegpr_27
/* 80B81D7C  7C 7E 1B 78 */	mr r30, r3
/* 80B81D80  7C 86 23 78 */	mr r6, r4
/* 80B81D84  7C BF 2B 78 */	mr r31, r5
/* 80B81D88  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B81D8C  3B 83 C4 58 */	addi r28, r3, m__17daNpc_zrA_Param_c@l
/* 80B81D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B81D94  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B81D98  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 80B81D9C  3C 60 80 B9 */	lis r3, __vt__8cM3dGLin@ha
/* 80B81DA0  38 03 D9 2C */	addi r0, r3, __vt__8cM3dGLin@l
/* 80B81DA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B81DA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B81DAC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B81DB0  7C C5 33 78 */	mr r5, r6
/* 80B81DB4  4B 6E D5 34 */	b SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80B81DB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B81DBC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B81DC0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B81DC4  38 C1 00 08 */	addi r6, r1, 8
/* 80B81DC8  4B 6E 69 48 */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80B81DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B81DD0  41 82 00 70 */	beq lbl_80B81E40
/* 80B81DD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B81DD8  C0 1C 07 AC */	lfs f0, 0x7ac(r28)
/* 80B81DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81DE0  4C 40 13 82 */	cror 2, 0, 2
/* 80B81DE4  40 82 00 5C */	bne lbl_80B81E40
/* 80B81DE8  7F C3 F3 78 */	mr r3, r30
/* 80B81DEC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B81DF0  4B 49 89 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B81DF4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B81DF8  A8 1F 00 02 */	lha r0, 2(r31)
/* 80B81DFC  7C 03 00 50 */	subf r0, r3, r0
/* 80B81E00  7C 00 07 35 */	extsh. r0, r0
/* 80B81E04  40 81 00 10 */	ble lbl_80B81E14
/* 80B81E08  38 00 E8 00 */	li r0, -6144
/* 80B81E0C  B0 1E 15 74 */	sth r0, 0x1574(r30)
/* 80B81E10  48 00 00 0C */	b lbl_80B81E1C
lbl_80B81E14:
/* 80B81E14  38 00 18 00 */	li r0, 0x1800
/* 80B81E18  B0 1E 15 74 */	sth r0, 0x1574(r30)
lbl_80B81E1C:
/* 80B81E1C  A8 7F 00 02 */	lha r3, 2(r31)
/* 80B81E20  A8 1E 15 74 */	lha r0, 0x1574(r30)
/* 80B81E24  7C 03 02 14 */	add r0, r3, r0
/* 80B81E28  B0 1F 00 02 */	sth r0, 2(r31)
/* 80B81E2C  38 00 00 3C */	li r0, 0x3c
/* 80B81E30  90 1E 15 70 */	stw r0, 0x1570(r30)
/* 80B81E34  90 1E 15 40 */	stw r0, 0x1540(r30)
/* 80B81E38  38 60 00 01 */	li r3, 1
/* 80B81E3C  48 00 01 10 */	b lbl_80B81F4C
lbl_80B81E40:
/* 80B81E40  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 80B81E44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B81E48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B81E4C  C0 1C 07 B0 */	lfs f0, 0x7b0(r28)
/* 80B81E50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B81E54  38 61 00 0C */	addi r3, r1, 0xc
/* 80B81E58  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80B81E5C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80B81E60  38 C0 00 00 */	li r6, 0
/* 80B81E64  4B 6E 55 90 */	b __ct__5csXyzFsss
/* 80B81E68  38 61 00 0C */	addi r3, r1, 0xc
/* 80B81E6C  4B 48 B0 A0 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B81E70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B81E74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B81E78  38 81 00 14 */	addi r4, r1, 0x14
/* 80B81E7C  7C 85 23 78 */	mr r5, r4
/* 80B81E80  4B 7C 4E EC */	b PSMTXMultVec
/* 80B81E84  38 61 00 14 */	addi r3, r1, 0x14
/* 80B81E88  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B81E8C  7C 65 1B 78 */	mr r5, r3
/* 80B81E90  4B 7C 52 00 */	b PSVECAdd
/* 80B81E94  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B81E98  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B81E9C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B81EA0  4B 6E D4 48 */	b SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80B81EA4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B81EA8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B81EAC  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B81EB0  38 C1 00 08 */	addi r6, r1, 8
/* 80B81EB4  4B 6E 68 5C */	b cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80B81EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B81EBC  41 82 00 6C */	beq lbl_80B81F28
/* 80B81EC0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B81EC4  C0 1C 07 AC */	lfs f0, 0x7ac(r28)
/* 80B81EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81ECC  4C 40 13 82 */	cror 2, 0, 2
/* 80B81ED0  40 82 00 58 */	bne lbl_80B81F28
/* 80B81ED4  7F C3 F3 78 */	mr r3, r30
/* 80B81ED8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B81EDC  4B 49 88 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B81EE0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B81EE4  7C 00 18 50 */	subf r0, r0, r3
/* 80B81EE8  7C 00 07 35 */	extsh. r0, r0
/* 80B81EEC  40 81 00 10 */	ble lbl_80B81EFC
/* 80B81EF0  38 00 E8 00 */	li r0, -6144
/* 80B81EF4  B0 1E 15 74 */	sth r0, 0x1574(r30)
/* 80B81EF8  48 00 00 0C */	b lbl_80B81F04
lbl_80B81EFC:
/* 80B81EFC  38 00 18 00 */	li r0, 0x1800
/* 80B81F00  B0 1E 15 74 */	sth r0, 0x1574(r30)
lbl_80B81F04:
/* 80B81F04  A8 7F 00 02 */	lha r3, 2(r31)
/* 80B81F08  A8 1E 15 74 */	lha r0, 0x1574(r30)
/* 80B81F0C  7C 03 02 14 */	add r0, r3, r0
/* 80B81F10  B0 1F 00 02 */	sth r0, 2(r31)
/* 80B81F14  38 00 00 3C */	li r0, 0x3c
/* 80B81F18  90 1E 15 70 */	stw r0, 0x1570(r30)
/* 80B81F1C  90 1E 15 40 */	stw r0, 0x1540(r30)
/* 80B81F20  38 60 00 01 */	li r3, 1
/* 80B81F24  48 00 00 28 */	b lbl_80B81F4C
lbl_80B81F28:
/* 80B81F28  38 7E 15 70 */	addi r3, r30, 0x1570
/* 80B81F2C  4B FF D7 81 */	bl func_80B7F6AC
/* 80B81F30  2C 03 00 00 */	cmpwi r3, 0
/* 80B81F34  41 82 00 14 */	beq lbl_80B81F48
/* 80B81F38  A8 7F 00 02 */	lha r3, 2(r31)
/* 80B81F3C  A8 1E 15 74 */	lha r0, 0x1574(r30)
/* 80B81F40  7C 03 02 14 */	add r0, r3, r0
/* 80B81F44  B0 1F 00 02 */	sth r0, 2(r31)
lbl_80B81F48:
/* 80B81F48  38 60 00 01 */	li r3, 1
lbl_80B81F4C:
/* 80B81F4C  3C 80 80 B9 */	lis r4, __vt__8cM3dGLin@ha
/* 80B81F50  38 04 D9 2C */	addi r0, r4, __vt__8cM3dGLin@l
/* 80B81F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B81F58  39 61 00 60 */	addi r11, r1, 0x60
/* 80B81F5C  4B 7E 02 C4 */	b _restgpr_27
/* 80B81F60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B81F64  7C 08 03 A6 */	mtlr r0
/* 80B81F68  38 21 00 60 */	addi r1, r1, 0x60
/* 80B81F6C  4E 80 00 20 */	blr 
