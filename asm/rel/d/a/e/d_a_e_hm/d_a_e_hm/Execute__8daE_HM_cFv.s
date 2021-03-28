lbl_806E40D4:
/* 806E40D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E40D8  7C 08 02 A6 */	mflr r0
/* 806E40DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E40E0  39 61 00 40 */	addi r11, r1, 0x40
/* 806E40E4  4B C7 E0 F4 */	b _savegpr_28
/* 806E40E8  7C 7F 1B 78 */	mr r31, r3
/* 806E40EC  3C 60 80 6E */	lis r3, lit_1109@ha
/* 806E40F0  3B 83 5B D8 */	addi r28, r3, lit_1109@l
/* 806E40F4  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E40F8  3B A3 59 20 */	addi r29, r3, lit_3791@l
/* 806E40FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E4100  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 806E4104  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806E4108  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 806E410C  90 9C 00 A4 */	stw r4, 0xa4(r28)
/* 806E4110  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E4114  4B C6 32 88 */	b PSVECSquareDistance
/* 806E4118  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806E411C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4120  40 81 00 58 */	ble lbl_806E4178
/* 806E4124  FC 00 08 34 */	frsqrte f0, f1
/* 806E4128  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 806E412C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4130  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 806E4134  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4138  FC 01 00 32 */	fmul f0, f1, f0
/* 806E413C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4140  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4144  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4148  FC 00 00 32 */	fmul f0, f0, f0
/* 806E414C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4150  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4154  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4158  FC 44 00 32 */	fmul f2, f4, f0
/* 806E415C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4160  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4164  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4168  FC 02 00 32 */	fmul f0, f2, f0
/* 806E416C  FC 21 00 32 */	fmul f1, f1, f0
/* 806E4170  FC 20 08 18 */	frsp f1, f1
/* 806E4174  48 00 00 88 */	b lbl_806E41FC
lbl_806E4178:
/* 806E4178  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 806E417C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4180  40 80 00 10 */	bge lbl_806E4190
/* 806E4184  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E4188  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E418C  48 00 00 70 */	b lbl_806E41FC
lbl_806E4190:
/* 806E4190  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E4194  80 81 00 08 */	lwz r4, 8(r1)
/* 806E4198  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E419C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E41A0  7C 03 00 00 */	cmpw r3, r0
/* 806E41A4  41 82 00 14 */	beq lbl_806E41B8
/* 806E41A8  40 80 00 40 */	bge lbl_806E41E8
/* 806E41AC  2C 03 00 00 */	cmpwi r3, 0
/* 806E41B0  41 82 00 20 */	beq lbl_806E41D0
/* 806E41B4  48 00 00 34 */	b lbl_806E41E8
lbl_806E41B8:
/* 806E41B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E41BC  41 82 00 0C */	beq lbl_806E41C8
/* 806E41C0  38 00 00 01 */	li r0, 1
/* 806E41C4  48 00 00 28 */	b lbl_806E41EC
lbl_806E41C8:
/* 806E41C8  38 00 00 02 */	li r0, 2
/* 806E41CC  48 00 00 20 */	b lbl_806E41EC
lbl_806E41D0:
/* 806E41D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E41D4  41 82 00 0C */	beq lbl_806E41E0
/* 806E41D8  38 00 00 05 */	li r0, 5
/* 806E41DC  48 00 00 10 */	b lbl_806E41EC
lbl_806E41E0:
/* 806E41E0  38 00 00 03 */	li r0, 3
/* 806E41E4  48 00 00 08 */	b lbl_806E41EC
lbl_806E41E8:
/* 806E41E8  38 00 00 04 */	li r0, 4
lbl_806E41EC:
/* 806E41EC  2C 00 00 01 */	cmpwi r0, 1
/* 806E41F0  40 82 00 0C */	bne lbl_806E41FC
/* 806E41F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E41F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E41FC:
/* 806E41FC  D0 3C 00 6C */	stfs f1, 0x6c(r28)
/* 806E4200  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E4204  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E4208  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806E420C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E4210  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806E4214  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E4218  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 806E421C  C0 03 00 00 */	lfs f0, 0(r3)
/* 806E4220  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E4224  C0 03 00 04 */	lfs f0, 4(r3)
/* 806E4228  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E422C  C0 03 00 08 */	lfs f0, 8(r3)
/* 806E4230  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E4234  7F E3 FB 78 */	mr r3, r31
/* 806E4238  38 81 00 18 */	addi r4, r1, 0x18
/* 806E423C  38 A1 00 0C */	addi r5, r1, 0xc
/* 806E4240  4B FF CC F9 */	bl W_TargetAngle__8daE_HM_cF4cXyz4cXyz
/* 806E4244  B0 7C 00 A8 */	sth r3, 0xa8(r28)
/* 806E4248  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806E424C  38 03 FF FF */	addi r0, r3, -1
/* 806E4250  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 806E4254  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 806E4258  2C 00 00 00 */	cmpwi r0, 0
/* 806E425C  40 80 00 0C */	bge lbl_806E4268
/* 806E4260  38 00 00 00 */	li r0, 0
/* 806E4264  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_806E4268:
/* 806E4268  7F E3 FB 78 */	mr r3, r31
/* 806E426C  4B FF F9 79 */	bl ActionMode__8daE_HM_cFv
/* 806E4270  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806E4274  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E4278  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E427C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E4280  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806E4284  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806E4288  28 00 00 36 */	cmplwi r0, 0x36
/* 806E428C  40 82 00 28 */	bne lbl_806E42B4
/* 806E4290  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E4294  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E4298  41 82 00 1C */	beq lbl_806E42B4
/* 806E429C  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E42A0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E42A4  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E42A8  38 00 00 01 */	li r0, 1
/* 806E42AC  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806E42B0  48 00 00 24 */	b lbl_806E42D4
lbl_806E42B4:
/* 806E42B4  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 806E42B8  28 00 00 00 */	cmplwi r0, 0
/* 806E42BC  41 82 00 18 */	beq lbl_806E42D4
/* 806E42C0  38 00 00 00 */	li r0, 0
/* 806E42C4  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806E42C8  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E42CC  60 00 00 01 */	ori r0, r0, 1
/* 806E42D0  90 1F 09 28 */	stw r0, 0x928(r31)
lbl_806E42D4:
/* 806E42D4  7F E3 FB 78 */	mr r3, r31
/* 806E42D8  38 9F 06 30 */	addi r4, r31, 0x630
/* 806E42DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806E42E0  38 C1 00 24 */	addi r6, r1, 0x24
/* 806E42E4  48 00 11 D9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806E42E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806E42EC  7C 03 07 74 */	extsb r3, r0
/* 806E42F0  4B 94 8D 7C */	b dComIfGp_getReverb__Fi
/* 806E42F4  7C 65 1B 78 */	mr r5, r3
/* 806E42F8  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E42FC  38 80 00 00 */	li r4, 0
/* 806E4300  4B 92 CD B0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806E4304  A8 7F 05 C2 */	lha r3, 0x5c2(r31)
/* 806E4308  2C 03 00 00 */	cmpwi r3, 0
/* 806E430C  41 82 00 0C */	beq lbl_806E4318
/* 806E4310  38 03 FF FF */	addi r0, r3, -1
/* 806E4314  B0 1F 05 C2 */	sth r0, 0x5c2(r31)
lbl_806E4318:
/* 806E4318  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 806E431C  4B 92 91 0C */	b play__14mDoExt_baseAnmFv
/* 806E4320  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 806E4324  4B 92 91 04 */	b play__14mDoExt_baseAnmFv
/* 806E4328  7F E3 FB 78 */	mr r3, r31
/* 806E432C  48 00 02 2D */	bl setBaseMtx__8daE_HM_cFv
/* 806E4330  38 60 00 01 */	li r3, 1
/* 806E4334  39 61 00 40 */	addi r11, r1, 0x40
/* 806E4338  4B C7 DE EC */	b _restgpr_28
/* 806E433C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E4340  7C 08 03 A6 */	mtlr r0
/* 806E4344  38 21 00 40 */	addi r1, r1, 0x40
/* 806E4348  4E 80 00 20 */	blr 
