lbl_806D3EC4:
/* 806D3EC4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806D3EC8  7C 08 02 A6 */	mflr r0
/* 806D3ECC  90 01 00 74 */	stw r0, 0x74(r1)
/* 806D3ED0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806D3ED4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806D3ED8  39 61 00 60 */	addi r11, r1, 0x60
/* 806D3EDC  4B C8 E2 FC */	b _savegpr_28
/* 806D3EE0  7C 7C 1B 78 */	mr r28, r3
/* 806D3EE4  3C 80 80 6D */	lis r4, lit_1109@ha
/* 806D3EE8  3B A4 7E 78 */	addi r29, r4, lit_1109@l
/* 806D3EEC  3C 80 80 6D */	lis r4, cNullVec__6Z2Calc@ha
/* 806D3EF0  3B C4 7A FC */	addi r30, r4, cNullVec__6Z2Calc@l
/* 806D3EF4  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D3EF8  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D3EFC  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D3F00  2C 00 00 00 */	cmpwi r0, 0
/* 806D3F04  40 82 00 8C */	bne lbl_806D3F90
/* 806D3F08  38 00 00 01 */	li r0, 1
/* 806D3F0C  98 1C 0A 69 */	stb r0, 0xa69(r28)
/* 806D3F10  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D3F14  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D3F18  38 80 00 08 */	li r4, 8
/* 806D3F1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D3F20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D3F24  3C A5 00 02 */	addis r5, r5, 2
/* 806D3F28  38 C0 00 80 */	li r6, 0x80
/* 806D3F2C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D3F30  4B 96 83 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D3F34  7C 64 1B 78 */	mr r4, r3
/* 806D3F38  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D3F3C  38 A0 00 02 */	li r5, 2
/* 806D3F40  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D3F44  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806D3F48  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D3F4C  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D3F50  4B 93 CF 20 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D3F54  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D3F58  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 806D3F5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D3F60  D0 1C 0A 40 */	stfs f0, 0xa40(r28)
/* 806D3F64  D0 1C 0A 44 */	stfs f0, 0xa44(r28)
/* 806D3F68  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 806D3F6C  C0 1C 0A 40 */	lfs f0, 0xa40(r28)
/* 806D3F70  EC 01 00 2A */	fadds f0, f1, f0
/* 806D3F74  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806D3F78  38 00 04 00 */	li r0, 0x400
/* 806D3F7C  90 1C 08 18 */	stw r0, 0x818(r28)
/* 806D3F80  80 7C 0A 3C */	lwz r3, 0xa3c(r28)
/* 806D3F84  38 03 00 01 */	addi r0, r3, 1
/* 806D3F88  90 1C 0A 3C */	stw r0, 0xa3c(r28)
/* 806D3F8C  48 00 02 DC */	b lbl_806D4268
lbl_806D3F90:
/* 806D3F90  2C 00 FF FF */	cmpwi r0, -1
/* 806D3F94  41 82 02 D4 */	beq lbl_806D4268
/* 806D3F98  38 9C 07 CC */	addi r4, r28, 0x7cc
/* 806D3F9C  4B 94 67 30 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D3FA0  38 7C 05 F4 */	addi r3, r28, 0x5f4
/* 806D3FA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D3FA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D3FAC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D3FB0  4B 9A 2A FC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D3FB4  80 1C 06 20 */	lwz r0, 0x620(r28)
/* 806D3FB8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3FBC  41 82 00 A8 */	beq lbl_806D4064
/* 806D3FC0  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha
/* 806D3FC4  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l
/* 806D3FC8  7F 84 E3 78 */	mr r4, r28
/* 806D3FCC  4B 94 D3 6C */	b fpcEx_Search__FPFPvPv_PvPv
/* 806D3FD0  28 03 00 00 */	cmplwi r3, 0
/* 806D3FD4  41 82 00 48 */	beq lbl_806D401C
/* 806D3FD8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D3FDC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806D3FE0  4B B9 CC 24 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D3FE4  B0 7C 0A 1E */	sth r3, 0xa1e(r28)
/* 806D3FE8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D3FEC  4B B9 39 A0 */	b cM_rndFX__Ff
/* 806D3FF0  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 806D3FF4  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 806D3FF8  80 1E 01 E4 */	lwz r0, 0x1e4(r30)
/* 806D3FFC  90 61 00 34 */	stw r3, 0x34(r1)
/* 806D4000  90 01 00 38 */	stw r0, 0x38(r1)
/* 806D4004  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 806D4008  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D400C  7F 83 E3 78 */	mr r3, r28
/* 806D4010  38 81 00 34 */	addi r4, r1, 0x34
/* 806D4014  4B FF D2 B5 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D4018  48 00 02 50 */	b lbl_806D4268
lbl_806D401C:
/* 806D401C  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 806D4020  3C 03 00 01 */	addis r0, r3, 1
/* 806D4024  28 00 FF FF */	cmplwi r0, 0xffff
/* 806D4028  41 82 00 14 */	beq lbl_806D403C
/* 806D402C  41 82 00 38 */	beq lbl_806D4064
/* 806D4030  88 1D 00 A7 */	lbz r0, 0xa7(r29)
/* 806D4034  28 00 00 00 */	cmplwi r0, 0
/* 806D4038  41 82 00 2C */	beq lbl_806D4064
lbl_806D403C:
/* 806D403C  80 7E 01 EC */	lwz r3, 0x1ec(r30)
/* 806D4040  80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 806D4044  90 61 00 28 */	stw r3, 0x28(r1)
/* 806D4048  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D404C  80 1E 01 F4 */	lwz r0, 0x1f4(r30)
/* 806D4050  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D4054  7F 83 E3 78 */	mr r3, r28
/* 806D4058  38 81 00 28 */	addi r4, r1, 0x28
/* 806D405C  4B FF D2 6D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D4060  48 00 02 08 */	b lbl_806D4268
lbl_806D4064:
/* 806D4064  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806D4068  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806D406C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806D4070  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D4074  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806D4078  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806D407C  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 806D4080  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D4084  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806D4088  38 7D 00 80 */	addi r3, r29, 0x80
/* 806D408C  C0 03 00 08 */	lfs f0, 8(r3)
/* 806D4090  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806D4094  38 61 00 10 */	addi r3, r1, 0x10
/* 806D4098  38 81 00 1C */	addi r4, r1, 0x1c
/* 806D409C  4B C7 33 00 */	b PSVECSquareDistance
/* 806D40A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D40A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D40A8  40 81 00 58 */	ble lbl_806D4100
/* 806D40AC  FC 00 08 34 */	frsqrte f0, f1
/* 806D40B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D40B4  FC 44 00 32 */	fmul f2, f4, f0
/* 806D40B8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D40BC  FC 00 00 32 */	fmul f0, f0, f0
/* 806D40C0  FC 01 00 32 */	fmul f0, f1, f0
/* 806D40C4  FC 03 00 28 */	fsub f0, f3, f0
/* 806D40C8  FC 02 00 32 */	fmul f0, f2, f0
/* 806D40CC  FC 44 00 32 */	fmul f2, f4, f0
/* 806D40D0  FC 00 00 32 */	fmul f0, f0, f0
/* 806D40D4  FC 01 00 32 */	fmul f0, f1, f0
/* 806D40D8  FC 03 00 28 */	fsub f0, f3, f0
/* 806D40DC  FC 02 00 32 */	fmul f0, f2, f0
/* 806D40E0  FC 44 00 32 */	fmul f2, f4, f0
/* 806D40E4  FC 00 00 32 */	fmul f0, f0, f0
/* 806D40E8  FC 01 00 32 */	fmul f0, f1, f0
/* 806D40EC  FC 03 00 28 */	fsub f0, f3, f0
/* 806D40F0  FC 02 00 32 */	fmul f0, f2, f0
/* 806D40F4  FF E1 00 32 */	fmul f31, f1, f0
/* 806D40F8  FF E0 F8 18 */	frsp f31, f31
/* 806D40FC  48 00 00 90 */	b lbl_806D418C
lbl_806D4100:
/* 806D4100  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D4104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4108  40 80 00 10 */	bge lbl_806D4118
/* 806D410C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D4110  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806D4114  48 00 00 78 */	b lbl_806D418C
lbl_806D4118:
/* 806D4118  D0 21 00 08 */	stfs f1, 8(r1)
/* 806D411C  80 81 00 08 */	lwz r4, 8(r1)
/* 806D4120  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D4124  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D4128  7C 03 00 00 */	cmpw r3, r0
/* 806D412C  41 82 00 14 */	beq lbl_806D4140
/* 806D4130  40 80 00 40 */	bge lbl_806D4170
/* 806D4134  2C 03 00 00 */	cmpwi r3, 0
/* 806D4138  41 82 00 20 */	beq lbl_806D4158
/* 806D413C  48 00 00 34 */	b lbl_806D4170
lbl_806D4140:
/* 806D4140  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D4144  41 82 00 0C */	beq lbl_806D4150
/* 806D4148  38 00 00 01 */	li r0, 1
/* 806D414C  48 00 00 28 */	b lbl_806D4174
lbl_806D4150:
/* 806D4150  38 00 00 02 */	li r0, 2
/* 806D4154  48 00 00 20 */	b lbl_806D4174
lbl_806D4158:
/* 806D4158  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D415C  41 82 00 0C */	beq lbl_806D4168
/* 806D4160  38 00 00 05 */	li r0, 5
/* 806D4164  48 00 00 10 */	b lbl_806D4174
lbl_806D4168:
/* 806D4168  38 00 00 03 */	li r0, 3
/* 806D416C  48 00 00 08 */	b lbl_806D4174
lbl_806D4170:
/* 806D4170  38 00 00 04 */	li r0, 4
lbl_806D4174:
/* 806D4174  2C 00 00 01 */	cmpwi r0, 1
/* 806D4178  40 82 00 10 */	bne lbl_806D4188
/* 806D417C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D4180  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806D4184  48 00 00 08 */	b lbl_806D418C
lbl_806D4188:
/* 806D4188  FF E0 08 90 */	fmr f31, f1
lbl_806D418C:
/* 806D418C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806D4190  38 9D 00 80 */	addi r4, r29, 0x80
/* 806D4194  4B B9 CA 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D4198  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 806D419C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806D41A0  40 80 00 20 */	bge lbl_806D41C0
/* 806D41A4  38 7D 00 98 */	addi r3, r29, 0x98
/* 806D41A8  AB C3 00 02 */	lha r30, 2(r3)
/* 806D41AC  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 806D41B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D41B4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D41B8  4B B9 C5 88 */	b cLib_chaseF__FPfff
/* 806D41BC  48 00 00 18 */	b lbl_806D41D4
lbl_806D41C0:
/* 806D41C0  7C 7E 1B 78 */	mr r30, r3
/* 806D41C4  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 806D41C8  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 806D41CC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D41D0  4B B9 C5 70 */	b cLib_chaseF__FPfff
lbl_806D41D4:
/* 806D41D4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D41D8  7F C4 F3 78 */	mr r4, r30
/* 806D41DC  38 A0 04 00 */	li r5, 0x400
/* 806D41E0  4B B9 C9 B0 */	b cLib_chaseAngleS__FPsss
/* 806D41E4  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 806D41E8  C0 1C 0A 40 */	lfs f0, 0xa40(r28)
/* 806D41EC  EC 01 00 2A */	fadds f0, f1, f0
/* 806D41F0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806D41F4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 806D41F8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 806D41FC  EC 00 08 24 */	fdivs f0, f0, f1
/* 806D4200  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 806D4204  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806D4208  88 7C 0A 6E */	lbz r3, 0xa6e(r28)
/* 806D420C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 806D4210  EC 00 08 24 */	fdivs f0, f0, f1
/* 806D4214  FC 00 00 1E */	fctiwz f0, f0
/* 806D4218  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806D421C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D4220  7C 03 02 14 */	add r0, r3, r0
/* 806D4224  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D4228  88 1C 0A 6E */	lbz r0, 0xa6e(r28)
/* 806D422C  28 00 00 04 */	cmplwi r0, 4
/* 806D4230  41 80 00 38 */	blt lbl_806D4268
/* 806D4234  38 00 00 00 */	li r0, 0
/* 806D4238  98 1C 0A 6E */	stb r0, 0xa6e(r28)
/* 806D423C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044D@ha */
/* 806D4240  38 03 04 4D */	addi r0, r3, 0x044D /* 0x0007044D@l */
/* 806D4244  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D4248  38 7C 09 6C */	addi r3, r28, 0x96c
/* 806D424C  38 81 00 0C */	addi r4, r1, 0xc
/* 806D4250  38 A0 00 00 */	li r5, 0
/* 806D4254  38 C0 FF FF */	li r6, -1
/* 806D4258  81 9C 09 6C */	lwz r12, 0x96c(r28)
/* 806D425C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D4260  7D 89 03 A6 */	mtctr r12
/* 806D4264  4E 80 04 21 */	bctrl 
lbl_806D4268:
/* 806D4268  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806D426C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806D4270  39 61 00 60 */	addi r11, r1, 0x60
/* 806D4274  4B C8 DF B0 */	b _restgpr_28
/* 806D4278  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806D427C  7C 08 03 A6 */	mtlr r0
/* 806D4280  38 21 00 70 */	addi r1, r1, 0x70
/* 806D4284  4E 80 00 20 */	blr 
