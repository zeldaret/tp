lbl_80CE42C4:
/* 80CE42C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CE42C8  7C 08 02 A6 */	mflr r0
/* 80CE42CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CE42D0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CE42D4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CE42D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE42DC  4B 67 DF 00 */	b _savegpr_29
/* 80CE42E0  7C 7D 1B 78 */	mr r29, r3
/* 80CE42E4  3C 60 80 CE */	lis r3, lit_3637@ha
/* 80CE42E8  3B C3 4C BC */	addi r30, r3, lit_3637@l
/* 80CE42EC  88 7D 05 BA */	lbz r3, 0x5ba(r29)
/* 80CE42F0  28 03 00 00 */	cmplwi r3, 0
/* 80CE42F4  41 82 00 10 */	beq lbl_80CE4304
/* 80CE42F8  38 03 FF FF */	addi r0, r3, -1
/* 80CE42FC  98 1D 05 BA */	stb r0, 0x5ba(r29)
/* 80CE4300  48 00 03 6C */	b lbl_80CE466C
lbl_80CE4304:
/* 80CE4304  C0 3D 05 B4 */	lfs f1, 0x5b4(r29)
/* 80CE4308  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80CE430C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CE4310  EC 41 00 24 */	fdivs f2, f1, f0
/* 80CE4314  4B 58 C4 2C */	b cLib_chaseF__FPfff
/* 80CE4318  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80CE431C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80CE4320  C0 1D 05 B0 */	lfs f0, 0x5b0(r29)
/* 80CE4324  EC 21 00 2A */	fadds f1, f1, f0
/* 80CE4328  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80CE432C  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 80CE4330  C0 9E 00 68 */	lfs f4, 0x68(r30)
/* 80CE4334  4B 58 B6 48 */	b cLib_addCalc__FPfffff
/* 80CE4338  FF E0 08 90 */	fmr f31, f1
/* 80CE433C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CE4340  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CE4344  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CE4348  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80CE434C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CE4350  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CE4354  C0 1D 05 18 */	lfs f0, 0x518(r29)
/* 80CE4358  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE435C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CE4360  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CE4364  7C 03 07 74 */	extsb r3, r0
/* 80CE4368  4B 34 8D 04 */	b dComIfGp_getReverb__Fi
/* 80CE436C  7C 67 1B 78 */	mr r7, r3
/* 80CE4370  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A3@ha */
/* 80CE4374  38 03 01 A3 */	addi r0, r3, 0x01A3 /* 0x000801A3@l */
/* 80CE4378  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE437C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE4380  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE4384  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE4388  38 81 00 24 */	addi r4, r1, 0x24
/* 80CE438C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CE4390  38 C0 00 00 */	li r6, 0
/* 80CE4394  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4398  FC 40 08 90 */	fmr f2, f1
/* 80CE439C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80CE43A0  FC 80 18 90 */	fmr f4, f3
/* 80CE43A4  39 00 00 00 */	li r8, 0
/* 80CE43A8  4B 5C 81 64 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE43AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CE43B0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CE43B4  40 82 02 B8 */	bne lbl_80CE466C
/* 80CE43B8  88 1D 05 BB */	lbz r0, 0x5bb(r29)
/* 80CE43BC  28 00 00 01 */	cmplwi r0, 1
/* 80CE43C0  41 82 00 0C */	beq lbl_80CE43CC
/* 80CE43C4  28 00 00 04 */	cmplwi r0, 4
/* 80CE43C8  40 82 00 10 */	bne lbl_80CE43D8
lbl_80CE43CC:
/* 80CE43CC  7F A3 EB 78 */	mr r3, r29
/* 80CE43D0  48 00 03 C1 */	bl init_modeMoveEnd__12daSpinLift_cFv
/* 80CE43D4  48 00 02 98 */	b lbl_80CE466C
lbl_80CE43D8:
/* 80CE43D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A5@ha */
/* 80CE43DC  38 03 01 A5 */	addi r0, r3, 0x01A5 /* 0x000801A5@l */
/* 80CE43E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CE43E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CE43E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CE43EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE43F0  38 81 00 20 */	addi r4, r1, 0x20
/* 80CE43F4  38 A0 00 00 */	li r5, 0
/* 80CE43F8  38 C0 00 00 */	li r6, 0
/* 80CE43FC  38 E0 00 00 */	li r7, 0
/* 80CE4400  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4404  FC 40 08 90 */	fmr f2, f1
/* 80CE4408  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80CE440C  FC 80 18 90 */	fmr f4, f3
/* 80CE4410  39 00 00 00 */	li r8, 0
/* 80CE4414  4B 5C 75 70 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE4418  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CE441C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CE4420  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CE4424  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CE4428  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CE442C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE4430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE4434  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CE4438  3C 80 80 CE */	lis r4, l_HIO@ha
/* 80CE443C  38 84 4E D4 */	addi r4, r4, l_HIO@l
/* 80CE4440  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80CE4444  38 A0 00 0F */	li r5, 0xf
/* 80CE4448  38 C1 00 30 */	addi r6, r1, 0x30
/* 80CE444C  4B 38 B5 D8 */	b StartShock__12dVibration_cFii4cXyz
/* 80CE4450  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80CE4454  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CE4458  A0 1D 04 E8 */	lhz r0, 0x4e8(r29)
/* 80CE445C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80CE4460  38 80 00 00 */	li r4, 0
/* 80CE4464  B0 81 00 28 */	sth r4, 0x28(r1)
/* 80CE4468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE446C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CE4470  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4474  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4478  38 00 FF FF */	li r0, -1
/* 80CE447C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4480  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4484  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4488  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE448C  38 80 00 00 */	li r4, 0
/* 80CE4490  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD2@ha */
/* 80CE4494  38 A5 8A D2 */	addi r5, r5, 0x8AD2 /* 0x00008AD2@l */
/* 80CE4498  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE449C  38 E0 00 00 */	li r7, 0
/* 80CE44A0  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE44A4  39 20 00 00 */	li r9, 0
/* 80CE44A8  39 40 00 FF */	li r10, 0xff
/* 80CE44AC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE44B0  4B 36 85 E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE44B4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE44B8  38 80 00 00 */	li r4, 0
/* 80CE44BC  90 81 00 08 */	stw r4, 8(r1)
/* 80CE44C0  38 00 FF FF */	li r0, -1
/* 80CE44C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE44C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE44CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE44D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE44D4  38 80 00 00 */	li r4, 0
/* 80CE44D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD3@ha */
/* 80CE44DC  38 A5 8A D3 */	addi r5, r5, 0x8AD3 /* 0x00008AD3@l */
/* 80CE44E0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE44E4  38 E0 00 00 */	li r7, 0
/* 80CE44E8  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE44EC  39 20 00 00 */	li r9, 0
/* 80CE44F0  39 40 00 FF */	li r10, 0xff
/* 80CE44F4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE44F8  4B 36 85 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE44FC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4500  38 80 00 00 */	li r4, 0
/* 80CE4504  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4508  38 00 FF FF */	li r0, -1
/* 80CE450C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4510  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4514  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4518  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE451C  38 80 00 00 */	li r4, 0
/* 80CE4520  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD4@ha */
/* 80CE4524  38 A5 8A D4 */	addi r5, r5, 0x8AD4 /* 0x00008AD4@l */
/* 80CE4528  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE452C  38 E0 00 00 */	li r7, 0
/* 80CE4530  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE4534  39 20 00 00 */	li r9, 0
/* 80CE4538  39 40 00 FF */	li r10, 0xff
/* 80CE453C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4540  4B 36 85 50 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE4544  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4548  38 80 00 00 */	li r4, 0
/* 80CE454C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4550  38 00 FF FF */	li r0, -1
/* 80CE4554  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4558  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE455C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4560  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE4564  38 80 00 00 */	li r4, 0
/* 80CE4568  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD5@ha */
/* 80CE456C  38 A5 8A D5 */	addi r5, r5, 0x8AD5 /* 0x00008AD5@l */
/* 80CE4570  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE4574  38 E0 00 00 */	li r7, 0
/* 80CE4578  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE457C  39 20 00 00 */	li r9, 0
/* 80CE4580  39 40 00 FF */	li r10, 0xff
/* 80CE4584  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4588  4B 36 85 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE458C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4590  38 80 00 00 */	li r4, 0
/* 80CE4594  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4598  38 00 FF FF */	li r0, -1
/* 80CE459C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE45A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE45A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE45A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE45AC  38 80 00 00 */	li r4, 0
/* 80CE45B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD6@ha */
/* 80CE45B4  38 A5 8A D6 */	addi r5, r5, 0x8AD6 /* 0x00008AD6@l */
/* 80CE45B8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE45BC  38 E0 00 00 */	li r7, 0
/* 80CE45C0  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE45C4  39 20 00 00 */	li r9, 0
/* 80CE45C8  39 40 00 FF */	li r10, 0xff
/* 80CE45CC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE45D0  4B 36 84 C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE45D4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE45D8  38 80 00 00 */	li r4, 0
/* 80CE45DC  90 81 00 08 */	stw r4, 8(r1)
/* 80CE45E0  38 00 FF FF */	li r0, -1
/* 80CE45E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE45E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE45EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE45F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE45F4  38 80 00 00 */	li r4, 0
/* 80CE45F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD7@ha */
/* 80CE45FC  38 A5 8A D7 */	addi r5, r5, 0x8AD7 /* 0x00008AD7@l */
/* 80CE4600  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE4604  38 E0 00 00 */	li r7, 0
/* 80CE4608  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE460C  39 20 00 00 */	li r9, 0
/* 80CE4610  39 40 00 FF */	li r10, 0xff
/* 80CE4614  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4618  4B 36 84 78 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE461C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4620  38 80 00 00 */	li r4, 0
/* 80CE4624  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4628  38 00 FF FF */	li r0, -1
/* 80CE462C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4630  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4634  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4638  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE463C  38 80 00 00 */	li r4, 0
/* 80CE4640  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD8@ha */
/* 80CE4644  38 A5 8A D8 */	addi r5, r5, 0x8AD8 /* 0x00008AD8@l */
/* 80CE4648  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE464C  38 E0 00 00 */	li r7, 0
/* 80CE4650  39 01 00 28 */	addi r8, r1, 0x28
/* 80CE4654  39 20 00 00 */	li r9, 0
/* 80CE4658  39 40 00 FF */	li r10, 0xff
/* 80CE465C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4660  4B 36 84 30 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE4664  7F A3 EB 78 */	mr r3, r29
/* 80CE4668  4B FF FC 29 */	bl init_modeWait__12daSpinLift_cFv
lbl_80CE466C:
/* 80CE466C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CE4670  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CE4674  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE4678  4B 67 DB B0 */	b _restgpr_29
/* 80CE467C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CE4680  7C 08 03 A6 */	mtlr r0
/* 80CE4684  38 21 00 70 */	addi r1, r1, 0x70
/* 80CE4688  4E 80 00 20 */	blr 
