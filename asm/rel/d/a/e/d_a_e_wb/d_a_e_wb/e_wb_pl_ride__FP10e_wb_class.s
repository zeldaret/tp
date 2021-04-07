lbl_807D4154:
/* 807D4154  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807D4158  7C 08 02 A6 */	mflr r0
/* 807D415C  90 01 00 74 */	stw r0, 0x74(r1)
/* 807D4160  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807D4164  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807D4168  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 807D416C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 807D4170  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 807D4174  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 807D4178  39 61 00 40 */	addi r11, r1, 0x40
/* 807D417C  4B B8 E0 59 */	bl _savegpr_27
/* 807D4180  7C 7C 1B 78 */	mr r28, r3
/* 807D4184  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807D4188  3B E3 29 8C */	addi r31, r3, lit_3882@l /* 0x807E298C@l */
/* 807D418C  A8 7C 14 32 */	lha r3, 0x1432(r28)
/* 807D4190  7C 60 07 35 */	extsh. r0, r3
/* 807D4194  41 82 01 18 */	beq lbl_807D42AC
/* 807D4198  C3 FF 00 1C */	lfs f31, 0x1c(r31)
/* 807D419C  2C 03 00 01 */	cmpwi r3, 1
/* 807D41A0  40 82 00 0C */	bne lbl_807D41AC
/* 807D41A4  38 00 00 65 */	li r0, 0x65
/* 807D41A8  B0 1C 06 90 */	sth r0, 0x690(r28)
lbl_807D41AC:
/* 807D41AC  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D41B0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 807D41B4  40 82 00 B8 */	bne lbl_807D426C
/* 807D41B8  80 9C 05 E0 */	lwz r4, 0x5e0(r28)
/* 807D41BC  38 60 00 01 */	li r3, 1
/* 807D41C0  88 04 00 11 */	lbz r0, 0x11(r4)
/* 807D41C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D41C8  40 82 00 18 */	bne lbl_807D41E0
/* 807D41CC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D41D0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807D41D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D41D8  41 82 00 08 */	beq lbl_807D41E0
/* 807D41DC  38 60 00 00 */	li r3, 0
lbl_807D41E0:
/* 807D41E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807D41E4  41 82 00 28 */	beq lbl_807D420C
/* 807D41E8  7F 83 E3 78 */	mr r3, r28
/* 807D41EC  38 80 00 20 */	li r4, 0x20
/* 807D41F0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D41F4  38 A0 00 02 */	li r5, 2
/* 807D41F8  FC 40 08 90 */	fmr f2, f1
/* 807D41FC  4B FF E3 4D */	bl anm_init__FP10e_wb_classifUcf
/* 807D4200  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807D4204  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 807D4208  48 00 00 64 */	b lbl_807D426C
lbl_807D420C:
/* 807D420C  38 64 00 0C */	addi r3, r4, 0xc
/* 807D4210  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 807D4214  4B B5 42 19 */	bl checkPass__12J3DFrameCtrlFf
/* 807D4218  2C 03 00 00 */	cmpwi r3, 0
/* 807D421C  40 82 00 1C */	bne lbl_807D4238
/* 807D4220  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 807D4224  38 63 00 0C */	addi r3, r3, 0xc
/* 807D4228  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807D422C  4B B5 42 01 */	bl checkPass__12J3DFrameCtrlFf
/* 807D4230  2C 03 00 00 */	cmpwi r3, 0
/* 807D4234  41 82 06 5C */	beq lbl_807D4890
lbl_807D4238:
/* 807D4238  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D423C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807D4240  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807D4244  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D4248  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807D424C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D4254  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807D4258  38 80 00 05 */	li r4, 5
/* 807D425C  38 A0 00 1F */	li r5, 0x1f
/* 807D4260  38 C1 00 14 */	addi r6, r1, 0x14
/* 807D4264  4B 89 B7 C1 */	bl StartShock__12dVibration_cFii4cXyz
/* 807D4268  48 00 06 28 */	b lbl_807D4890
lbl_807D426C:
/* 807D426C  A8 1C 14 32 */	lha r0, 0x1432(r28)
/* 807D4270  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 807D4274  40 82 00 44 */	bne lbl_807D42B8
/* 807D4278  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D427C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D4280  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807D4284  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807D4288  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807D428C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D4294  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807D4298  38 80 00 03 */	li r4, 3
/* 807D429C  38 A0 00 1F */	li r5, 0x1f
/* 807D42A0  38 C1 00 08 */	addi r6, r1, 8
/* 807D42A4  4B 89 B7 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 807D42A8  48 00 00 10 */	b lbl_807D42B8
lbl_807D42AC:
/* 807D42AC  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D42B0  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D42B4  C3 E3 00 3C */	lfs f31, 0x3c(r3)
lbl_807D42B8:
/* 807D42B8  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D42BC  2C 00 00 25 */	cmpwi r0, 0x25
/* 807D42C0  40 82 00 58 */	bne lbl_807D4318
/* 807D42C4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D42C8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D42CC  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 807D42D0  4B A9 C4 71 */	bl cLib_chaseF__FPfff
/* 807D42D4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D42D8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 807D42DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D42E0  40 80 00 1C */	bge lbl_807D42FC
/* 807D42E4  7F 83 E3 78 */	mr r3, r28
/* 807D42E8  38 80 00 2A */	li r4, 0x2a
/* 807D42EC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D42F0  38 A0 00 02 */	li r5, 2
/* 807D42F4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D42F8  4B FF E2 51 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D42FC:
/* 807D42FC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4300  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807D4304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4308  40 81 05 88 */	ble lbl_807D4890
/* 807D430C  38 00 00 02 */	li r0, 2
/* 807D4310  98 1C 14 2C */	stb r0, 0x142c(r28)
/* 807D4314  48 00 05 7C */	b lbl_807D4890
lbl_807D4318:
/* 807D4318  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 807D431C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 807D4320  C0 23 00 08 */	lfs f1, 8(r3)
/* 807D4324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D432C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807D4330  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 807D4334  28 00 00 3B */	cmplwi r0, 0x3b
/* 807D4338  40 82 00 08 */	bne lbl_807D4340
/* 807D433C  C0 3F 00 48 */	lfs f1, 0x48(r31)
lbl_807D4340:
/* 807D4340  C3 BF 00 E8 */	lfs f29, 0xe8(r31)
/* 807D4344  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 807D4348  2C 00 00 65 */	cmpwi r0, 0x65
/* 807D434C  40 82 00 18 */	bne lbl_807D4364
/* 807D4350  FF C0 08 90 */	fmr f30, f1
/* 807D4354  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 807D4358  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 807D435C  AB 63 00 0C */	lha r27, 0xc(r3)
/* 807D4360  48 00 00 44 */	b lbl_807D43A4
lbl_807D4364:
/* 807D4364  C3 DF 00 60 */	lfs f30, 0x60(r31)
/* 807D4368  C3 BF 00 20 */	lfs f29, 0x20(r31)
/* 807D436C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D4374  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807D4378  28 00 00 00 */	cmplwi r0, 0
/* 807D437C  41 82 00 0C */	beq lbl_807D4388
/* 807D4380  3B 60 80 00 */	li r27, -32768
/* 807D4384  48 00 00 20 */	b lbl_807D43A4
lbl_807D4388:
/* 807D4388  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 807D438C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 807D4390  AB 63 00 0C */	lha r27, 0xc(r3)
/* 807D4394  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807D4398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D439C  40 80 00 08 */	bge lbl_807D43A4
/* 807D43A0  3B 60 80 00 */	li r27, -32768
lbl_807D43A4:
/* 807D43A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D43A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D43AC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807D43B0  7C 00 07 74 */	extsb r0, r0
/* 807D43B4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807D43B8  7C 63 02 14 */	add r3, r3, r0
/* 807D43BC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 807D43C0  4B 9A D2 55 */	bl dCam_getControledAngleY__FP12camera_class
/* 807D43C4  3C 03 00 01 */	addis r0, r3, 1
/* 807D43C8  7C 60 DA 14 */	add r3, r0, r27
/* 807D43CC  38 03 80 00 */	addi r0, r3, -32768
/* 807D43D0  7C 1E 07 34 */	extsh r30, r0
/* 807D43D4  3B A0 00 00 */	li r29, 0
/* 807D43D8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807D43DC  7C 00 F0 50 */	subf r0, r0, r30
/* 807D43E0  7C 1B 07 34 */	extsh r27, r0
/* 807D43E4  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 807D43E8  2C 00 00 65 */	cmpwi r0, 0x65
/* 807D43EC  40 82 00 3C */	bne lbl_807D4428
/* 807D43F0  7F 63 DB 78 */	mr r3, r27
/* 807D43F4  4B B9 0C DD */	bl abs
/* 807D43F8  2C 03 60 00 */	cmpwi r3, 0x6000
/* 807D43FC  40 81 00 0C */	ble lbl_807D4408
/* 807D4400  3B A0 00 01 */	li r29, 1
/* 807D4404  48 00 00 40 */	b lbl_807D4444
lbl_807D4408:
/* 807D4408  2C 1B 20 00 */	cmpwi r27, 0x2000
/* 807D440C  41 80 00 0C */	blt lbl_807D4418
/* 807D4410  3B A0 00 02 */	li r29, 2
/* 807D4414  48 00 00 30 */	b lbl_807D4444
lbl_807D4418:
/* 807D4418  2C 1B E0 00 */	cmpwi r27, -8192
/* 807D441C  41 81 00 28 */	bgt lbl_807D4444
/* 807D4420  3B A0 00 03 */	li r29, 3
/* 807D4424  48 00 00 20 */	b lbl_807D4444
lbl_807D4428:
/* 807D4428  2C 1B 20 00 */	cmpwi r27, 0x2000
/* 807D442C  41 80 00 0C */	blt lbl_807D4438
/* 807D4430  3B A0 00 02 */	li r29, 2
/* 807D4434  48 00 00 10 */	b lbl_807D4444
lbl_807D4438:
/* 807D4438  2C 1B E0 00 */	cmpwi r27, -8192
/* 807D443C  41 81 00 08 */	bgt lbl_807D4444
/* 807D4440  3B A0 00 03 */	li r29, 3
lbl_807D4444:
/* 807D4444  88 7C 14 2F */	lbz r3, 0x142f(r28)
/* 807D4448  2C 03 00 02 */	cmpwi r3, 2
/* 807D444C  40 82 00 64 */	bne lbl_807D44B0
/* 807D4450  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4454  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807D4458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D445C  40 80 00 14 */	bge lbl_807D4470
/* 807D4460  2C 1D 00 00 */	cmpwi r29, 0
/* 807D4464  40 82 00 10 */	bne lbl_807D4474
/* 807D4468  C3 DF 00 48 */	lfs f30, 0x48(r31)
/* 807D446C  48 00 00 08 */	b lbl_807D4474
lbl_807D4470:
/* 807D4470  3B A0 00 01 */	li r29, 1
lbl_807D4474:
/* 807D4474  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 807D4478  2C 00 00 65 */	cmpwi r0, 0x65
/* 807D447C  41 82 00 48 */	beq lbl_807D44C4
/* 807D4480  38 00 00 65 */	li r0, 0x65
/* 807D4484  B0 1C 06 90 */	sth r0, 0x690(r28)
/* 807D4488  38 00 00 00 */	li r0, 0
/* 807D448C  B0 1C 14 32 */	sth r0, 0x1432(r28)
/* 807D4490  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807D4494  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D4498  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D449C  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 807D44A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807D44A4  40 81 00 20 */	ble lbl_807D44C4
/* 807D44A8  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 807D44AC  48 00 00 18 */	b lbl_807D44C4
lbl_807D44B0:
/* 807D44B0  7C 60 07 75 */	extsb. r0, r3
/* 807D44B4  40 80 00 10 */	bge lbl_807D44C4
/* 807D44B8  2C 1D 00 01 */	cmpwi r29, 1
/* 807D44BC  40 82 00 08 */	bne lbl_807D44C4
/* 807D44C0  C3 DF 00 48 */	lfs f30, 0x48(r31)
lbl_807D44C4:
/* 807D44C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D44C8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D44CC  38 7B 4E 00 */	addi r3, r27, 0x4e00
/* 807D44D0  3C 80 80 7E */	lis r4, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807D44D4  38 84 2F 0C */	addi r4, r4, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807D44D8  4B B9 44 BD */	bl strcmp
/* 807D44DC  2C 03 00 00 */	cmpwi r3, 0
/* 807D44E0  40 82 00 1C */	bne lbl_807D44FC
/* 807D44E4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807D44E8  2C 00 00 03 */	cmpwi r0, 3
/* 807D44EC  40 82 00 10 */	bne lbl_807D44FC
/* 807D44F0  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 807D44F4  28 00 00 00 */	cmplwi r0, 0
/* 807D44F8  40 82 00 18 */	bne lbl_807D4510
lbl_807D44FC:
/* 807D44FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D4500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D4504  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 807D4508  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 807D450C  41 82 00 08 */	beq lbl_807D4514
lbl_807D4510:
/* 807D4510  C3 DF 00 48 */	lfs f30, 0x48(r31)
lbl_807D4514:
/* 807D4514  38 00 00 00 */	li r0, 0
/* 807D4518  B0 1C 17 E2 */	sth r0, 0x17e2(r28)
/* 807D451C  2C 1D 00 01 */	cmpwi r29, 1
/* 807D4520  41 82 01 20 */	beq lbl_807D4640
/* 807D4524  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 807D4528  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D452C  40 81 01 14 */	ble lbl_807D4640
/* 807D4530  AB 7C 04 DE */	lha r27, 0x4de(r28)
/* 807D4534  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 807D4538  2C 00 00 65 */	cmpwi r0, 0x65
/* 807D453C  40 82 00 24 */	bne lbl_807D4560
/* 807D4540  38 7C 04 DE */	addi r3, r28, 0x4de
/* 807D4544  7F C4 F3 78 */	mr r4, r30
/* 807D4548  38 A0 00 04 */	li r5, 4
/* 807D454C  38 C0 01 F4 */	li r6, 0x1f4
/* 807D4550  4B A9 C0 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 807D4554  38 00 00 00 */	li r0, 0
/* 807D4558  B0 1C 06 D2 */	sth r0, 0x6d2(r28)
/* 807D455C  48 00 00 4C */	b lbl_807D45A8
lbl_807D4560:
/* 807D4560  38 80 00 00 */	li r4, 0
/* 807D4564  38 C0 00 40 */	li r6, 0x40
/* 807D4568  2C 1D 00 02 */	cmpwi r29, 2
/* 807D456C  40 82 00 0C */	bne lbl_807D4578
/* 807D4570  38 80 03 00 */	li r4, 0x300
/* 807D4574  48 00 00 18 */	b lbl_807D458C
lbl_807D4578:
/* 807D4578  2C 1D 00 03 */	cmpwi r29, 3
/* 807D457C  40 82 00 0C */	bne lbl_807D4588
/* 807D4580  38 80 FD 00 */	li r4, -768
/* 807D4584  48 00 00 08 */	b lbl_807D458C
lbl_807D4588:
/* 807D4588  38 C0 00 10 */	li r6, 0x10
lbl_807D458C:
/* 807D458C  38 7C 06 D2 */	addi r3, r28, 0x6d2
/* 807D4590  38 A0 00 04 */	li r5, 4
/* 807D4594  4B A9 C0 75 */	bl cLib_addCalcAngleS2__FPssss
/* 807D4598  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 807D459C  A8 1C 06 D2 */	lha r0, 0x6d2(r28)
/* 807D45A0  7C 03 02 14 */	add r0, r3, r0
/* 807D45A4  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_807D45A8:
/* 807D45A8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807D45AC  7C 1B 00 50 */	subf r0, r27, r0
/* 807D45B0  B0 1C 17 E2 */	sth r0, 0x17e2(r28)
/* 807D45B4  A8 1C 17 E2 */	lha r0, 0x17e2(r28)
/* 807D45B8  54 00 18 38 */	slwi r0, r0, 3
/* 807D45BC  7C 00 00 D0 */	neg r0, r0
/* 807D45C0  7C 00 07 34 */	extsh r0, r0
/* 807D45C4  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 807D45C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807D45CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D45D0  3C 00 43 30 */	lis r0, 0x4330
/* 807D45D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807D45D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 807D45DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 807D45E0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807D45E4  EC 41 00 32 */	fmuls f2, f1, f0
/* 807D45E8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D45EC  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D45F0  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D45F4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 807D45F8  EC 01 00 2A */	fadds f0, f1, f0
/* 807D45FC  EC 22 00 24 */	fdivs f1, f2, f0
/* 807D4600  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 807D4604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4608  40 81 00 0C */	ble lbl_807D4614
/* 807D460C  FC 20 00 90 */	fmr f1, f0
/* 807D4610  48 00 00 14 */	b lbl_807D4624
lbl_807D4614:
/* 807D4614  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 807D4618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D461C  40 80 00 08 */	bge lbl_807D4624
/* 807D4620  FC 20 00 90 */	fmr f1, f0
lbl_807D4624:
/* 807D4624  38 7C 07 9A */	addi r3, r28, 0x79a
/* 807D4628  FC 00 08 1E */	fctiwz f0, f1
/* 807D462C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807D4630  80 81 00 24 */	lwz r4, 0x24(r1)
/* 807D4634  38 A0 00 08 */	li r5, 8
/* 807D4638  38 C0 01 40 */	li r6, 0x140
/* 807D463C  4B A9 BF CD */	bl cLib_addCalcAngleS2__FPssss
lbl_807D4640:
/* 807D4640  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4644  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 807D4648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D464C  40 80 00 C0 */	bge lbl_807D470C
/* 807D4650  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D4654  40 81 00 6C */	ble lbl_807D46C0
/* 807D4658  2C 1D 00 00 */	cmpwi r29, 0
/* 807D465C  40 82 00 14 */	bne lbl_807D4670
/* 807D4660  38 00 00 00 */	li r0, 0
/* 807D4664  B0 1C 17 E2 */	sth r0, 0x17e2(r28)
/* 807D4668  D3 BC 05 2C */	stfs f29, 0x52c(r28)
/* 807D466C  48 00 01 B8 */	b lbl_807D4824
lbl_807D4670:
/* 807D4670  2C 1D 00 01 */	cmpwi r29, 1
/* 807D4674  40 82 00 24 */	bne lbl_807D4698
/* 807D4678  38 00 00 00 */	li r0, 0
/* 807D467C  B0 1C 17 E2 */	sth r0, 0x17e2(r28)
/* 807D4680  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D4684  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 807D4688  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 807D468C  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D4690  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D4694  4B A9 C0 AD */	bl cLib_chaseF__FPfff
lbl_807D4698:
/* 807D4698  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D469C  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D46A0  41 82 01 84 */	beq lbl_807D4824
/* 807D46A4  7F 83 E3 78 */	mr r3, r28
/* 807D46A8  38 80 00 28 */	li r4, 0x28
/* 807D46AC  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D46B0  38 A0 00 02 */	li r5, 2
/* 807D46B4  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 807D46B8  4B FF DE 91 */	bl anm_init__FP10e_wb_classifUcf
/* 807D46BC  48 00 01 68 */	b lbl_807D4824
lbl_807D46C0:
/* 807D46C0  FC 20 0A 10 */	fabs f1, f1
/* 807D46C4  FC 20 08 18 */	frsp f1, f1
/* 807D46C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D46CC  40 80 00 2C */	bge lbl_807D46F8
/* 807D46D0  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D46D4  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807D46D8  41 82 01 4C */	beq lbl_807D4824
/* 807D46DC  7F 83 E3 78 */	mr r3, r28
/* 807D46E0  38 80 00 2A */	li r4, 0x2a
/* 807D46E4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D46E8  38 A0 00 02 */	li r5, 2
/* 807D46EC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D46F0  4B FF DE 59 */	bl anm_init__FP10e_wb_classifUcf
/* 807D46F4  48 00 01 30 */	b lbl_807D4824
lbl_807D46F8:
/* 807D46F8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D46FC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D4700  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 807D4704  4B A9 C0 3D */	bl cLib_chaseF__FPfff
/* 807D4708  48 00 01 1C */	b lbl_807D4824
lbl_807D470C:
/* 807D470C  38 00 00 00 */	li r0, 0
/* 807D4710  B0 1C 17 E2 */	sth r0, 0x17e2(r28)
/* 807D4714  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 807D4718  40 81 00 C8 */	ble lbl_807D47E0
/* 807D471C  2C 1D 00 01 */	cmpwi r29, 1
/* 807D4720  40 82 00 50 */	bne lbl_807D4770
/* 807D4724  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4728  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807D472C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 807D4730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4734  40 81 00 28 */	ble lbl_807D475C
/* 807D4738  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D473C  2C 00 00 25 */	cmpwi r0, 0x25
/* 807D4740  41 82 00 1C */	beq lbl_807D475C
/* 807D4744  7F 83 E3 78 */	mr r3, r28
/* 807D4748  38 80 00 25 */	li r4, 0x25
/* 807D474C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D4750  38 A0 00 02 */	li r5, 2
/* 807D4754  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D4758  4B FF DD F1 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D475C:
/* 807D475C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D4760  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D4764  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 807D4768  4B A9 BF D9 */	bl cLib_chaseF__FPfff
/* 807D476C  48 00 00 B8 */	b lbl_807D4824
lbl_807D4770:
/* 807D4770  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D4774  EC 3F 07 B2 */	fmuls f1, f31, f30
/* 807D4778  FC 40 E8 90 */	fmr f2, f29
/* 807D477C  4B A9 BF C5 */	bl cLib_chaseF__FPfff
/* 807D4780  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4784  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807D4788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D478C  40 80 00 2C */	bge lbl_807D47B8
/* 807D4790  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D4794  2C 00 00 2B */	cmpwi r0, 0x2b
/* 807D4798  41 82 00 8C */	beq lbl_807D4824
/* 807D479C  7F 83 E3 78 */	mr r3, r28
/* 807D47A0  38 80 00 2B */	li r4, 0x2b
/* 807D47A4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D47A8  38 A0 00 02 */	li r5, 2
/* 807D47AC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D47B0  4B FF DD 99 */	bl anm_init__FP10e_wb_classifUcf
/* 807D47B4  48 00 00 70 */	b lbl_807D4824
lbl_807D47B8:
/* 807D47B8  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D47BC  2C 00 00 20 */	cmpwi r0, 0x20
/* 807D47C0  41 82 00 64 */	beq lbl_807D4824
/* 807D47C4  7F 83 E3 78 */	mr r3, r28
/* 807D47C8  38 80 00 20 */	li r4, 0x20
/* 807D47CC  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D47D0  38 A0 00 02 */	li r5, 2
/* 807D47D4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D47D8  4B FF DD 71 */	bl anm_init__FP10e_wb_classifUcf
/* 807D47DC  48 00 00 48 */	b lbl_807D4824
lbl_807D47E0:
/* 807D47E0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 807D47E4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D47E8  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 807D47EC  4B A9 BF 55 */	bl cLib_chaseF__FPfff
/* 807D47F0  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D47F4  2C 00 00 20 */	cmpwi r0, 0x20
/* 807D47F8  40 82 00 2C */	bne lbl_807D4824
/* 807D47FC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807D4800  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807D4804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4808  40 80 00 1C */	bge lbl_807D4824
/* 807D480C  7F 83 E3 78 */	mr r3, r28
/* 807D4810  38 80 00 2B */	li r4, 0x2b
/* 807D4814  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D4818  38 A0 00 02 */	li r5, 2
/* 807D481C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D4820  4B FF DD 29 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D4824:
/* 807D4824  80 1C 05 E8 */	lwz r0, 0x5e8(r28)
/* 807D4828  2C 00 00 20 */	cmpwi r0, 0x20
/* 807D482C  40 82 00 40 */	bne lbl_807D486C
/* 807D4830  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 807D4834  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D4838  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D483C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 807D4840  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807D4844  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D4848  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 807D484C  EC 01 00 24 */	fdivs f0, f1, f0
/* 807D4850  EC 02 00 2A */	fadds f0, f2, f0
/* 807D4854  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 807D4858  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807D485C  38 00 00 01 */	li r0, 1
/* 807D4860  98 1C 14 2C */	stb r0, 0x142c(r28)
/* 807D4864  98 1C 06 BD */	stb r0, 0x6bd(r28)
/* 807D4868  48 00 00 28 */	b lbl_807D4890
lbl_807D486C:
/* 807D486C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 807D4870  40 82 00 20 */	bne lbl_807D4890
/* 807D4874  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 807D4878  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 807D487C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807D4880  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D4884  EC 02 00 2A */	fadds f0, f2, f0
/* 807D4888  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 807D488C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_807D4890:
/* 807D4890  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807D4894  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807D4898  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 807D489C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 807D48A0  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 807D48A4  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 807D48A8  39 61 00 40 */	addi r11, r1, 0x40
/* 807D48AC  4B B8 D9 75 */	bl _restgpr_27
/* 807D48B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807D48B4  7C 08 03 A6 */	mtlr r0
/* 807D48B8  38 21 00 70 */	addi r1, r1, 0x70
/* 807D48BC  4E 80 00 20 */	blr 
