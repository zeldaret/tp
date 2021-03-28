lbl_804B41A0:
/* 804B41A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B41A4  7C 08 02 A6 */	mflr r0
/* 804B41A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B41AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804B41B0  4B EA E0 20 */	b _savegpr_26
/* 804B41B4  7C 7C 1B 78 */	mr r28, r3
/* 804B41B8  3C 60 80 4C */	lis r3, lit_1109@ha
/* 804B41BC  3B A3 BB 90 */	addi r29, r3, lit_1109@l
/* 804B41C0  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B41C4  3B C3 B5 34 */	addi r30, r3, lit_3879@l
/* 804B41C8  80 1C 10 AC */	lwz r0, 0x10ac(r28)
/* 804B41CC  90 01 00 08 */	stw r0, 8(r1)
/* 804B41D0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B41D4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B41D8  38 81 00 08 */	addi r4, r1, 8
/* 804B41DC  4B B6 56 1C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B41E0  7C 7F 1B 78 */	mr r31, r3
/* 804B41E4  8B 63 06 35 */	lbz r27, 0x635(r3)
/* 804B41E8  88 1D 00 44 */	lbz r0, 0x44(r29)
/* 804B41EC  28 00 00 01 */	cmplwi r0, 1
/* 804B41F0  40 82 00 20 */	bne lbl_804B4210
/* 804B41F4  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 804B41F8  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 804B41FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B4200  FC 00 00 1E */	fctiwz f0, f0
/* 804B4204  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804B4208  83 41 00 14 */	lwz r26, 0x14(r1)
/* 804B420C  48 00 00 1C */	b lbl_804B4228
lbl_804B4210:
/* 804B4210  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 804B4214  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 804B4218  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B421C  FC 00 00 1E */	fctiwz f0, f0
/* 804B4220  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804B4224  83 41 00 1C */	lwz r26, 0x1c(r1)
lbl_804B4228:
/* 804B4228  28 00 00 02 */	cmplwi r0, 2
/* 804B422C  40 82 00 98 */	bne lbl_804B42C4
/* 804B4230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4238  38 03 01 6C */	addi r0, r3, 0x16c
/* 804B423C  7C 60 DA 14 */	add r3, r0, r27
/* 804B4240  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 804B4244  7F 40 07 34 */	extsh r0, r26
/* 804B4248  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 804B424C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B4250  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B4254  3C 80 43 30 */	lis r4, 0x4330
/* 804B4258  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B425C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804B4260  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B4264  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 804B4268  EC 00 10 24 */	fdivs f0, f0, f2
/* 804B426C  FC 00 00 1E */	fctiwz f0, f0
/* 804B4270  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804B4274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B4278  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804B427C  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 804B4280  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804B4284  90 81 00 20 */	stw r4, 0x20(r1)
/* 804B4288  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804B428C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B4290  EC 00 10 24 */	fdivs f0, f0, f2
/* 804B4294  FC 00 00 1E */	fctiwz f0, f0
/* 804B4298  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804B429C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B42A0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B42A4  7C 03 00 40 */	cmplw r3, r0
/* 804B42A8  40 81 00 10 */	ble lbl_804B42B8
/* 804B42AC  38 00 00 01 */	li r0, 1
/* 804B42B0  98 1C 14 C0 */	stb r0, 0x14c0(r28)
/* 804B42B4  48 00 00 44 */	b lbl_804B42F8
lbl_804B42B8:
/* 804B42B8  38 00 00 00 */	li r0, 0
/* 804B42BC  98 1C 14 C0 */	stb r0, 0x14c0(r28)
/* 804B42C0  48 00 00 38 */	b lbl_804B42F8
lbl_804B42C4:
/* 804B42C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B42C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B42CC  38 03 01 6C */	addi r0, r3, 0x16c
/* 804B42D0  7C 60 DA 14 */	add r3, r0, r27
/* 804B42D4  88 63 00 20 */	lbz r3, 0x20(r3)
/* 804B42D8  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804B42DC  7C 00 18 40 */	cmplw r0, r3
/* 804B42E0  40 81 00 10 */	ble lbl_804B42F0
/* 804B42E4  38 00 00 01 */	li r0, 1
/* 804B42E8  98 1C 14 C0 */	stb r0, 0x14c0(r28)
/* 804B42EC  48 00 00 0C */	b lbl_804B42F8
lbl_804B42F0:
/* 804B42F0  38 00 00 00 */	li r0, 0
/* 804B42F4  98 1C 14 C0 */	stb r0, 0x14c0(r28)
lbl_804B42F8:
/* 804B42F8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B42FC  D0 1C 14 C8 */	stfs f0, 0x14c8(r28)
/* 804B4300  D0 1C 14 CC */	stfs f0, 0x14cc(r28)
/* 804B4304  A8 1C 13 B4 */	lha r0, 0x13b4(r28)
/* 804B4308  2C 00 00 14 */	cmpwi r0, 0x14
/* 804B430C  40 82 00 3C */	bne lbl_804B4348
/* 804B4310  A8 1C 13 B6 */	lha r0, 0x13b6(r28)
/* 804B4314  2C 00 00 1A */	cmpwi r0, 0x1a
/* 804B4318  40 80 00 30 */	bge lbl_804B4348
/* 804B431C  38 7C 15 08 */	addi r3, r28, 0x1508
/* 804B4320  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 804B4324  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804B4328  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 804B432C  4B DB B7 10 */	b cLib_addCalc2__FPffff
/* 804B4330  38 7C 14 FC */	addi r3, r28, 0x14fc
/* 804B4334  38 80 FD 44 */	li r4, -700
/* 804B4338  38 A0 00 02 */	li r5, 2
/* 804B433C  38 C0 00 C8 */	li r6, 0xc8
/* 804B4340  4B DB C2 C8 */	b cLib_addCalcAngleS2__FPssss
/* 804B4344  48 00 00 2C */	b lbl_804B4370
lbl_804B4348:
/* 804B4348  38 7C 15 08 */	addi r3, r28, 0x1508
/* 804B434C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 804B4350  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 804B4354  C0 7E 02 44 */	lfs f3, 0x244(r30)
/* 804B4358  4B DB B6 E4 */	b cLib_addCalc2__FPffff
/* 804B435C  38 7C 14 FC */	addi r3, r28, 0x14fc
/* 804B4360  38 80 00 00 */	li r4, 0
/* 804B4364  38 A0 00 01 */	li r5, 1
/* 804B4368  38 C0 00 64 */	li r6, 0x64
/* 804B436C  4B DB C2 9C */	b cLib_addCalcAngleS2__FPssss
lbl_804B4370:
/* 804B4370  38 7C 15 0C */	addi r3, r28, 0x150c
/* 804B4374  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 804B4378  FC 40 08 90 */	fmr f2, f1
/* 804B437C  4B DB B7 04 */	b cLib_addCalc0__FPfff
/* 804B4380  7F 83 E3 78 */	mr r3, r28
/* 804B4384  4B FF EE 55 */	bl uki_pl_arm_calc__FP13dmg_rod_class
/* 804B4388  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 804B438C  D0 1C 06 F8 */	stfs f0, 0x6f8(r28)
/* 804B4390  38 7D 00 54 */	addi r3, r29, 0x54
/* 804B4394  88 63 00 24 */	lbz r3, 0x24(r3)
/* 804B4398  28 03 00 00 */	cmplwi r3, 0
/* 804B439C  41 82 00 0C */	beq lbl_804B43A8
/* 804B43A0  38 03 FF FF */	addi r0, r3, -1
/* 804B43A4  54 1B 06 3E */	clrlwi r27, r0, 0x18
lbl_804B43A8:
/* 804B43A8  88 7F 0C 3D */	lbz r3, 0xc3d(r31)
/* 804B43AC  28 03 00 01 */	cmplwi r3, 1
/* 804B43B0  41 82 00 1C */	beq lbl_804B43CC
/* 804B43B4  28 03 00 07 */	cmplwi r3, 7
/* 804B43B8  41 82 00 14 */	beq lbl_804B43CC
/* 804B43BC  28 03 00 08 */	cmplwi r3, 8
/* 804B43C0  41 82 00 0C */	beq lbl_804B43CC
/* 804B43C4  28 03 00 09 */	cmplwi r3, 9
/* 804B43C8  40 82 00 70 */	bne lbl_804B4438
lbl_804B43CC:
/* 804B43CC  A8 1C 13 B6 */	lha r0, 0x13b6(r28)
/* 804B43D0  2C 00 00 50 */	cmpwi r0, 0x50
/* 804B43D4  40 82 01 5C */	bne lbl_804B4530
/* 804B43D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B43DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B43E0  80 63 00 00 */	lwz r3, 0(r3)
/* 804B43E4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B43E8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000046@ha */
/* 804B43EC  38 84 00 46 */	addi r4, r4, 0x0046 /* 0x01000046@l */
/* 804B43F0  4B DF B0 AC */	b subBgmStart__8Z2SeqMgrFUl
/* 804B43F4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B43F8  4B DB 35 5C */	b cM_rndF__Ff
/* 804B43FC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B4400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B4404  40 80 00 1C */	bge lbl_804B4420
/* 804B4408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B440C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4410  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B4414  38 00 00 03 */	li r0, 3
/* 804B4418  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B441C  48 00 01 14 */	b lbl_804B4530
lbl_804B4420:
/* 804B4420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4428  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B442C  38 00 00 04 */	li r0, 4
/* 804B4430  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B4434  48 00 00 FC */	b lbl_804B4530
lbl_804B4438:
/* 804B4438  A8 1C 13 B6 */	lha r0, 0x13b6(r28)
/* 804B443C  2C 00 00 28 */	cmpwi r0, 0x28
/* 804B4440  40 82 00 F0 */	bne lbl_804B4530
/* 804B4444  57 64 06 3E */	clrlwi r4, r27, 0x18
/* 804B4448  28 04 00 04 */	cmplwi r4, 4
/* 804B444C  41 82 00 24 */	beq lbl_804B4470
/* 804B4450  28 03 00 02 */	cmplwi r3, 2
/* 804B4454  41 82 00 1C */	beq lbl_804B4470
/* 804B4458  28 03 00 05 */	cmplwi r3, 5
/* 804B445C  41 82 00 14 */	beq lbl_804B4470
/* 804B4460  28 03 00 06 */	cmplwi r3, 6
/* 804B4464  41 82 00 0C */	beq lbl_804B4470
/* 804B4468  28 03 00 03 */	cmplwi r3, 3
/* 804B446C  40 82 00 38 */	bne lbl_804B44A4
lbl_804B4470:
/* 804B4470  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B4474  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B4478  80 63 00 00 */	lwz r3, 0(r3)
/* 804B447C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B4480  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000044@ha */
/* 804B4484  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x01000044@l */
/* 804B4488  4B DF B0 14 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B448C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4494  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B4498  38 00 00 02 */	li r0, 2
/* 804B449C  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B44A0  48 00 00 90 */	b lbl_804B4530
lbl_804B44A4:
/* 804B44A4  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B44A8  28 00 00 00 */	cmplwi r0, 0
/* 804B44AC  40 82 00 20 */	bne lbl_804B44CC
/* 804B44B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B44B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B44B8  38 03 01 6C */	addi r0, r3, 0x16c
/* 804B44BC  7C 60 22 14 */	add r3, r0, r4
/* 804B44C0  88 03 00 20 */	lbz r0, 0x20(r3)
/* 804B44C4  28 00 00 00 */	cmplwi r0, 0
/* 804B44C8  40 82 00 38 */	bne lbl_804B4500
lbl_804B44CC:
/* 804B44CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B44D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B44D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804B44D8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B44DC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000044@ha */
/* 804B44E0  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x01000044@l */
/* 804B44E4  4B DF AF B8 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B44E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B44EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B44F0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B44F4  38 00 00 02 */	li r0, 2
/* 804B44F8  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B44FC  48 00 00 34 */	b lbl_804B4530
lbl_804B4500:
/* 804B4500  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B4504  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B4508  80 63 00 00 */	lwz r3, 0(r3)
/* 804B450C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B4510  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000045@ha */
/* 804B4514  38 84 00 45 */	addi r4, r4, 0x0045 /* 0x01000045@l */
/* 804B4518  4B DF AF 84 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B451C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4524  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B4528  38 00 00 01 */	li r0, 1
/* 804B452C  98 03 2F C8 */	stb r0, 0x2fc8(r3)
lbl_804B4530:
/* 804B4530  A8 1C 13 B6 */	lha r0, 0x13b6(r28)
/* 804B4534  2C 00 00 32 */	cmpwi r0, 0x32
/* 804B4538  41 80 05 44 */	blt lbl_804B4A7C
/* 804B453C  88 1C 14 6D */	lbz r0, 0x146d(r28)
/* 804B4540  7C 00 07 75 */	extsb. r0, r0
/* 804B4544  40 82 04 60 */	bne lbl_804B49A4
/* 804B4548  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 804B454C  28 00 00 01 */	cmplwi r0, 1
/* 804B4550  40 82 00 6C */	bne lbl_804B45BC
/* 804B4554  3C 60 80 45 */	lis r3, struct_80450C9C+0x2@ha
/* 804B4558  88 03 0C 9E */	lbz r0, struct_80450C9C+0x2@l(r3)
/* 804B455C  28 00 00 00 */	cmplwi r0, 0
/* 804B4560  41 82 00 20 */	beq lbl_804B4580
/* 804B4564  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4568  7F 84 E3 78 */	mr r4, r28
/* 804B456C  38 A0 13 95 */	li r5, 0x1395
/* 804B4570  38 C0 00 00 */	li r6, 0
/* 804B4574  38 E0 00 00 */	li r7, 0
/* 804B4578  4B D9 5A 18 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B457C  48 00 00 28 */	b lbl_804B45A4
lbl_804B4580:
/* 804B4580  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4584  7F 84 E3 78 */	mr r4, r28
/* 804B4588  38 A0 13 94 */	li r5, 0x1394
/* 804B458C  38 C0 00 00 */	li r6, 0
/* 804B4590  38 E0 00 00 */	li r7, 0
/* 804B4594  4B D9 59 FC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4598  38 00 00 01 */	li r0, 1
/* 804B459C  3C 60 80 45 */	lis r3, struct_80450C9C+0x2@ha
/* 804B45A0  98 03 0C 9E */	stb r0, struct_80450C9C+0x2@l(r3)
lbl_804B45A4:
/* 804B45A4  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 804B45A8  28 03 00 00 */	cmplwi r3, 0
/* 804B45AC  41 82 03 F0 */	beq lbl_804B499C
/* 804B45B0  38 00 00 1E */	li r0, 0x1e
/* 804B45B4  B0 03 06 A4 */	sth r0, 0x6a4(r3)
/* 804B45B8  48 00 03 E4 */	b lbl_804B499C
lbl_804B45BC:
/* 804B45BC  28 00 00 02 */	cmplwi r0, 2
/* 804B45C0  40 82 00 3C */	bne lbl_804B45FC
/* 804B45C4  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B45C8  7F 84 E3 78 */	mr r4, r28
/* 804B45CC  38 A0 13 97 */	li r5, 0x1397
/* 804B45D0  38 C0 00 00 */	li r6, 0
/* 804B45D4  38 E0 00 00 */	li r7, 0
/* 804B45D8  4B D9 59 B8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B45DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B45E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B45E4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B45E8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B45EC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B45F0  A0 84 03 A4 */	lhz r4, 0x3a4(r4)
/* 804B45F4  4B B8 03 98 */	b onEventBit__11dSv_event_cFUs
/* 804B45F8  48 00 03 A4 */	b lbl_804B499C
lbl_804B45FC:
/* 804B45FC  28 00 00 03 */	cmplwi r0, 3
/* 804B4600  40 82 00 20 */	bne lbl_804B4620
/* 804B4604  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4608  7F 84 E3 78 */	mr r4, r28
/* 804B460C  38 A0 13 96 */	li r5, 0x1396
/* 804B4610  38 C0 00 00 */	li r6, 0
/* 804B4614  38 E0 00 00 */	li r7, 0
/* 804B4618  4B D9 59 78 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B461C  48 00 03 80 */	b lbl_804B499C
lbl_804B4620:
/* 804B4620  28 00 00 04 */	cmplwi r0, 4
/* 804B4624  40 82 00 20 */	bne lbl_804B4644
/* 804B4628  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B462C  7F 84 E3 78 */	mr r4, r28
/* 804B4630  38 A0 13 98 */	li r5, 0x1398
/* 804B4634  38 C0 00 00 */	li r6, 0
/* 804B4638  38 E0 00 00 */	li r7, 0
/* 804B463C  4B D9 59 54 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4640  48 00 03 5C */	b lbl_804B499C
lbl_804B4644:
/* 804B4644  28 00 00 05 */	cmplwi r0, 5
/* 804B4648  40 82 00 4C */	bne lbl_804B4694
/* 804B464C  7F 83 E3 78 */	mr r3, r28
/* 804B4650  4B FF FA 69 */	bl bb_get__FP13dmg_rod_class
/* 804B4654  2C 03 00 00 */	cmpwi r3, 0
/* 804B4658  41 82 00 20 */	beq lbl_804B4678
/* 804B465C  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4660  7F 84 E3 78 */	mr r4, r28
/* 804B4664  38 A0 13 99 */	li r5, 0x1399
/* 804B4668  38 C0 00 00 */	li r6, 0
/* 804B466C  38 E0 00 00 */	li r7, 0
/* 804B4670  4B D9 59 20 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4674  48 00 03 28 */	b lbl_804B499C
lbl_804B4678:
/* 804B4678  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B467C  7F 84 E3 78 */	mr r4, r28
/* 804B4680  38 A0 13 9E */	li r5, 0x139e
/* 804B4684  38 C0 00 00 */	li r6, 0
/* 804B4688  38 E0 00 00 */	li r7, 0
/* 804B468C  4B D9 59 04 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4690  48 00 03 0C */	b lbl_804B499C
lbl_804B4694:
/* 804B4694  28 00 00 06 */	cmplwi r0, 6
/* 804B4698  40 82 00 4C */	bne lbl_804B46E4
/* 804B469C  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B46A0  7F 84 E3 78 */	mr r4, r28
/* 804B46A4  38 A0 13 9A */	li r5, 0x139a
/* 804B46A8  38 C0 00 00 */	li r6, 0
/* 804B46AC  38 E0 00 00 */	li r7, 0
/* 804B46B0  4B D9 58 E0 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B46B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B46B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B46BC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B46C0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B46C4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B46C8  A0 84 03 A8 */	lhz r4, 0x3a8(r4)
/* 804B46CC  4B B8 02 C0 */	b onEventBit__11dSv_event_cFUs
/* 804B46D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B46D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B46D8  38 63 00 9C */	addi r3, r3, 0x9c
/* 804B46DC  4B B7 ED B8 */	b setEmptyBottle__17dSv_player_item_cFv
/* 804B46E0  48 00 02 BC */	b lbl_804B499C
lbl_804B46E4:
/* 804B46E4  28 00 00 07 */	cmplwi r0, 7
/* 804B46E8  40 82 00 20 */	bne lbl_804B4708
/* 804B46EC  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B46F0  7F 84 E3 78 */	mr r4, r28
/* 804B46F4  38 A0 13 9C */	li r5, 0x139c
/* 804B46F8  38 C0 00 00 */	li r6, 0
/* 804B46FC  38 E0 00 00 */	li r7, 0
/* 804B4700  4B D9 58 90 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4704  48 00 02 98 */	b lbl_804B499C
lbl_804B4708:
/* 804B4708  28 00 00 08 */	cmplwi r0, 8
/* 804B470C  40 82 00 20 */	bne lbl_804B472C
/* 804B4710  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4714  7F 84 E3 78 */	mr r4, r28
/* 804B4718  38 A0 13 9D */	li r5, 0x139d
/* 804B471C  38 C0 00 00 */	li r6, 0
/* 804B4720  38 E0 00 00 */	li r7, 0
/* 804B4724  4B D9 58 6C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4728  48 00 02 74 */	b lbl_804B499C
lbl_804B472C:
/* 804B472C  28 00 00 09 */	cmplwi r0, 9
/* 804B4730  40 82 00 20 */	bne lbl_804B4750
/* 804B4734  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4738  7F 84 E3 78 */	mr r4, r28
/* 804B473C  38 A0 13 9B */	li r5, 0x139b
/* 804B4740  38 C0 00 00 */	li r6, 0
/* 804B4744  38 E0 00 00 */	li r7, 0
/* 804B4748  4B D9 58 48 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B474C  48 00 02 50 */	b lbl_804B499C
lbl_804B4750:
/* 804B4750  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 804B4754  2C 00 00 03 */	cmpwi r0, 3
/* 804B4758  41 82 01 40 */	beq lbl_804B4898
/* 804B475C  40 80 00 1C */	bge lbl_804B4778
/* 804B4760  2C 00 00 01 */	cmpwi r0, 1
/* 804B4764  41 82 00 AC */	beq lbl_804B4810
/* 804B4768  40 80 00 EC */	bge lbl_804B4854
/* 804B476C  2C 00 00 00 */	cmpwi r0, 0
/* 804B4770  40 80 00 5C */	bge lbl_804B47CC
/* 804B4774  48 00 01 C4 */	b lbl_804B4938
lbl_804B4778:
/* 804B4778  2C 00 00 05 */	cmpwi r0, 5
/* 804B477C  41 82 00 0C */	beq lbl_804B4788
/* 804B4780  40 80 01 B8 */	bge lbl_804B4938
/* 804B4784  48 00 01 58 */	b lbl_804B48DC
lbl_804B4788:
/* 804B4788  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B478C  28 00 00 00 */	cmplwi r0, 0
/* 804B4790  40 82 00 20 */	bne lbl_804B47B0
/* 804B4794  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4798  7F 84 E3 78 */	mr r4, r28
/* 804B479C  38 A0 13 8A */	li r5, 0x138a
/* 804B47A0  38 C0 00 00 */	li r6, 0
/* 804B47A4  38 E0 00 00 */	li r7, 0
/* 804B47A8  4B D9 57 E8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B47AC  48 00 01 8C */	b lbl_804B4938
lbl_804B47B0:
/* 804B47B0  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B47B4  7F 84 E3 78 */	mr r4, r28
/* 804B47B8  38 A0 13 8B */	li r5, 0x138b
/* 804B47BC  38 C0 00 00 */	li r6, 0
/* 804B47C0  38 E0 00 00 */	li r7, 0
/* 804B47C4  4B D9 57 CC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B47C8  48 00 01 70 */	b lbl_804B4938
lbl_804B47CC:
/* 804B47CC  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B47D0  28 00 00 00 */	cmplwi r0, 0
/* 804B47D4  40 82 00 20 */	bne lbl_804B47F4
/* 804B47D8  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B47DC  7F 84 E3 78 */	mr r4, r28
/* 804B47E0  38 A0 13 8C */	li r5, 0x138c
/* 804B47E4  38 C0 00 00 */	li r6, 0
/* 804B47E8  38 E0 00 00 */	li r7, 0
/* 804B47EC  4B D9 57 A4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B47F0  48 00 01 48 */	b lbl_804B4938
lbl_804B47F4:
/* 804B47F4  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B47F8  7F 84 E3 78 */	mr r4, r28
/* 804B47FC  38 A0 13 8D */	li r5, 0x138d
/* 804B4800  38 C0 00 00 */	li r6, 0
/* 804B4804  38 E0 00 00 */	li r7, 0
/* 804B4808  4B D9 57 88 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B480C  48 00 01 2C */	b lbl_804B4938
lbl_804B4810:
/* 804B4810  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B4814  28 00 00 00 */	cmplwi r0, 0
/* 804B4818  40 82 00 20 */	bne lbl_804B4838
/* 804B481C  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4820  7F 84 E3 78 */	mr r4, r28
/* 804B4824  38 A0 13 90 */	li r5, 0x1390
/* 804B4828  38 C0 00 00 */	li r6, 0
/* 804B482C  38 E0 00 00 */	li r7, 0
/* 804B4830  4B D9 57 60 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4834  48 00 01 04 */	b lbl_804B4938
lbl_804B4838:
/* 804B4838  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B483C  7F 84 E3 78 */	mr r4, r28
/* 804B4840  38 A0 13 91 */	li r5, 0x1391
/* 804B4844  38 C0 00 00 */	li r6, 0
/* 804B4848  38 E0 00 00 */	li r7, 0
/* 804B484C  4B D9 57 44 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4850  48 00 00 E8 */	b lbl_804B4938
lbl_804B4854:
/* 804B4854  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B4858  28 00 00 00 */	cmplwi r0, 0
/* 804B485C  40 82 00 20 */	bne lbl_804B487C
/* 804B4860  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4864  7F 84 E3 78 */	mr r4, r28
/* 804B4868  38 A0 13 8E */	li r5, 0x138e
/* 804B486C  38 C0 00 00 */	li r6, 0
/* 804B4870  38 E0 00 00 */	li r7, 0
/* 804B4874  4B D9 57 1C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4878  48 00 00 C0 */	b lbl_804B4938
lbl_804B487C:
/* 804B487C  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4880  7F 84 E3 78 */	mr r4, r28
/* 804B4884  38 A0 13 8F */	li r5, 0x138f
/* 804B4888  38 C0 00 00 */	li r6, 0
/* 804B488C  38 E0 00 00 */	li r7, 0
/* 804B4890  4B D9 57 00 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4894  48 00 00 A4 */	b lbl_804B4938
lbl_804B4898:
/* 804B4898  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B489C  28 00 00 00 */	cmplwi r0, 0
/* 804B48A0  40 82 00 20 */	bne lbl_804B48C0
/* 804B48A4  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B48A8  7F 84 E3 78 */	mr r4, r28
/* 804B48AC  38 A0 13 92 */	li r5, 0x1392
/* 804B48B0  38 C0 00 00 */	li r6, 0
/* 804B48B4  38 E0 00 00 */	li r7, 0
/* 804B48B8  4B D9 56 D8 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B48BC  48 00 00 7C */	b lbl_804B4938
lbl_804B48C0:
/* 804B48C0  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B48C4  7F 84 E3 78 */	mr r4, r28
/* 804B48C8  38 A0 13 93 */	li r5, 0x1393
/* 804B48CC  38 C0 00 00 */	li r6, 0
/* 804B48D0  38 E0 00 00 */	li r7, 0
/* 804B48D4  4B D9 56 BC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B48D8  48 00 00 60 */	b lbl_804B4938
lbl_804B48DC:
/* 804B48DC  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B48E0  28 00 00 00 */	cmplwi r0, 0
/* 804B48E4  40 82 00 20 */	bne lbl_804B4904
/* 804B48E8  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B48EC  7F 84 E3 78 */	mr r4, r28
/* 804B48F0  38 A0 13 89 */	li r5, 0x1389
/* 804B48F4  38 C0 00 00 */	li r6, 0
/* 804B48F8  38 E0 00 00 */	li r7, 0
/* 804B48FC  4B D9 56 94 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B4900  48 00 00 1C */	b lbl_804B491C
lbl_804B4904:
/* 804B4904  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B4908  7F 84 E3 78 */	mr r4, r28
/* 804B490C  38 A0 13 9F */	li r5, 0x139f
/* 804B4910  38 C0 00 00 */	li r6, 0
/* 804B4914  38 E0 00 00 */	li r7, 0
/* 804B4918  4B D9 56 78 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B491C:
/* 804B491C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4924  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B4928  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B492C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B4930  A0 84 04 D8 */	lhz r4, 0x4d8(r4)
/* 804B4934  4B B8 00 58 */	b onEventBit__11dSv_event_cFUs
lbl_804B4938:
/* 804B4938  88 1D 00 44 */	lbz r0, 0x44(r29)
/* 804B493C  28 00 00 02 */	cmplwi r0, 2
/* 804B4940  40 82 00 4C */	bne lbl_804B498C
/* 804B4944  7F 40 07 34 */	extsh r0, r26
/* 804B4948  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 804B494C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B4950  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B4954  3C 00 43 30 */	lis r0, 0x4330
/* 804B4958  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B495C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804B4960  EC 20 08 28 */	fsubs f1, f0, f1
/* 804B4964  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 804B4968  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B496C  FC 00 00 1E */	fctiwz f0, f0
/* 804B4970  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804B4974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B4978  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B497C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4984  90 03 5E 0C */	stw r0, 0x5e0c(r3)
/* 804B4988  48 00 00 14 */	b lbl_804B499C
lbl_804B498C:
/* 804B498C  7F 40 07 34 */	extsh r0, r26
/* 804B4990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4998  90 03 5E 0C */	stw r0, 0x5e0c(r3)
lbl_804B499C:
/* 804B499C  38 00 00 01 */	li r0, 1
/* 804B49A0  98 1C 14 6D */	stb r0, 0x146d(r28)
lbl_804B49A4:
/* 804B49A4  88 1C 14 6D */	lbz r0, 0x146d(r28)
/* 804B49A8  2C 00 00 01 */	cmpwi r0, 1
/* 804B49AC  40 82 00 D0 */	bne lbl_804B4A7C
/* 804B49B0  38 7C 14 74 */	addi r3, r28, 0x1474
/* 804B49B4  7F 84 E3 78 */	mr r4, r28
/* 804B49B8  38 A0 00 00 */	li r5, 0
/* 804B49BC  38 C0 00 00 */	li r6, 0
/* 804B49C0  4B D9 59 18 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B49C4  2C 03 00 00 */	cmpwi r3, 0
/* 804B49C8  41 82 00 B4 */	beq lbl_804B4A7C
/* 804B49CC  38 00 00 02 */	li r0, 2
/* 804B49D0  98 1C 14 6D */	stb r0, 0x146d(r28)
/* 804B49D4  38 00 00 15 */	li r0, 0x15
/* 804B49D8  B0 1C 13 B4 */	sth r0, 0x13b4(r28)
/* 804B49DC  38 00 00 00 */	li r0, 0
/* 804B49E0  B0 1C 13 B6 */	sth r0, 0x13b6(r28)
/* 804B49E4  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 804B49E8  28 00 00 00 */	cmplwi r0, 0
/* 804B49EC  41 82 00 40 */	beq lbl_804B4A2C
/* 804B49F0  28 00 00 03 */	cmplwi r0, 3
/* 804B49F4  40 82 00 68 */	bne lbl_804B4A5C
/* 804B49F8  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 804B49FC  4B DB 2F 58 */	b cM_rndF__Ff
/* 804B4A00  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 804B4A04  EC 00 08 2A */	fadds f0, f0, f1
/* 804B4A08  FC 00 00 1E */	fctiwz f0, f0
/* 804B4A0C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804B4A10  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804B4A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4A1C  80 03 5D C4 */	lwz r0, 0x5dc4(r3)
/* 804B4A20  7C 00 22 14 */	add r0, r0, r4
/* 804B4A24  90 03 5D C4 */	stw r0, 0x5dc4(r3)
/* 804B4A28  48 00 00 34 */	b lbl_804B4A5C
lbl_804B4A2C:
/* 804B4A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B4A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B4A34  3B C3 01 6C */	addi r30, r3, 0x16c
/* 804B4A38  7F C3 F3 78 */	mr r3, r30
/* 804B4A3C  7F 64 DB 78 */	mr r4, r27
/* 804B4A40  4B B7 FA BC */	b addFishCount__18dSv_fishing_info_cFUc
/* 804B4A44  88 1C 14 C0 */	lbz r0, 0x14c0(r28)
/* 804B4A48  28 00 00 00 */	cmplwi r0, 0
/* 804B4A4C  41 82 00 10 */	beq lbl_804B4A5C
/* 804B4A50  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 804B4A54  7C 7E 02 14 */	add r3, r30, r0
/* 804B4A58  9B 43 00 20 */	stb r26, 0x20(r3)
lbl_804B4A5C:
/* 804B4A5C  38 00 00 1E */	li r0, 0x1e
/* 804B4A60  B0 1C 05 7E */	sth r0, 0x57e(r28)
/* 804B4A64  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 804B4A68  28 03 00 00 */	cmplwi r3, 0
/* 804B4A6C  41 82 00 10 */	beq lbl_804B4A7C
/* 804B4A70  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 804B4A74  60 00 00 02 */	ori r0, r0, 2
/* 804B4A78  90 03 07 CC */	stw r0, 0x7cc(r3)
lbl_804B4A7C:
/* 804B4A7C  39 61 00 50 */	addi r11, r1, 0x50
/* 804B4A80  4B EA D7 9C */	b _restgpr_26
/* 804B4A84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B4A88  7C 08 03 A6 */	mtlr r0
/* 804B4A8C  38 21 00 50 */	addi r1, r1, 0x50
/* 804B4A90  4E 80 00 20 */	blr 
