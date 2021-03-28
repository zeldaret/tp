lbl_806F03FC:
/* 806F03FC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806F0400  7C 08 02 A6 */	mflr r0
/* 806F0404  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806F0408  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806F040C  4B C7 1D A8 */	b _savegpr_19
/* 806F0410  7C 7E 1B 78 */	mr r30, r3
/* 806F0414  7C 9A 23 78 */	mr r26, r4
/* 806F0418  7C BB 2B 78 */	mr r27, r5
/* 806F041C  7C DC 33 78 */	mr r28, r6
/* 806F0420  3C 60 80 6F */	lis r3, cNullVec__6Z2Calc@ha
/* 806F0424  3A E3 09 74 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806F0428  3C 60 80 6F */	lis r3, lit_3966@ha
/* 806F042C  3B E3 08 60 */	addi r31, r3, lit_3966@l
/* 806F0430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F0434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F0438  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806F043C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806F0440  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806F0444  28 00 00 00 */	cmplwi r0, 0
/* 806F0448  41 82 03 A4 */	beq lbl_806F07EC
/* 806F044C  7F C4 F3 78 */	mr r4, r30
/* 806F0450  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F0454  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806F0458  7D 89 03 A6 */	mtctr r12
/* 806F045C  4E 80 04 21 */	bctrl 
/* 806F0460  2C 03 00 00 */	cmpwi r3, 0
/* 806F0464  41 82 03 88 */	beq lbl_806F07EC
/* 806F0468  4B AB C1 14 */	b dKy_darkworld_check__Fv
/* 806F046C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806F0470  30 03 FF FF */	addic r0, r3, -1
/* 806F0474  7F A0 19 10 */	subfe r29, r0, r3
/* 806F0478  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806F047C  28 00 00 00 */	cmplwi r0, 0
/* 806F0480  40 82 02 A0 */	bne lbl_806F0720
/* 806F0484  38 00 00 01 */	li r0, 1
/* 806F0488  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806F048C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806F0490  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806F0494  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0498  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806F049C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806F04A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F04A4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806F04A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806F04AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806F04B0  4B C5 60 00 */	b PSMTXCopy
/* 806F04B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806F04B8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806F04BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F04C0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F04C4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F04C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806F04CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806F04D0  38 81 00 4C */	addi r4, r1, 0x4c
/* 806F04D4  38 A1 00 58 */	addi r5, r1, 0x58
/* 806F04D8  4B C5 68 94 */	b PSMTXMultVec
/* 806F04DC  38 61 00 34 */	addi r3, r1, 0x34
/* 806F04E0  38 81 00 58 */	addi r4, r1, 0x58
/* 806F04E4  7F 65 DB 78 */	mr r5, r27
/* 806F04E8  4B B7 66 4C */	b __mi__4cXyzCFRC3Vec
/* 806F04EC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806F04F0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806F04F4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806F04F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806F04FC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806F0500  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806F0504  4B B7 71 70 */	b cM_atan2s__Fff
/* 806F0508  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806F050C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806F0510  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F0514  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806F0518  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F051C  EC 41 00 2A */	fadds f2, f1, f0
/* 806F0520  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F0524  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F0528  40 81 00 0C */	ble lbl_806F0534
/* 806F052C  FC 00 10 34 */	frsqrte f0, f2
/* 806F0530  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F0534:
/* 806F0534  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806F0538  4B B7 71 3C */	b cM_atan2s__Fff
/* 806F053C  7C 03 00 D0 */	neg r0, r3
/* 806F0540  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806F0544  38 80 00 00 */	li r4, 0
/* 806F0548  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806F054C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F0550  7C 00 07 74 */	extsb r0, r0
/* 806F0554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F0558  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806F055C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806F0560  57 A5 10 3A */	slwi r5, r29, 2
/* 806F0564  90 81 00 08 */	stw r4, 8(r1)
/* 806F0568  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F056C  3A B7 00 20 */	addi r21, r23, 0x20
/* 806F0570  7E B5 2A 14 */	add r21, r21, r5
/* 806F0574  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806F0578  3A D7 00 28 */	addi r22, r23, 0x28
/* 806F057C  7E D6 2A 14 */	add r22, r22, r5
/* 806F0580  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806F0584  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F0588  38 80 00 00 */	li r4, 0
/* 806F058C  38 A0 02 9B */	li r5, 0x29b
/* 806F0590  7F 66 DB 78 */	mr r6, r27
/* 806F0594  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806F0598  39 01 00 2C */	addi r8, r1, 0x2c
/* 806F059C  7F 89 E3 78 */	mr r9, r28
/* 806F05A0  39 40 00 FF */	li r10, 0xff
/* 806F05A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F05A8  4B 95 C4 E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F05AC  7C 79 1B 79 */	or. r25, r3, r3
/* 806F05B0  41 82 00 FC */	beq lbl_806F06AC
/* 806F05B4  38 61 00 40 */	addi r3, r1, 0x40
/* 806F05B8  4B C5 6B 80 */	b PSVECSquareMag
/* 806F05BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F05C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F05C4  40 81 00 58 */	ble lbl_806F061C
/* 806F05C8  FC 00 08 34 */	frsqrte f0, f1
/* 806F05CC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806F05D0  FC 44 00 32 */	fmul f2, f4, f0
/* 806F05D4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806F05D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806F05DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806F05E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806F05E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806F05E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806F05EC  FC 00 00 32 */	fmul f0, f0, f0
/* 806F05F0  FC 01 00 32 */	fmul f0, f1, f0
/* 806F05F4  FC 03 00 28 */	fsub f0, f3, f0
/* 806F05F8  FC 02 00 32 */	fmul f0, f2, f0
/* 806F05FC  FC 44 00 32 */	fmul f2, f4, f0
/* 806F0600  FC 00 00 32 */	fmul f0, f0, f0
/* 806F0604  FC 01 00 32 */	fmul f0, f1, f0
/* 806F0608  FC 03 00 28 */	fsub f0, f3, f0
/* 806F060C  FC 02 00 32 */	fmul f0, f2, f0
/* 806F0610  FC 21 00 32 */	fmul f1, f1, f0
/* 806F0614  FC 20 08 18 */	frsp f1, f1
/* 806F0618  48 00 00 88 */	b lbl_806F06A0
lbl_806F061C:
/* 806F061C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806F0620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F0624  40 80 00 10 */	bge lbl_806F0634
/* 806F0628  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806F062C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806F0630  48 00 00 70 */	b lbl_806F06A0
lbl_806F0634:
/* 806F0634  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806F0638  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806F063C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806F0640  3C 00 7F 80 */	lis r0, 0x7f80
/* 806F0644  7C 03 00 00 */	cmpw r3, r0
/* 806F0648  41 82 00 14 */	beq lbl_806F065C
/* 806F064C  40 80 00 40 */	bge lbl_806F068C
/* 806F0650  2C 03 00 00 */	cmpwi r3, 0
/* 806F0654  41 82 00 20 */	beq lbl_806F0674
/* 806F0658  48 00 00 34 */	b lbl_806F068C
lbl_806F065C:
/* 806F065C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F0660  41 82 00 0C */	beq lbl_806F066C
/* 806F0664  38 00 00 01 */	li r0, 1
/* 806F0668  48 00 00 28 */	b lbl_806F0690
lbl_806F066C:
/* 806F066C  38 00 00 02 */	li r0, 2
/* 806F0670  48 00 00 20 */	b lbl_806F0690
lbl_806F0674:
/* 806F0674  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F0678  41 82 00 0C */	beq lbl_806F0684
/* 806F067C  38 00 00 05 */	li r0, 5
/* 806F0680  48 00 00 10 */	b lbl_806F0690
lbl_806F0684:
/* 806F0684  38 00 00 03 */	li r0, 3
/* 806F0688  48 00 00 08 */	b lbl_806F0690
lbl_806F068C:
/* 806F068C  38 00 00 04 */	li r0, 4
lbl_806F0690:
/* 806F0690  2C 00 00 01 */	cmpwi r0, 1
/* 806F0694  40 82 00 0C */	bne lbl_806F06A0
/* 806F0698  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806F069C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806F06A0:
/* 806F06A0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806F06A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806F06A8  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806F06AC:
/* 806F06AC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F06B0  7C 04 07 74 */	extsb r4, r0
/* 806F06B4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806F06B8  38 00 00 00 */	li r0, 0
/* 806F06BC  90 01 00 08 */	stw r0, 8(r1)
/* 806F06C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 806F06C4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806F06C8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806F06CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 806F06D0  38 80 00 00 */	li r4, 0
/* 806F06D4  38 A0 02 9C */	li r5, 0x29c
/* 806F06D8  7F 66 DB 78 */	mr r6, r27
/* 806F06DC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806F06E0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806F06E4  7F 89 E3 78 */	mr r9, r28
/* 806F06E8  39 40 00 FF */	li r10, 0xff
/* 806F06EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F06F0  4B 95 C3 A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F06F4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806F06F8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806F06FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806F0700  7F 43 D3 78 */	mr r3, r26
/* 806F0704  38 81 00 28 */	addi r4, r1, 0x28
/* 806F0708  38 A0 00 00 */	li r5, 0
/* 806F070C  38 C0 FF FF */	li r6, -1
/* 806F0710  81 9A 00 00 */	lwz r12, 0(r26)
/* 806F0714  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F0718  7D 89 03 A6 */	mtctr r12
/* 806F071C  4E 80 04 21 */	bctrl 
lbl_806F0720:
/* 806F0720  3A A0 00 00 */	li r21, 0
/* 806F0724  3A C0 00 00 */	li r22, 0
/* 806F0728  3A 80 00 00 */	li r20, 0
/* 806F072C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F0730  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806F0734  57 A0 10 3A */	slwi r0, r29, 2
/* 806F0738  3B 17 00 28 */	addi r24, r23, 0x28
/* 806F073C  7F 18 02 14 */	add r24, r24, r0
/* 806F0740  3B B7 00 20 */	addi r29, r23, 0x20
/* 806F0744  7F BD 02 14 */	add r29, r29, r0
/* 806F0748  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806F074C:
/* 806F074C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806F0750  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806F0754  7C 05 07 74 */	extsb r5, r0
/* 806F0758  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806F075C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806F0760  38 00 00 FF */	li r0, 0xff
/* 806F0764  90 01 00 08 */	stw r0, 8(r1)
/* 806F0768  38 00 00 00 */	li r0, 0
/* 806F076C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F0770  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806F0774  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806F0778  93 01 00 18 */	stw r24, 0x18(r1)
/* 806F077C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806F0780  38 A0 00 00 */	li r5, 0
/* 806F0784  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806F0788  7F 67 DB 78 */	mr r7, r27
/* 806F078C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806F0790  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806F0794  7F 8A E3 78 */	mr r10, r28
/* 806F0798  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F079C  4B 95 CD 30 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F07A0  7C 7E B9 2E */	stwx r3, r30, r23
/* 806F07A4  3A B5 00 01 */	addi r21, r21, 1
/* 806F07A8  2C 15 00 03 */	cmpwi r21, 3
/* 806F07AC  3A D6 00 02 */	addi r22, r22, 2
/* 806F07B0  3A 94 00 04 */	addi r20, r20, 4
/* 806F07B4  41 80 FF 98 */	blt lbl_806F074C
/* 806F07B8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806F07BC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806F07C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F07C4  7F 43 D3 78 */	mr r3, r26
/* 806F07C8  38 81 00 24 */	addi r4, r1, 0x24
/* 806F07CC  38 A0 00 00 */	li r5, 0
/* 806F07D0  38 C0 FF FF */	li r6, -1
/* 806F07D4  81 9A 00 00 */	lwz r12, 0(r26)
/* 806F07D8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F07DC  7D 89 03 A6 */	mtctr r12
/* 806F07E0  4E 80 04 21 */	bctrl 
/* 806F07E4  38 60 00 01 */	li r3, 1
/* 806F07E8  48 00 00 10 */	b lbl_806F07F8
lbl_806F07EC:
/* 806F07EC  38 00 00 00 */	li r0, 0
/* 806F07F0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806F07F4  38 60 00 00 */	li r3, 0
lbl_806F07F8:
/* 806F07F8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806F07FC  4B C7 1A 04 */	b _restgpr_19
/* 806F0800  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806F0804  7C 08 03 A6 */	mtlr r0
/* 806F0808  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806F080C  4E 80 00 20 */	blr 
