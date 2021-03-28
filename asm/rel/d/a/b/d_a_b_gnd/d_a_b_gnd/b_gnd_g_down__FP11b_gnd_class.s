lbl_805F94A8:
/* 805F94A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F94AC  7C 08 02 A6 */	mflr r0
/* 805F94B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F94B4  39 61 00 40 */	addi r11, r1, 0x40
/* 805F94B8  4B D6 8D 20 */	b _savegpr_28
/* 805F94BC  7C 7C 1B 78 */	mr r28, r3
/* 805F94C0  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F94C4  3B C3 26 64 */	addi r30, r3, lit_3815@l
/* 805F94C8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F94CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F94D0  FC 00 00 1E */	fctiwz f0, f0
/* 805F94D4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805F94D8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 805F94DC  80 1C 1F B4 */	lwz r0, 0x1fb4(r28)
/* 805F94E0  90 01 00 08 */	stw r0, 8(r1)
/* 805F94E4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805F94E8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805F94EC  38 81 00 08 */	addi r4, r1, 8
/* 805F94F0  4B A2 03 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805F94F4  7C 7F 1B 78 */	mr r31, r3
/* 805F94F8  38 00 00 0A */	li r0, 0xa
/* 805F94FC  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F9500  A8 1C 05 BC */	lha r0, 0x5bc(r28)
/* 805F9504  2C 00 00 02 */	cmpwi r0, 2
/* 805F9508  41 82 02 80 */	beq lbl_805F9788
/* 805F950C  40 80 00 14 */	bge lbl_805F9520
/* 805F9510  2C 00 00 00 */	cmpwi r0, 0
/* 805F9514  41 82 00 18 */	beq lbl_805F952C
/* 805F9518  40 80 00 BC */	bge lbl_805F95D4
/* 805F951C  48 00 03 6C */	b lbl_805F9888
lbl_805F9520:
/* 805F9520  2C 00 00 04 */	cmpwi r0, 4
/* 805F9524  40 80 03 64 */	bge lbl_805F9888
/* 805F9528  48 00 03 04 */	b lbl_805F982C
lbl_805F952C:
/* 805F952C  A0 7C 1E 0C */	lhz r3, 0x1e0c(r28)
/* 805F9530  38 03 00 01 */	addi r0, r3, 1
/* 805F9534  B0 1C 1E 0C */	sth r0, 0x1e0c(r28)
/* 805F9538  A0 1C 1E 0C */	lhz r0, 0x1e0c(r28)
/* 805F953C  28 00 00 03 */	cmplwi r0, 3
/* 805F9540  41 80 00 20 */	blt lbl_805F9560
/* 805F9544  7F 83 E3 78 */	mr r3, r28
/* 805F9548  38 80 00 28 */	li r4, 0x28
/* 805F954C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F9550  38 A0 00 00 */	li r5, 0
/* 805F9554  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F9558  4B FF B5 3D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F955C  48 00 00 44 */	b lbl_805F95A0
lbl_805F9560:
/* 805F9560  7F 83 E3 78 */	mr r3, r28
/* 805F9564  38 80 00 29 */	li r4, 0x29
/* 805F9568  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F956C  38 A0 00 00 */	li r5, 0
/* 805F9570  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F9574  4B FF B5 21 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F9578  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070560@ha */
/* 805F957C  38 03 05 60 */	addi r0, r3, 0x0560 /* 0x00070560@l */
/* 805F9580  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F9584  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F9588  38 81 00 0C */	addi r4, r1, 0xc
/* 805F958C  38 A0 FF FF */	li r5, -1
/* 805F9590  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F9594  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F9598  7D 89 03 A6 */	mtctr r12
/* 805F959C  4E 80 04 21 */	bctrl 
lbl_805F95A0:
/* 805F95A0  A8 7C 0C 3C */	lha r3, 0xc3c(r28)
/* 805F95A4  3C 63 00 01 */	addis r3, r3, 1
/* 805F95A8  38 03 80 00 */	addi r0, r3, -32768
/* 805F95AC  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 805F95B0  38 00 00 01 */	li r0, 1
/* 805F95B4  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F95B8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F95BC  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F95C0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805F95C4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 805F95C8  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 805F95CC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 805F95D0  48 00 02 B8 */	b lbl_805F9888
lbl_805F95D4:
/* 805F95D4  2C 1D 00 10 */	cmpwi r29, 0x10
/* 805F95D8  41 80 00 E8 */	blt lbl_805F96C0
/* 805F95DC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 805F95E0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F95E4  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 805F95E8  4B C7 64 98 */	b cLib_addCalc0__FPfff
/* 805F95EC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 805F95F0  40 82 00 B0 */	bne lbl_805F96A0
/* 805F95F4  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F95F8  80 63 00 04 */	lwz r3, 4(r3)
/* 805F95FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805F9600  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9604  38 63 00 30 */	addi r3, r3, 0x30
/* 805F9608  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805F960C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805F9610  4B D4 CE A0 */	b PSMTXCopy
/* 805F9614  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805F9618  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805F961C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805F9620  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F9624  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F9628  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F962C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805F9630  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805F9634  38 7C 25 B4 */	addi r3, r28, 0x25b4
/* 805F9638  38 9C 25 B8 */	addi r4, r28, 0x25b8
/* 805F963C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805F9640  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 805F9644  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 805F9648  38 FC 01 0C */	addi r7, r28, 0x10c
/* 805F964C  39 00 00 01 */	li r8, 1
/* 805F9650  4B A2 39 D0 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805F9654  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F9658  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805F965C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F9660  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805F9664  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805F9668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F966C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F9670  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805F9674  38 80 00 06 */	li r4, 6
/* 805F9678  38 A0 00 1F */	li r5, 0x1f
/* 805F967C  38 C1 00 10 */	addi r6, r1, 0x10
/* 805F9680  4B A7 63 A4 */	b StartShock__12dVibration_cFii4cXyz
/* 805F9684  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805F9688  D0 1F 39 60 */	stfs f0, 0x3960(r31)
/* 805F968C  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F9690  2C 00 00 29 */	cmpwi r0, 0x29
/* 805F9694  40 82 00 0C */	bne lbl_805F96A0
/* 805F9698  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F969C  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F96A0:
/* 805F96A0  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F96A4  2C 00 00 28 */	cmpwi r0, 0x28
/* 805F96A8  40 82 00 20 */	bne lbl_805F96C8
/* 805F96AC  2C 1D 00 16 */	cmpwi r29, 0x16
/* 805F96B0  41 80 00 18 */	blt lbl_805F96C8
/* 805F96B4  38 00 00 01 */	li r0, 1
/* 805F96B8  98 1F 39 65 */	stb r0, 0x3965(r31)
/* 805F96BC  48 00 00 0C */	b lbl_805F96C8
lbl_805F96C0:
/* 805F96C0  38 00 00 01 */	li r0, 1
/* 805F96C4  98 1F 39 64 */	stb r0, 0x3964(r31)
lbl_805F96C8:
/* 805F96C8  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F96CC  2C 00 00 29 */	cmpwi r0, 0x29
/* 805F96D0  40 82 00 14 */	bne lbl_805F96E4
/* 805F96D4  2C 1D 00 30 */	cmpwi r29, 0x30
/* 805F96D8  40 82 00 0C */	bne lbl_805F96E4
/* 805F96DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F96E0  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F96E4:
/* 805F96E4  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F96E8  38 80 00 01 */	li r4, 1
/* 805F96EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F96F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F96F4  40 82 00 18 */	bne lbl_805F970C
/* 805F96F8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F96FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F9700  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F9704  41 82 00 08 */	beq lbl_805F970C
/* 805F9708  38 80 00 00 */	li r4, 0
lbl_805F970C:
/* 805F970C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F9710  41 82 01 78 */	beq lbl_805F9888
/* 805F9714  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F9718  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 805F971C  80 1C 07 58 */	lwz r0, 0x758(r28)
/* 805F9720  2C 00 00 28 */	cmpwi r0, 0x28
/* 805F9724  40 82 00 48 */	bne lbl_805F976C
/* 805F9728  7F 83 E3 78 */	mr r3, r28
/* 805F972C  38 80 00 2B */	li r4, 0x2b
/* 805F9730  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F9734  38 A0 00 02 */	li r5, 2
/* 805F9738  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F973C  4B FF B3 59 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F9740  38 00 00 02 */	li r0, 2
/* 805F9744  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F9748  38 00 00 C8 */	li r0, 0xc8
/* 805F974C  B0 1C 0C 44 */	sth r0, 0xc44(r28)
/* 805F9750  4B B6 5C 48 */	b checkMasterSwordEquip__9daPy_py_cFv
/* 805F9754  2C 03 00 00 */	cmpwi r3, 0
/* 805F9758  41 82 01 30 */	beq lbl_805F9888
/* 805F975C  A0 1C 05 8E */	lhz r0, 0x58e(r28)
/* 805F9760  60 00 00 01 */	ori r0, r0, 1
/* 805F9764  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 805F9768  48 00 01 20 */	b lbl_805F9888
lbl_805F976C:
/* 805F976C  38 00 00 0A */	li r0, 0xa
/* 805F9770  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F9774  38 00 00 00 */	li r0, 0
/* 805F9778  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F977C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805F9780  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 805F9784  48 00 01 04 */	b lbl_805F9888
lbl_805F9788:
/* 805F9788  38 00 00 01 */	li r0, 1
/* 805F978C  98 1F 39 65 */	stb r0, 0x3965(r31)
/* 805F9790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F9794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F9798  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805F979C  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805F97A0  28 00 00 27 */	cmplwi r0, 0x27
/* 805F97A4  40 82 00 38 */	bne lbl_805F97DC
/* 805F97A8  38 00 00 3C */	li r0, 0x3c
/* 805F97AC  B0 1C 26 C4 */	sth r0, 0x26c4(r28)
/* 805F97B0  38 00 00 16 */	li r0, 0x16
/* 805F97B4  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F97B8  38 00 00 00 */	li r0, 0
/* 805F97BC  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F97C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805F97C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805F97C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805F97CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805F97D0  38 80 00 1E */	li r4, 0x1e
/* 805F97D4  38 A0 00 00 */	li r5, 0
/* 805F97D8  4B CB 5C 30 */	b bgmStop__8Z2SeqMgrFUll
lbl_805F97DC:
/* 805F97DC  A8 1C 0C 44 */	lha r0, 0xc44(r28)
/* 805F97E0  2C 00 00 00 */	cmpwi r0, 0
/* 805F97E4  41 82 00 10 */	beq lbl_805F97F4
/* 805F97E8  4B B6 5B B0 */	b checkMasterSwordEquip__9daPy_py_cFv
/* 805F97EC  2C 03 00 00 */	cmpwi r3, 0
/* 805F97F0  40 82 00 98 */	bne lbl_805F9888
lbl_805F97F4:
/* 805F97F4  7F 83 E3 78 */	mr r3, r28
/* 805F97F8  38 80 00 2A */	li r4, 0x2a
/* 805F97FC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F9800  38 A0 00 00 */	li r5, 0
/* 805F9804  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F9808  4B FF B2 8D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F980C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805F9810  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 805F9814  38 00 00 03 */	li r0, 3
/* 805F9818  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F981C  A0 7C 05 8E */	lhz r3, 0x58e(r28)
/* 805F9820  38 00 FF E8 */	li r0, -24
/* 805F9824  7C 60 00 38 */	and r0, r3, r0
/* 805F9828  B0 1C 05 8E */	sth r0, 0x58e(r28)
lbl_805F982C:
/* 805F982C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805F9830  41 81 00 18 */	bgt lbl_805F9848
/* 805F9834  38 00 00 01 */	li r0, 1
/* 805F9838  98 1F 39 65 */	stb r0, 0x3965(r31)
/* 805F983C  40 82 00 0C */	bne lbl_805F9848
/* 805F9840  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805F9844  D0 1F 39 5C */	stfs f0, 0x395c(r31)
lbl_805F9848:
/* 805F9848  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F984C  38 80 00 01 */	li r4, 1
/* 805F9850  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F9854  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F9858  40 82 00 18 */	bne lbl_805F9870
/* 805F985C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F9860  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F9864  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F9868  41 82 00 08 */	beq lbl_805F9870
/* 805F986C  38 80 00 00 */	li r4, 0
lbl_805F9870:
/* 805F9870  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F9874  41 82 00 14 */	beq lbl_805F9888
/* 805F9878  38 00 00 0A */	li r0, 0xa
/* 805F987C  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F9880  38 00 00 00 */	li r0, 0
/* 805F9884  B0 1C 05 BC */	sth r0, 0x5bc(r28)
lbl_805F9888:
/* 805F9888  39 61 00 40 */	addi r11, r1, 0x40
/* 805F988C  4B D6 89 98 */	b _restgpr_28
/* 805F9890  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F9894  7C 08 03 A6 */	mtlr r0
/* 805F9898  38 21 00 40 */	addi r1, r1, 0x40
/* 805F989C  4E 80 00 20 */	blr 
