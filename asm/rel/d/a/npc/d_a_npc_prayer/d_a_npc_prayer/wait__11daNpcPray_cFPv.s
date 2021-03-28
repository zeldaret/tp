lbl_80AB43D8:
/* 80AB43D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AB43DC  7C 08 02 A6 */	mflr r0
/* 80AB43E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AB43E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80AB43E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80AB43EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB43F0  4B 8A DD EC */	b _savegpr_29
/* 80AB43F4  7C 7E 1B 78 */	mr r30, r3
/* 80AB43F8  3C 80 80 AB */	lis r4, cNullVec__6Z2Calc@ha
/* 80AB43FC  3B E4 59 84 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AB4400  3C 80 80 AB */	lis r4, m__17daNpcPray_Param_c@ha
/* 80AB4404  3B A4 58 08 */	addi r29, r4, m__17daNpcPray_Param_c@l
/* 80AB4408  A0 03 0E 0C */	lhz r0, 0xe0c(r3)
/* 80AB440C  2C 00 00 02 */	cmpwi r0, 2
/* 80AB4410  41 82 00 48 */	beq lbl_80AB4458
/* 80AB4414  40 80 02 3C */	bge lbl_80AB4650
/* 80AB4418  2C 00 00 00 */	cmpwi r0, 0
/* 80AB441C  41 82 00 0C */	beq lbl_80AB4428
/* 80AB4420  48 00 02 30 */	b lbl_80AB4650
/* 80AB4424  48 00 02 2C */	b lbl_80AB4650
lbl_80AB4428:
/* 80AB4428  38 80 00 00 */	li r4, 0
/* 80AB442C  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80AB4430  38 A0 00 00 */	li r5, 0
/* 80AB4434  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AB4438  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB443C  7D 89 03 A6 */	mtctr r12
/* 80AB4440  4E 80 04 21 */	bctrl 
/* 80AB4444  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 80AB4448  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AB444C  38 00 00 02 */	li r0, 2
/* 80AB4450  B0 1E 0E 0C */	sth r0, 0xe0c(r30)
/* 80AB4454  48 00 01 FC */	b lbl_80AB4650
lbl_80AB4458:
/* 80AB4458  4B FF FE 9D */	bl chkFindPlayer__11daNpcPray_cFv
/* 80AB445C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AB4460  4B 69 C2 8C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4464  28 03 00 00 */	cmplwi r3, 0
/* 80AB4468  41 82 00 14 */	beq lbl_80AB447C
/* 80AB446C  7F C3 F3 78 */	mr r3, r30
/* 80AB4470  38 80 00 02 */	li r4, 2
/* 80AB4474  4B FF FB 89 */	bl setLookMode__11daNpcPray_cFi
/* 80AB4478  48 00 00 5C */	b lbl_80AB44D4
lbl_80AB447C:
/* 80AB447C  7F C3 F3 78 */	mr r3, r30
/* 80AB4480  38 80 00 00 */	li r4, 0
/* 80AB4484  4B FF FB 79 */	bl setLookMode__11daNpcPray_cFi
/* 80AB4488  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80AB448C  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80AB4490  7C 04 00 00 */	cmpw r4, r0
/* 80AB4494  41 82 00 40 */	beq lbl_80AB44D4
/* 80AB4498  7F C3 F3 78 */	mr r3, r30
/* 80AB449C  38 A0 00 01 */	li r5, 1
/* 80AB44A0  4B FF FD 61 */	bl step__11daNpcPray_cFsi
/* 80AB44A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB44A8  41 82 00 2C */	beq lbl_80AB44D4
/* 80AB44AC  7F C3 F3 78 */	mr r3, r30
/* 80AB44B0  38 80 00 00 */	li r4, 0
/* 80AB44B4  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80AB44B8  38 A0 00 00 */	li r5, 0
/* 80AB44BC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AB44C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB44C4  7D 89 03 A6 */	mtctr r12
/* 80AB44C8  4E 80 04 21 */	bctrl 
/* 80AB44CC  38 00 00 00 */	li r0, 0
/* 80AB44D0  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80AB44D4:
/* 80AB44D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB44D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB44DC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AB44E0  28 00 00 00 */	cmplwi r0, 0
/* 80AB44E4  41 82 00 B0 */	beq lbl_80AB4594
/* 80AB44E8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80AB44EC  28 00 00 01 */	cmplwi r0, 1
/* 80AB44F0  40 82 00 60 */	bne lbl_80AB4550
/* 80AB44F4  38 00 00 00 */	li r0, 0
/* 80AB44F8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AB44FC  28 04 00 01 */	cmplwi r4, 1
/* 80AB4500  41 82 00 0C */	beq lbl_80AB450C
/* 80AB4504  28 04 00 02 */	cmplwi r4, 2
/* 80AB4508  40 82 00 08 */	bne lbl_80AB4510
lbl_80AB450C:
/* 80AB450C  38 00 00 01 */	li r0, 1
lbl_80AB4510:
/* 80AB4510  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AB4514  41 82 00 14 */	beq lbl_80AB4528
/* 80AB4518  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AB451C  4B 59 42 D4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AB4520  2C 03 00 00 */	cmpwi r3, 0
/* 80AB4524  41 82 01 2C */	beq lbl_80AB4650
lbl_80AB4528:
/* 80AB4528  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 80AB452C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AB4530  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AB4534  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB4538  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80AB453C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AB4540  7F C3 F3 78 */	mr r3, r30
/* 80AB4544  38 81 00 20 */	addi r4, r1, 0x20
/* 80AB4548  4B FF FA 0D */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB454C  48 00 01 04 */	b lbl_80AB4650
lbl_80AB4550:
/* 80AB4550  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AB4554  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80AB4558  38 A0 00 00 */	li r5, 0
/* 80AB455C  38 C0 00 00 */	li r6, 0
/* 80AB4560  4B 59 35 BC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AB4564  2C 03 FF FF */	cmpwi r3, -1
/* 80AB4568  41 82 00 E8 */	beq lbl_80AB4650
/* 80AB456C  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 80AB4570  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80AB4574  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AB4578  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AB457C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80AB4580  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB4584  7F C3 F3 78 */	mr r3, r30
/* 80AB4588  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB458C  4B FF F9 C9 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB4590  48 00 00 C0 */	b lbl_80AB4650
lbl_80AB4594:
/* 80AB4594  4B 6F 7F E8 */	b dKy_darkworld_check__Fv
/* 80AB4598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB459C  40 82 00 70 */	bne lbl_80AB460C
/* 80AB45A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB45A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB45A8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80AB45AC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80AB45B0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80AB45B4  41 82 00 58 */	beq lbl_80AB460C
/* 80AB45B8  C8 3D 01 28 */	lfd f1, 0x128(r29)
/* 80AB45BC  C8 5D 01 30 */	lfd f2, 0x130(r29)
/* 80AB45C0  4B 8B 81 C0 */	b pow
/* 80AB45C4  FF E0 08 18 */	frsp f31, f1
/* 80AB45C8  7F C3 F3 78 */	mr r3, r30
/* 80AB45CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AB45D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AB45D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AB45D8  4B 56 64 BC */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AB45DC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80AB45E0  40 80 00 2C */	bge lbl_80AB460C
/* 80AB45E4  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80AB45E8  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80AB45EC  90 61 00 08 */	stw r3, 8(r1)
/* 80AB45F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB45F4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80AB45F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB45FC  7F C3 F3 78 */	mr r3, r30
/* 80AB4600  38 81 00 08 */	addi r4, r1, 8
/* 80AB4604  4B FF F9 51 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB4608  48 00 00 48 */	b lbl_80AB4650
lbl_80AB460C:
/* 80AB460C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AB4610  28 00 00 00 */	cmplwi r0, 0
/* 80AB4614  41 82 00 0C */	beq lbl_80AB4620
/* 80AB4618  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 80AB461C  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80AB4620:
/* 80AB4620  7F C3 F3 78 */	mr r3, r30
/* 80AB4624  88 9E 0E 0E */	lbz r4, 0xe0e(r30)
/* 80AB4628  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AB462C  54 00 10 3A */	slwi r0, r0, 2
/* 80AB4630  38 BF 00 70 */	addi r5, r31, 0x70
/* 80AB4634  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AB4638  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AB463C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AB4640  38 E0 00 28 */	li r7, 0x28
/* 80AB4644  39 00 00 FF */	li r8, 0xff
/* 80AB4648  39 20 00 01 */	li r9, 1
/* 80AB464C  4B 69 F2 30 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AB4650:
/* 80AB4650  38 60 00 01 */	li r3, 1
/* 80AB4654  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80AB4658  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80AB465C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB4660  4B 8A DB C8 */	b _restgpr_29
/* 80AB4664  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AB4668  7C 08 03 A6 */	mtlr r0
/* 80AB466C  38 21 00 50 */	addi r1, r1, 0x50
/* 80AB4670  4E 80 00 20 */	blr 
