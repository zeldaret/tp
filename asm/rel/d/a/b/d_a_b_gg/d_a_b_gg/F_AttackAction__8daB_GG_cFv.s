lbl_805E3F0C:
/* 805E3F0C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805E3F10  7C 08 02 A6 */	mflr r0
/* 805E3F14  90 01 00 94 */	stw r0, 0x94(r1)
/* 805E3F18  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805E3F1C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805E3F20  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805E3F24  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805E3F28  39 61 00 70 */	addi r11, r1, 0x70
/* 805E3F2C  4B D7 E2 A8 */	b _savegpr_27
/* 805E3F30  7C 7B 1B 78 */	mr r27, r3
/* 805E3F34  3C 80 80 5F */	lis r4, lit_1109@ha
/* 805E3F38  3B C4 D6 C0 */	addi r30, r4, lit_1109@l
/* 805E3F3C  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E3F40  3B E4 D0 60 */	addi r31, r4, lit_3911@l
/* 805E3F44  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E3F48  2C 00 00 02 */	cmpwi r0, 2
/* 805E3F4C  41 82 02 B8 */	beq lbl_805E4204
/* 805E3F50  40 80 00 14 */	bge lbl_805E3F64
/* 805E3F54  2C 00 00 00 */	cmpwi r0, 0
/* 805E3F58  41 82 00 18 */	beq lbl_805E3F70
/* 805E3F5C  40 80 01 88 */	bge lbl_805E40E4
/* 805E3F60  48 00 08 DC */	b lbl_805E483C
lbl_805E3F64:
/* 805E3F64  2C 00 00 0A */	cmpwi r0, 0xa
/* 805E3F68  41 82 07 40 */	beq lbl_805E46A8
/* 805E3F6C  48 00 08 D0 */	b lbl_805E483C
lbl_805E3F70:
/* 805E3F70  80 1B 05 D4 */	lwz r0, 0x5d4(r27)
/* 805E3F74  2C 00 00 04 */	cmpwi r0, 4
/* 805E3F78  41 82 00 7C */	beq lbl_805E3FF4
/* 805E3F7C  38 80 00 00 */	li r4, 0
/* 805E3F80  48 00 00 20 */	b lbl_805E3FA0
lbl_805E3F84:
/* 805E3F84  7C 80 07 34 */	extsh r0, r4
/* 805E3F88  1C 60 01 38 */	mulli r3, r0, 0x138
/* 805E3F8C  38 63 08 14 */	addi r3, r3, 0x814
/* 805E3F90  7C 1B 18 2E */	lwzx r0, r27, r3
/* 805E3F94  60 00 00 01 */	ori r0, r0, 1
/* 805E3F98  7C 1B 19 2E */	stwx r0, r27, r3
/* 805E3F9C  38 84 00 01 */	addi r4, r4, 1
lbl_805E3FA0:
/* 805E3FA0  7C 80 07 34 */	extsh r0, r4
/* 805E3FA4  2C 00 00 03 */	cmpwi r0, 3
/* 805E3FA8  41 80 FF DC */	blt lbl_805E3F84
/* 805E3FAC  7F 63 DB 78 */	mr r3, r27
/* 805E3FB0  38 80 00 04 */	li r4, 4
/* 805E3FB4  38 A0 00 00 */	li r5, 0
/* 805E3FB8  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E3FBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E3FC0  4B FF AF A5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E3FC4  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E3FC8  3C 63 00 01 */	addis r3, r3, 1
/* 805E3FCC  38 03 80 00 */	addi r0, r3, -32768
/* 805E3FD0  B0 1B 05 BA */	sth r0, 0x5ba(r27)
/* 805E3FD4  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E3FD8  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 805E3FDC  88 1B 05 B6 */	lbz r0, 0x5b6(r27)
/* 805E3FE0  28 00 00 00 */	cmplwi r0, 0
/* 805E3FE4  41 82 08 58 */	beq lbl_805E483C
/* 805E3FE8  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E3FEC  B0 1B 05 BA */	sth r0, 0x5ba(r27)
/* 805E3FF0  48 00 08 4C */	b lbl_805E483C
lbl_805E3FF4:
/* 805E3FF4  40 82 08 48 */	bne lbl_805E483C
/* 805E3FF8  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805E3FFC  38 80 00 01 */	li r4, 1
/* 805E4000  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E4004  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E4008  40 82 00 18 */	bne lbl_805E4020
/* 805E400C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4010  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E4014  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E4018  41 82 00 08 */	beq lbl_805E4020
/* 805E401C  38 80 00 00 */	li r4, 0
lbl_805E4020:
/* 805E4020  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E4024  41 82 08 18 */	beq lbl_805E483C
/* 805E4028  88 7B 05 C7 */	lbz r3, 0x5c7(r27)
/* 805E402C  38 03 00 01 */	addi r0, r3, 1
/* 805E4030  98 1B 05 C7 */	stb r0, 0x5c7(r27)
/* 805E4034  7F 63 DB 78 */	mr r3, r27
/* 805E4038  38 80 00 05 */	li r4, 5
/* 805E403C  38 A0 00 02 */	li r5, 2
/* 805E4040  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4044  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4048  4B FF AF 1D */	bl SetAnm__8daB_GG_cFiiff
/* 805E404C  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E4050  B0 1B 05 BA */	sth r0, 0x5ba(r27)
/* 805E4054  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E4058  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805E405C  7F 63 DB 78 */	mr r3, r27
/* 805E4060  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E4064  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E4068  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805E406C  4B A3 68 F8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E4070  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 805E4074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E4078  40 80 00 08 */	bge lbl_805E4080
/* 805E407C  FC 20 00 90 */	fmr f1, f0
lbl_805E4080:
/* 805E4080  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 805E4084  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 805E4088  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E408C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4090  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 805E4094  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 805E4098  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 805E409C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805E40A0  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E40A4  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E40A8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805E40AC  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E40B0  EC 43 00 2A */	fadds f2, f3, f0
/* 805E40B4  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 805E40B8  EC 20 00 72 */	fmuls f1, f0, f1
/* 805E40BC  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 805E40C0  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E40C4  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E40C8  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 805E40CC  C0 1B 05 C0 */	lfs f0, 0x5c0(r27)
/* 805E40D0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 805E40D4  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805E40D8  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 805E40DC  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 805E40E0  48 00 07 5C */	b lbl_805E483C
lbl_805E40E4:
/* 805E40E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E40E8  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E40EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E40F0  38 7B 0E 4C */	addi r3, r27, 0xe4c
/* 805E40F4  38 81 00 14 */	addi r4, r1, 0x14
/* 805E40F8  38 A0 00 00 */	li r5, 0
/* 805E40FC  38 C0 FF FF */	li r6, -1
/* 805E4100  81 9B 0E 4C */	lwz r12, 0xe4c(r27)
/* 805E4104  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E4108  7D 89 03 A6 */	mtctr r12
/* 805E410C  4E 80 04 21 */	bctrl 
/* 805E4110  7F 63 DB 78 */	mr r3, r27
/* 805E4114  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E4118  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 805E411C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805E4120  4B A3 68 44 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E4124  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 805E4128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E412C  40 80 00 08 */	bge lbl_805E4134
/* 805E4130  FC 20 00 90 */	fmr f1, f0
lbl_805E4134:
/* 805E4134  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805E4138  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E413C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E4140  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805E4144  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E4148  EC 43 00 2A */	fadds f2, f3, f0
/* 805E414C  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 805E4150  EC 20 00 72 */	fmuls f1, f0, f1
/* 805E4154  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 805E4158  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E415C  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E4160  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 805E4164  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805E4168  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 805E416C  4B C8 CA 98 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E4170  B0 7B 05 BA */	sth r3, 0x5ba(r27)
/* 805E4174  7F 63 DB 78 */	mr r3, r27
/* 805E4178  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805E417C  4B A3 66 64 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E4180  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 805E4184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E4188  41 80 00 18 */	blt lbl_805E41A0
/* 805E418C  80 7B 0F 5C */	lwz r3, 0xf5c(r27)
/* 805E4190  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 805E4194  40 82 00 0C */	bne lbl_805E41A0
/* 805E4198  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 805E419C  41 82 00 40 */	beq lbl_805E41DC
lbl_805E41A0:
/* 805E41A0  7F 63 DB 78 */	mr r3, r27
/* 805E41A4  38 80 00 06 */	li r4, 6
/* 805E41A8  38 A0 00 00 */	li r5, 0
/* 805E41AC  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E41B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E41B4  4B FF AD B1 */	bl SetAnm__8daB_GG_cFiiff
/* 805E41B8  88 7B 05 C7 */	lbz r3, 0x5c7(r27)
/* 805E41BC  38 03 00 01 */	addi r0, r3, 1
/* 805E41C0  98 1B 05 C7 */	stb r0, 0x5c7(r27)
/* 805E41C4  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 805E41C8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805E41CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E41D0  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 805E41D4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805E41D8  D0 1B 06 48 */	stfs f0, 0x648(r27)
lbl_805E41DC:
/* 805E41DC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E41E0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805E41E4  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 805E41E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E41EC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 805E41F0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805E41F4  C0 1B 05 C0 */	lfs f0, 0x5c0(r27)
/* 805E41F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E41FC  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 805E4200  48 00 06 3C */	b lbl_805E483C
lbl_805E4204:
/* 805E4204  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E4208  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E420C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E4210  38 7B 0E 4C */	addi r3, r27, 0xe4c
/* 805E4214  38 81 00 10 */	addi r4, r1, 0x10
/* 805E4218  38 A0 00 00 */	li r5, 0
/* 805E421C  38 C0 FF FF */	li r6, -1
/* 805E4220  81 9B 0E 4C */	lwz r12, 0xe4c(r27)
/* 805E4224  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E4228  7D 89 03 A6 */	mtctr r12
/* 805E422C  4E 80 04 21 */	bctrl 
/* 805E4230  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805E4234  38 63 00 0C */	addi r3, r3, 0xc
/* 805E4238  C0 3F 02 88 */	lfs f1, 0x288(r31)
/* 805E423C  4B D4 41 F0 */	b checkPass__12J3DFrameCtrlFf
/* 805E4240  2C 03 00 00 */	cmpwi r3, 0
/* 805E4244  41 82 00 0C */	beq lbl_805E4250
/* 805E4248  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 805E424C  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
lbl_805E4250:
/* 805E4250  80 BB 05 D4 */	lwz r5, 0x5d4(r27)
/* 805E4254  2C 05 00 06 */	cmpwi r5, 6
/* 805E4258  40 82 00 74 */	bne lbl_805E42CC
/* 805E425C  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805E4260  38 80 00 01 */	li r4, 1
/* 805E4264  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E4268  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E426C  40 82 00 18 */	bne lbl_805E4284
/* 805E4270  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4274  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E4278  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E427C  41 82 00 08 */	beq lbl_805E4284
/* 805E4280  38 80 00 00 */	li r4, 0
lbl_805E4284:
/* 805E4284  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E4288  41 82 00 44 */	beq lbl_805E42CC
/* 805E428C  7F 63 DB 78 */	mr r3, r27
/* 805E4290  38 80 00 07 */	li r4, 7
/* 805E4294  38 A0 00 02 */	li r5, 2
/* 805E4298  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E429C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E42A0  4B FF AC C5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E42A4  38 60 00 00 */	li r3, 0
/* 805E42A8  38 00 00 03 */	li r0, 3
/* 805E42AC  7C 09 03 A6 */	mtctr r0
lbl_805E42B0:
/* 805E42B0  38 83 08 14 */	addi r4, r3, 0x814
/* 805E42B4  7C 1B 20 2E */	lwzx r0, r27, r4
/* 805E42B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E42BC  7C 1B 21 2E */	stwx r0, r27, r4
/* 805E42C0  38 63 01 38 */	addi r3, r3, 0x138
/* 805E42C4  42 00 FF EC */	bdnz lbl_805E42B0
/* 805E42C8  48 00 03 9C */	b lbl_805E4664
lbl_805E42CC:
/* 805E42CC  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805E42D0  C0 1B 06 48 */	lfs f0, 0x648(r27)
/* 805E42D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805E42D8  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 805E42DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E42E0  41 81 00 18 */	bgt lbl_805E42F8
/* 805E42E4  C0 1B 06 50 */	lfs f0, 0x650(r27)
/* 805E42E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805E42EC  40 82 03 78 */	bne lbl_805E4664
/* 805E42F0  2C 05 00 07 */	cmpwi r5, 7
/* 805E42F4  40 82 03 70 */	bne lbl_805E4664
lbl_805E42F8:
/* 805E42F8  80 1B 0B D4 */	lwz r0, 0xbd4(r27)
/* 805E42FC  60 00 00 01 */	ori r0, r0, 1
/* 805E4300  90 1B 0B D4 */	stw r0, 0xbd4(r27)
/* 805E4304  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805E4308  64 00 00 08 */	oris r0, r0, 8
/* 805E430C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 805E4310  88 1B 05 B6 */	lbz r0, 0x5b6(r27)
/* 805E4314  28 00 00 00 */	cmplwi r0, 0
/* 805E4318  41 82 02 FC */	beq lbl_805E4614
/* 805E431C  7F 63 DB 78 */	mr r3, r27
/* 805E4320  38 80 00 05 */	li r4, 5
/* 805E4324  38 A0 00 02 */	li r5, 2
/* 805E4328  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E432C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4330  4B FF AC 35 */	bl SetAnm__8daB_GG_cFiiff
/* 805E4334  7F 63 DB 78 */	mr r3, r27
/* 805E4338  38 80 00 02 */	li r4, 2
/* 805E433C  38 A0 00 01 */	li r5, 1
/* 805E4340  38 C0 00 02 */	li r6, 2
/* 805E4344  4B FF B7 21 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E4348  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 805E434C  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 805E4350  3B 80 00 00 */	li r28, 0
/* 805E4354  3B A0 00 00 */	li r29, 0
/* 805E4358  C3 FF 00 04 */	lfs f31, 4(r31)
/* 805E435C  48 00 02 64 */	b lbl_805E45C0
lbl_805E4360:
/* 805E4360  7F 80 07 34 */	extsh r0, r28
/* 805E4364  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E4368  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E436C  7C 63 02 14 */	add r3, r3, r0
/* 805E4370  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E4374  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E4378  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 805E437C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E4380  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E4384  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805E4388  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805E438C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E4390  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 805E4394  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805E4398  38 61 00 30 */	addi r3, r1, 0x30
/* 805E439C  38 81 00 3C */	addi r4, r1, 0x3c
/* 805E43A0  4B D6 2F FC */	b PSVECSquareDistance
/* 805E43A4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 805E43A8  40 81 00 58 */	ble lbl_805E4400
/* 805E43AC  FC 00 08 34 */	frsqrte f0, f1
/* 805E43B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E43B4  FC 44 00 32 */	fmul f2, f4, f0
/* 805E43B8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E43BC  FC 00 00 32 */	fmul f0, f0, f0
/* 805E43C0  FC 01 00 32 */	fmul f0, f1, f0
/* 805E43C4  FC 03 00 28 */	fsub f0, f3, f0
/* 805E43C8  FC 02 00 32 */	fmul f0, f2, f0
/* 805E43CC  FC 44 00 32 */	fmul f2, f4, f0
/* 805E43D0  FC 00 00 32 */	fmul f0, f0, f0
/* 805E43D4  FC 01 00 32 */	fmul f0, f1, f0
/* 805E43D8  FC 03 00 28 */	fsub f0, f3, f0
/* 805E43DC  FC 02 00 32 */	fmul f0, f2, f0
/* 805E43E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805E43E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805E43E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805E43EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805E43F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805E43F4  FF C1 00 32 */	fmul f30, f1, f0
/* 805E43F8  FF C0 F0 18 */	frsp f30, f30
/* 805E43FC  48 00 00 90 */	b lbl_805E448C
lbl_805E4400:
/* 805E4400  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E4404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E4408  40 80 00 10 */	bge lbl_805E4418
/* 805E440C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E4410  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 805E4414  48 00 00 78 */	b lbl_805E448C
lbl_805E4418:
/* 805E4418  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805E441C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805E4420  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E4424  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E4428  7C 03 00 00 */	cmpw r3, r0
/* 805E442C  41 82 00 14 */	beq lbl_805E4440
/* 805E4430  40 80 00 40 */	bge lbl_805E4470
/* 805E4434  2C 03 00 00 */	cmpwi r3, 0
/* 805E4438  41 82 00 20 */	beq lbl_805E4458
/* 805E443C  48 00 00 34 */	b lbl_805E4470
lbl_805E4440:
/* 805E4440  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E4444  41 82 00 0C */	beq lbl_805E4450
/* 805E4448  38 00 00 01 */	li r0, 1
/* 805E444C  48 00 00 28 */	b lbl_805E4474
lbl_805E4450:
/* 805E4450  38 00 00 02 */	li r0, 2
/* 805E4454  48 00 00 20 */	b lbl_805E4474
lbl_805E4458:
/* 805E4458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E445C  41 82 00 0C */	beq lbl_805E4468
/* 805E4460  38 00 00 05 */	li r0, 5
/* 805E4464  48 00 00 10 */	b lbl_805E4474
lbl_805E4468:
/* 805E4468  38 00 00 03 */	li r0, 3
/* 805E446C  48 00 00 08 */	b lbl_805E4474
lbl_805E4470:
/* 805E4470  38 00 00 04 */	li r0, 4
lbl_805E4474:
/* 805E4474  2C 00 00 01 */	cmpwi r0, 1
/* 805E4478  40 82 00 10 */	bne lbl_805E4488
/* 805E447C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E4480  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 805E4484  48 00 00 08 */	b lbl_805E448C
lbl_805E4488:
/* 805E4488  FF C0 08 90 */	fmr f30, f1
lbl_805E448C:
/* 805E448C  7F A0 07 34 */	extsh r0, r29
/* 805E4490  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E4494  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E4498  7C 63 02 14 */	add r3, r3, r0
/* 805E449C  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E44A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E44A4  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 805E44A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E44AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E44B0  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805E44B4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805E44B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E44BC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 805E44C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E44C4  38 61 00 18 */	addi r3, r1, 0x18
/* 805E44C8  38 81 00 24 */	addi r4, r1, 0x24
/* 805E44CC  4B D6 2E D0 */	b PSVECSquareDistance
/* 805E44D0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 805E44D4  40 81 00 58 */	ble lbl_805E452C
/* 805E44D8  FC 00 08 34 */	frsqrte f0, f1
/* 805E44DC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E44E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805E44E4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E44E8  FC 00 00 32 */	fmul f0, f0, f0
/* 805E44EC  FC 01 00 32 */	fmul f0, f1, f0
/* 805E44F0  FC 03 00 28 */	fsub f0, f3, f0
/* 805E44F4  FC 02 00 32 */	fmul f0, f2, f0
/* 805E44F8  FC 44 00 32 */	fmul f2, f4, f0
/* 805E44FC  FC 00 00 32 */	fmul f0, f0, f0
/* 805E4500  FC 01 00 32 */	fmul f0, f1, f0
/* 805E4504  FC 03 00 28 */	fsub f0, f3, f0
/* 805E4508  FC 02 00 32 */	fmul f0, f2, f0
/* 805E450C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E4510  FC 00 00 32 */	fmul f0, f0, f0
/* 805E4514  FC 01 00 32 */	fmul f0, f1, f0
/* 805E4518  FC 03 00 28 */	fsub f0, f3, f0
/* 805E451C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E4520  FC 21 00 32 */	fmul f1, f1, f0
/* 805E4524  FC 20 08 18 */	frsp f1, f1
/* 805E4528  48 00 00 88 */	b lbl_805E45B0
lbl_805E452C:
/* 805E452C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E4530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E4534  40 80 00 10 */	bge lbl_805E4544
/* 805E4538  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E453C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E4540  48 00 00 70 */	b lbl_805E45B0
lbl_805E4544:
/* 805E4544  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E4548  80 81 00 08 */	lwz r4, 8(r1)
/* 805E454C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E4550  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E4554  7C 03 00 00 */	cmpw r3, r0
/* 805E4558  41 82 00 14 */	beq lbl_805E456C
/* 805E455C  40 80 00 40 */	bge lbl_805E459C
/* 805E4560  2C 03 00 00 */	cmpwi r3, 0
/* 805E4564  41 82 00 20 */	beq lbl_805E4584
/* 805E4568  48 00 00 34 */	b lbl_805E459C
lbl_805E456C:
/* 805E456C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E4570  41 82 00 0C */	beq lbl_805E457C
/* 805E4574  38 00 00 01 */	li r0, 1
/* 805E4578  48 00 00 28 */	b lbl_805E45A0
lbl_805E457C:
/* 805E457C  38 00 00 02 */	li r0, 2
/* 805E4580  48 00 00 20 */	b lbl_805E45A0
lbl_805E4584:
/* 805E4584  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E4588  41 82 00 0C */	beq lbl_805E4594
/* 805E458C  38 00 00 05 */	li r0, 5
/* 805E4590  48 00 00 10 */	b lbl_805E45A0
lbl_805E4594:
/* 805E4594  38 00 00 03 */	li r0, 3
/* 805E4598  48 00 00 08 */	b lbl_805E45A0
lbl_805E459C:
/* 805E459C  38 00 00 04 */	li r0, 4
lbl_805E45A0:
/* 805E45A0  2C 00 00 01 */	cmpwi r0, 1
/* 805E45A4  40 82 00 0C */	bne lbl_805E45B0
/* 805E45A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E45AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E45B0:
/* 805E45B0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 805E45B4  40 81 00 08 */	ble lbl_805E45BC
/* 805E45B8  7F BC EB 78 */	mr r28, r29
lbl_805E45BC:
/* 805E45BC  3B BD 00 01 */	addi r29, r29, 1
lbl_805E45C0:
/* 805E45C0  7F A0 07 34 */	extsh r0, r29
/* 805E45C4  2C 00 00 03 */	cmpwi r0, 3
/* 805E45C8  41 80 FD 98 */	blt lbl_805E4360
/* 805E45CC  B3 9B 05 B4 */	sth r28, 0x5b4(r27)
/* 805E45D0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 805E45D4  A8 1B 05 B4 */	lha r0, 0x5b4(r27)
/* 805E45D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E45DC  38 9E 00 FC */	addi r4, r30, 0xfc
/* 805E45E0  7C 84 02 14 */	add r4, r4, r0
/* 805E45E4  4B C8 C6 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E45E8  B0 7B 05 BA */	sth r3, 0x5ba(r27)
/* 805E45EC  80 1B 06 F0 */	lwz r0, 0x6f0(r27)
/* 805E45F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E45F4  90 1B 06 F0 */	stw r0, 0x6f0(r27)
/* 805E45F8  80 1B 0D 10 */	lwz r0, 0xd10(r27)
/* 805E45FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E4600  90 1B 0D 10 */	stw r0, 0xd10(r27)
/* 805E4604  80 1B 0B D4 */	lwz r0, 0xbd4(r27)
/* 805E4608  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E460C  90 1B 0B D4 */	stw r0, 0xbd4(r27)
/* 805E4610  48 00 00 54 */	b lbl_805E4664
lbl_805E4614:
/* 805E4614  7F 63 DB 78 */	mr r3, r27
/* 805E4618  38 80 00 0E */	li r4, 0xe
/* 805E461C  38 A0 00 02 */	li r5, 2
/* 805E4620  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4624  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4628  4B FF A9 3D */	bl SetAnm__8daB_GG_cFiiff
/* 805E462C  7F 63 DB 78 */	mr r3, r27
/* 805E4630  38 80 00 00 */	li r4, 0
/* 805E4634  38 A0 00 01 */	li r5, 1
/* 805E4638  38 C0 00 00 */	li r6, 0
/* 805E463C  4B FF B4 29 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E4640  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4644  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 805E4648  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 805E464C  80 1B 0D 94 */	lwz r0, 0xd94(r27)
/* 805E4650  60 00 00 01 */	ori r0, r0, 1
/* 805E4654  90 1B 0D 94 */	stw r0, 0xd94(r27)
/* 805E4658  80 1B 07 74 */	lwz r0, 0x774(r27)
/* 805E465C  60 00 00 01 */	ori r0, r0, 1
/* 805E4660  90 1B 07 74 */	stw r0, 0x774(r27)
lbl_805E4664:
/* 805E4664  80 1B 05 D4 */	lwz r0, 0x5d4(r27)
/* 805E4668  2C 00 00 07 */	cmpwi r0, 7
/* 805E466C  41 82 00 18 */	beq lbl_805E4684
/* 805E4670  80 7B 0E 30 */	lwz r3, 0xe30(r27)
/* 805E4674  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805E4678  C0 1F 02 88 */	lfs f0, 0x288(r31)
/* 805E467C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E4680  40 81 00 14 */	ble lbl_805E4694
lbl_805E4684:
/* 805E4684  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 805E4688  B0 1B 05 BA */	sth r0, 0x5ba(r27)
/* 805E468C  A8 1B 05 BA */	lha r0, 0x5ba(r27)
/* 805E4690  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_805E4694:
/* 805E4694  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805E4698  C0 1B 06 48 */	lfs f0, 0x648(r27)
/* 805E469C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E46A0  D0 1B 06 50 */	stfs f0, 0x650(r27)
/* 805E46A4  48 00 01 98 */	b lbl_805E483C
lbl_805E46A8:
/* 805E46A8  80 1B 05 D4 */	lwz r0, 0x5d4(r27)
/* 805E46AC  2C 00 00 0B */	cmpwi r0, 0xb
/* 805E46B0  41 82 00 F8 */	beq lbl_805E47A8
/* 805E46B4  80 1B 0B D4 */	lwz r0, 0xbd4(r27)
/* 805E46B8  60 00 00 01 */	ori r0, r0, 1
/* 805E46BC  90 1B 0B D4 */	stw r0, 0xbd4(r27)
/* 805E46C0  38 80 00 0B */	li r4, 0xb
/* 805E46C4  38 A0 00 02 */	li r5, 2
/* 805E46C8  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E46CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E46D0  4B FF A8 95 */	bl SetAnm__8daB_GG_cFiiff
/* 805E46D4  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805E46D8  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E46DC  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 805E46E0  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805E46E4  64 00 00 08 */	oris r0, r0, 8
/* 805E46E8  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 805E46EC  88 1B 06 BA */	lbz r0, 0x6ba(r27)
/* 805E46F0  28 00 00 00 */	cmplwi r0, 0
/* 805E46F4  41 82 00 44 */	beq lbl_805E4738
/* 805E46F8  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805E46FC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E4700  A8 03 00 0E */	lha r0, 0xe(r3)
/* 805E4704  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E4708  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E470C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805E4710  3C 00 43 30 */	lis r0, 0x4330
/* 805E4714  90 01 00 48 */	stw r0, 0x48(r1)
/* 805E4718  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805E471C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4720  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4724  FC 00 00 1E */	fctiwz f0, f0
/* 805E4728  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805E472C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E4730  B0 1B 05 D8 */	sth r0, 0x5d8(r27)
/* 805E4734  48 00 00 10 */	b lbl_805E4744
lbl_805E4738:
/* 805E4738  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E473C  A8 03 00 0E */	lha r0, 0xe(r3)
/* 805E4740  B0 1B 05 D8 */	sth r0, 0x5d8(r27)
lbl_805E4744:
/* 805E4744  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4748  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 805E474C  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 805E4750  38 60 00 00 */	li r3, 0
/* 805E4754  38 C0 00 04 */	li r6, 4
/* 805E4758  38 A0 00 02 */	li r5, 2
/* 805E475C  38 80 00 07 */	li r4, 7
/* 805E4760  38 00 00 03 */	li r0, 3
/* 805E4764  7C 09 03 A6 */	mtctr r0
lbl_805E4768:
/* 805E4768  88 1B 06 90 */	lbz r0, 0x690(r27)
/* 805E476C  28 00 00 00 */	cmplwi r0, 0
/* 805E4770  40 82 00 10 */	bne lbl_805E4780
/* 805E4774  38 03 08 28 */	addi r0, r3, 0x828
/* 805E4778  7C DB 01 AE */	stbx r6, r27, r0
/* 805E477C  48 00 00 0C */	b lbl_805E4788
lbl_805E4780:
/* 805E4780  38 03 08 28 */	addi r0, r3, 0x828
/* 805E4784  7C BB 01 AE */	stbx r5, r27, r0
lbl_805E4788:
/* 805E4788  7C FB 1A 14 */	add r7, r27, r3
/* 805E478C  80 07 08 14 */	lwz r0, 0x814(r7)
/* 805E4790  60 00 00 01 */	ori r0, r0, 1
/* 805E4794  90 07 08 14 */	stw r0, 0x814(r7)
/* 805E4798  98 87 08 8B */	stb r4, 0x88b(r7)
/* 805E479C  38 63 01 38 */	addi r3, r3, 0x138
/* 805E47A0  42 00 FF C8 */	bdnz lbl_805E4768
/* 805E47A4  48 00 00 98 */	b lbl_805E483C
lbl_805E47A8:
/* 805E47A8  40 82 00 94 */	bne lbl_805E483C
/* 805E47AC  38 60 00 00 */	li r3, 0
/* 805E47B0  98 7B 06 BA */	stb r3, 0x6ba(r27)
/* 805E47B4  A8 1B 05 D8 */	lha r0, 0x5d8(r27)
/* 805E47B8  2C 00 00 00 */	cmpwi r0, 0
/* 805E47BC  40 82 00 08 */	bne lbl_805E47C4
/* 805E47C0  98 7B 05 C7 */	stb r3, 0x5c7(r27)
lbl_805E47C4:
/* 805E47C4  3C 60 80 5F */	lis r3, stringBase0@ha
/* 805E47C8  38 63 D3 D4 */	addi r3, r3, stringBase0@l
/* 805E47CC  38 63 00 05 */	addi r3, r3, 5
/* 805E47D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E47D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E47D8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 805E47DC  4B D8 41 B8 */	b strcmp
/* 805E47E0  2C 03 00 00 */	cmpwi r3, 0
/* 805E47E4  40 82 00 58 */	bne lbl_805E483C
/* 805E47E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E47EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E47F0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 805E47F4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805E47F8  40 82 00 44 */	bne lbl_805E483C
/* 805E47FC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E4800  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E4804  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805E4808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E480C  40 81 00 30 */	ble lbl_805E483C
/* 805E4810  7F 63 DB 78 */	mr r3, r27
/* 805E4814  38 80 00 00 */	li r4, 0
/* 805E4818  38 A0 00 01 */	li r5, 1
/* 805E481C  38 C0 00 00 */	li r6, 0
/* 805E4820  4B FF B2 45 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E4824  7F 63 DB 78 */	mr r3, r27
/* 805E4828  38 80 00 0E */	li r4, 0xe
/* 805E482C  38 A0 00 02 */	li r5, 2
/* 805E4830  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4834  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4838  4B FF A7 2D */	bl SetAnm__8daB_GG_cFiiff
lbl_805E483C:
/* 805E483C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805E4840  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 805E4844  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E4848  C0 7F 01 8C */	lfs f3, 0x18c(r31)
/* 805E484C  4B C8 B1 F0 */	b cLib_addCalc2__FPffff
/* 805E4850  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 805E4854  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 805E4858  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E485C  C0 7F 01 8C */	lfs f3, 0x18c(r31)
/* 805E4860  4B C8 B1 DC */	b cLib_addCalc2__FPffff
/* 805E4864  38 7B 06 C4 */	addi r3, r27, 0x6c4
/* 805E4868  38 80 00 00 */	li r4, 0
/* 805E486C  38 A0 00 10 */	li r5, 0x10
/* 805E4870  38 C0 06 00 */	li r6, 0x600
/* 805E4874  4B C8 BD 94 */	b cLib_addCalcAngleS2__FPssss
/* 805E4878  38 7B 06 BE */	addi r3, r27, 0x6be
/* 805E487C  38 80 00 00 */	li r4, 0
/* 805E4880  38 A0 00 10 */	li r5, 0x10
/* 805E4884  38 C0 10 00 */	li r6, 0x1000
/* 805E4888  4B C8 BD 80 */	b cLib_addCalcAngleS2__FPssss
/* 805E488C  7F 63 DB 78 */	mr r3, r27
/* 805E4890  48 00 61 1D */	bl F_AtHit__8daB_GG_cFv
/* 805E4894  88 1B 06 90 */	lbz r0, 0x690(r27)
/* 805E4898  28 00 00 00 */	cmplwi r0, 0
/* 805E489C  40 82 00 50 */	bne lbl_805E48EC
/* 805E48A0  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 805E48A4  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805E48A8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805E48AC  40 81 00 0C */	ble lbl_805E48B8
/* 805E48B0  D0 3B 04 D0 */	stfs f1, 0x4d0(r27)
/* 805E48B4  48 00 00 38 */	b lbl_805E48EC
lbl_805E48B8:
/* 805E48B8  C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 805E48BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E48C0  40 80 00 0C */	bge lbl_805E48CC
/* 805E48C4  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 805E48C8  48 00 00 24 */	b lbl_805E48EC
lbl_805E48CC:
/* 805E48CC  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 805E48D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E48D4  40 80 00 0C */	bge lbl_805E48E0
/* 805E48D8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 805E48DC  48 00 00 10 */	b lbl_805E48EC
lbl_805E48E0:
/* 805E48E0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805E48E4  40 81 00 08 */	ble lbl_805E48EC
/* 805E48E8  D0 3B 04 D8 */	stfs f1, 0x4d8(r27)
lbl_805E48EC:
/* 805E48EC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805E48F0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805E48F4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805E48F8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805E48FC  39 61 00 70 */	addi r11, r1, 0x70
/* 805E4900  4B D7 D9 20 */	b _restgpr_27
/* 805E4904  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805E4908  7C 08 03 A6 */	mtlr r0
/* 805E490C  38 21 00 90 */	addi r1, r1, 0x90
/* 805E4910  4E 80 00 20 */	blr 
