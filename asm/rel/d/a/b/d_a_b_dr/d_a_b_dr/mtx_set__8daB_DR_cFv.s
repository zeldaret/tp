lbl_805C41A4:
/* 805C41A4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805C41A8  7C 08 02 A6 */	mflr r0
/* 805C41AC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805C41B0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805C41B4  4B D9 E0 09 */	bl _savegpr_21
/* 805C41B8  7C 78 1B 78 */	mr r24, r3
/* 805C41BC  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805C41C0  3B 63 6C 74 */	addi r27, r3, lit_3800@l /* 0x805C6C74@l */
/* 805C41C4  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 805C41C8  4B A4 8B 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805C41CC  C0 38 07 6C */	lfs f1, 0x76c(r24)
/* 805C41D0  C0 58 07 70 */	lfs f2, 0x770(r24)
/* 805C41D4  C0 78 07 74 */	lfs f3, 0x774(r24)
/* 805C41D8  4B A4 8B C5 */	bl transM__14mDoMtx_stack_cFfff
/* 805C41DC  38 78 04 E4 */	addi r3, r24, 0x4e4
/* 805C41E0  4B A4 8D 65 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805C41E4  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C41E8  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C41EC  C0 23 00 08 */	lfs f1, 8(r3)
/* 805C41F0  FC 40 08 90 */	fmr f2, f1
/* 805C41F4  FC 60 08 90 */	fmr f3, f1
/* 805C41F8  4B A4 8C 41 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805C41FC  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C4200  80 83 00 04 */	lwz r4, 4(r3)
/* 805C4204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C420C  38 84 00 24 */	addi r4, r4, 0x24
/* 805C4210  4B D8 22 A1 */	bl PSMTXCopy
/* 805C4214  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C4218  4B A4 CF D5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805C421C  80 18 07 10 */	lwz r0, 0x710(r24)
/* 805C4220  2C 00 00 3A */	cmpwi r0, 0x3a
/* 805C4224  40 82 01 1C */	bne lbl_805C4340
/* 805C4228  38 61 00 50 */	addi r3, r1, 0x50
/* 805C422C  4B AB 33 51 */	bl __ct__11dBgS_GndChkFv
/* 805C4230  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C4234  80 63 00 04 */	lwz r3, 4(r3)
/* 805C4238  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805C423C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4240  38 63 06 60 */	addi r3, r3, 0x660
/* 805C4244  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4248  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C424C  4B D8 22 65 */	bl PSMTXCopy
/* 805C4250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805C4254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805C4258  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805C425C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C4260  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C4264  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805C4268  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805C426C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C4270  38 61 00 50 */	addi r3, r1, 0x50
/* 805C4274  38 81 00 44 */	addi r4, r1, 0x44
/* 805C4278  4B CA 3A B1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805C427C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C4280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C4284  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805C4288  38 81 00 50 */	addi r4, r1, 0x50
/* 805C428C  4B AB 02 15 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805C4290  C0 1B 03 68 */	lfs f0, 0x368(r27)
/* 805C4294  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805C4298  41 82 00 10 */	beq lbl_805C42A8
/* 805C429C  C0 1B 04 58 */	lfs f0, 0x458(r27)
/* 805C42A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C42A4  40 80 00 08 */	bge lbl_805C42AC
lbl_805C42A8:
/* 805C42A8  C0 3B 04 58 */	lfs f1, 0x458(r27)
lbl_805C42AC:
/* 805C42AC  D0 38 07 AC */	stfs f1, 0x7ac(r24)
/* 805C42B0  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C42B4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C42B8  FC 00 00 1E */	fctiwz f0, f0
/* 805C42BC  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 805C42C0  80 01 00 AC */	lwz r0, 0xac(r1)
/* 805C42C4  C8 3B 03 58 */	lfd f1, 0x358(r27)
/* 805C42C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C42CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805C42D0  3C 00 43 30 */	lis r0, 0x4330
/* 805C42D4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 805C42D8  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 805C42DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 805C42E0  C0 1B 04 5C */	lfs f0, 0x45c(r27)
/* 805C42E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C42E8  40 80 00 20 */	bge lbl_805C4308
/* 805C42EC  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 805C42F0  38 98 07 A8 */	addi r4, r24, 0x7a8
/* 805C42F4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805C42F8  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 805C42FC  C0 7B 00 20 */	lfs f3, 0x20(r27)
/* 805C4300  4B CA B7 B9 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C4304  48 00 00 1C */	b lbl_805C4320
lbl_805C4308:
/* 805C4308  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 805C430C  38 98 07 A8 */	addi r4, r24, 0x7a8
/* 805C4310  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805C4314  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 805C4318  C0 7B 00 20 */	lfs f3, 0x20(r27)
/* 805C431C  4B CA B7 9D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_805C4320:
/* 805C4320  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 805C4324  C0 38 07 AC */	lfs f1, 0x7ac(r24)
/* 805C4328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805C432C  40 80 00 08 */	bge lbl_805C4334
/* 805C4330  D0 38 04 D4 */	stfs f1, 0x4d4(r24)
lbl_805C4334:
/* 805C4334  38 61 00 50 */	addi r3, r1, 0x50
/* 805C4338  38 80 FF FF */	li r4, -1
/* 805C433C  4B AB 32 B5 */	bl __dt__11dBgS_GndChkFv
lbl_805C4340:
/* 805C4340  80 18 07 10 */	lwz r0, 0x710(r24)
/* 805C4344  2C 00 00 45 */	cmpwi r0, 0x45
/* 805C4348  40 82 03 24 */	bne lbl_805C466C
/* 805C434C  C0 3B 03 68 */	lfs f1, 0x368(r27)
/* 805C4350  C0 18 08 C8 */	lfs f0, 0x8c8(r24)
/* 805C4354  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C4358  41 82 03 14 */	beq lbl_805C466C
/* 805C435C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C4360  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 805C4364  38 B8 04 A8 */	addi r5, r24, 0x4a8
/* 805C4368  4B CA 27 CD */	bl __mi__4cXyzCFRC3Vec
/* 805C436C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805C4370  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C4374  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805C4378  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C437C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805C4380  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805C4384  38 61 00 38 */	addi r3, r1, 0x38
/* 805C4388  4B D8 2D B1 */	bl PSVECSquareMag
/* 805C438C  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 805C4390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C4394  40 81 00 58 */	ble lbl_805C43EC
/* 805C4398  FC 00 08 34 */	frsqrte f0, f1
/* 805C439C  C8 9B 03 98 */	lfd f4, 0x398(r27)
/* 805C43A0  FC 44 00 32 */	fmul f2, f4, f0
/* 805C43A4  C8 7B 03 A0 */	lfd f3, 0x3a0(r27)
/* 805C43A8  FC 00 00 32 */	fmul f0, f0, f0
/* 805C43AC  FC 01 00 32 */	fmul f0, f1, f0
/* 805C43B0  FC 03 00 28 */	fsub f0, f3, f0
/* 805C43B4  FC 02 00 32 */	fmul f0, f2, f0
/* 805C43B8  FC 44 00 32 */	fmul f2, f4, f0
/* 805C43BC  FC 00 00 32 */	fmul f0, f0, f0
/* 805C43C0  FC 01 00 32 */	fmul f0, f1, f0
/* 805C43C4  FC 03 00 28 */	fsub f0, f3, f0
/* 805C43C8  FC 02 00 32 */	fmul f0, f2, f0
/* 805C43CC  FC 44 00 32 */	fmul f2, f4, f0
/* 805C43D0  FC 00 00 32 */	fmul f0, f0, f0
/* 805C43D4  FC 01 00 32 */	fmul f0, f1, f0
/* 805C43D8  FC 03 00 28 */	fsub f0, f3, f0
/* 805C43DC  FC 02 00 32 */	fmul f0, f2, f0
/* 805C43E0  FC 21 00 32 */	fmul f1, f1, f0
/* 805C43E4  FC 20 08 18 */	frsp f1, f1
/* 805C43E8  48 00 00 88 */	b lbl_805C4470
lbl_805C43EC:
/* 805C43EC  C8 1B 03 A8 */	lfd f0, 0x3a8(r27)
/* 805C43F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C43F4  40 80 00 10 */	bge lbl_805C4404
/* 805C43F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805C43FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805C4400  48 00 00 70 */	b lbl_805C4470
lbl_805C4404:
/* 805C4404  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805C4408  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805C440C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C4410  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C4414  7C 03 00 00 */	cmpw r3, r0
/* 805C4418  41 82 00 14 */	beq lbl_805C442C
/* 805C441C  40 80 00 40 */	bge lbl_805C445C
/* 805C4420  2C 03 00 00 */	cmpwi r3, 0
/* 805C4424  41 82 00 20 */	beq lbl_805C4444
/* 805C4428  48 00 00 34 */	b lbl_805C445C
lbl_805C442C:
/* 805C442C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C4430  41 82 00 0C */	beq lbl_805C443C
/* 805C4434  38 00 00 01 */	li r0, 1
/* 805C4438  48 00 00 28 */	b lbl_805C4460
lbl_805C443C:
/* 805C443C  38 00 00 02 */	li r0, 2
/* 805C4440  48 00 00 20 */	b lbl_805C4460
lbl_805C4444:
/* 805C4444  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C4448  41 82 00 0C */	beq lbl_805C4454
/* 805C444C  38 00 00 05 */	li r0, 5
/* 805C4450  48 00 00 10 */	b lbl_805C4460
lbl_805C4454:
/* 805C4454  38 00 00 03 */	li r0, 3
/* 805C4458  48 00 00 08 */	b lbl_805C4460
lbl_805C445C:
/* 805C445C  38 00 00 04 */	li r0, 4
lbl_805C4460:
/* 805C4460  2C 00 00 01 */	cmpwi r0, 1
/* 805C4464  40 82 00 0C */	bne lbl_805C4470
/* 805C4468  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805C446C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805C4470:
/* 805C4470  C0 1B 03 E0 */	lfs f0, 0x3e0(r27)
/* 805C4474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C4478  41 81 00 14 */	bgt lbl_805C448C
/* 805C447C  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 805C4480  C0 1B 04 60 */	lfs f0, 0x460(r27)
/* 805C4484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C4488  40 81 00 44 */	ble lbl_805C44CC
lbl_805C448C:
/* 805C448C  88 18 07 D8 */	lbz r0, 0x7d8(r24)
/* 805C4490  28 00 00 00 */	cmplwi r0, 0
/* 805C4494  40 82 01 D8 */	bne lbl_805C466C
/* 805C4498  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048B@ha */
/* 805C449C  38 03 04 8B */	addi r0, r3, 0x048B /* 0x0007048B@l */
/* 805C44A0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C44A4  38 78 05 C0 */	addi r3, r24, 0x5c0
/* 805C44A8  38 81 00 28 */	addi r4, r1, 0x28
/* 805C44AC  38 A0 FF FF */	li r5, -1
/* 805C44B0  81 98 05 C0 */	lwz r12, 0x5c0(r24)
/* 805C44B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805C44B8  7D 89 03 A6 */	mtctr r12
/* 805C44BC  4E 80 04 21 */	bctrl 
/* 805C44C0  38 00 00 01 */	li r0, 1
/* 805C44C4  98 18 07 D8 */	stb r0, 0x7d8(r24)
/* 805C44C8  48 00 01 A4 */	b lbl_805C466C
lbl_805C44CC:
/* 805C44CC  3B 20 00 00 */	li r25, 0
/* 805C44D0  3A E0 00 00 */	li r23, 0
/* 805C44D4  3A C0 00 00 */	li r22, 0
/* 805C44D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C44DC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C44E0  3C 60 80 5C */	lis r3, effLId@ha /* 0x805C77A4@ha */
/* 805C44E4  3B A3 77 A4 */	addi r29, r3, effLId@l /* 0x805C77A4@l */
/* 805C44E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048C@ha */
/* 805C44EC  3B C3 04 8C */	addi r30, r3, 0x048C /* 0x0007048C@l */
/* 805C44F0  3C 60 80 5C */	lis r3, effRId@ha /* 0x805C77AC@ha */
/* 805C44F4  3B E3 77 AC */	addi r31, r3, effRId@l /* 0x805C77AC@l */
lbl_805C44F8:
/* 805C44F8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805C44FC  38 00 00 FF */	li r0, 0xff
/* 805C4500  90 01 00 08 */	stw r0, 8(r1)
/* 805C4504  38 80 00 00 */	li r4, 0
/* 805C4508  90 81 00 0C */	stw r4, 0xc(r1)
/* 805C450C  38 00 FF FF */	li r0, -1
/* 805C4510  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C4514  90 81 00 14 */	stw r4, 0x14(r1)
/* 805C4518  90 81 00 18 */	stw r4, 0x18(r1)
/* 805C451C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805C4520  7F 58 B2 14 */	add r26, r24, r22
/* 805C4524  80 9A 27 EC */	lwz r4, 0x27ec(r26)
/* 805C4528  38 A0 00 00 */	li r5, 0
/* 805C452C  7C DD BA 2E */	lhzx r6, r29, r23
/* 805C4530  38 F8 04 D0 */	addi r7, r24, 0x4d0
/* 805C4534  39 00 00 00 */	li r8, 0
/* 805C4538  39 20 00 00 */	li r9, 0
/* 805C453C  39 40 00 00 */	li r10, 0
/* 805C4540  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 805C4544  4B A8 8F 89 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805C4548  90 7A 27 EC */	stw r3, 0x27ec(r26)
/* 805C454C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805C4550  38 63 02 10 */	addi r3, r3, 0x210
/* 805C4554  80 9A 27 EC */	lwz r4, 0x27ec(r26)
/* 805C4558  4B A8 73 C1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805C455C  7C 75 1B 79 */	or. r21, r3, r3
/* 805C4560  41 82 00 38 */	beq lbl_805C4598
/* 805C4564  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C4568  80 63 00 04 */	lwz r3, 4(r3)
/* 805C456C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805C4570  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4574  38 63 06 60 */	addi r3, r3, 0x660
/* 805C4578  38 95 00 68 */	addi r4, r21, 0x68
/* 805C457C  38 B5 00 98 */	addi r5, r21, 0x98
/* 805C4580  38 D5 00 A4 */	addi r6, r21, 0xa4
/* 805C4584  4B CB C2 85 */	bl func_80280808
/* 805C4588  C0 35 00 9C */	lfs f1, 0x9c(r21)
/* 805C458C  C0 15 00 98 */	lfs f0, 0x98(r21)
/* 805C4590  D0 15 00 B0 */	stfs f0, 0xb0(r21)
/* 805C4594  D0 35 00 B4 */	stfs f1, 0xb4(r21)
lbl_805C4598:
/* 805C4598  93 C1 00 24 */	stw r30, 0x24(r1)
/* 805C459C  38 78 05 C0 */	addi r3, r24, 0x5c0
/* 805C45A0  38 81 00 24 */	addi r4, r1, 0x24
/* 805C45A4  38 A0 00 00 */	li r5, 0
/* 805C45A8  38 C0 FF FF */	li r6, -1
/* 805C45AC  81 98 05 C0 */	lwz r12, 0x5c0(r24)
/* 805C45B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805C45B4  7D 89 03 A6 */	mtctr r12
/* 805C45B8  4E 80 04 21 */	bctrl 
/* 805C45BC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805C45C0  38 00 00 FF */	li r0, 0xff
/* 805C45C4  90 01 00 08 */	stw r0, 8(r1)
/* 805C45C8  38 80 00 00 */	li r4, 0
/* 805C45CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805C45D0  38 00 FF FF */	li r0, -1
/* 805C45D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C45D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805C45DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805C45E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805C45E4  80 9A 27 FC */	lwz r4, 0x27fc(r26)
/* 805C45E8  38 A0 00 00 */	li r5, 0
/* 805C45EC  7C DF BA 2E */	lhzx r6, r31, r23
/* 805C45F0  38 F8 04 D0 */	addi r7, r24, 0x4d0
/* 805C45F4  39 00 00 00 */	li r8, 0
/* 805C45F8  39 20 00 00 */	li r9, 0
/* 805C45FC  39 40 00 00 */	li r10, 0
/* 805C4600  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 805C4604  4B A8 8E C9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805C4608  90 7A 27 FC */	stw r3, 0x27fc(r26)
/* 805C460C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805C4610  38 63 02 10 */	addi r3, r3, 0x210
/* 805C4614  80 9A 27 FC */	lwz r4, 0x27fc(r26)
/* 805C4618  4B A8 73 01 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805C461C  7C 7A 1B 79 */	or. r26, r3, r3
/* 805C4620  41 82 00 38 */	beq lbl_805C4658
/* 805C4624  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 805C4628  80 63 00 04 */	lwz r3, 4(r3)
/* 805C462C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805C4630  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805C4634  38 63 07 E0 */	addi r3, r3, 0x7e0
/* 805C4638  38 9A 00 68 */	addi r4, r26, 0x68
/* 805C463C  38 BA 00 98 */	addi r5, r26, 0x98
/* 805C4640  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 805C4644  4B CB C1 C5 */	bl func_80280808
/* 805C4648  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 805C464C  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 805C4650  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 805C4654  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_805C4658:
/* 805C4658  3B 39 00 01 */	addi r25, r25, 1
/* 805C465C  2C 19 00 04 */	cmpwi r25, 4
/* 805C4660  3A F7 00 02 */	addi r23, r23, 2
/* 805C4664  3A D6 00 04 */	addi r22, r22, 4
/* 805C4668  41 80 FE 90 */	blt lbl_805C44F8
lbl_805C466C:
/* 805C466C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805C4670  4B D9 DB 99 */	bl _restgpr_21
/* 805C4674  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805C4678  7C 08 03 A6 */	mtlr r0
/* 805C467C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805C4680  4E 80 00 20 */	blr 
