lbl_80AB4020:
/* 80AB4020  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AB4024  7C 08 02 A6 */	mflr r0
/* 80AB4028  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AB402C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB4030  4B 8A E1 A8 */	b _savegpr_28
/* 80AB4034  7C 7C 1B 78 */	mr r28, r3
/* 80AB4038  3C 60 80 AB */	lis r3, m__17daNpcPray_Param_c@ha
/* 80AB403C  38 83 58 08 */	addi r4, r3, m__17daNpcPray_Param_c@l
/* 80AB4040  38 A0 00 00 */	li r5, 0
/* 80AB4044  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AB4048  83 E3 00 04 */	lwz r31, 4(r3)
/* 80AB404C  3B C0 00 00 */	li r30, 0
/* 80AB4050  38 64 00 00 */	addi r3, r4, 0
/* 80AB4054  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80AB4058  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80AB405C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80AB4060  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80AB4064  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80AB4068  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80AB406C  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80AB4070  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80AB4074  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80AB4078  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80AB407C  7C 03 00 50 */	subf r0, r3, r0
/* 80AB4080  7C 1D 07 34 */	extsh r29, r0
/* 80AB4084  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80AB4088  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AB408C  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80AB4090  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AB4094  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80AB4098  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AB409C  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80AB40A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AB40A4  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80AB40A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AB40AC  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80AB40B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AB40B4  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80AB40B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AB40BC  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80AB40C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AB40C4  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80AB40C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AB40CC  80 64 01 10 */	lwz r3, 0x110(r4)
/* 80AB40D0  80 04 01 14 */	lwz r0, 0x114(r4)
/* 80AB40D4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AB40D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB40DC  80 04 01 18 */	lwz r0, 0x118(r4)
/* 80AB40E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AB40E4  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80AB40E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AB40EC  38 1C 09 20 */	addi r0, r28, 0x920
/* 80AB40F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB40F4  38 1C 09 26 */	addi r0, r28, 0x926
/* 80AB40F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AB40FC  A8 1C 0E 08 */	lha r0, 0xe08(r28)
/* 80AB4100  2C 00 00 01 */	cmpwi r0, 1
/* 80AB4104  41 82 00 18 */	beq lbl_80AB411C
/* 80AB4108  40 80 00 08 */	bge lbl_80AB4110
/* 80AB410C  48 00 00 34 */	b lbl_80AB4140
lbl_80AB4110:
/* 80AB4110  2C 00 00 04 */	cmpwi r0, 4
/* 80AB4114  40 80 00 2C */	bge lbl_80AB4140
/* 80AB4118  48 00 00 0C */	b lbl_80AB4124
lbl_80AB411C:
/* 80AB411C  3B C0 00 01 */	li r30, 1
/* 80AB4120  48 00 00 20 */	b lbl_80AB4140
lbl_80AB4124:
/* 80AB4124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB4128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB412C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80AB4130  2C 00 00 03 */	cmpwi r0, 3
/* 80AB4134  40 82 00 0C */	bne lbl_80AB4140
/* 80AB4138  C1 04 01 1C */	lfs f8, 0x11c(r4)
/* 80AB413C  C1 24 01 20 */	lfs f9, 0x120(r4)
lbl_80AB4140:
/* 80AB4140  28 05 00 00 */	cmplwi r5, 0
/* 80AB4144  41 82 00 4C */	beq lbl_80AB4190
/* 80AB4148  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80AB414C  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80AB4150  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80AB4154  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80AB4158  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80AB415C  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80AB4160  A8 1C 0E 08 */	lha r0, 0xe08(r28)
/* 80AB4164  2C 00 00 02 */	cmpwi r0, 2
/* 80AB4168  41 82 00 1C */	beq lbl_80AB4184
/* 80AB416C  2C 00 00 03 */	cmpwi r0, 3
/* 80AB4170  41 82 00 14 */	beq lbl_80AB4184
/* 80AB4174  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80AB4178  C0 04 01 24 */	lfs f0, 0x124(r4)
/* 80AB417C  EC 05 00 28 */	fsubs f0, f5, f0
/* 80AB4180  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80AB4184:
/* 80AB4184  38 1C 08 78 */	addi r0, r28, 0x878
/* 80AB4188  90 1C 0C 20 */	stw r0, 0xc20(r28)
/* 80AB418C  48 00 00 0C */	b lbl_80AB4198
lbl_80AB4190:
/* 80AB4190  38 00 00 00 */	li r0, 0
/* 80AB4194  90 1C 0C 20 */	stw r0, 0xc20(r28)
lbl_80AB4198:
/* 80AB4198  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80AB419C  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80AB41A0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80AB41A4  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80AB41A8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80AB41AC  C0 A4 00 9C */	lfs f5, 0x9c(r4)
/* 80AB41B0  FC C0 28 90 */	fmr f6, f5
/* 80AB41B4  FC E0 28 90 */	fmr f7, f5
/* 80AB41B8  FD 00 28 90 */	fmr f8, f5
/* 80AB41BC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80AB41C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AB41C4  4B 69 CE F4 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AB41C8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80AB41CC  7F 84 E3 78 */	mr r4, r28
/* 80AB41D0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80AB41D4  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AB41D8  7F C7 F3 78 */	mr r7, r30
/* 80AB41DC  7F A8 EB 78 */	mr r8, r29
/* 80AB41E0  39 20 00 00 */	li r9, 0
/* 80AB41E4  4B 69 D1 6C */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AB41E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB41EC  4B 8A E0 38 */	b _restgpr_28
/* 80AB41F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AB41F4  7C 08 03 A6 */	mtlr r0
/* 80AB41F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80AB41FC  4E 80 00 20 */	blr 
