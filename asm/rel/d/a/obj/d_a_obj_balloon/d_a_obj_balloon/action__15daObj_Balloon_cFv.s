lbl_80BA81B8:
/* 80BA81B8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BA81BC  7C 08 02 A6 */	mflr r0
/* 80BA81C0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BA81C4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BA81C8  4B 7B 9F F8 */	b _savegpr_22
/* 80BA81CC  7C 79 1B 78 */	mr r25, r3
/* 80BA81D0  3C 60 80 BB */	lis r3, lit_1109@ha
/* 80BA81D4  3B A3 8F B0 */	addi r29, r3, lit_1109@l
/* 80BA81D8  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha
/* 80BA81DC  3B C3 8E 5C */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80BA81E0  3C 60 80 BB */	lis r3, lit_3656@ha
/* 80BA81E4  3B E3 8E 0C */	addi r31, r3, lit_3656@l
/* 80BA81E8  88 19 05 79 */	lbz r0, 0x579(r25)
/* 80BA81EC  2C 00 00 01 */	cmpwi r0, 1
/* 80BA81F0  41 82 00 3C */	beq lbl_80BA822C
/* 80BA81F4  40 80 00 10 */	bge lbl_80BA8204
/* 80BA81F8  2C 00 00 00 */	cmpwi r0, 0
/* 80BA81FC  40 80 00 14 */	bge lbl_80BA8210
/* 80BA8200  48 00 01 60 */	b lbl_80BA8360
lbl_80BA8204:
/* 80BA8204  2C 00 00 03 */	cmpwi r0, 3
/* 80BA8208  40 80 01 58 */	bge lbl_80BA8360
/* 80BA820C  48 00 00 D8 */	b lbl_80BA82E4
lbl_80BA8210:
/* 80BA8210  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BA8214  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80BA8218  D0 19 05 2C */	stfs f0, 0x52c(r25)
/* 80BA821C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 80BA8220  38 00 00 01 */	li r0, 1
/* 80BA8224  98 19 05 79 */	stb r0, 0x579(r25)
/* 80BA8228  48 00 01 38 */	b lbl_80BA8360
lbl_80BA822C:
/* 80BA822C  38 79 05 80 */	addi r3, r25, 0x580
/* 80BA8230  A8 99 05 84 */	lha r4, 0x584(r25)
/* 80BA8234  38 A0 00 10 */	li r5, 0x10
/* 80BA8238  38 C0 00 08 */	li r6, 8
/* 80BA823C  4B 6C 83 CC */	b cLib_addCalcAngleS2__FPssss
/* 80BA8240  38 79 05 82 */	addi r3, r25, 0x582
/* 80BA8244  A8 99 05 86 */	lha r4, 0x586(r25)
/* 80BA8248  38 A0 00 10 */	li r5, 0x10
/* 80BA824C  38 C0 00 08 */	li r6, 8
/* 80BA8250  4B 6C 83 B8 */	b cLib_addCalcAngleS2__FPssss
/* 80BA8254  38 79 04 FC */	addi r3, r25, 0x4fc
/* 80BA8258  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BA825C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BA8260  4B 6C 84 E0 */	b cLib_chaseF__FPfff
/* 80BA8264  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80BA8268  C0 19 04 AC */	lfs f0, 0x4ac(r25)
/* 80BA826C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA8270  40 80 00 F0 */	bge lbl_80BA8360
/* 80BA8274  38 00 00 02 */	li r0, 2
/* 80BA8278  98 19 05 79 */	stb r0, 0x579(r25)
/* 80BA827C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BA8280  4B 6B F6 D4 */	b cM_rndF__Ff
/* 80BA8284  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BA8288  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA828C  FC 00 00 1E */	fctiwz f0, f0
/* 80BA8290  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BA8294  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BA8298  7C 00 07 34 */	extsh r0, r0
/* 80BA829C  90 19 05 7C */	stw r0, 0x57c(r25)
/* 80BA82A0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BA82A4  4B 6B F6 B0 */	b cM_rndF__Ff
/* 80BA82A8  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80BA82AC  EC 02 08 2A */	fadds f0, f2, f1
/* 80BA82B0  FC 00 00 1E */	fctiwz f0, f0
/* 80BA82B4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BA82B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BA82BC  B0 19 05 84 */	sth r0, 0x584(r25)
/* 80BA82C0  FC 20 10 90 */	fmr f1, f2
/* 80BA82C4  4B 6B F6 90 */	b cM_rndF__Ff
/* 80BA82C8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BA82CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA82D0  FC 00 00 1E */	fctiwz f0, f0
/* 80BA82D4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BA82D8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BA82DC  B0 19 05 86 */	sth r0, 0x586(r25)
/* 80BA82E0  48 00 00 80 */	b lbl_80BA8360
lbl_80BA82E4:
/* 80BA82E4  38 79 05 80 */	addi r3, r25, 0x580
/* 80BA82E8  A8 99 05 84 */	lha r4, 0x584(r25)
/* 80BA82EC  38 A0 00 10 */	li r5, 0x10
/* 80BA82F0  38 C0 00 20 */	li r6, 0x20
/* 80BA82F4  4B 6C 83 14 */	b cLib_addCalcAngleS2__FPssss
/* 80BA82F8  38 79 05 82 */	addi r3, r25, 0x582
/* 80BA82FC  A8 99 05 86 */	lha r4, 0x586(r25)
/* 80BA8300  38 A0 00 10 */	li r5, 0x10
/* 80BA8304  38 C0 00 20 */	li r6, 0x20
/* 80BA8308  4B 6C 83 00 */	b cLib_addCalcAngleS2__FPssss
/* 80BA830C  38 79 04 FC */	addi r3, r25, 0x4fc
/* 80BA8310  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BA8314  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BA8318  4B 6C 84 28 */	b cLib_chaseF__FPfff
/* 80BA831C  80 19 05 7C */	lwz r0, 0x57c(r25)
/* 80BA8320  2C 00 00 00 */	cmpwi r0, 0
/* 80BA8324  40 82 00 3C */	bne lbl_80BA8360
/* 80BA8328  38 00 00 01 */	li r0, 1
/* 80BA832C  98 19 05 79 */	stb r0, 0x579(r25)
/* 80BA8330  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BA8334  4B 6B F6 20 */	b cM_rndF__Ff
/* 80BA8338  FC 00 08 1E */	fctiwz f0, f1
/* 80BA833C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BA8340  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BA8344  B0 19 05 84 */	sth r0, 0x584(r25)
/* 80BA8348  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BA834C  4B 6B F6 08 */	b cM_rndF__Ff
/* 80BA8350  FC 00 08 1E */	fctiwz f0, f1
/* 80BA8354  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BA8358  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BA835C  B0 19 05 86 */	sth r0, 0x586(r25)
lbl_80BA8360:
/* 80BA8360  A8 79 04 E8 */	lha r3, 0x4e8(r25)
/* 80BA8364  A8 19 05 80 */	lha r0, 0x580(r25)
/* 80BA8368  7C 03 02 14 */	add r0, r3, r0
/* 80BA836C  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 80BA8370  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 80BA8374  A8 19 05 82 */	lha r0, 0x582(r25)
/* 80BA8378  7C 03 02 14 */	add r0, r3, r0
/* 80BA837C  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80BA8380  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80BA8384  2C 03 00 00 */	cmpwi r3, 0
/* 80BA8388  41 82 00 0C */	beq lbl_80BA8394
/* 80BA838C  38 03 FF FF */	addi r0, r3, -1
/* 80BA8390  90 19 05 7C */	stw r0, 0x57c(r25)
lbl_80BA8394:
/* 80BA8394  38 79 07 BC */	addi r3, r25, 0x7bc
/* 80BA8398  4B 4D B4 98 */	b Move__10dCcD_GSttsFv
/* 80BA839C  38 79 07 DC */	addi r3, r25, 0x7dc
/* 80BA83A0  4B 4D C0 C0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BA83A4  28 03 00 00 */	cmplwi r3, 0
/* 80BA83A8  41 82 02 90 */	beq lbl_80BA8638
/* 80BA83AC  38 79 07 DC */	addi r3, r25, 0x7dc
/* 80BA83B0  4B 4D C1 48 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BA83B4  7C 7C 1B 78 */	mr r28, r3
/* 80BA83B8  4B 6B B6 90 */	b GetAc__8cCcD_ObjFv
/* 80BA83BC  A8 03 00 08 */	lha r0, 8(r3)
/* 80BA83C0  2C 00 00 F4 */	cmpwi r0, 0xf4
/* 80BA83C4  40 82 02 74 */	bne lbl_80BA8638
/* 80BA83C8  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA83CC  54 00 10 3A */	slwi r0, r0, 2
/* 80BA83D0  38 7E 00 34 */	addi r3, r30, 0x34
/* 80BA83D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BA83D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BA83DC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BA83E0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BA83E4  3A C0 00 00 */	li r22, 0
/* 80BA83E8  3B 60 00 00 */	li r27, 0
/* 80BA83EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA83F0  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80BA83F4  3B 1E 00 30 */	addi r24, r30, 0x30
lbl_80BA83F8:
/* 80BA83F8  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80BA83FC  38 80 00 00 */	li r4, 0
/* 80BA8400  90 81 00 08 */	stw r4, 8(r1)
/* 80BA8404  38 00 FF FF */	li r0, -1
/* 80BA8408  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA840C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA8410  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA8414  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA8418  38 80 00 00 */	li r4, 0
/* 80BA841C  7C B8 DA 2E */	lhzx r5, r24, r27
/* 80BA8420  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 80BA8424  38 F9 01 0C */	addi r7, r25, 0x10c
/* 80BA8428  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 80BA842C  39 21 00 4C */	addi r9, r1, 0x4c
/* 80BA8430  39 40 00 FF */	li r10, 0xff
/* 80BA8434  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BA8438  4B 4A 46 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA843C  3A D6 00 01 */	addi r22, r22, 1
/* 80BA8440  2C 16 00 02 */	cmpwi r22, 2
/* 80BA8444  3B 7B 00 02 */	addi r27, r27, 2
/* 80BA8448  41 80 FF B0 */	blt lbl_80BA83F8
/* 80BA844C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80BA8450  88 79 05 78 */	lbz r3, 0x578(r25)
/* 80BA8454  7C 00 18 00 */	cmpw r0, r3
/* 80BA8458  40 82 00 58 */	bne lbl_80BA84B0
/* 80BA845C  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 80BA8460  38 03 00 01 */	addi r0, r3, 1
/* 80BA8464  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80BA8468  83 7D 00 44 */	lwz r27, 0x44(r29)
/* 80BA846C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BA8470  41 80 00 34 */	blt lbl_80BA84A4
/* 80BA8474  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BA8478  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80BA847C  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA8480  54 00 10 3A */	slwi r0, r0, 2
/* 80BA8484  7C 63 02 14 */	add r3, r3, r0
/* 80BA8488  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BA848C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA8490  FC 00 00 1E */	fctiwz f0, f0
/* 80BA8494  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BA8498  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BA849C  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80BA84A0  48 00 00 5C */	b lbl_80BA84FC
lbl_80BA84A4:
/* 80BA84A4  57 60 08 3C */	slwi r0, r27, 1
/* 80BA84A8  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80BA84AC  48 00 00 50 */	b lbl_80BA84FC
lbl_80BA84B0:
/* 80BA84B0  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80BA84B4  38 00 00 01 */	li r0, 1
/* 80BA84B8  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80BA84BC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BA84C0  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80BA84C4  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA84C8  54 00 10 3A */	slwi r0, r0, 2
/* 80BA84CC  38 63 00 14 */	addi r3, r3, 0x14
/* 80BA84D0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BA84D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA84D8  FC 00 00 1E */	fctiwz f0, f0
/* 80BA84DC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80BA84E0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80BA84E4  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80BA84E8  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA84EC  54 00 10 3A */	slwi r0, r0, 2
/* 80BA84F0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BA84F4  4B 7B 9B B8 */	b __cvt_fp2unsigned
/* 80BA84F8  7C 7B 1B 78 */	mr r27, r3
lbl_80BA84FC:
/* 80BA84FC  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA8500  54 00 10 3A */	slwi r0, r0, 2
/* 80BA8504  38 7E 00 40 */	addi r3, r30, 0x40
/* 80BA8508  7C 03 00 2E */	lwzx r0, r3, r0
/* 80BA850C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA8510  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA8514  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA8518  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA851C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BA8520  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BA8524  80 DD 00 40 */	lwz r6, 0x40(r29)
/* 80BA8528  38 E0 00 00 */	li r7, 0
/* 80BA852C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BA8530  FC 40 08 90 */	fmr f2, f1
/* 80BA8534  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80BA8538  FC 80 18 90 */	fmr f4, f3
/* 80BA853C  39 00 00 00 */	li r8, 0
/* 80BA8540  4B 70 34 44 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA8544  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 80BA8548  7C 00 DA 14 */	add r0, r0, r27
/* 80BA854C  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80BA8550  38 00 00 5A */	li r0, 0x5a
/* 80BA8554  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80BA8558  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80BA855C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80BA8560  38 81 00 20 */	addi r4, r1, 0x20
/* 80BA8564  4B 47 12 94 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BA8568  7C 76 1B 79 */	or. r22, r3, r3
/* 80BA856C  41 82 00 C0 */	beq lbl_80BA862C
/* 80BA8570  88 19 05 78 */	lbz r0, 0x578(r25)
/* 80BA8574  28 00 00 02 */	cmplwi r0, 2
/* 80BA8578  40 82 00 0C */	bne lbl_80BA8584
/* 80BA857C  3B 40 00 00 */	li r26, 0
/* 80BA8580  48 00 00 20 */	b lbl_80BA85A0
lbl_80BA8584:
/* 80BA8584  28 00 00 01 */	cmplwi r0, 1
/* 80BA8588  40 82 00 0C */	bne lbl_80BA8594
/* 80BA858C  3B 40 00 01 */	li r26, 1
/* 80BA8590  48 00 00 10 */	b lbl_80BA85A0
lbl_80BA8594:
/* 80BA8594  28 00 00 00 */	cmplwi r0, 0
/* 80BA8598  40 82 00 08 */	bne lbl_80BA85A0
/* 80BA859C  3B 40 00 02 */	li r26, 2
lbl_80BA85A0:
/* 80BA85A0  7F 83 E3 78 */	mr r3, r28
/* 80BA85A4  4B 6B B4 A4 */	b GetAc__8cCcD_ObjFv
/* 80BA85A8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BA85AC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BA85B0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BA85B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BA85B8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BA85BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BA85C0  38 61 00 34 */	addi r3, r1, 0x34
/* 80BA85C4  38 81 00 40 */	addi r4, r1, 0x40
/* 80BA85C8  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80BA85CC  4B 6B E5 18 */	b __pl__4cXyzCFRC3Vec
/* 80BA85D0  38 61 00 28 */	addi r3, r1, 0x28
/* 80BA85D4  38 81 00 34 */	addi r4, r1, 0x34
/* 80BA85D8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BA85DC  4B 6B E6 3C */	b __dv__4cXyzCFf
/* 80BA85E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BA85E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BA85E8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BA85EC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BA85F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BA85F4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BA85F8  7E C3 B3 78 */	mr r3, r22
/* 80BA85FC  7F 44 D3 78 */	mr r4, r26
/* 80BA8600  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 80BA8604  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80BA8608  4B AA B9 50 */	b setComboCount__13daBalloon2D_cFUcUc
/* 80BA860C  7E C3 B3 78 */	mr r3, r22
/* 80BA8610  80 9D 00 48 */	lwz r4, 0x48(r29)
/* 80BA8614  4B AA B9 AC */	b setScoreCount__13daBalloon2D_cFUl
/* 80BA8618  7E C3 B3 78 */	mr r3, r22
/* 80BA861C  38 81 00 40 */	addi r4, r1, 0x40
/* 80BA8620  7F 65 DB 78 */	mr r5, r27
/* 80BA8624  7F 46 D3 78 */	mr r6, r26
/* 80BA8628  4B AA B9 C4 */	b addScoreCount__13daBalloon2D_cFP4cXyzUlUc
lbl_80BA862C:
/* 80BA862C  7F 23 CB 78 */	mr r3, r25
/* 80BA8630  4B 47 16 4C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80BA8634  48 00 00 10 */	b lbl_80BA8644
lbl_80BA8638:
/* 80BA8638  7F 23 CB 78 */	mr r3, r25
/* 80BA863C  38 99 07 A0 */	addi r4, r25, 0x7a0
/* 80BA8640  4B 47 20 8C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_80BA8644:
/* 80BA8644  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BA8648  4B 7B 9B C4 */	b _restgpr_22
/* 80BA864C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BA8650  7C 08 03 A6 */	mtlr r0
/* 80BA8654  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BA8658  4E 80 00 20 */	blr 
