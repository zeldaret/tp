lbl_807B4038:
/* 807B4038  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807B403C  7C 08 02 A6 */	mflr r0
/* 807B4040  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807B4044  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807B4048  4B BA E1 6C */	b _savegpr_19
/* 807B404C  7C 7E 1B 78 */	mr r30, r3
/* 807B4050  7C 9A 23 78 */	mr r26, r4
/* 807B4054  7C BB 2B 78 */	mr r27, r5
/* 807B4058  7C DC 33 78 */	mr r28, r6
/* 807B405C  3C 60 80 7B */	lis r3, cNullVec__6Z2Calc@ha
/* 807B4060  3A E3 46 4C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807B4064  3C 60 80 7B */	lis r3, lit_3906@ha
/* 807B4068  3B E3 44 9C */	addi r31, r3, lit_3906@l
/* 807B406C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B4070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B4074  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807B4078  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 807B407C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 807B4080  28 00 00 00 */	cmplwi r0, 0
/* 807B4084  41 82 03 A4 */	beq lbl_807B4428
/* 807B4088  7F C4 F3 78 */	mr r4, r30
/* 807B408C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807B4090  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807B4094  7D 89 03 A6 */	mtctr r12
/* 807B4098  4E 80 04 21 */	bctrl 
/* 807B409C  2C 03 00 00 */	cmpwi r3, 0
/* 807B40A0  41 82 03 88 */	beq lbl_807B4428
/* 807B40A4  4B 9F 84 D8 */	b dKy_darkworld_check__Fv
/* 807B40A8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807B40AC  30 03 FF FF */	addic r0, r3, -1
/* 807B40B0  7F A0 19 10 */	subfe r29, r0, r3
/* 807B40B4  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807B40B8  28 00 00 00 */	cmplwi r0, 0
/* 807B40BC  40 82 02 A0 */	bne lbl_807B435C
/* 807B40C0  38 00 00 01 */	li r0, 1
/* 807B40C4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807B40C8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 807B40CC  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 807B40D0  80 63 00 00 */	lwz r3, 0(r3)
/* 807B40D4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807B40D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807B40DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B40E0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807B40E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807B40E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807B40EC  4B B9 23 C4 */	b PSMTXCopy
/* 807B40F0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807B40F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807B40F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B40FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807B4100  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807B4104  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B4108  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B410C  38 81 00 4C */	addi r4, r1, 0x4c
/* 807B4110  38 A1 00 58 */	addi r5, r1, 0x58
/* 807B4114  4B B9 2C 58 */	b PSMTXMultVec
/* 807B4118  38 61 00 34 */	addi r3, r1, 0x34
/* 807B411C  38 81 00 58 */	addi r4, r1, 0x58
/* 807B4120  7F 65 DB 78 */	mr r5, r27
/* 807B4124  4B AB 2A 10 */	b __mi__4cXyzCFRC3Vec
/* 807B4128  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807B412C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807B4130  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807B4134  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807B4138  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807B413C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807B4140  4B AB 35 34 */	b cM_atan2s__Fff
/* 807B4144  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807B4148  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807B414C  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B4150  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807B4154  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B4158  EC 41 00 2A */	fadds f2, f1, f0
/* 807B415C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B4160  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B4164  40 81 00 0C */	ble lbl_807B4170
/* 807B4168  FC 00 10 34 */	frsqrte f0, f2
/* 807B416C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B4170:
/* 807B4170  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807B4174  4B AB 35 00 */	b cM_atan2s__Fff
/* 807B4178  7C 03 00 D0 */	neg r0, r3
/* 807B417C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807B4180  38 80 00 00 */	li r4, 0
/* 807B4184  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807B4188  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B418C  7C 00 07 74 */	extsb r0, r0
/* 807B4190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B4194  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807B4198  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807B419C  57 A5 10 3A */	slwi r5, r29, 2
/* 807B41A0  90 81 00 08 */	stw r4, 8(r1)
/* 807B41A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B41A8  3A B7 00 20 */	addi r21, r23, 0x20
/* 807B41AC  7E B5 2A 14 */	add r21, r21, r5
/* 807B41B0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807B41B4  3A D7 00 28 */	addi r22, r23, 0x28
/* 807B41B8  7E D6 2A 14 */	add r22, r22, r5
/* 807B41BC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807B41C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807B41C4  38 80 00 00 */	li r4, 0
/* 807B41C8  38 A0 02 9B */	li r5, 0x29b
/* 807B41CC  7F 66 DB 78 */	mr r6, r27
/* 807B41D0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807B41D4  39 01 00 2C */	addi r8, r1, 0x2c
/* 807B41D8  7F 89 E3 78 */	mr r9, r28
/* 807B41DC  39 40 00 FF */	li r10, 0xff
/* 807B41E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807B41E4  4B 89 88 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807B41E8  7C 79 1B 79 */	or. r25, r3, r3
/* 807B41EC  41 82 00 FC */	beq lbl_807B42E8
/* 807B41F0  38 61 00 40 */	addi r3, r1, 0x40
/* 807B41F4  4B B9 2F 44 */	b PSVECSquareMag
/* 807B41F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B41FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B4200  40 81 00 58 */	ble lbl_807B4258
/* 807B4204  FC 00 08 34 */	frsqrte f0, f1
/* 807B4208  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807B420C  FC 44 00 32 */	fmul f2, f4, f0
/* 807B4210  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807B4214  FC 00 00 32 */	fmul f0, f0, f0
/* 807B4218  FC 01 00 32 */	fmul f0, f1, f0
/* 807B421C  FC 03 00 28 */	fsub f0, f3, f0
/* 807B4220  FC 02 00 32 */	fmul f0, f2, f0
/* 807B4224  FC 44 00 32 */	fmul f2, f4, f0
/* 807B4228  FC 00 00 32 */	fmul f0, f0, f0
/* 807B422C  FC 01 00 32 */	fmul f0, f1, f0
/* 807B4230  FC 03 00 28 */	fsub f0, f3, f0
/* 807B4234  FC 02 00 32 */	fmul f0, f2, f0
/* 807B4238  FC 44 00 32 */	fmul f2, f4, f0
/* 807B423C  FC 00 00 32 */	fmul f0, f0, f0
/* 807B4240  FC 01 00 32 */	fmul f0, f1, f0
/* 807B4244  FC 03 00 28 */	fsub f0, f3, f0
/* 807B4248  FC 02 00 32 */	fmul f0, f2, f0
/* 807B424C  FC 21 00 32 */	fmul f1, f1, f0
/* 807B4250  FC 20 08 18 */	frsp f1, f1
/* 807B4254  48 00 00 88 */	b lbl_807B42DC
lbl_807B4258:
/* 807B4258  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807B425C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B4260  40 80 00 10 */	bge lbl_807B4270
/* 807B4264  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B4268  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807B426C  48 00 00 70 */	b lbl_807B42DC
lbl_807B4270:
/* 807B4270  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807B4274  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807B4278  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807B427C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807B4280  7C 03 00 00 */	cmpw r3, r0
/* 807B4284  41 82 00 14 */	beq lbl_807B4298
/* 807B4288  40 80 00 40 */	bge lbl_807B42C8
/* 807B428C  2C 03 00 00 */	cmpwi r3, 0
/* 807B4290  41 82 00 20 */	beq lbl_807B42B0
/* 807B4294  48 00 00 34 */	b lbl_807B42C8
lbl_807B4298:
/* 807B4298  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B429C  41 82 00 0C */	beq lbl_807B42A8
/* 807B42A0  38 00 00 01 */	li r0, 1
/* 807B42A4  48 00 00 28 */	b lbl_807B42CC
lbl_807B42A8:
/* 807B42A8  38 00 00 02 */	li r0, 2
/* 807B42AC  48 00 00 20 */	b lbl_807B42CC
lbl_807B42B0:
/* 807B42B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B42B4  41 82 00 0C */	beq lbl_807B42C0
/* 807B42B8  38 00 00 05 */	li r0, 5
/* 807B42BC  48 00 00 10 */	b lbl_807B42CC
lbl_807B42C0:
/* 807B42C0  38 00 00 03 */	li r0, 3
/* 807B42C4  48 00 00 08 */	b lbl_807B42CC
lbl_807B42C8:
/* 807B42C8  38 00 00 04 */	li r0, 4
lbl_807B42CC:
/* 807B42CC  2C 00 00 01 */	cmpwi r0, 1
/* 807B42D0  40 82 00 0C */	bne lbl_807B42DC
/* 807B42D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B42D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807B42DC:
/* 807B42DC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807B42E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 807B42E4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807B42E8:
/* 807B42E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B42EC  7C 04 07 74 */	extsb r4, r0
/* 807B42F0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807B42F4  38 00 00 00 */	li r0, 0
/* 807B42F8  90 01 00 08 */	stw r0, 8(r1)
/* 807B42FC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807B4300  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807B4304  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807B4308  90 01 00 18 */	stw r0, 0x18(r1)
/* 807B430C  38 80 00 00 */	li r4, 0
/* 807B4310  38 A0 02 9C */	li r5, 0x29c
/* 807B4314  7F 66 DB 78 */	mr r6, r27
/* 807B4318  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807B431C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807B4320  7F 89 E3 78 */	mr r9, r28
/* 807B4324  39 40 00 FF */	li r10, 0xff
/* 807B4328  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807B432C  4B 89 87 64 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807B4330  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807B4334  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807B4338  90 01 00 28 */	stw r0, 0x28(r1)
/* 807B433C  7F 43 D3 78 */	mr r3, r26
/* 807B4340  38 81 00 28 */	addi r4, r1, 0x28
/* 807B4344  38 A0 00 00 */	li r5, 0
/* 807B4348  38 C0 FF FF */	li r6, -1
/* 807B434C  81 9A 00 00 */	lwz r12, 0(r26)
/* 807B4350  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B4354  7D 89 03 A6 */	mtctr r12
/* 807B4358  4E 80 04 21 */	bctrl 
lbl_807B435C:
/* 807B435C  3A A0 00 00 */	li r21, 0
/* 807B4360  3A C0 00 00 */	li r22, 0
/* 807B4364  3A 80 00 00 */	li r20, 0
/* 807B4368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B436C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807B4370  57 A0 10 3A */	slwi r0, r29, 2
/* 807B4374  3B 17 00 28 */	addi r24, r23, 0x28
/* 807B4378  7F 18 02 14 */	add r24, r24, r0
/* 807B437C  3B B7 00 20 */	addi r29, r23, 0x20
/* 807B4380  7F BD 02 14 */	add r29, r29, r0
/* 807B4384  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807B4388:
/* 807B4388  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807B438C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807B4390  7C 05 07 74 */	extsb r5, r0
/* 807B4394  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807B4398  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807B439C  38 00 00 FF */	li r0, 0xff
/* 807B43A0  90 01 00 08 */	stw r0, 8(r1)
/* 807B43A4  38 00 00 00 */	li r0, 0
/* 807B43A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B43AC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807B43B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807B43B4  93 01 00 18 */	stw r24, 0x18(r1)
/* 807B43B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807B43BC  38 A0 00 00 */	li r5, 0
/* 807B43C0  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807B43C4  7F 67 DB 78 */	mr r7, r27
/* 807B43C8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807B43CC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807B43D0  7F 8A E3 78 */	mr r10, r28
/* 807B43D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807B43D8  4B 89 90 F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807B43DC  7C 7E B9 2E */	stwx r3, r30, r23
/* 807B43E0  3A B5 00 01 */	addi r21, r21, 1
/* 807B43E4  2C 15 00 03 */	cmpwi r21, 3
/* 807B43E8  3A D6 00 02 */	addi r22, r22, 2
/* 807B43EC  3A 94 00 04 */	addi r20, r20, 4
/* 807B43F0  41 80 FF 98 */	blt lbl_807B4388
/* 807B43F4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807B43F8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807B43FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B4400  7F 43 D3 78 */	mr r3, r26
/* 807B4404  38 81 00 24 */	addi r4, r1, 0x24
/* 807B4408  38 A0 00 00 */	li r5, 0
/* 807B440C  38 C0 FF FF */	li r6, -1
/* 807B4410  81 9A 00 00 */	lwz r12, 0(r26)
/* 807B4414  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807B4418  7D 89 03 A6 */	mtctr r12
/* 807B441C  4E 80 04 21 */	bctrl 
/* 807B4420  38 60 00 01 */	li r3, 1
/* 807B4424  48 00 00 10 */	b lbl_807B4434
lbl_807B4428:
/* 807B4428  38 00 00 00 */	li r0, 0
/* 807B442C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807B4430  38 60 00 00 */	li r3, 0
lbl_807B4434:
/* 807B4434  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807B4438  4B BA DD C8 */	b _restgpr_19
/* 807B443C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807B4440  7C 08 03 A6 */	mtlr r0
/* 807B4444  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807B4448  4E 80 00 20 */	blr 
