lbl_805E82F0:
/* 805E82F0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805E82F4  7C 08 02 A6 */	mflr r0
/* 805E82F8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805E82FC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805E8300  4B D7 9E D4 */	b _savegpr_27
/* 805E8304  7C 7F 1B 78 */	mr r31, r3
/* 805E8308  3C 60 80 5F */	lis r3, lit_1109@ha
/* 805E830C  3B 63 D6 C0 */	addi r27, r3, lit_1109@l
/* 805E8310  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E8314  3B C3 D0 60 */	addi r30, r3, lit_3911@l
/* 805E8318  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E831C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8320  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8324  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E8328  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E832C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E8330  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E8334  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E8338  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E833C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E8340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8344  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 805E8348  83 BC 5D AC */	lwz r29, 0x5dac(r28)
/* 805E834C  38 61 00 50 */	addi r3, r1, 0x50
/* 805E8350  4B A8 F9 18 */	b __ct__11dBgS_LinChkFv
/* 805E8354  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E8358  38 63 00 0C */	addi r3, r3, 0xc
/* 805E835C  C0 3E 02 EC */	lfs f1, 0x2ec(r30)
/* 805E8360  4B D4 00 CC */	b checkPass__12J3DFrameCtrlFf
/* 805E8364  2C 03 00 00 */	cmpwi r3, 0
/* 805E8368  41 82 00 B4 */	beq lbl_805E841C
/* 805E836C  38 00 00 01 */	li r0, 1
/* 805E8370  98 1F 06 6D */	stb r0, 0x66d(r31)
/* 805E8374  80 7F 0E 38 */	lwz r3, 0xe38(r31)
/* 805E8378  38 63 00 24 */	addi r3, r3, 0x24
/* 805E837C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E8380  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E8384  4B D5 E1 2C */	b PSMTXCopy
/* 805E8388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E838C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E8390  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805E8394  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 805E8398  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805E839C  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 805E83A0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805E83A4  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 805E83A8  38 9F 06 7C */	addi r4, r31, 0x67c
/* 805E83AC  4B A2 48 54 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 805E83B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E83B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E83B8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E83BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E83C0  38 7F 06 70 */	addi r3, r31, 0x670
/* 805E83C4  7C 64 1B 78 */	mr r4, r3
/* 805E83C8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E83CC  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E83D0  4B C8 89 F0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E83D4  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 805E83D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E83DC  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 805E83E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E83E4  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 805E83E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E83EC  38 61 00 44 */	addi r3, r1, 0x44
/* 805E83F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E83F4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E83F8  38 C1 00 38 */	addi r6, r1, 0x38
/* 805E83FC  4B C8 89 C4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E8400  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805E8404  D0 1F 06 84 */	stfs f0, 0x684(r31)
/* 805E8408  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E840C  D0 1F 06 88 */	stfs f0, 0x688(r31)
/* 805E8410  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E8414  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 805E8418  48 00 01 34 */	b lbl_805E854C
lbl_805E841C:
/* 805E841C  80 9F 0E 30 */	lwz r4, 0xe30(r31)
/* 805E8420  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805E8424  C0 1E 02 EC */	lfs f0, 0x2ec(r30)
/* 805E8428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E842C  41 81 00 30 */	bgt lbl_805E845C
/* 805E8430  38 60 00 01 */	li r3, 1
/* 805E8434  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805E8438  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E843C  40 82 00 18 */	bne lbl_805E8454
/* 805E8440  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E8444  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805E8448  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E844C  41 82 00 08 */	beq lbl_805E8454
/* 805E8450  38 60 00 00 */	li r3, 0
lbl_805E8454:
/* 805E8454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E8458  41 82 00 F4 */	beq lbl_805E854C
lbl_805E845C:
/* 805E845C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E8460  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 805E8464  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E8468  41 82 00 E4 */	beq lbl_805E854C
/* 805E846C  C0 1F 06 70 */	lfs f0, 0x670(r31)
/* 805E8470  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E8474  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 805E8478  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E847C  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 805E8480  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E8484  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 805E8488  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 805E848C  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8490  D0 1F 06 88 */	stfs f0, 0x688(r31)
/* 805E8494  38 7F 06 70 */	addi r3, r31, 0x670
/* 805E8498  38 9F 06 84 */	addi r4, r31, 0x684
/* 805E849C  7C 65 1B 78 */	mr r5, r3
/* 805E84A0  4B D5 EB F0 */	b PSVECAdd
/* 805E84A4  38 7F 06 80 */	addi r3, r31, 0x680
/* 805E84A8  38 80 CB 00 */	li r4, -13568
/* 805E84AC  38 A0 05 00 */	li r5, 0x500
/* 805E84B0  4B C8 86 E0 */	b cLib_chaseAngleS__FPsss
/* 805E84B4  38 7F 06 7C */	addi r3, r31, 0x67c
/* 805E84B8  38 80 4F A0 */	li r4, 0x4fa0
/* 805E84BC  38 A0 05 00 */	li r5, 0x500
/* 805E84C0  4B C8 86 D0 */	b cLib_chaseAngleS__FPsss
/* 805E84C4  38 61 00 50 */	addi r3, r1, 0x50
/* 805E84C8  38 81 00 20 */	addi r4, r1, 0x20
/* 805E84CC  38 BF 06 70 */	addi r5, r31, 0x670
/* 805E84D0  38 C0 00 00 */	li r6, 0
/* 805E84D4  4B A8 F8 90 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805E84D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E84DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E84E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805E84E4  38 81 00 50 */	addi r4, r1, 0x50
/* 805E84E8  4B A8 BE CC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805E84EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E84F0  41 82 00 5C */	beq lbl_805E854C
/* 805E84F4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805E84F8  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 805E84FC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805E8500  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 805E8504  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805E8508  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 805E850C  C0 3F 06 74 */	lfs f1, 0x674(r31)
/* 805E8510  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 805E8514  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8518  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 805E851C  C0 3E 02 F4 */	lfs f1, 0x2f4(r30)
/* 805E8520  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 805E8524  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E8528  D0 1F 06 88 */	stfs f0, 0x688(r31)
/* 805E852C  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 805E8530  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 805E8534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E8538  40 80 00 14 */	bge lbl_805E854C
/* 805E853C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E8540  D0 1F 06 84 */	stfs f0, 0x684(r31)
/* 805E8544  D0 1F 06 88 */	stfs f0, 0x688(r31)
/* 805E8548  D0 1F 06 8C */	stfs f0, 0x68c(r31)
lbl_805E854C:
/* 805E854C  88 1F 05 CB */	lbz r0, 0x5cb(r31)
/* 805E8550  2C 00 00 02 */	cmpwi r0, 2
/* 805E8554  41 82 03 D4 */	beq lbl_805E8928
/* 805E8558  40 80 00 14 */	bge lbl_805E856C
/* 805E855C  2C 00 00 00 */	cmpwi r0, 0
/* 805E8560  41 82 00 18 */	beq lbl_805E8578
/* 805E8564  40 80 01 70 */	bge lbl_805E86D4
/* 805E8568  48 00 07 BC */	b lbl_805E8D24
lbl_805E856C:
/* 805E856C  2C 00 00 04 */	cmpwi r0, 4
/* 805E8570  40 80 07 B4 */	bge lbl_805E8D24
/* 805E8574  48 00 05 B8 */	b lbl_805E8B2C
lbl_805E8578:
/* 805E8578  7F E3 FB 78 */	mr r3, r31
/* 805E857C  4B FF 76 DD */	bl CameraSet__8daB_GG_cFv
/* 805E8580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E8584  41 82 07 A0 */	beq lbl_805E8D24
/* 805E8588  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E858C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805E8590  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805E8594  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 805E8598  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E859C  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 805E85A0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E85A4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805E85A8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E85AC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805E85B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805E85B4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 805E85B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E85BC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805E85C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805E85C4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 805E85C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805E85CC  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 805E85D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E85D4  38 9B 00 FC */	addi r4, r27, 0xfc
/* 805E85D8  7C 84 02 14 */	add r4, r4, r0
/* 805E85DC  4B C8 86 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E85E0  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 805E85E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805E85E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805E85EC  88 7F 05 CB */	lbz r3, 0x5cb(r31)
/* 805E85F0  38 03 00 01 */	addi r0, r3, 1
/* 805E85F4  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E85F8  38 00 00 00 */	li r0, 0
/* 805E85FC  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 805E8600  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 805E8604  D0 3F 06 50 */	stfs f1, 0x650(r31)
/* 805E8608  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E860C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E8610  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E8614  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E8618  C0 9F 04 D0 */	lfs f4, 0x4d0(r31)
/* 805E861C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 805E8620  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 805E8624  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 805E8628  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805E862C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805E8630  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E8634  EC 03 00 2A */	fadds f0, f3, f0
/* 805E8638  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E863C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 805E8640  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E8644  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805E8648  7F E3 FB 78 */	mr r3, r31
/* 805E864C  38 81 00 14 */	addi r4, r1, 0x14
/* 805E8650  C0 5E 02 60 */	lfs f2, 0x260(r30)
/* 805E8654  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E8658  4B FF 77 A5 */	bl SetStopCam__8daB_GG_cF4cXyzffs
/* 805E865C  C0 3F 0F C8 */	lfs f1, 0xfc8(r31)
/* 805E8660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E8664  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E8668  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805E866C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E8670  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8674  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8678  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 805E867C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E8680  38 7F 06 00 */	addi r3, r31, 0x600
/* 805E8684  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E8688  4B C8 85 7C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E868C  7C 65 1B 78 */	mr r5, r3
/* 805E8690  38 61 00 2C */	addi r3, r1, 0x2c
/* 805E8694  38 9F 06 00 */	addi r4, r31, 0x600
/* 805E8698  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E869C  4B C8 87 24 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E86A0  7F A3 EB 78 */	mr r3, r29
/* 805E86A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E86A8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E86AC  38 C0 00 00 */	li r6, 0
/* 805E86B0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805E86B4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E86B8  7D 89 03 A6 */	mtctr r12
/* 805E86BC  4E 80 04 21 */	bctrl 
/* 805E86C0  38 00 00 03 */	li r0, 3
/* 805E86C4  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805E86C8  38 00 00 00 */	li r0, 0
/* 805E86CC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805E86D0  48 00 06 54 */	b lbl_805E8D24
lbl_805E86D4:
/* 805E86D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E86D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E86DC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805E86E0  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 805E86E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E86E8  A8 7F 06 58 */	lha r3, 0x658(r31)
/* 805E86EC  38 03 FF F0 */	addi r0, r3, -16
/* 805E86F0  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 805E86F4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805E86F8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805E86FC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805E8700  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E8704  80 63 00 04 */	lwz r3, 4(r3)
/* 805E8708  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805E870C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805E8710  38 63 01 20 */	addi r3, r3, 0x120
/* 805E8714  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E8718  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E871C  4B D5 DD 94 */	b PSMTXCopy
/* 805E8720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E8724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E8728  38 81 00 44 */	addi r4, r1, 0x44
/* 805E872C  7C 85 23 78 */	mr r5, r4
/* 805E8730  4B D5 E6 3C */	b PSMTXMultVec
/* 805E8734  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805E8738  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E873C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E8740  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E8744  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E8748  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 805E874C  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805E8750  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 805E8754  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E8758  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E875C  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 805E8760  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805E8764  EC 01 00 2A */	fadds f0, f1, f0
/* 805E8768  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 805E876C  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805E8770  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E8774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E8778  40 81 00 0C */	ble lbl_805E8784
/* 805E877C  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E8780  48 00 00 14 */	b lbl_805E8794
lbl_805E8784:
/* 805E8784  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E8788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E878C  40 80 00 08 */	bge lbl_805E8794
/* 805E8790  D0 1F 06 10 */	stfs f0, 0x610(r31)
lbl_805E8794:
/* 805E8794  C0 5F 06 50 */	lfs f2, 0x650(r31)
/* 805E8798  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 805E879C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E87A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E87A4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805E87A8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805E87AC  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E87B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E87B4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E87B8  A8 1F 06 58 */	lha r0, 0x658(r31)
/* 805E87BC  7C 05 02 14 */	add r0, r5, r0
/* 805E87C0  7C 05 07 34 */	extsh r5, r0
/* 805E87C4  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E87C8  4B C8 85 F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E87CC  7F E3 FB 78 */	mr r3, r31
/* 805E87D0  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 805E87D4  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 805E87D8  4B FF 78 FD */	bl SetMoveCam1__8daB_GG_cFff
/* 805E87DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805E87E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E87E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E87E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E87EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805E87F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E87F4  80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 805E87F8  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E87FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E8800  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E8804  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805E8808  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E880C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8810  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8814  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 805E8818  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E881C  38 7F 06 00 */	addi r3, r31, 0x600
/* 805E8820  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E8824  4B C8 83 E0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E8828  7C 65 1B 78 */	mr r5, r3
/* 805E882C  38 61 00 2C */	addi r3, r1, 0x2c
/* 805E8830  38 9F 06 00 */	addi r4, r31, 0x600
/* 805E8834  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E8838  4B C8 85 88 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E883C  7F A3 EB 78 */	mr r3, r29
/* 805E8840  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E8844  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E8848  38 C0 00 00 */	li r6, 0
/* 805E884C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805E8850  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E8854  7D 89 03 A6 */	mtctr r12
/* 805E8858  4E 80 04 21 */	bctrl 
/* 805E885C  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E8860  38 63 00 0C */	addi r3, r3, 0xc
/* 805E8864  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 805E8868  4B D3 FB C4 */	b checkPass__12J3DFrameCtrlFf
/* 805E886C  2C 03 00 00 */	cmpwi r3, 0
/* 805E8870  41 82 04 B4 */	beq lbl_805E8D24
/* 805E8874  38 00 00 01 */	li r0, 1
/* 805E8878  98 1F 06 6C */	stb r0, 0x66c(r31)
/* 805E887C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E8880  D0 3F 06 68 */	stfs f1, 0x668(r31)
/* 805E8884  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E8888  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E888C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805E8890  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805E8894  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E8898  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805E889C  38 9F 06 00 */	addi r4, r31, 0x600
/* 805E88A0  4B C8 83 64 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E88A4  7C 65 1B 78 */	mr r5, r3
/* 805E88A8  38 61 00 44 */	addi r3, r1, 0x44
/* 805E88AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E88B0  38 C1 00 38 */	addi r6, r1, 0x38
/* 805E88B4  4B C8 85 0C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E88B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E88BC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 805E88C0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E88C4  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 805E88C8  38 61 00 44 */	addi r3, r1, 0x44
/* 805E88CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E88D0  4B C8 83 34 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E88D4  7C 65 1B 78 */	mr r5, r3
/* 805E88D8  7F A3 EB 78 */	mr r3, r29
/* 805E88DC  38 81 00 44 */	addi r4, r1, 0x44
/* 805E88E0  38 C0 00 00 */	li r6, 0
/* 805E88E4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805E88E8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E88EC  7D 89 03 A6 */	mtctr r12
/* 805E88F0  4E 80 04 21 */	bctrl 
/* 805E88F4  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805E88F8  38 00 00 17 */	li r0, 0x17
/* 805E88FC  90 03 06 14 */	stw r0, 0x614(r3)
/* 805E8900  38 00 00 01 */	li r0, 1
/* 805E8904  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805E8908  38 00 00 02 */	li r0, 2
/* 805E890C  90 03 06 10 */	stw r0, 0x610(r3)
/* 805E8910  38 00 00 00 */	li r0, 0
/* 805E8914  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805E8918  88 7F 05 CB */	lbz r3, 0x5cb(r31)
/* 805E891C  38 03 00 01 */	addi r0, r3, 1
/* 805E8920  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 805E8924  48 00 04 00 */	b lbl_805E8D24
lbl_805E8928:
/* 805E8928  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E892C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E8930  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805E8934  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 805E8938  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E893C  A8 7F 06 58 */	lha r3, 0x658(r31)
/* 805E8940  38 03 FF F0 */	addi r0, r3, -16
/* 805E8944  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 805E8948  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805E894C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805E8950  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805E8954  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E8958  80 63 00 04 */	lwz r3, 4(r3)
/* 805E895C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805E8960  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805E8964  38 63 01 20 */	addi r3, r3, 0x120
/* 805E8968  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805E896C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805E8970  4B D5 DB 40 */	b PSMTXCopy
/* 805E8974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805E8978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805E897C  38 81 00 44 */	addi r4, r1, 0x44
/* 805E8980  7C 85 23 78 */	mr r5, r4
/* 805E8984  4B D5 E3 E8 */	b PSMTXMultVec
/* 805E8988  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805E898C  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E8990  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805E8994  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E8998  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805E899C  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 805E89A0  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805E89A4  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 805E89A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E89AC  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E89B0  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 805E89B4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805E89B8  EC 01 00 2A */	fadds f0, f1, f0
/* 805E89BC  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 805E89C0  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E89C4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805E89C8  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 805E89CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E89D0  40 80 00 30 */	bge lbl_805E8A00
/* 805E89D4  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805E89D8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E89DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E89E0  40 81 00 0C */	ble lbl_805E89EC
/* 805E89E4  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E89E8  48 00 00 3C */	b lbl_805E8A24
lbl_805E89EC:
/* 805E89EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E89F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E89F4  40 80 00 30 */	bge lbl_805E8A24
/* 805E89F8  D0 1F 06 10 */	stfs f0, 0x610(r31)
/* 805E89FC  48 00 00 28 */	b lbl_805E8A24
lbl_805E8A00:
/* 805E8A00  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805E8A04  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 805E8A08  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805E8A0C  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 805E8A10  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805E8A14  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E8A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E8A1C  40 80 00 08 */	bge lbl_805E8A24
/* 805E8A20  D0 1F 06 10 */	stfs f0, 0x610(r31)
lbl_805E8A24:
/* 805E8A24  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805E8A28  38 80 00 01 */	li r4, 1
/* 805E8A2C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E8A30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E8A34  40 82 00 18 */	bne lbl_805E8A4C
/* 805E8A38  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E8A3C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E8A40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E8A44  41 82 00 08 */	beq lbl_805E8A4C
/* 805E8A48  38 80 00 00 */	li r4, 0
lbl_805E8A4C:
/* 805E8A4C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E8A50  41 82 00 90 */	beq lbl_805E8AE0
/* 805E8A54  38 7F 06 68 */	addi r3, r31, 0x668
/* 805E8A58  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805E8A5C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805E8A60  4B C8 7C E0 */	b cLib_chaseF__FPfff
/* 805E8A64  2C 03 00 00 */	cmpwi r3, 0
/* 805E8A68  41 82 00 78 */	beq lbl_805E8AE0
/* 805E8A6C  38 00 00 00 */	li r0, 0
/* 805E8A70  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805E8A74  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 805E8A78  7F E3 FB 78 */	mr r3, r31
/* 805E8A7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805E8A80  38 A0 00 0A */	li r5, 0xa
/* 805E8A84  38 C0 00 00 */	li r6, 0
/* 805E8A88  38 E0 00 FF */	li r7, 0xff
/* 805E8A8C  4B A3 40 4C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805E8A90  7F E3 FB 78 */	mr r3, r31
/* 805E8A94  38 9F 06 70 */	addi r4, r31, 0x670
/* 805E8A98  38 A0 00 05 */	li r5, 5
/* 805E8A9C  38 C0 00 00 */	li r6, 0
/* 805E8AA0  38 E0 00 FF */	li r7, 0xff
/* 805E8AA4  4B A3 40 34 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805E8AA8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E8AAC  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 805E8AB0  EC 00 08 2A */	fadds f0, f0, f1
/* 805E8AB4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805E8AB8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805E8ABC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 805E8AC0  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 805E8AC4  EC 00 08 2A */	fadds f0, f0, f1
/* 805E8AC8  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 805E8ACC  38 00 00 1E */	li r0, 0x1e
/* 805E8AD0  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E8AD4  88 7F 05 CB */	lbz r3, 0x5cb(r31)
/* 805E8AD8  38 03 00 01 */	addi r0, r3, 1
/* 805E8ADC  98 1F 05 CB */	stb r0, 0x5cb(r31)
lbl_805E8AE0:
/* 805E8AE0  C0 5F 06 50 */	lfs f2, 0x650(r31)
/* 805E8AE4  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 805E8AE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E8AEC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8AF0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805E8AF4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 805E8AF8  38 7F 06 18 */	addi r3, r31, 0x618
/* 805E8AFC  38 81 00 2C */	addi r4, r1, 0x2c
/* 805E8B00  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805E8B04  A8 1F 06 58 */	lha r0, 0x658(r31)
/* 805E8B08  7C 05 02 14 */	add r0, r5, r0
/* 805E8B0C  7C 05 07 34 */	extsh r5, r0
/* 805E8B10  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E8B14  4B C8 82 AC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E8B18  7F E3 FB 78 */	mr r3, r31
/* 805E8B1C  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 805E8B20  C0 5E 01 40 */	lfs f2, 0x140(r30)
/* 805E8B24  4B FF 75 B1 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E8B28  48 00 01 FC */	b lbl_805E8D24
lbl_805E8B2C:
/* 805E8B2C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 805E8B30  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805E8B34  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 805E8B38  2C 00 00 00 */	cmpwi r0, 0
/* 805E8B3C  40 82 01 20 */	bne lbl_805E8C5C
/* 805E8B40  80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 805E8B44  C0 63 00 00 */	lfs f3, 0(r3)
/* 805E8B48  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 805E8B4C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E8B50  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805E8B54  C0 23 00 08 */	lfs f1, 8(r3)
/* 805E8B58  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805E8B5C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E8B60  EC 02 00 2A */	fadds f0, f2, f0
/* 805E8B64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8B6C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 805E8B70  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 805E8B74  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E8B78  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E8B7C  40 82 00 34 */	bne lbl_805E8BB0
/* 805E8B80  D0 61 00 08 */	stfs f3, 8(r1)
/* 805E8B84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E8B88  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805E8B8C  7F E3 FB 78 */	mr r3, r31
/* 805E8B90  38 81 00 08 */	addi r4, r1, 8
/* 805E8B94  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 805E8B98  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805E8B9C  A8 BB 00 70 */	lha r5, 0x70(r27)
/* 805E8BA0  38 05 70 00 */	addi r0, r5, 0x7000
/* 805E8BA4  7C 05 07 34 */	extsh r5, r0
/* 805E8BA8  4B FF 72 55 */	bl SetStopCam__8daB_GG_cF4cXyzffs
/* 805E8BAC  48 00 00 68 */	b lbl_805E8C14
lbl_805E8BB0:
/* 805E8BB0  7F E3 FB 78 */	mr r3, r31
/* 805E8BB4  4B FF 76 45 */	bl SetReleaseCam__8daB_GG_cFv
/* 805E8BB8  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805E8BBC  28 04 00 FF */	cmplwi r4, 0xff
/* 805E8BC0  41 82 00 4C */	beq lbl_805E8C0C
/* 805E8BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8BCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805E8BD0  7C 05 07 74 */	extsb r5, r0
/* 805E8BD4  4B A4 C7 8C */	b isSwitch__10dSv_info_cCFii
/* 805E8BD8  2C 03 00 00 */	cmpwi r3, 0
/* 805E8BDC  40 82 00 30 */	bne lbl_805E8C0C
/* 805E8BE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8BE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8BE8  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805E8BEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805E8BF0  7C 05 07 74 */	extsb r5, r0
/* 805E8BF4  4B A4 C6 0C */	b onSwitch__10dSv_info_cFii
/* 805E8BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8C00  38 63 09 58 */	addi r3, r3, 0x958
/* 805E8C04  38 80 00 07 */	li r4, 7
/* 805E8C08  4B A4 BD 10 */	b onDungeonItem__12dSv_memBit_cFi
lbl_805E8C0C:
/* 805E8C0C  7F E3 FB 78 */	mr r3, r31
/* 805E8C10  4B A3 10 6C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805E8C14:
/* 805E8C14  38 00 00 03 */	li r0, 3
/* 805E8C18  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805E8C1C  38 80 00 00 */	li r4, 0
/* 805E8C20  90 9D 06 0C */	stw r4, 0x60c(r29)
/* 805E8C24  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 805E8C28  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E8C2C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E8C30  40 82 00 18 */	bne lbl_805E8C48
/* 805E8C34  38 00 00 1E */	li r0, 0x1e
/* 805E8C38  90 1D 06 14 */	stw r0, 0x614(r29)
/* 805E8C3C  90 9D 06 0C */	stw r4, 0x60c(r29)
/* 805E8C40  90 9D 06 10 */	stw r4, 0x610(r29)
/* 805E8C44  B0 9D 06 0A */	sth r4, 0x60a(r29)
lbl_805E8C48:
/* 805E8C48  38 00 00 6E */	li r0, 0x6e
/* 805E8C4C  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 805E8C50  38 00 03 E8 */	li r0, 0x3e8
/* 805E8C54  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 805E8C58  48 00 00 C4 */	b lbl_805E8D1C
lbl_805E8C5C:
/* 805E8C5C  A8 1F 05 DC */	lha r0, 0x5dc(r31)
/* 805E8C60  2C 00 00 01 */	cmpwi r0, 1
/* 805E8C64  40 82 00 B8 */	bne lbl_805E8D1C
/* 805E8C68  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805E8C6C  28 04 00 FF */	cmplwi r4, 0xff
/* 805E8C70  41 82 00 4C */	beq lbl_805E8CBC
/* 805E8C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8C78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8C7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805E8C80  7C 05 07 74 */	extsb r5, r0
/* 805E8C84  4B A4 C6 DC */	b isSwitch__10dSv_info_cCFii
/* 805E8C88  2C 03 00 00 */	cmpwi r3, 0
/* 805E8C8C  40 82 00 30 */	bne lbl_805E8CBC
/* 805E8C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8C94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8C98  88 9F 05 CF */	lbz r4, 0x5cf(r31)
/* 805E8C9C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805E8CA0  7C 05 07 74 */	extsb r5, r0
/* 805E8CA4  4B A4 C5 5C */	b onSwitch__10dSv_info_cFii
/* 805E8CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E8CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E8CB0  38 63 09 58 */	addi r3, r3, 0x958
/* 805E8CB4  38 80 00 07 */	li r4, 7
/* 805E8CB8  4B A4 BC 60 */	b onDungeonItem__12dSv_memBit_cFi
lbl_805E8CBC:
/* 805E8CBC  7F E3 FB 78 */	mr r3, r31
/* 805E8CC0  4B A3 0F BC */	b fopAcM_delete__FP10fopAc_ac_c
/* 805E8CC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E8CC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E8CCC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E8CD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E8CD4  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805E8CD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E8CDC  80 7B 00 6C */	lwz r3, 0x6c(r27)
/* 805E8CE0  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E8CE4  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 805E8CE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E8CEC  EC 21 00 2A */	fadds f1, f1, f0
/* 805E8CF0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E8CF4  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 805E8CF8  D0 3F 05 F8 */	stfs f1, 0x5f8(r31)
/* 805E8CFC  D0 5F 05 FC */	stfs f2, 0x5fc(r31)
/* 805E8D00  38 7F 06 00 */	addi r3, r31, 0x600
/* 805E8D04  80 9B 00 6C */	lwz r4, 0x6c(r27)
/* 805E8D08  A8 BB 00 70 */	lha r5, 0x70(r27)
/* 805E8D0C  38 C1 00 44 */	addi r6, r1, 0x44
/* 805E8D10  4B C8 80 B0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E8D14  7F E3 FB 78 */	mr r3, r31
/* 805E8D18  4B FF 74 E1 */	bl SetReleaseCam__8daB_GG_cFv
lbl_805E8D1C:
/* 805E8D1C  7F E3 FB 78 */	mr r3, r31
/* 805E8D20  4B FF 70 59 */	bl SetStopingCam__8daB_GG_cFv
lbl_805E8D24:
/* 805E8D24  38 61 00 50 */	addi r3, r1, 0x50
/* 805E8D28  38 80 FF FF */	li r4, -1
/* 805E8D2C  4B A8 EF B0 */	b __dt__11dBgS_LinChkFv
/* 805E8D30  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805E8D34  4B D7 94 EC */	b _restgpr_27
/* 805E8D38  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805E8D3C  7C 08 03 A6 */	mtlr r0
/* 805E8D40  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805E8D44  4E 80 00 20 */	blr 
