lbl_806FF184:
/* 806FF184  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806FF188  7C 08 02 A6 */	mflr r0
/* 806FF18C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806FF190  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806FF194  4B C6 30 20 */	b _savegpr_19
/* 806FF198  7C 7E 1B 78 */	mr r30, r3
/* 806FF19C  7C 9A 23 78 */	mr r26, r4
/* 806FF1A0  7C BB 2B 78 */	mr r27, r5
/* 806FF1A4  7C DC 33 78 */	mr r28, r6
/* 806FF1A8  3C 60 80 70 */	lis r3, cNullVec__6Z2Calc@ha
/* 806FF1AC  3A E3 F6 C4 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806FF1B0  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FF1B4  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FF1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FF1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FF1C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806FF1C4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806FF1C8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806FF1CC  28 00 00 00 */	cmplwi r0, 0
/* 806FF1D0  41 82 03 A4 */	beq lbl_806FF574
/* 806FF1D4  7F C4 F3 78 */	mr r4, r30
/* 806FF1D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806FF1DC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806FF1E0  7D 89 03 A6 */	mtctr r12
/* 806FF1E4  4E 80 04 21 */	bctrl 
/* 806FF1E8  2C 03 00 00 */	cmpwi r3, 0
/* 806FF1EC  41 82 03 88 */	beq lbl_806FF574
/* 806FF1F0  4B AA D3 8C */	b dKy_darkworld_check__Fv
/* 806FF1F4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806FF1F8  30 03 FF FF */	addic r0, r3, -1
/* 806FF1FC  7F A0 19 10 */	subfe r29, r0, r3
/* 806FF200  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806FF204  28 00 00 00 */	cmplwi r0, 0
/* 806FF208  40 82 02 A0 */	bne lbl_806FF4A8
/* 806FF20C  38 00 00 01 */	li r0, 1
/* 806FF210  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806FF214  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806FF218  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806FF21C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FF220  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806FF224  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806FF228  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FF22C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806FF230  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FF234  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FF238  4B C4 72 78 */	b PSMTXCopy
/* 806FF23C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FF240  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806FF244  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FF248  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806FF24C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806FF250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FF254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FF258  38 81 00 4C */	addi r4, r1, 0x4c
/* 806FF25C  38 A1 00 58 */	addi r5, r1, 0x58
/* 806FF260  4B C4 7B 0C */	b PSMTXMultVec
/* 806FF264  38 61 00 34 */	addi r3, r1, 0x34
/* 806FF268  38 81 00 58 */	addi r4, r1, 0x58
/* 806FF26C  7F 65 DB 78 */	mr r5, r27
/* 806FF270  4B B6 78 C4 */	b __mi__4cXyzCFRC3Vec
/* 806FF274  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806FF278  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806FF27C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806FF280  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FF284  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806FF288  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806FF28C  4B B6 83 E8 */	b cM_atan2s__Fff
/* 806FF290  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806FF294  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806FF298  EC 20 00 32 */	fmuls f1, f0, f0
/* 806FF29C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806FF2A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 806FF2A4  EC 41 00 2A */	fadds f2, f1, f0
/* 806FF2A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FF2AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806FF2B0  40 81 00 0C */	ble lbl_806FF2BC
/* 806FF2B4  FC 00 10 34 */	frsqrte f0, f2
/* 806FF2B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806FF2BC:
/* 806FF2BC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806FF2C0  4B B6 83 B4 */	b cM_atan2s__Fff
/* 806FF2C4  7C 03 00 D0 */	neg r0, r3
/* 806FF2C8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806FF2CC  38 80 00 00 */	li r4, 0
/* 806FF2D0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806FF2D4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FF2D8  7C 00 07 74 */	extsb r0, r0
/* 806FF2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FF2E0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806FF2E4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806FF2E8  57 A5 10 3A */	slwi r5, r29, 2
/* 806FF2EC  90 81 00 08 */	stw r4, 8(r1)
/* 806FF2F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FF2F4  3A B7 00 20 */	addi r21, r23, 0x20
/* 806FF2F8  7E B5 2A 14 */	add r21, r21, r5
/* 806FF2FC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806FF300  3A D7 00 28 */	addi r22, r23, 0x28
/* 806FF304  7E D6 2A 14 */	add r22, r22, r5
/* 806FF308  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806FF30C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806FF310  38 80 00 00 */	li r4, 0
/* 806FF314  38 A0 02 9B */	li r5, 0x29b
/* 806FF318  7F 66 DB 78 */	mr r6, r27
/* 806FF31C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806FF320  39 01 00 2C */	addi r8, r1, 0x2c
/* 806FF324  7F 89 E3 78 */	mr r9, r28
/* 806FF328  39 40 00 FF */	li r10, 0xff
/* 806FF32C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FF330  4B 94 D7 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FF334  7C 79 1B 79 */	or. r25, r3, r3
/* 806FF338  41 82 00 FC */	beq lbl_806FF434
/* 806FF33C  38 61 00 40 */	addi r3, r1, 0x40
/* 806FF340  4B C4 7D F8 */	b PSVECSquareMag
/* 806FF344  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FF348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FF34C  40 81 00 58 */	ble lbl_806FF3A4
/* 806FF350  FC 00 08 34 */	frsqrte f0, f1
/* 806FF354  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806FF358  FC 44 00 32 */	fmul f2, f4, f0
/* 806FF35C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806FF360  FC 00 00 32 */	fmul f0, f0, f0
/* 806FF364  FC 01 00 32 */	fmul f0, f1, f0
/* 806FF368  FC 03 00 28 */	fsub f0, f3, f0
/* 806FF36C  FC 02 00 32 */	fmul f0, f2, f0
/* 806FF370  FC 44 00 32 */	fmul f2, f4, f0
/* 806FF374  FC 00 00 32 */	fmul f0, f0, f0
/* 806FF378  FC 01 00 32 */	fmul f0, f1, f0
/* 806FF37C  FC 03 00 28 */	fsub f0, f3, f0
/* 806FF380  FC 02 00 32 */	fmul f0, f2, f0
/* 806FF384  FC 44 00 32 */	fmul f2, f4, f0
/* 806FF388  FC 00 00 32 */	fmul f0, f0, f0
/* 806FF38C  FC 01 00 32 */	fmul f0, f1, f0
/* 806FF390  FC 03 00 28 */	fsub f0, f3, f0
/* 806FF394  FC 02 00 32 */	fmul f0, f2, f0
/* 806FF398  FC 21 00 32 */	fmul f1, f1, f0
/* 806FF39C  FC 20 08 18 */	frsp f1, f1
/* 806FF3A0  48 00 00 88 */	b lbl_806FF428
lbl_806FF3A4:
/* 806FF3A4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806FF3A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FF3AC  40 80 00 10 */	bge lbl_806FF3BC
/* 806FF3B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806FF3B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806FF3B8  48 00 00 70 */	b lbl_806FF428
lbl_806FF3BC:
/* 806FF3BC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806FF3C0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806FF3C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806FF3C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806FF3CC  7C 03 00 00 */	cmpw r3, r0
/* 806FF3D0  41 82 00 14 */	beq lbl_806FF3E4
/* 806FF3D4  40 80 00 40 */	bge lbl_806FF414
/* 806FF3D8  2C 03 00 00 */	cmpwi r3, 0
/* 806FF3DC  41 82 00 20 */	beq lbl_806FF3FC
/* 806FF3E0  48 00 00 34 */	b lbl_806FF414
lbl_806FF3E4:
/* 806FF3E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806FF3E8  41 82 00 0C */	beq lbl_806FF3F4
/* 806FF3EC  38 00 00 01 */	li r0, 1
/* 806FF3F0  48 00 00 28 */	b lbl_806FF418
lbl_806FF3F4:
/* 806FF3F4  38 00 00 02 */	li r0, 2
/* 806FF3F8  48 00 00 20 */	b lbl_806FF418
lbl_806FF3FC:
/* 806FF3FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806FF400  41 82 00 0C */	beq lbl_806FF40C
/* 806FF404  38 00 00 05 */	li r0, 5
/* 806FF408  48 00 00 10 */	b lbl_806FF418
lbl_806FF40C:
/* 806FF40C  38 00 00 03 */	li r0, 3
/* 806FF410  48 00 00 08 */	b lbl_806FF418
lbl_806FF414:
/* 806FF414  38 00 00 04 */	li r0, 4
lbl_806FF418:
/* 806FF418  2C 00 00 01 */	cmpwi r0, 1
/* 806FF41C  40 82 00 0C */	bne lbl_806FF428
/* 806FF420  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806FF424  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806FF428:
/* 806FF428  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806FF42C  EC 00 00 72 */	fmuls f0, f0, f1
/* 806FF430  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806FF434:
/* 806FF434  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FF438  7C 04 07 74 */	extsb r4, r0
/* 806FF43C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806FF440  38 00 00 00 */	li r0, 0
/* 806FF444  90 01 00 08 */	stw r0, 8(r1)
/* 806FF448  90 81 00 0C */	stw r4, 0xc(r1)
/* 806FF44C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806FF450  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806FF454  90 01 00 18 */	stw r0, 0x18(r1)
/* 806FF458  38 80 00 00 */	li r4, 0
/* 806FF45C  38 A0 02 9C */	li r5, 0x29c
/* 806FF460  7F 66 DB 78 */	mr r6, r27
/* 806FF464  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806FF468  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806FF46C  7F 89 E3 78 */	mr r9, r28
/* 806FF470  39 40 00 FF */	li r10, 0xff
/* 806FF474  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FF478  4B 94 D6 18 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FF47C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806FF480  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806FF484  90 01 00 28 */	stw r0, 0x28(r1)
/* 806FF488  7F 43 D3 78 */	mr r3, r26
/* 806FF48C  38 81 00 28 */	addi r4, r1, 0x28
/* 806FF490  38 A0 00 00 */	li r5, 0
/* 806FF494  38 C0 FF FF */	li r6, -1
/* 806FF498  81 9A 00 00 */	lwz r12, 0(r26)
/* 806FF49C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FF4A0  7D 89 03 A6 */	mtctr r12
/* 806FF4A4  4E 80 04 21 */	bctrl 
lbl_806FF4A8:
/* 806FF4A8  3A A0 00 00 */	li r21, 0
/* 806FF4AC  3A C0 00 00 */	li r22, 0
/* 806FF4B0  3A 80 00 00 */	li r20, 0
/* 806FF4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FF4B8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806FF4BC  57 A0 10 3A */	slwi r0, r29, 2
/* 806FF4C0  3B 17 00 28 */	addi r24, r23, 0x28
/* 806FF4C4  7F 18 02 14 */	add r24, r24, r0
/* 806FF4C8  3B B7 00 20 */	addi r29, r23, 0x20
/* 806FF4CC  7F BD 02 14 */	add r29, r29, r0
/* 806FF4D0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806FF4D4:
/* 806FF4D4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806FF4D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806FF4DC  7C 05 07 74 */	extsb r5, r0
/* 806FF4E0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806FF4E4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806FF4E8  38 00 00 FF */	li r0, 0xff
/* 806FF4EC  90 01 00 08 */	stw r0, 8(r1)
/* 806FF4F0  38 00 00 00 */	li r0, 0
/* 806FF4F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FF4F8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806FF4FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806FF500  93 01 00 18 */	stw r24, 0x18(r1)
/* 806FF504  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FF508  38 A0 00 00 */	li r5, 0
/* 806FF50C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806FF510  7F 67 DB 78 */	mr r7, r27
/* 806FF514  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806FF518  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806FF51C  7F 8A E3 78 */	mr r10, r28
/* 806FF520  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FF524  4B 94 DF A8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FF528  7C 7E B9 2E */	stwx r3, r30, r23
/* 806FF52C  3A B5 00 01 */	addi r21, r21, 1
/* 806FF530  2C 15 00 03 */	cmpwi r21, 3
/* 806FF534  3A D6 00 02 */	addi r22, r22, 2
/* 806FF538  3A 94 00 04 */	addi r20, r20, 4
/* 806FF53C  41 80 FF 98 */	blt lbl_806FF4D4
/* 806FF540  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806FF544  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806FF548  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FF54C  7F 43 D3 78 */	mr r3, r26
/* 806FF550  38 81 00 24 */	addi r4, r1, 0x24
/* 806FF554  38 A0 00 00 */	li r5, 0
/* 806FF558  38 C0 FF FF */	li r6, -1
/* 806FF55C  81 9A 00 00 */	lwz r12, 0(r26)
/* 806FF560  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806FF564  7D 89 03 A6 */	mtctr r12
/* 806FF568  4E 80 04 21 */	bctrl 
/* 806FF56C  38 60 00 01 */	li r3, 1
/* 806FF570  48 00 00 10 */	b lbl_806FF580
lbl_806FF574:
/* 806FF574  38 00 00 00 */	li r0, 0
/* 806FF578  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806FF57C  38 60 00 00 */	li r3, 0
lbl_806FF580:
/* 806FF580  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806FF584  4B C6 2C 7C */	b _restgpr_19
/* 806FF588  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806FF58C  7C 08 03 A6 */	mtlr r0
/* 806FF590  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806FF594  4E 80 00 20 */	blr 
