lbl_804F448C:
/* 804F448C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804F4490  7C 08 02 A6 */	mflr r0
/* 804F4494  90 01 00 54 */	stw r0, 0x54(r1)
/* 804F4498  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804F449C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804F44A0  7C 7E 1B 78 */	mr r30, r3
/* 804F44A4  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F44A8  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804F44AC  80 83 05 D0 */	lwz r4, 0x5d0(r3)
/* 804F44B0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804F44B4  FC 00 00 1E */	fctiwz f0, f0
/* 804F44B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804F44BC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804F44C0  38 00 00 0A */	li r0, 0xa
/* 804F44C4  B0 03 07 B4 */	sth r0, 0x7b4(r3)
/* 804F44C8  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F44CC  2C 00 00 01 */	cmpwi r0, 1
/* 804F44D0  41 82 00 5C */	beq lbl_804F452C
/* 804F44D4  40 80 02 48 */	bge lbl_804F471C
/* 804F44D8  2C 00 00 00 */	cmpwi r0, 0
/* 804F44DC  40 80 00 08 */	bge lbl_804F44E4
/* 804F44E0  48 00 02 3C */	b lbl_804F471C
lbl_804F44E4:
/* 804F44E4  38 80 00 19 */	li r4, 0x19
/* 804F44E8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804F44EC  38 A0 00 00 */	li r5, 0
/* 804F44F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F44F4  4B FF B3 15 */	bl anm_init__FP10e_fm_classifUcf
/* 804F44F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028B@ha */
/* 804F44FC  38 03 02 8B */	addi r0, r3, 0x028B /* 0x0007028B@l */
/* 804F4500  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F4504  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F4508  38 81 00 28 */	addi r4, r1, 0x28
/* 804F450C  38 A0 FF FF */	li r5, -1
/* 804F4510  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F4514  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F4518  7D 89 03 A6 */	mtctr r12
/* 804F451C  4E 80 04 21 */	bctrl 
/* 804F4520  38 00 00 01 */	li r0, 1
/* 804F4524  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4528  48 00 01 F4 */	b lbl_804F471C
lbl_804F452C:
/* 804F452C  38 00 00 01 */	li r0, 1
/* 804F4530  98 1E 18 2B */	stb r0, 0x182b(r30)
/* 804F4534  2C 04 00 70 */	cmpwi r4, 0x70
/* 804F4538  40 82 01 74 */	bne lbl_804F46AC
/* 804F453C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4540  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804F4544  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F4548  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F454C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F4550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4558  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F455C  38 80 00 05 */	li r4, 5
/* 804F4560  38 A0 00 0F */	li r5, 0xf
/* 804F4564  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804F4568  4B B7 B4 BD */	bl StartShock__12dVibration_cFii4cXyz
/* 804F456C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4570  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4574  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F4578  38 80 00 00 */	li r4, 0
/* 804F457C  90 81 00 08 */	stw r4, 8(r1)
/* 804F4580  38 00 FF FF */	li r0, -1
/* 804F4584  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F4588  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F458C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F4590  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F4594  38 80 00 00 */	li r4, 0
/* 804F4598  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008150@ha */
/* 804F459C  38 A5 81 50 */	addi r5, r5, 0x8150 /* 0x00008150@l */
/* 804F45A0  38 DE 04 A8 */	addi r6, r30, 0x4a8
/* 804F45A4  38 E0 00 00 */	li r7, 0
/* 804F45A8  39 00 00 00 */	li r8, 0
/* 804F45AC  39 20 00 00 */	li r9, 0
/* 804F45B0  39 40 00 FF */	li r10, 0xff
/* 804F45B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F45B8  4B B5 84 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F45BC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080163@ha */
/* 804F45C0  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00080163@l */
/* 804F45C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F45C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F45CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F45D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F45D4  38 81 00 20 */	addi r4, r1, 0x20
/* 804F45D8  38 A0 00 00 */	li r5, 0
/* 804F45DC  38 C0 00 00 */	li r6, 0
/* 804F45E0  38 E0 00 00 */	li r7, 0
/* 804F45E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F45E8  FC 40 08 90 */	fmr f2, f1
/* 804F45EC  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 804F45F0  FC 80 18 90 */	fmr f4, f3
/* 804F45F4  39 00 00 00 */	li r8, 0
/* 804F45F8  4B DB 73 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F45FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028A@ha */
/* 804F4600  38 03 02 8A */	addi r0, r3, 0x028A /* 0x0007028A@l */
/* 804F4604  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F4608  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F460C  38 81 00 24 */	addi r4, r1, 0x24
/* 804F4610  38 A0 00 00 */	li r5, 0
/* 804F4614  38 C0 FF FF */	li r6, -1
/* 804F4618  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F461C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F4620  7D 89 03 A6 */	mtctr r12
/* 804F4624  4E 80 04 21 */	bctrl 
/* 804F4628  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804F462C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F4630  D0 03 B0 64 */	stfs f0, -0x4f9c(r3)
/* 804F4634  38 7E 05 38 */	addi r3, r30, 0x538
/* 804F4638  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804F463C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804F4640  38 80 FF FF */	li r4, -1
/* 804F4644  4B FF B0 71 */	bl hasira_hahen_hit__FP4cXyzffSc
/* 804F4648  88 1E 07 92 */	lbz r0, 0x792(r30)
/* 804F464C  7C 00 07 75 */	extsb. r0, r0
/* 804F4650  41 82 00 28 */	beq lbl_804F4678
/* 804F4654  38 00 00 00 */	li r0, 0
/* 804F4658  98 1E 07 92 */	stb r0, 0x792(r30)
/* 804F465C  38 00 00 03 */	li r0, 3
/* 804F4660  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F4664  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F4668  80 7E 06 04 */	lwz r3, 0x604(r30)
/* 804F466C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4670  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 804F4674  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804F4678:
/* 804F4678  88 1E 08 02 */	lbz r0, 0x802(r30)
/* 804F467C  7C 00 07 74 */	extsb r0, r0
/* 804F4680  2C 00 00 03 */	cmpwi r0, 3
/* 804F4684  41 80 00 10 */	blt lbl_804F4694
/* 804F4688  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804F468C  60 00 00 01 */	ori r0, r0, 1
/* 804F4690  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_804F4694:
/* 804F4694  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F4698  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F469C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F46A0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F46A4  38 80 00 01 */	li r4, 1
/* 804F46A8  4B DB B8 E5 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_804F46AC:
/* 804F46AC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F46B0  38 80 00 01 */	li r4, 1
/* 804F46B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F46B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F46BC  40 82 00 18 */	bne lbl_804F46D4
/* 804F46C0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F46C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F46C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F46CC  41 82 00 08 */	beq lbl_804F46D4
/* 804F46D0  38 80 00 00 */	li r4, 0
lbl_804F46D4:
/* 804F46D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F46D8  41 82 00 44 */	beq lbl_804F471C
/* 804F46DC  7F C3 F3 78 */	mr r3, r30
/* 804F46E0  38 80 00 1C */	li r4, 0x1c
/* 804F46E4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F46E8  38 A0 00 02 */	li r5, 2
/* 804F46EC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F46F0  4B FF B1 19 */	bl anm_init__FP10e_fm_classifUcf
/* 804F46F4  38 00 00 09 */	li r0, 9
/* 804F46F8  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F46FC  38 00 00 02 */	li r0, 2
/* 804F4700  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4704  38 00 00 21 */	li r0, 0x21
/* 804F4708  B0 1E 07 AC */	sth r0, 0x7ac(r30)
/* 804F470C  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F4710  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F4714  A8 03 00 9C */	lha r0, 0x9c(r3)
/* 804F4718  B0 1E 07 AE */	sth r0, 0x7ae(r30)
lbl_804F471C:
/* 804F471C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F4720  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804F4724  38 60 00 01 */	li r3, 1
/* 804F4728  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804F472C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804F4730  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804F4734  7C 08 03 A6 */	mtlr r0
/* 804F4738  38 21 00 50 */	addi r1, r1, 0x50
/* 804F473C  4E 80 00 20 */	blr 
