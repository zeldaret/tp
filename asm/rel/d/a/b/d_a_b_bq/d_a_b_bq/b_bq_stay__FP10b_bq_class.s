lbl_805B4048:
/* 805B4048  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805B404C  7C 08 02 A6 */	mflr r0
/* 805B4050  90 01 00 54 */	stw r0, 0x54(r1)
/* 805B4054  39 61 00 50 */	addi r11, r1, 0x50
/* 805B4058  4B DA E1 81 */	bl _savegpr_28
/* 805B405C  7C 7C 1B 78 */	mr r28, r3
/* 805B4060  3C 80 80 5C */	lis r4, lit_3816@ha /* 0x805BA588@ha */
/* 805B4064  3B C4 A5 88 */	addi r30, r4, lit_3816@l /* 0x805BA588@l */
/* 805B4068  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 805B406C  3B A0 00 00 */	li r29, 0
/* 805B4070  A8 03 06 CC */	lha r0, 0x6cc(r3)
/* 805B4074  2C 00 00 02 */	cmpwi r0, 2
/* 805B4078  41 82 00 44 */	beq lbl_805B40BC
/* 805B407C  40 80 00 10 */	bge lbl_805B408C
/* 805B4080  2C 00 00 00 */	cmpwi r0, 0
/* 805B4084  41 82 00 18 */	beq lbl_805B409C
/* 805B4088  48 00 04 30 */	b lbl_805B44B8
lbl_805B408C:
/* 805B408C  2C 00 00 04 */	cmpwi r0, 4
/* 805B4090  41 82 03 24 */	beq lbl_805B43B4
/* 805B4094  40 80 04 24 */	bge lbl_805B44B8
/* 805B4098  48 00 01 2C */	b lbl_805B41C4
lbl_805B409C:
/* 805B409C  38 80 00 07 */	li r4, 7
/* 805B40A0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B40A4  38 A0 00 00 */	li r5, 0
/* 805B40A8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B40AC  4B FF F4 F5 */	bl anm_init__FP10b_bq_classifUcf
/* 805B40B0  38 00 00 01 */	li r0, 1
/* 805B40B4  B0 1C 06 CC */	sth r0, 0x6cc(r28)
/* 805B40B8  48 00 04 00 */	b lbl_805B44B8
lbl_805B40BC:
/* 805B40BC  38 00 00 96 */	li r0, 0x96
/* 805B40C0  B0 1C 06 D4 */	sth r0, 0x6d4(r28)
/* 805B40C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B40C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B40CC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 805B40D0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805B40D4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805B40D8  7C 05 07 74 */	extsb r5, r0
/* 805B40DC  4B A8 11 25 */	bl onSwitch__10dSv_info_cFii
/* 805B40E0  38 00 00 03 */	li r0, 3
/* 805B40E4  B0 1C 06 CC */	sth r0, 0x6cc(r28)
/* 805B40E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B40EC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B40F0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B40F4  38 80 00 00 */	li r4, 0
/* 805B40F8  90 81 00 08 */	stw r4, 8(r1)
/* 805B40FC  38 00 FF FF */	li r0, -1
/* 805B4100  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B4104  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4108  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B410C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4110  38 80 00 00 */	li r4, 0
/* 805B4114  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B0@ha */
/* 805B4118  38 A5 82 B0 */	addi r5, r5, 0x82B0 /* 0x000082B0@l */
/* 805B411C  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4120  38 E0 00 00 */	li r7, 0
/* 805B4124  39 00 00 00 */	li r8, 0
/* 805B4128  39 20 00 00 */	li r9, 0
/* 805B412C  39 40 00 FF */	li r10, 0xff
/* 805B4130  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B4134  4B A9 89 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4138  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B413C  38 80 00 00 */	li r4, 0
/* 805B4140  90 81 00 08 */	stw r4, 8(r1)
/* 805B4144  38 00 FF FF */	li r0, -1
/* 805B4148  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B414C  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4150  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4154  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4158  38 80 00 00 */	li r4, 0
/* 805B415C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B1@ha */
/* 805B4160  38 A5 82 B1 */	addi r5, r5, 0x82B1 /* 0x000082B1@l */
/* 805B4164  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4168  38 E0 00 00 */	li r7, 0
/* 805B416C  39 00 00 00 */	li r8, 0
/* 805B4170  39 20 00 00 */	li r9, 0
/* 805B4174  39 40 00 FF */	li r10, 0xff
/* 805B4178  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B417C  4B A9 89 15 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4180  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013C@ha */
/* 805B4184  38 03 01 3C */	addi r0, r3, 0x013C /* 0x0007013C@l */
/* 805B4188  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B418C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B4190  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B4194  80 63 00 00 */	lwz r3, 0(r3)
/* 805B4198  38 81 00 24 */	addi r4, r1, 0x24
/* 805B419C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805B41A0  38 C0 00 00 */	li r6, 0
/* 805B41A4  38 E0 00 00 */	li r7, 0
/* 805B41A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B41AC  FC 40 08 90 */	fmr f2, f1
/* 805B41B0  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805B41B4  FC 80 18 90 */	fmr f4, f3
/* 805B41B8  39 00 00 00 */	li r8, 0
/* 805B41BC  4B CF 77 C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805B41C0  48 00 02 F8 */	b lbl_805B44B8
lbl_805B41C4:
/* 805B41C4  A8 1C 06 D4 */	lha r0, 0x6d4(r28)
/* 805B41C8  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B41CC  40 82 00 44 */	bne lbl_805B4210
/* 805B41D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070140@ha */
/* 805B41D4  38 03 01 40 */	addi r0, r3, 0x0140 /* 0x00070140@l */
/* 805B41D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B41DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B41E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B41E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805B41E8  38 81 00 20 */	addi r4, r1, 0x20
/* 805B41EC  38 A0 00 00 */	li r5, 0
/* 805B41F0  38 C0 00 00 */	li r6, 0
/* 805B41F4  38 E0 00 00 */	li r7, 0
/* 805B41F8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B41FC  FC 40 08 90 */	fmr f2, f1
/* 805B4200  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805B4204  FC 80 18 90 */	fmr f4, f3
/* 805B4208  39 00 00 00 */	li r8, 0
/* 805B420C  4B CF 77 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805B4210:
/* 805B4210  A8 1C 06 D4 */	lha r0, 0x6d4(r28)
/* 805B4214  2C 00 00 00 */	cmpwi r0, 0
/* 805B4218  40 82 02 A0 */	bne lbl_805B44B8
/* 805B421C  7F 83 E3 78 */	mr r3, r28
/* 805B4220  38 80 00 07 */	li r4, 7
/* 805B4224  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B4228  38 A0 00 00 */	li r5, 0
/* 805B422C  FC 40 08 90 */	fmr f2, f1
/* 805B4230  4B FF F3 71 */	bl anm_init__FP10b_bq_classifUcf
/* 805B4234  38 00 00 04 */	li r0, 4
/* 805B4238  B0 1C 06 CC */	sth r0, 0x6cc(r28)
/* 805B423C  38 80 00 00 */	li r4, 0
/* 805B4240  98 9C 06 F8 */	stb r4, 0x6f8(r28)
/* 805B4244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B4248  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B424C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B4250  90 81 00 08 */	stw r4, 8(r1)
/* 805B4254  38 00 FF FF */	li r0, -1
/* 805B4258  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B425C  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4260  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4264  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4268  38 80 00 00 */	li r4, 0
/* 805B426C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B6@ha */
/* 805B4270  38 A5 82 B6 */	addi r5, r5, 0x82B6 /* 0x000082B6@l */
/* 805B4274  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4278  38 E0 00 00 */	li r7, 0
/* 805B427C  39 00 00 00 */	li r8, 0
/* 805B4280  39 20 00 00 */	li r9, 0
/* 805B4284  39 40 00 FF */	li r10, 0xff
/* 805B4288  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B428C  4B A9 88 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4290  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B4294  38 80 00 00 */	li r4, 0
/* 805B4298  90 81 00 08 */	stw r4, 8(r1)
/* 805B429C  38 00 FF FF */	li r0, -1
/* 805B42A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B42A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B42A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B42AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B42B0  38 80 00 00 */	li r4, 0
/* 805B42B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B7@ha */
/* 805B42B8  38 A5 82 B7 */	addi r5, r5, 0x82B7 /* 0x000082B7@l */
/* 805B42BC  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B42C0  38 E0 00 00 */	li r7, 0
/* 805B42C4  39 00 00 00 */	li r8, 0
/* 805B42C8  39 20 00 00 */	li r9, 0
/* 805B42CC  39 40 00 FF */	li r10, 0xff
/* 805B42D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B42D4  4B A9 87 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B42D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B42DC  38 80 00 00 */	li r4, 0
/* 805B42E0  90 81 00 08 */	stw r4, 8(r1)
/* 805B42E4  38 00 FF FF */	li r0, -1
/* 805B42E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B42EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B42F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B42F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B42F8  38 80 00 00 */	li r4, 0
/* 805B42FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B8@ha */
/* 805B4300  38 A5 82 B8 */	addi r5, r5, 0x82B8 /* 0x000082B8@l */
/* 805B4304  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4308  38 E0 00 00 */	li r7, 0
/* 805B430C  39 00 00 00 */	li r8, 0
/* 805B4310  39 20 00 00 */	li r9, 0
/* 805B4314  39 40 00 FF */	li r10, 0xff
/* 805B4318  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B431C  4B A9 87 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4320  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B4324  38 80 00 00 */	li r4, 0
/* 805B4328  90 81 00 08 */	stw r4, 8(r1)
/* 805B432C  38 00 FF FF */	li r0, -1
/* 805B4330  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B4334  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4338  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B433C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4340  38 80 00 00 */	li r4, 0
/* 805B4344  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082B9@ha */
/* 805B4348  38 A5 82 B9 */	addi r5, r5, 0x82B9 /* 0x000082B9@l */
/* 805B434C  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4350  38 E0 00 00 */	li r7, 0
/* 805B4354  39 00 00 00 */	li r8, 0
/* 805B4358  39 20 00 00 */	li r9, 0
/* 805B435C  39 40 00 FF */	li r10, 0xff
/* 805B4360  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B4364  4B A9 87 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B4368  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805B436C  38 80 00 00 */	li r4, 0
/* 805B4370  90 81 00 08 */	stw r4, 8(r1)
/* 805B4374  38 00 FF FF */	li r0, -1
/* 805B4378  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B437C  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B4380  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B4384  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B4388  38 80 00 00 */	li r4, 0
/* 805B438C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082F9@ha */
/* 805B4390  38 A5 82 F9 */	addi r5, r5, 0x82F9 /* 0x000082F9@l */
/* 805B4394  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 805B4398  38 E0 00 00 */	li r7, 0
/* 805B439C  39 00 00 00 */	li r8, 0
/* 805B43A0  39 20 00 00 */	li r9, 0
/* 805B43A4  39 40 00 FF */	li r10, 0xff
/* 805B43A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B43AC  4B A9 86 E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B43B0  48 00 01 08 */	b lbl_805B44B8
lbl_805B43B4:
/* 805B43B4  3B A0 00 01 */	li r29, 1
/* 805B43B8  38 64 00 0C */	addi r3, r4, 0xc
/* 805B43BC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 805B43C0  4B D7 40 6D */	bl checkPass__12J3DFrameCtrlFf
/* 805B43C4  2C 03 00 00 */	cmpwi r3, 0
/* 805B43C8  41 82 00 58 */	beq lbl_805B4420
/* 805B43CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007010C@ha */
/* 805B43D0  38 03 01 0C */	addi r0, r3, 0x010C /* 0x0007010C@l */
/* 805B43D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 805B43D8  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 805B43DC  38 81 00 30 */	addi r4, r1, 0x30
/* 805B43E0  38 A0 00 00 */	li r5, 0
/* 805B43E4  38 C0 FF FF */	li r6, -1
/* 805B43E8  81 9C 05 E0 */	lwz r12, 0x5e0(r28)
/* 805B43EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B43F0  7D 89 03 A6 */	mtctr r12
/* 805B43F4  4E 80 04 21 */	bctrl 
/* 805B43F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007010A@ha */
/* 805B43FC  38 03 01 0A */	addi r0, r3, 0x010A /* 0x0007010A@l */
/* 805B4400  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B4404  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 805B4408  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B440C  38 A0 FF FF */	li r5, -1
/* 805B4410  81 9C 05 E0 */	lwz r12, 0x5e0(r28)
/* 805B4414  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4418  7D 89 03 A6 */	mtctr r12
/* 805B441C  4E 80 04 21 */	bctrl 
lbl_805B4420:
/* 805B4420  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805B4424  38 63 00 0C */	addi r3, r3, 0xc
/* 805B4428  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805B442C  4B D7 40 01 */	bl checkPass__12J3DFrameCtrlFf
/* 805B4430  2C 03 00 00 */	cmpwi r3, 0
/* 805B4434  41 82 00 2C */	beq lbl_805B4460
/* 805B4438  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007010B@ha */
/* 805B443C  38 03 01 0B */	addi r0, r3, 0x010B /* 0x0007010B@l */
/* 805B4440  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B4444  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 805B4448  38 81 00 28 */	addi r4, r1, 0x28
/* 805B444C  38 A0 FF FF */	li r5, -1
/* 805B4450  81 9C 05 E0 */	lwz r12, 0x5e0(r28)
/* 805B4454  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B4458  7D 89 03 A6 */	mtctr r12
/* 805B445C  4E 80 04 21 */	bctrl 
lbl_805B4460:
/* 805B4460  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805B4464  38 80 00 01 */	li r4, 1
/* 805B4468  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B446C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B4470  40 82 00 18 */	bne lbl_805B4488
/* 805B4474  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B4478  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B447C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B4480  41 82 00 08 */	beq lbl_805B4488
/* 805B4484  38 80 00 00 */	li r4, 0
lbl_805B4488:
/* 805B4488  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B448C  41 82 00 2C */	beq lbl_805B44B8
/* 805B4490  38 00 00 01 */	li r0, 1
/* 805B4494  B0 1C 06 CA */	sth r0, 0x6ca(r28)
/* 805B4498  7F 83 E3 78 */	mr r3, r28
/* 805B449C  38 80 00 17 */	li r4, 0x17
/* 805B44A0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B44A4  38 A0 00 02 */	li r5, 2
/* 805B44A8  FC 40 08 90 */	fmr f2, f1
/* 805B44AC  4B FF F0 F5 */	bl anm_init__FP10b_bq_classifUcf
/* 805B44B0  38 00 00 01 */	li r0, 1
/* 805B44B4  B0 1C 06 CC */	sth r0, 0x6cc(r28)
lbl_805B44B8:
/* 805B44B8  7F A3 EB 78 */	mr r3, r29
/* 805B44BC  39 61 00 50 */	addi r11, r1, 0x50
/* 805B44C0  4B DA DD 65 */	bl _restgpr_28
/* 805B44C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B44C8  7C 08 03 A6 */	mtlr r0
/* 805B44CC  38 21 00 50 */	addi r1, r1, 0x50
/* 805B44D0  4E 80 00 20 */	blr 
