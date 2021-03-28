lbl_80C54374:
/* 80C54374  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C54378  7C 08 02 A6 */	mflr r0
/* 80C5437C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C54380  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C54384  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C54388  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80C5438C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80C54390  39 61 00 60 */	addi r11, r1, 0x60
/* 80C54394  4B 70 DE 34 */	b _savegpr_24
/* 80C54398  7C 9B 23 78 */	mr r27, r4
/* 80C5439C  3C 60 80 C5 */	lis r3, lit_1109@ha
/* 80C543A0  3B C3 5B 40 */	addi r30, r3, lit_1109@l
/* 80C543A4  3C 60 80 C5 */	lis r3, lit_3916@ha
/* 80C543A8  3B E3 5A 10 */	addi r31, r3, lit_3916@l
/* 80C543AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C543B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C543B4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C543B8  3B 80 00 00 */	li r28, 0
/* 80C543BC  C3 DF 00 00 */	lfs f30, 0(r31)
/* 80C543C0  3B 00 00 00 */	li r24, 0
/* 80C543C4  3B 40 00 00 */	li r26, 0
/* 80C543C8  3B 3E 00 48 */	addi r25, r30, 0x48
/* 80C543CC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80C543D0  48 00 00 CC */	b lbl_80C5449C
lbl_80C543D4:
/* 80C543D4  38 61 00 14 */	addi r3, r1, 0x14
/* 80C543D8  38 9B 00 10 */	addi r4, r27, 0x10
/* 80C543DC  7C B9 D0 2E */	lwzx r5, r25, r26
/* 80C543E0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C543E4  4B 61 27 50 */	b __mi__4cXyzCFRC3Vec
/* 80C543E8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80C543EC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C543F0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C543F4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C543F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C543FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C54400  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C54404  4C 41 13 82 */	cror 2, 1, 2
/* 80C54408  40 82 00 88 */	bne lbl_80C54490
/* 80C5440C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80C54410  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C54414  EC 21 00 2A */	fadds f1, f1, f0
/* 80C54418  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C5441C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54420  40 81 00 0C */	ble lbl_80C5442C
/* 80C54424  FC 00 08 34 */	frsqrte f0, f1
/* 80C54428  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80C5442C:
/* 80C5442C  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 80C54430  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C54434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54438  4C 40 13 82 */	cror 2, 0, 2
/* 80C5443C  40 82 00 54 */	bne lbl_80C54490
/* 80C54440  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C54444  38 7B 00 28 */	addi r3, r27, 0x28
/* 80C54448  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C5444C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C54450  EC 60 00 72 */	fmuls f3, f0, f1
/* 80C54454  4B 61 B5 E8 */	b cLib_addCalc2__FPffff
/* 80C54458  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C5445C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80C54460  4B 61 32 14 */	b cM_atan2s__Fff
/* 80C54464  7C 64 1B 78 */	mr r4, r3
/* 80C54468  38 7B 00 34 */	addi r3, r27, 0x34
/* 80C5446C  38 A0 00 20 */	li r5, 0x20
/* 80C54470  38 C0 04 00 */	li r6, 0x400
/* 80C54474  4B 61 C1 94 */	b cLib_addCalcAngleS2__FPssss
/* 80C54478  38 7B 00 36 */	addi r3, r27, 0x36
/* 80C5447C  38 80 F0 60 */	li r4, -4000
/* 80C54480  38 A0 00 20 */	li r5, 0x20
/* 80C54484  38 C0 04 00 */	li r6, 0x400
/* 80C54488  4B 61 C1 80 */	b cLib_addCalcAngleS2__FPssss
/* 80C5448C  3B 80 00 01 */	li r28, 1
lbl_80C54490:
/* 80C54490  C3 DF 00 14 */	lfs f30, 0x14(r31)
/* 80C54494  3B 18 00 01 */	addi r24, r24, 1
/* 80C54498  3B 5A 00 04 */	addi r26, r26, 4
lbl_80C5449C:
/* 80C5449C  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 80C544A0  7C 18 00 00 */	cmpw r24, r0
/* 80C544A4  41 80 FF 30 */	blt lbl_80C543D4
/* 80C544A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C544AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C544B0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C544B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C544B8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80C544BC  7D 89 03 A6 */	mtctr r12
/* 80C544C0  4E 80 04 21 */	bctrl 
/* 80C544C4  28 03 00 00 */	cmplwi r3, 0
/* 80C544C8  41 82 01 E4 */	beq lbl_80C546AC
/* 80C544CC  C3 FF 00 08 */	lfs f31, 8(r31)
/* 80C544D0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80C544D4  2C 00 00 00 */	cmpwi r0, 0
/* 80C544D8  41 82 00 78 */	beq lbl_80C54550
/* 80C544DC  7F A3 EB 78 */	mr r3, r29
/* 80C544E0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C544E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C544E8  7D 89 03 A6 */	mtctr r12
/* 80C544EC  4E 80 04 21 */	bctrl 
/* 80C544F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C544F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C544F8  4B 6F 1F B8 */	b PSMTXCopy
/* 80C544FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C54500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C54504  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C54508  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C5450C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C54510  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C54514  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80C54518  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80C5451C  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80C54520  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C54524  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C54528  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 80C5452C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C54530  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C54534  EC 21 00 72 */	fmuls f1, f1, f1
/* 80C54538  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C5453C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C54540  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C54544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54548  40 80 00 08 */	bge lbl_80C54550
/* 80C5454C  C3 FF 00 1C */	lfs f31, 0x1c(r31)
lbl_80C54550:
/* 80C54550  38 61 00 08 */	addi r3, r1, 8
/* 80C54554  38 9B 00 10 */	addi r4, r27, 0x10
/* 80C54558  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C5455C  4B 61 25 D8 */	b __mi__4cXyzCFRC3Vec
/* 80C54560  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C54564  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C54568  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C5456C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C54570  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C54574  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C54578  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C5457C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C54580  80 63 00 00 */	lwz r3, 0(r3)
/* 80C54584  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80C54588  7C 00 00 D0 */	neg r0, r0
/* 80C5458C  7C 04 07 34 */	extsh r4, r0
/* 80C54590  4B 3B 7E 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80C54594  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C54598  FC 40 08 90 */	fmr f2, f1
/* 80C5459C  FC 60 08 90 */	fmr f3, f1
/* 80C545A0  38 60 00 01 */	li r3, 1
/* 80C545A4  4B 61 C8 B8 */	b MtxTrans__FfffUc
/* 80C545A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C545AC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C545B0  4B 61 C9 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C545B4  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80C545B8  2C 00 00 00 */	cmpwi r0, 0
/* 80C545BC  41 82 00 10 */	beq lbl_80C545CC
/* 80C545C0  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C545C4  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 80C545C8  48 00 00 0C */	b lbl_80C545D4
lbl_80C545CC:
/* 80C545CC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C545D0  C0 9F 00 2C */	lfs f4, 0x2c(r31)
lbl_80C545D4:
/* 80C545D4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C545D8  FC 00 02 10 */	fabs f0, f0
/* 80C545DC  FC 20 00 18 */	frsp f1, f0
/* 80C545E0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C545E4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C545E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C545EC  40 80 00 C0 */	bge lbl_80C546AC
/* 80C545F0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C545F4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C545F8  40 81 00 B4 */	ble lbl_80C546AC
/* 80C545FC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80C54600  40 80 00 AC */	bge lbl_80C546AC
/* 80C54604  EF E0 08 28 */	fsubs f31, f0, f1
/* 80C54608  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C5460C  40 81 00 30 */	ble lbl_80C5463C
/* 80C54610  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C54614  EC 00 18 2A */	fadds f0, f0, f3
/* 80C54618  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C5461C  40 80 00 20 */	bge lbl_80C5463C
/* 80C54620  EC 02 18 28 */	fsubs f0, f2, f3
/* 80C54624  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C54628  FC 00 02 10 */	fabs f0, f0
/* 80C5462C  FC 20 00 18 */	frsp f1, f0
/* 80C54630  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C54634  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C54638  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80C5463C:
/* 80C5463C  38 7B 00 14 */	addi r3, r27, 0x14
/* 80C54640  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80C54644  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C54648  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C5464C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C54650  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80C54654  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C54658  4B 61 B3 E4 */	b cLib_addCalc2__FPffff
/* 80C5465C  38 7B 00 28 */	addi r3, r27, 0x28
/* 80C54660  FC 20 F8 90 */	fmr f1, f31
/* 80C54664  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C54668  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C5466C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80C54670  4B 61 B3 CC */	b cLib_addCalc2__FPffff
/* 80C54674  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C54678  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80C5467C  4B 61 2F F8 */	b cM_atan2s__Fff
/* 80C54680  7C 64 1B 78 */	mr r4, r3
/* 80C54684  38 7B 00 34 */	addi r3, r27, 0x34
/* 80C54688  38 A0 00 20 */	li r5, 0x20
/* 80C5468C  38 C0 04 00 */	li r6, 0x400
/* 80C54690  4B 61 BF 78 */	b cLib_addCalcAngleS2__FPssss
/* 80C54694  38 7B 00 36 */	addi r3, r27, 0x36
/* 80C54698  38 80 F0 60 */	li r4, -4000
/* 80C5469C  38 A0 00 20 */	li r5, 0x20
/* 80C546A0  38 C0 04 00 */	li r6, 0x400
/* 80C546A4  4B 61 BF 64 */	b cLib_addCalcAngleS2__FPssss
/* 80C546A8  3B 80 00 01 */	li r28, 1
lbl_80C546AC:
/* 80C546AC  7F 83 E3 78 */	mr r3, r28
/* 80C546B0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C546B4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C546B8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80C546BC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80C546C0  39 61 00 60 */	addi r11, r1, 0x60
/* 80C546C4  4B 70 DB 50 */	b _restgpr_24
/* 80C546C8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C546CC  7C 08 03 A6 */	mtlr r0
/* 80C546D0  38 21 00 80 */	addi r1, r1, 0x80
/* 80C546D4  4E 80 00 20 */	blr 
