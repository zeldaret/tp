lbl_804F0530:
/* 804F0530  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804F0534  7C 08 02 A6 */	mflr r0
/* 804F0538  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804F053C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804F0540  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804F0544  39 61 00 90 */	addi r11, r1, 0x90
/* 804F0548  4B E7 1C 7C */	b _savegpr_23
/* 804F054C  7C 78 1B 78 */	mr r24, r3
/* 804F0550  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F0554  3B C3 A6 BC */	addi r30, r3, lit_3777@l
/* 804F0558  C3 FE 00 3C */	lfs f31, 0x3c(r30)
/* 804F055C  80 78 05 D0 */	lwz r3, 0x5d0(r24)
/* 804F0560  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804F0564  FC 00 00 1E */	fctiwz f0, f0
/* 804F0568  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804F056C  83 81 00 54 */	lwz r28, 0x54(r1)
/* 804F0570  38 00 00 01 */	li r0, 1
/* 804F0574  98 18 07 C0 */	stb r0, 0x7c0(r24)
/* 804F0578  3B 60 00 00 */	li r27, 0
/* 804F057C  3B 40 00 00 */	li r26, 0
/* 804F0580  A8 18 07 A4 */	lha r0, 0x7a4(r24)
/* 804F0584  2C 00 00 01 */	cmpwi r0, 1
/* 804F0588  41 82 00 90 */	beq lbl_804F0618
/* 804F058C  40 80 00 10 */	bge lbl_804F059C
/* 804F0590  2C 00 00 00 */	cmpwi r0, 0
/* 804F0594  40 80 00 14 */	bge lbl_804F05A8
/* 804F0598  48 00 03 FC */	b lbl_804F0994
lbl_804F059C:
/* 804F059C  2C 00 00 03 */	cmpwi r0, 3
/* 804F05A0  40 80 03 F4 */	bge lbl_804F0994
/* 804F05A4  48 00 00 AC */	b lbl_804F0650
lbl_804F05A8:
/* 804F05A8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 804F05AC  4B D7 73 A8 */	b cM_rndF__Ff
/* 804F05B0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 804F05B4  EC 00 08 2A */	fadds f0, f0, f1
/* 804F05B8  FC 00 00 1E */	fctiwz f0, f0
/* 804F05BC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804F05C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804F05C4  B0 18 07 AC */	sth r0, 0x7ac(r24)
/* 804F05C8  7F 03 C3 78 */	mr r3, r24
/* 804F05CC  38 80 00 22 */	li r4, 0x22
/* 804F05D0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 804F05D4  38 A0 00 02 */	li r5, 2
/* 804F05D8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804F05DC  4B FF F2 2D */	bl anm_init__FP10e_fm_classifUcf
/* 804F05E0  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F05E4  3A E3 AE A4 */	addi r23, r3, l_HIO@l
/* 804F05E8  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 804F05EC  C0 17 00 40 */	lfs f0, 0x40(r23)
/* 804F05F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804F05F4  4B D7 73 60 */	b cM_rndF__Ff
/* 804F05F8  C0 17 00 40 */	lfs f0, 0x40(r23)
/* 804F05FC  EC 00 08 2A */	fadds f0, f0, f1
/* 804F0600  FC 00 00 1E */	fctiwz f0, f0
/* 804F0604  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804F0608  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804F060C  B0 18 07 B0 */	sth r0, 0x7b0(r24)
/* 804F0610  38 00 00 01 */	li r0, 1
/* 804F0614  B0 18 07 A4 */	sth r0, 0x7a4(r24)
lbl_804F0618:
/* 804F0618  A8 18 07 AC */	lha r0, 0x7ac(r24)
/* 804F061C  2C 00 00 00 */	cmpwi r0, 0
/* 804F0620  40 82 03 74 */	bne lbl_804F0994
/* 804F0624  7F 03 C3 78 */	mr r3, r24
/* 804F0628  38 80 00 24 */	li r4, 0x24
/* 804F062C  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 804F0630  38 A0 00 02 */	li r5, 2
/* 804F0634  3C C0 80 50 */	lis r6, l_HIO@ha
/* 804F0638  38 C6 AE A4 */	addi r6, r6, l_HIO@l
/* 804F063C  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 804F0640  4B FF F1 C9 */	bl anm_init__FP10e_fm_classifUcf
/* 804F0644  38 00 00 02 */	li r0, 2
/* 804F0648  B0 18 07 A4 */	sth r0, 0x7a4(r24)
/* 804F064C  48 00 03 48 */	b lbl_804F0994
lbl_804F0650:
/* 804F0650  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F0654  38 A3 AE A4 */	addi r5, r3, l_HIO@l
/* 804F0658  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804F065C  80 78 05 D0 */	lwz r3, 0x5d0(r24)
/* 804F0660  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804F0664  38 C0 00 00 */	li r6, 0
/* 804F0668  38 60 00 00 */	li r3, 0
/* 804F066C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804F0670  38 00 00 02 */	li r0, 2
/* 804F0674  7C 09 03 A6 */	mtctr r0
lbl_804F0678:
/* 804F0678  20 E6 00 01 */	subfic r7, r6, 1
/* 804F067C  38 03 07 CC */	addi r0, r3, 0x7cc
/* 804F0680  7C 18 04 2E */	lfsx f0, r24, r0
/* 804F0684  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 804F0688  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F068C  FC 00 02 10 */	fabs f0, f0
/* 804F0690  FC 00 00 18 */	frsp f0, f0
/* 804F0694  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F0698  40 80 00 30 */	bge lbl_804F06C8
/* 804F069C  1C 87 00 0C */	mulli r4, r7, 0xc
/* 804F06A0  38 04 07 CC */	addi r0, r4, 0x7cc
/* 804F06A4  7C 18 04 2E */	lfsx f0, r24, r0
/* 804F06A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F06AC  FC 00 02 10 */	fabs f0, f0
/* 804F06B0  FC 00 00 18 */	frsp f0, f0
/* 804F06B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F06B8  4C 41 13 82 */	cror 2, 1, 2
/* 804F06BC  40 82 00 0C */	bne lbl_804F06C8
/* 804F06C0  C3 E5 00 14 */	lfs f31, 0x14(r5)
/* 804F06C4  90 F8 07 E0 */	stw r7, 0x7e0(r24)
lbl_804F06C8:
/* 804F06C8  38 C6 00 01 */	addi r6, r6, 1
/* 804F06CC  38 63 00 0C */	addi r3, r3, 0xc
/* 804F06D0  42 00 FF A8 */	bdnz lbl_804F0678
/* 804F06D4  C0 38 05 2C */	lfs f1, 0x52c(r24)
/* 804F06D8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F06DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F06E0  40 80 00 38 */	bge lbl_804F0718
/* 804F06E4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F06E8  40 81 00 30 */	ble lbl_804F0718
/* 804F06EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070004@ha */
/* 804F06F0  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00070004@l */
/* 804F06F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F06F8  38 78 06 3C */	addi r3, r24, 0x63c
/* 804F06FC  38 81 00 28 */	addi r4, r1, 0x28
/* 804F0700  38 A0 00 00 */	li r5, 0
/* 804F0704  38 C0 FF FF */	li r6, -1
/* 804F0708  81 98 06 3C */	lwz r12, 0x63c(r24)
/* 804F070C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0710  7D 89 03 A6 */	mtctr r12
/* 804F0714  4E 80 04 21 */	bctrl 
lbl_804F0718:
/* 804F0718  C0 18 05 2C */	lfs f0, 0x52c(r24)
/* 804F071C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F0720  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F0724  40 81 01 14 */	ble lbl_804F0838
/* 804F0728  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804F072C  40 80 01 0C */	bge lbl_804F0838
/* 804F0730  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804F0734  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F0738  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804F073C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804F0740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F0744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F0748  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F074C  38 80 00 05 */	li r4, 5
/* 804F0750  38 A0 00 0F */	li r5, 0xf
/* 804F0754  38 C1 00 38 */	addi r6, r1, 0x38
/* 804F0758  4B B7 F2 CC */	b StartShock__12dVibration_cFii4cXyz
/* 804F075C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F0760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F0764  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F0768  38 80 00 00 */	li r4, 0
/* 804F076C  90 81 00 08 */	stw r4, 8(r1)
/* 804F0770  38 00 FF FF */	li r0, -1
/* 804F0774  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F0778  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F077C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F0780  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F0784  38 80 00 00 */	li r4, 0
/* 804F0788  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008150@ha */
/* 804F078C  38 A5 81 50 */	addi r5, r5, 0x8150 /* 0x00008150@l */
/* 804F0790  38 D8 04 A8 */	addi r6, r24, 0x4a8
/* 804F0794  38 E0 00 00 */	li r7, 0
/* 804F0798  39 00 00 00 */	li r8, 0
/* 804F079C  39 20 00 00 */	li r9, 0
/* 804F07A0  39 40 00 FF */	li r10, 0xff
/* 804F07A4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F07A8  4B B5 C2 E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F07AC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080163@ha */
/* 804F07B0  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00080163@l */
/* 804F07B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F07B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F07BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F07C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F07C4  38 81 00 20 */	addi r4, r1, 0x20
/* 804F07C8  38 A0 00 00 */	li r5, 0
/* 804F07CC  38 C0 00 00 */	li r6, 0
/* 804F07D0  38 E0 00 00 */	li r7, 0
/* 804F07D4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F07D8  FC 40 08 90 */	fmr f2, f1
/* 804F07DC  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 804F07E0  FC 80 18 90 */	fmr f4, f3
/* 804F07E4  39 00 00 00 */	li r8, 0
/* 804F07E8  4B DB B1 9C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F07EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 804F07F0  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 804F07F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F07F8  38 78 06 3C */	addi r3, r24, 0x63c
/* 804F07FC  38 81 00 24 */	addi r4, r1, 0x24
/* 804F0800  38 A0 00 00 */	li r5, 0
/* 804F0804  38 C0 FF FF */	li r6, -1
/* 804F0808  81 98 06 3C */	lwz r12, 0x63c(r24)
/* 804F080C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0810  7D 89 03 A6 */	mtctr r12
/* 804F0814  4E 80 04 21 */	bctrl 
/* 804F0818  80 18 07 E0 */	lwz r0, 0x7e0(r24)
/* 804F081C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F0820  38 63 07 C8 */	addi r3, r3, 0x7c8
/* 804F0824  7C 78 1A 14 */	add r3, r24, r3
/* 804F0828  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 804F082C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 804F0830  38 80 FF FF */	li r4, -1
/* 804F0834  4B FF EE 81 */	bl hasira_hahen_hit__FP4cXyzffSc
lbl_804F0838:
/* 804F0838  3B 20 00 02 */	li r25, 2
/* 804F083C  3E E0 00 01 */	lis r23, 0x0001 /* 0x0000C3A8@ha */
/* 804F0840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F0844  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804F0848  57 9D 06 3A */	rlwinm r29, r28, 0, 0x18, 0x1d
/* 804F084C  3A F7 C3 A8 */	addi r23, r23, 0xC3A8 /* 0x0000C3A8@l */
lbl_804F0850:
/* 804F0850  38 61 00 2C */	addi r3, r1, 0x2c
/* 804F0854  7F 98 BA 14 */	add r28, r24, r23
/* 804F0858  3C 9C 00 01 */	addis r4, r28, 1
/* 804F085C  38 84 85 3C */	addi r4, r4, -31428
/* 804F0860  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 804F0864  4B D7 62 D0 */	b __mi__4cXyzCFRC3Vec
/* 804F0868  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804F086C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804F0870  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804F0874  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F0878  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 804F087C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 804F0880  4B D7 6D F4 */	b cM_atan2s__Fff
/* 804F0884  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 804F0888  7C 03 00 50 */	subf r0, r3, r0
/* 804F088C  7C 00 07 34 */	extsh r0, r0
/* 804F0890  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804F0894  41 81 00 0C */	bgt lbl_804F08A0
/* 804F0898  2C 00 A0 00 */	cmpwi r0, -24576
/* 804F089C  40 80 00 90 */	bge lbl_804F092C
lbl_804F08A0:
/* 804F08A0  3C 7C 00 01 */	addis r3, r28, 1
/* 804F08A4  88 03 85 3A */	lbz r0, -0x7ac6(r3)
/* 804F08A8  7C 00 07 75 */	extsb. r0, r0
/* 804F08AC  40 82 00 20 */	bne lbl_804F08CC
/* 804F08B0  88 03 85 38 */	lbz r0, -0x7ac8(r3)
/* 804F08B4  7C 00 07 75 */	extsb. r0, r0
/* 804F08B8  41 82 00 74 */	beq lbl_804F092C
/* 804F08BC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804F08C0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804F08C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F08C8  41 82 00 64 */	beq lbl_804F092C
lbl_804F08CC:
/* 804F08CC  3C 7C 00 01 */	addis r3, r28, 1
/* 804F08D0  C0 23 85 30 */	lfs f1, -0x7ad0(r3)
/* 804F08D4  88 03 85 38 */	lbz r0, -0x7ac8(r3)
/* 804F08D8  7C 00 07 75 */	extsb. r0, r0
/* 804F08DC  41 82 00 0C */	beq lbl_804F08E8
/* 804F08E0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 804F08E4  48 00 00 08 */	b lbl_804F08EC
lbl_804F08E8:
/* 804F08E8  C0 1E 00 AC */	lfs f0, 0xac(r30)
lbl_804F08EC:
/* 804F08EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F08F0  40 81 00 3C */	ble lbl_804F092C
/* 804F08F4  2C 19 00 02 */	cmpwi r25, 2
/* 804F08F8  40 82 00 0C */	bne lbl_804F0904
/* 804F08FC  2C 1D 00 0C */	cmpwi r29, 0xc
/* 804F0900  41 82 00 14 */	beq lbl_804F0914
lbl_804F0904:
/* 804F0904  2C 19 00 03 */	cmpwi r25, 3
/* 804F0908  40 82 00 24 */	bne lbl_804F092C
/* 804F090C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 804F0910  40 82 00 1C */	bne lbl_804F092C
lbl_804F0914:
/* 804F0914  38 00 00 07 */	li r0, 7
/* 804F0918  B0 18 07 A2 */	sth r0, 0x7a2(r24)
/* 804F091C  38 00 00 00 */	li r0, 0
/* 804F0920  B0 18 07 A4 */	sth r0, 0x7a4(r24)
/* 804F0924  9B 38 08 08 */	stb r25, 0x808(r24)
/* 804F0928  48 00 01 30 */	b lbl_804F0A58
lbl_804F092C:
/* 804F092C  3B 39 00 01 */	addi r25, r25, 1
/* 804F0930  2C 19 00 03 */	cmpwi r25, 3
/* 804F0934  3A F7 61 D4 */	addi r23, r23, 0x61d4
/* 804F0938  40 81 FF 18 */	ble lbl_804F0850
/* 804F093C  88 18 08 09 */	lbz r0, 0x809(r24)
/* 804F0940  7C 00 07 75 */	extsb. r0, r0
/* 804F0944  41 82 00 28 */	beq lbl_804F096C
/* 804F0948  A8 78 04 DE */	lha r3, 0x4de(r24)
/* 804F094C  A8 18 05 C6 */	lha r0, 0x5c6(r24)
/* 804F0950  7C 03 00 50 */	subf r0, r3, r0
/* 804F0954  7C 00 07 34 */	extsh r0, r0
/* 804F0958  2C 00 04 00 */	cmpwi r0, 0x400
/* 804F095C  40 80 00 10 */	bge lbl_804F096C
/* 804F0960  2C 00 FC 00 */	cmpwi r0, -1024
/* 804F0964  40 81 00 08 */	ble lbl_804F096C
/* 804F0968  3B 60 00 01 */	li r27, 1
lbl_804F096C:
/* 804F096C  80 18 08 78 */	lwz r0, 0x878(r24)
/* 804F0970  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804F0974  41 82 00 20 */	beq lbl_804F0994
/* 804F0978  3C 60 80 4F */	lis r3, s_hasira_poscheck__FPvPv@ha
/* 804F097C  38 63 F3 08 */	addi r3, r3, s_hasira_poscheck__FPvPv@l
/* 804F0980  7F 04 C3 78 */	mr r4, r24
/* 804F0984  4B B3 09 B4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804F0988  28 03 00 00 */	cmplwi r3, 0
/* 804F098C  41 82 00 08 */	beq lbl_804F0994
/* 804F0990  3B 40 00 01 */	li r26, 1
lbl_804F0994:
/* 804F0994  D3 F8 05 2C */	stfs f31, 0x52c(r24)
/* 804F0998  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804F099C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804F09A0  40 81 00 18 */	ble lbl_804F09B8
/* 804F09A4  38 78 04 DE */	addi r3, r24, 0x4de
/* 804F09A8  A8 98 05 C6 */	lha r4, 0x5c6(r24)
/* 804F09AC  38 A0 00 02 */	li r5, 2
/* 804F09B0  38 C0 05 00 */	li r6, 0x500
/* 804F09B4  4B D7 FC 54 */	b cLib_addCalcAngleS2__FPssss
lbl_804F09B8:
/* 804F09B8  7F 03 C3 78 */	mr r3, r24
/* 804F09BC  3C 80 80 50 */	lis r4, l_HIO@ha
/* 804F09C0  38 84 AE A4 */	addi r4, r4, l_HIO@l
/* 804F09C4  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 804F09C8  38 80 30 00 */	li r4, 0x3000
/* 804F09CC  4B FF F6 91 */	bl pl_check__FP10e_fm_classfs
/* 804F09D0  2C 03 00 00 */	cmpwi r3, 0
/* 804F09D4  41 82 00 0C */	beq lbl_804F09E0
/* 804F09D8  3B 40 00 01 */	li r26, 1
/* 804F09DC  48 00 00 34 */	b lbl_804F0A10
lbl_804F09E0:
/* 804F09E0  7F 03 C3 78 */	mr r3, r24
/* 804F09E4  3C 80 80 50 */	lis r4, l_HIO@ha
/* 804F09E8  38 84 AE A4 */	addi r4, r4, l_HIO@l
/* 804F09EC  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 804F09F0  38 80 00 00 */	li r4, 0
/* 804F09F4  4B FF F6 69 */	bl pl_check__FP10e_fm_classfs
/* 804F09F8  2C 03 00 00 */	cmpwi r3, 0
/* 804F09FC  41 82 00 14 */	beq lbl_804F0A10
/* 804F0A00  A8 18 07 B0 */	lha r0, 0x7b0(r24)
/* 804F0A04  2C 00 00 00 */	cmpwi r0, 0
/* 804F0A08  40 82 00 08 */	bne lbl_804F0A10
/* 804F0A0C  3B 60 00 01 */	li r27, 1
lbl_804F0A10:
/* 804F0A10  7F 60 07 75 */	extsb. r0, r27
/* 804F0A14  41 82 00 2C */	beq lbl_804F0A40
/* 804F0A18  38 00 00 03 */	li r0, 3
/* 804F0A1C  B0 18 07 A2 */	sth r0, 0x7a2(r24)
/* 804F0A20  38 00 00 00 */	li r0, 0
/* 804F0A24  B0 18 07 A4 */	sth r0, 0x7a4(r24)
/* 804F0A28  7F 03 C3 78 */	mr r3, r24
/* 804F0A2C  38 80 00 22 */	li r4, 0x22
/* 804F0A30  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 804F0A34  38 A0 00 02 */	li r5, 2
/* 804F0A38  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804F0A3C  4B FF ED CD */	bl anm_init__FP10e_fm_classifUcf
lbl_804F0A40:
/* 804F0A40  7F 40 07 75 */	extsb. r0, r26
/* 804F0A44  41 82 00 14 */	beq lbl_804F0A58
/* 804F0A48  38 00 00 02 */	li r0, 2
/* 804F0A4C  B0 18 07 A2 */	sth r0, 0x7a2(r24)
/* 804F0A50  38 00 00 00 */	li r0, 0
/* 804F0A54  B0 18 07 A4 */	sth r0, 0x7a4(r24)
lbl_804F0A58:
/* 804F0A58  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804F0A5C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804F0A60  39 61 00 90 */	addi r11, r1, 0x90
/* 804F0A64  4B E7 17 AC */	b _restgpr_23
/* 804F0A68  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804F0A6C  7C 08 03 A6 */	mtlr r0
/* 804F0A70  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804F0A74  4E 80 00 20 */	blr 
