lbl_80B39554:
/* 80B39554  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B39558  7C 08 02 A6 */	mflr r0
/* 80B3955C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B39560  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B39564  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B39568  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80B3956C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80B39570  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B39574  4B 82 8C 61 */	bl _savegpr_27
/* 80B39578  7C 7D 1B 78 */	mr r29, r3
/* 80B3957C  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B39580  3B E4 16 DC */	addi r31, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B39584  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B39588  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3958C  83 DB 5D AC */	lwz r30, 0x5dac(r27)
/* 80B39590  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B39594  2C 00 00 02 */	cmpwi r0, 2
/* 80B39598  41 82 00 5C */	beq lbl_80B395F4
/* 80B3959C  40 80 06 50 */	bge lbl_80B39BEC
/* 80B395A0  2C 00 00 00 */	cmpwi r0, 0
/* 80B395A4  41 82 00 0C */	beq lbl_80B395B0
/* 80B395A8  48 00 06 44 */	b lbl_80B39BEC
/* 80B395AC  48 00 06 40 */	b lbl_80B39BEC
lbl_80B395B0:
/* 80B395B0  38 80 00 11 */	li r4, 0x11
/* 80B395B4  38 A0 00 01 */	li r5, 1
/* 80B395B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B395BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B395C0  7D 89 03 A6 */	mtctr r12
/* 80B395C4  4E 80 04 21 */	bctrl 
/* 80B395C8  7F A3 EB 78 */	mr r3, r29
/* 80B395CC  38 80 00 16 */	li r4, 0x16
/* 80B395D0  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B395D4  38 A0 00 00 */	li r5, 0
/* 80B395D8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B395DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B395E0  7D 89 03 A6 */	mtctr r12
/* 80B395E4  4E 80 04 21 */	bctrl 
/* 80B395E8  38 00 00 02 */	li r0, 2
/* 80B395EC  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B395F0  48 00 05 FC */	b lbl_80B39BEC
lbl_80B395F4:
/* 80B395F4  80 7D 0B DC */	lwz r3, 0xbdc(r29)
/* 80B395F8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80B395FC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B39600  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B39604  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B39608  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B3960C  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B39610  4B 4D 37 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B39614  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80B39618  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B3961C  4B 73 75 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B39620  A8 1D 0E 94 */	lha r0, 0xe94(r29)
/* 80B39624  7C 00 1A 14 */	add r0, r0, r3
/* 80B39628  7C 04 07 34 */	extsh r4, r0
/* 80B3962C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B39630  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B39634  4B 4D 2E 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B39638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3963C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B39640  38 81 00 40 */	addi r4, r1, 0x40
/* 80B39644  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B39648  4B 80 D7 25 */	bl PSMTXMultVec
/* 80B3964C  7F A3 EB 78 */	mr r3, r29
/* 80B39650  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B39654  4B 4E 10 BD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B39658  7C 64 1B 78 */	mr r4, r3
/* 80B3965C  38 7D 08 F2 */	addi r3, r29, 0x8f2
/* 80B39660  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B39664  A8 A5 00 78 */	lha r5, 0x78(r5)
/* 80B39668  38 C0 40 00 */	li r6, 0x4000
/* 80B3966C  38 E0 00 40 */	li r7, 0x40
/* 80B39670  4B 73 6E D1 */	bl cLib_addCalcAngleS__FPsssss
/* 80B39674  7F A3 EB 78 */	mr r3, r29
/* 80B39678  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B3967C  4B 61 AB D5 */	bl setAngle__8daNpcF_cFs
/* 80B39680  88 7D 0E 9B */	lbz r3, 0xe9b(r29)
/* 80B39684  28 03 00 00 */	cmplwi r3, 0
/* 80B39688  38 00 00 18 */	li r0, 0x18
/* 80B3968C  40 82 00 08 */	bne lbl_80B39694
/* 80B39690  38 00 00 1A */	li r0, 0x1a
lbl_80B39694:
/* 80B39694  28 03 00 00 */	cmplwi r3, 0
/* 80B39698  3B 60 00 1B */	li r27, 0x1b
/* 80B3969C  40 82 00 08 */	bne lbl_80B396A4
/* 80B396A0  3B 60 00 1E */	li r27, 0x1e
lbl_80B396A4:
/* 80B396A4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B396A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B396AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B396B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B396B4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B396B8  7C 63 02 14 */	add r3, r3, r0
/* 80B396BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B396C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B396C4  4B 80 CD ED */	bl PSMTXCopy
/* 80B396C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B396CC  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B396D0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B396D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B396D8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B396DC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B396E0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B396E4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B396E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B396EC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B396F0  38 7D 0D E8 */	addi r3, r29, 0xde8
/* 80B396F4  38 80 00 00 */	li r4, 0
/* 80B396F8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80B396FC  38 DD 08 F0 */	addi r6, r29, 0x8f0
/* 80B39700  C0 3F 05 F8 */	lfs f1, 0x5f8(r31)
/* 80B39704  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80B39708  39 00 00 00 */	li r8, 0
/* 80B3970C  4B 4E 39 15 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B39710  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39714  80 63 00 04 */	lwz r3, 4(r3)
/* 80B39718  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B3971C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B39720  1C 1B 00 30 */	mulli r0, r27, 0x30
/* 80B39724  7C 63 02 14 */	add r3, r3, r0
/* 80B39728  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3972C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B39730  4B 80 CD 81 */	bl PSMTXCopy
/* 80B39734  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80B39738  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B3973C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80B39740  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B39744  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80B39748  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B3974C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B39750  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B39754  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80B39758  38 80 00 00 */	li r4, 0
/* 80B3975C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80B39760  38 DD 08 F0 */	addi r6, r29, 0x8f0
/* 80B39764  C0 3F 05 F8 */	lfs f1, 0x5f8(r31)
/* 80B39768  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80B3976C  39 00 00 00 */	li r8, 0
/* 80B39770  4B 4E 38 B1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80B39774  38 61 00 70 */	addi r3, r1, 0x70
/* 80B39778  7F C4 F3 78 */	mr r4, r30
/* 80B3977C  48 00 7E D5 */	bl getLeftFootPos__9daPy_py_cCFv
/* 80B39780  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B39784  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B39788  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B3978C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B39790  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B39794  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B39798  C0 5D 0D F8 */	lfs f2, 0xdf8(r29)
/* 80B3979C  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 80B397A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B397A4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B397A8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80B397AC  38 61 00 28 */	addi r3, r1, 0x28
/* 80B397B0  38 81 00 34 */	addi r4, r1, 0x34
/* 80B397B4  4B 80 DB E9 */	bl PSVECSquareDistance
/* 80B397B8  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B397BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B397C0  40 81 00 58 */	ble lbl_80B39818
/* 80B397C4  FC 00 08 34 */	frsqrte f0, f1
/* 80B397C8  C8 9F 06 00 */	lfd f4, 0x600(r31)
/* 80B397CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B397D0  C8 7F 06 08 */	lfd f3, 0x608(r31)
/* 80B397D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B397D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B397DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B397E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B397E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B397E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B397EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B397F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B397F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B397F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B397FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B39800  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39804  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39808  FC 02 00 32 */	fmul f0, f2, f0
/* 80B3980C  FF E1 00 32 */	fmul f31, f1, f0
/* 80B39810  FF E0 F8 18 */	frsp f31, f31
/* 80B39814  48 00 00 90 */	b lbl_80B398A4
lbl_80B39818:
/* 80B39818  C8 1F 06 10 */	lfd f0, 0x610(r31)
/* 80B3981C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B39820  40 80 00 10 */	bge lbl_80B39830
/* 80B39824  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B39828  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B3982C  48 00 00 78 */	b lbl_80B398A4
lbl_80B39830:
/* 80B39830  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B39834  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B39838  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B3983C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B39840  7C 03 00 00 */	cmpw r3, r0
/* 80B39844  41 82 00 14 */	beq lbl_80B39858
/* 80B39848  40 80 00 40 */	bge lbl_80B39888
/* 80B3984C  2C 03 00 00 */	cmpwi r3, 0
/* 80B39850  41 82 00 20 */	beq lbl_80B39870
/* 80B39854  48 00 00 34 */	b lbl_80B39888
lbl_80B39858:
/* 80B39858  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B3985C  41 82 00 0C */	beq lbl_80B39868
/* 80B39860  38 00 00 01 */	li r0, 1
/* 80B39864  48 00 00 28 */	b lbl_80B3988C
lbl_80B39868:
/* 80B39868  38 00 00 02 */	li r0, 2
/* 80B3986C  48 00 00 20 */	b lbl_80B3988C
lbl_80B39870:
/* 80B39870  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B39874  41 82 00 0C */	beq lbl_80B39880
/* 80B39878  38 00 00 05 */	li r0, 5
/* 80B3987C  48 00 00 10 */	b lbl_80B3988C
lbl_80B39880:
/* 80B39880  38 00 00 03 */	li r0, 3
/* 80B39884  48 00 00 08 */	b lbl_80B3988C
lbl_80B39888:
/* 80B39888  38 00 00 04 */	li r0, 4
lbl_80B3988C:
/* 80B3988C  2C 00 00 01 */	cmpwi r0, 1
/* 80B39890  40 82 00 10 */	bne lbl_80B398A0
/* 80B39894  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B39898  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B3989C  48 00 00 08 */	b lbl_80B398A4
lbl_80B398A0:
/* 80B398A0  FF E0 08 90 */	fmr f31, f1
lbl_80B398A4:
/* 80B398A4  38 61 00 64 */	addi r3, r1, 0x64
/* 80B398A8  7F C4 F3 78 */	mr r4, r30
/* 80B398AC  48 00 7D 89 */	bl getRightFootPos__9daPy_py_cCFv
/* 80B398B0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B398B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B398B8  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80B398BC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B398C0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B398C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B398C8  C0 5D 0D F8 */	lfs f2, 0xdf8(r29)
/* 80B398CC  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 80B398D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B398D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B398D8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B398DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80B398E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B398E4  4B 80 DA B9 */	bl PSVECSquareDistance
/* 80B398E8  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B398EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B398F0  40 81 00 58 */	ble lbl_80B39948
/* 80B398F4  FC 00 08 34 */	frsqrte f0, f1
/* 80B398F8  C8 9F 06 00 */	lfd f4, 0x600(r31)
/* 80B398FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B39900  C8 7F 06 08 */	lfd f3, 0x608(r31)
/* 80B39904  FC 00 00 32 */	fmul f0, f0, f0
/* 80B39908  FC 01 00 32 */	fmul f0, f1, f0
/* 80B3990C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39910  FC 02 00 32 */	fmul f0, f2, f0
/* 80B39914  FC 44 00 32 */	fmul f2, f4, f0
/* 80B39918  FC 00 00 32 */	fmul f0, f0, f0
/* 80B3991C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39920  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39924  FC 02 00 32 */	fmul f0, f2, f0
/* 80B39928  FC 44 00 32 */	fmul f2, f4, f0
/* 80B3992C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B39930  FC 01 00 32 */	fmul f0, f1, f0
/* 80B39934  FC 03 00 28 */	fsub f0, f3, f0
/* 80B39938  FC 02 00 32 */	fmul f0, f2, f0
/* 80B3993C  FF C1 00 32 */	fmul f30, f1, f0
/* 80B39940  FF C0 F0 18 */	frsp f30, f30
/* 80B39944  48 00 00 90 */	b lbl_80B399D4
lbl_80B39948:
/* 80B39948  C8 1F 06 10 */	lfd f0, 0x610(r31)
/* 80B3994C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B39950  40 80 00 10 */	bge lbl_80B39960
/* 80B39954  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B39958  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B3995C  48 00 00 78 */	b lbl_80B399D4
lbl_80B39960:
/* 80B39960  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B39964  80 81 00 08 */	lwz r4, 8(r1)
/* 80B39968  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B3996C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B39970  7C 03 00 00 */	cmpw r3, r0
/* 80B39974  41 82 00 14 */	beq lbl_80B39988
/* 80B39978  40 80 00 40 */	bge lbl_80B399B8
/* 80B3997C  2C 03 00 00 */	cmpwi r3, 0
/* 80B39980  41 82 00 20 */	beq lbl_80B399A0
/* 80B39984  48 00 00 34 */	b lbl_80B399B8
lbl_80B39988:
/* 80B39988  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B3998C  41 82 00 0C */	beq lbl_80B39998
/* 80B39990  38 00 00 01 */	li r0, 1
/* 80B39994  48 00 00 28 */	b lbl_80B399BC
lbl_80B39998:
/* 80B39998  38 00 00 02 */	li r0, 2
/* 80B3999C  48 00 00 20 */	b lbl_80B399BC
lbl_80B399A0:
/* 80B399A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B399A4  41 82 00 0C */	beq lbl_80B399B0
/* 80B399A8  38 00 00 05 */	li r0, 5
/* 80B399AC  48 00 00 10 */	b lbl_80B399BC
lbl_80B399B0:
/* 80B399B0  38 00 00 03 */	li r0, 3
/* 80B399B4  48 00 00 08 */	b lbl_80B399BC
lbl_80B399B8:
/* 80B399B8  38 00 00 04 */	li r0, 4
lbl_80B399BC:
/* 80B399BC  2C 00 00 01 */	cmpwi r0, 1
/* 80B399C0  40 82 00 10 */	bne lbl_80B399D0
/* 80B399C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B399C8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B399CC  48 00 00 08 */	b lbl_80B399D4
lbl_80B399D0:
/* 80B399D0  FF C0 08 90 */	fmr f30, f1
lbl_80B399D4:
/* 80B399D4  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B399D8  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80B399DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B399E0  41 81 00 0C */	bgt lbl_80B399EC
/* 80B399E4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B399E8  40 81 00 1C */	ble lbl_80B39A04
lbl_80B399EC:
/* 80B399EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B399F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B399F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B399F8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B399FC  38 80 00 03 */	li r4, 3
/* 80B39A00  4B 77 83 F5 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_80B39A04:
/* 80B39A04  80 7D 0B D8 */	lwz r3, 0xbd8(r29)
/* 80B39A08  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80B39A0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B39A10  41 81 00 0C */	bgt lbl_80B39A1C
/* 80B39A14  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80B39A18  40 81 00 0C */	ble lbl_80B39A24
lbl_80B39A1C:
/* 80B39A1C  38 00 00 09 */	li r0, 9
/* 80B39A20  98 1E 05 6A */	stb r0, 0x56a(r30)
lbl_80B39A24:
/* 80B39A24  38 7D 0D F0 */	addi r3, r29, 0xdf0
/* 80B39A28  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 80B39A2C  4B 73 72 11 */	bl cLib_targetAngleY__FRC3VecRC3Vec
/* 80B39A30  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B39A34  7C 00 18 50 */	subf r0, r0, r3
/* 80B39A38  7C 1B 07 34 */	extsh r27, r0
/* 80B39A3C  7F 63 DB 78 */	mr r3, r27
/* 80B39A40  4B 82 B6 91 */	bl abs
/* 80B39A44  80 9D 0B DC */	lwz r4, 0xbdc(r29)
/* 80B39A48  A8 84 00 28 */	lha r4, 0x28(r4)
/* 80B39A4C  7C 03 20 00 */	cmpw r3, r4
/* 80B39A50  40 81 00 1C */	ble lbl_80B39A6C
/* 80B39A54  7F 60 07 35 */	extsh. r0, r27
/* 80B39A58  7C 04 00 D0 */	neg r0, r4
/* 80B39A5C  7C 00 07 34 */	extsh r0, r0
/* 80B39A60  40 81 00 08 */	ble lbl_80B39A68
/* 80B39A64  7C 80 23 78 */	mr r0, r4
lbl_80B39A68:
/* 80B39A68  7C 1B 03 78 */	mr r27, r0
lbl_80B39A6C:
/* 80B39A6C  7F C3 F3 78 */	mr r3, r30
/* 80B39A70  7F 64 DB 78 */	mr r4, r27
/* 80B39A74  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B39A78  81 8C 02 30 */	lwz r12, 0x230(r12)
/* 80B39A7C  7D 89 03 A6 */	mtctr r12
/* 80B39A80  4E 80 04 21 */	bctrl 
/* 80B39A84  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B39A88  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39A8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B39A90  7F C3 F3 78 */	mr r3, r30
/* 80B39A94  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80B39A98  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B39A9C  7D 89 03 A6 */	mtctr r12
/* 80B39AA0  4E 80 04 21 */	bctrl 
/* 80B39AA4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B39AA8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B39AAC  7F A3 EB 78 */	mr r3, r29
/* 80B39AB0  4B FF 9F 3D */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B39AB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B39AB8  41 82 00 98 */	beq lbl_80B39B50
/* 80B39ABC  3C 60 80 B4 */	lis r3, lit_8642@ha /* 0x80B42BBC@ha */
/* 80B39AC0  38 83 2B BC */	addi r4, r3, lit_8642@l /* 0x80B42BBC@l */
/* 80B39AC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B39AC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B39ACC  90 61 00 58 */	stw r3, 0x58(r1)
/* 80B39AD0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B39AD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B39AD8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B39ADC  38 00 00 03 */	li r0, 3
/* 80B39AE0  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39AE4  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39AE8  4B 82 85 31 */	bl __ptmf_test
/* 80B39AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B39AF0  41 82 00 18 */	beq lbl_80B39B08
/* 80B39AF4  7F A3 EB 78 */	mr r3, r29
/* 80B39AF8  38 80 00 00 */	li r4, 0
/* 80B39AFC  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39B00  4B 82 85 85 */	bl __ptmf_scall
/* 80B39B04  60 00 00 00 */	nop 
lbl_80B39B08:
/* 80B39B08  38 00 00 00 */	li r0, 0
/* 80B39B0C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39B10  80 61 00 58 */	lwz r3, 0x58(r1)
/* 80B39B14  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B39B18  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B39B1C  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B39B20  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B39B24  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B39B28  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39B2C  4B 82 84 ED */	bl __ptmf_test
/* 80B39B30  2C 03 00 00 */	cmpwi r3, 0
/* 80B39B34  41 82 00 B8 */	beq lbl_80B39BEC
/* 80B39B38  7F A3 EB 78 */	mr r3, r29
/* 80B39B3C  38 80 00 00 */	li r4, 0
/* 80B39B40  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39B44  4B 82 85 41 */	bl __ptmf_scall
/* 80B39B48  60 00 00 00 */	nop 
/* 80B39B4C  48 00 00 A0 */	b lbl_80B39BEC
lbl_80B39B50:
/* 80B39B50  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 80B39B54  28 00 00 23 */	cmplwi r0, 0x23
/* 80B39B58  40 82 00 94 */	bne lbl_80B39BEC
/* 80B39B5C  3C 60 80 B4 */	lis r3, lit_8647@ha /* 0x80B42BC8@ha */
/* 80B39B60  38 83 2B C8 */	addi r4, r3, lit_8647@l /* 0x80B42BC8@l */
/* 80B39B64  80 64 00 00 */	lwz r3, 0(r4)
/* 80B39B68  80 04 00 04 */	lwz r0, 4(r4)
/* 80B39B6C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B39B70  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B39B74  80 04 00 08 */	lwz r0, 8(r4)
/* 80B39B78  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B39B7C  38 00 00 03 */	li r0, 3
/* 80B39B80  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39B84  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39B88  4B 82 84 91 */	bl __ptmf_test
/* 80B39B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B39B90  41 82 00 18 */	beq lbl_80B39BA8
/* 80B39B94  7F A3 EB 78 */	mr r3, r29
/* 80B39B98  38 80 00 00 */	li r4, 0
/* 80B39B9C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39BA0  4B 82 84 E5 */	bl __ptmf_scall
/* 80B39BA4  60 00 00 00 */	nop 
lbl_80B39BA8:
/* 80B39BA8  38 00 00 00 */	li r0, 0
/* 80B39BAC  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B39BB0  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80B39BB4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80B39BB8  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B39BBC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B39BC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B39BC4  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B39BC8  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B39BCC  4B 82 84 4D */	bl __ptmf_test
/* 80B39BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B39BD4  41 82 00 18 */	beq lbl_80B39BEC
/* 80B39BD8  7F A3 EB 78 */	mr r3, r29
/* 80B39BDC  38 80 00 00 */	li r4, 0
/* 80B39BE0  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B39BE4  4B 82 84 A1 */	bl __ptmf_scall
/* 80B39BE8  60 00 00 00 */	nop 
lbl_80B39BEC:
/* 80B39BEC  38 60 00 01 */	li r3, 1
/* 80B39BF0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B39BF4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B39BF8  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80B39BFC  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80B39C00  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B39C04  4B 82 86 1D */	bl _restgpr_27
/* 80B39C08  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B39C0C  7C 08 03 A6 */	mtlr r0
/* 80B39C10  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B39C14  4E 80 00 20 */	blr 
