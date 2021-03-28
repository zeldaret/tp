lbl_8068D388:
/* 8068D388  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8068D38C  7C 08 02 A6 */	mflr r0
/* 8068D390  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8068D394  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8068D398  4B CD 4E 1C */	b _savegpr_19
/* 8068D39C  7C 7E 1B 78 */	mr r30, r3
/* 8068D3A0  7C 9A 23 78 */	mr r26, r4
/* 8068D3A4  7C BB 2B 78 */	mr r27, r5
/* 8068D3A8  7C DC 33 78 */	mr r28, r6
/* 8068D3AC  3C 60 80 69 */	lis r3, cNullVec__6Z2Calc@ha
/* 8068D3B0  3A E3 D8 EC */	addi r23, r3, cNullVec__6Z2Calc@l
/* 8068D3B4  3C 60 80 69 */	lis r3, lit_3903@ha
/* 8068D3B8  3B E3 D7 EC */	addi r31, r3, lit_3903@l
/* 8068D3BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068D3C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068D3C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8068D3C8  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 8068D3CC  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8068D3D0  28 00 00 00 */	cmplwi r0, 0
/* 8068D3D4  41 82 03 A4 */	beq lbl_8068D778
/* 8068D3D8  7F C4 F3 78 */	mr r4, r30
/* 8068D3DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8068D3E0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8068D3E4  7D 89 03 A6 */	mtctr r12
/* 8068D3E8  4E 80 04 21 */	bctrl 
/* 8068D3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8068D3F0  41 82 03 88 */	beq lbl_8068D778
/* 8068D3F4  4B B1 F1 88 */	b dKy_darkworld_check__Fv
/* 8068D3F8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8068D3FC  30 03 FF FF */	addic r0, r3, -1
/* 8068D400  7F A0 19 10 */	subfe r29, r0, r3
/* 8068D404  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8068D408  28 00 00 00 */	cmplwi r0, 0
/* 8068D40C  40 82 02 A0 */	bne lbl_8068D6AC
/* 8068D410  38 00 00 01 */	li r0, 1
/* 8068D414  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8068D418  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8068D41C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8068D420  80 63 00 00 */	lwz r3, 0(r3)
/* 8068D424  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8068D428  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8068D42C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068D430  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8068D434  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8068D438  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8068D43C  4B CB 90 74 */	b PSMTXCopy
/* 8068D440  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8068D444  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068D448  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068D44C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8068D450  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8068D454  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8068D458  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068D45C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8068D460  38 A1 00 58 */	addi r5, r1, 0x58
/* 8068D464  4B CB 99 08 */	b PSMTXMultVec
/* 8068D468  38 61 00 34 */	addi r3, r1, 0x34
/* 8068D46C  38 81 00 58 */	addi r4, r1, 0x58
/* 8068D470  7F 65 DB 78 */	mr r5, r27
/* 8068D474  4B BD 96 C0 */	b __mi__4cXyzCFRC3Vec
/* 8068D478  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8068D47C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8068D480  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8068D484  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068D488  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8068D48C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8068D490  4B BD A1 E4 */	b cM_atan2s__Fff
/* 8068D494  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8068D498  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8068D49C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8068D4A0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8068D4A4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8068D4A8  EC 41 00 2A */	fadds f2, f1, f0
/* 8068D4AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068D4B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8068D4B4  40 81 00 0C */	ble lbl_8068D4C0
/* 8068D4B8  FC 00 10 34 */	frsqrte f0, f2
/* 8068D4BC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8068D4C0:
/* 8068D4C0  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8068D4C4  4B BD A1 B0 */	b cM_atan2s__Fff
/* 8068D4C8  7C 03 00 D0 */	neg r0, r3
/* 8068D4CC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8068D4D0  38 80 00 00 */	li r4, 0
/* 8068D4D4  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8068D4D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068D4DC  7C 00 07 74 */	extsb r0, r0
/* 8068D4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068D4E4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8068D4E8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8068D4EC  57 A5 10 3A */	slwi r5, r29, 2
/* 8068D4F0  90 81 00 08 */	stw r4, 8(r1)
/* 8068D4F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068D4F8  3A B7 00 20 */	addi r21, r23, 0x20
/* 8068D4FC  7E B5 2A 14 */	add r21, r21, r5
/* 8068D500  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8068D504  3A D7 00 28 */	addi r22, r23, 0x28
/* 8068D508  7E D6 2A 14 */	add r22, r22, r5
/* 8068D50C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8068D510  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068D514  38 80 00 00 */	li r4, 0
/* 8068D518  38 A0 02 9B */	li r5, 0x29b
/* 8068D51C  7F 66 DB 78 */	mr r6, r27
/* 8068D520  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8068D524  39 01 00 2C */	addi r8, r1, 0x2c
/* 8068D528  7F 89 E3 78 */	mr r9, r28
/* 8068D52C  39 40 00 FF */	li r10, 0xff
/* 8068D530  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068D534  4B 9B F5 5C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068D538  7C 79 1B 79 */	or. r25, r3, r3
/* 8068D53C  41 82 00 FC */	beq lbl_8068D638
/* 8068D540  38 61 00 40 */	addi r3, r1, 0x40
/* 8068D544  4B CB 9B F4 */	b PSVECSquareMag
/* 8068D548  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068D54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068D550  40 81 00 58 */	ble lbl_8068D5A8
/* 8068D554  FC 00 08 34 */	frsqrte f0, f1
/* 8068D558  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8068D55C  FC 44 00 32 */	fmul f2, f4, f0
/* 8068D560  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8068D564  FC 00 00 32 */	fmul f0, f0, f0
/* 8068D568  FC 01 00 32 */	fmul f0, f1, f0
/* 8068D56C  FC 03 00 28 */	fsub f0, f3, f0
/* 8068D570  FC 02 00 32 */	fmul f0, f2, f0
/* 8068D574  FC 44 00 32 */	fmul f2, f4, f0
/* 8068D578  FC 00 00 32 */	fmul f0, f0, f0
/* 8068D57C  FC 01 00 32 */	fmul f0, f1, f0
/* 8068D580  FC 03 00 28 */	fsub f0, f3, f0
/* 8068D584  FC 02 00 32 */	fmul f0, f2, f0
/* 8068D588  FC 44 00 32 */	fmul f2, f4, f0
/* 8068D58C  FC 00 00 32 */	fmul f0, f0, f0
/* 8068D590  FC 01 00 32 */	fmul f0, f1, f0
/* 8068D594  FC 03 00 28 */	fsub f0, f3, f0
/* 8068D598  FC 02 00 32 */	fmul f0, f2, f0
/* 8068D59C  FC 21 00 32 */	fmul f1, f1, f0
/* 8068D5A0  FC 20 08 18 */	frsp f1, f1
/* 8068D5A4  48 00 00 88 */	b lbl_8068D62C
lbl_8068D5A8:
/* 8068D5A8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8068D5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068D5B0  40 80 00 10 */	bge lbl_8068D5C0
/* 8068D5B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068D5B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8068D5BC  48 00 00 70 */	b lbl_8068D62C
lbl_8068D5C0:
/* 8068D5C0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8068D5C4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8068D5C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068D5CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068D5D0  7C 03 00 00 */	cmpw r3, r0
/* 8068D5D4  41 82 00 14 */	beq lbl_8068D5E8
/* 8068D5D8  40 80 00 40 */	bge lbl_8068D618
/* 8068D5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8068D5E0  41 82 00 20 */	beq lbl_8068D600
/* 8068D5E4  48 00 00 34 */	b lbl_8068D618
lbl_8068D5E8:
/* 8068D5E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068D5EC  41 82 00 0C */	beq lbl_8068D5F8
/* 8068D5F0  38 00 00 01 */	li r0, 1
/* 8068D5F4  48 00 00 28 */	b lbl_8068D61C
lbl_8068D5F8:
/* 8068D5F8  38 00 00 02 */	li r0, 2
/* 8068D5FC  48 00 00 20 */	b lbl_8068D61C
lbl_8068D600:
/* 8068D600  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068D604  41 82 00 0C */	beq lbl_8068D610
/* 8068D608  38 00 00 05 */	li r0, 5
/* 8068D60C  48 00 00 10 */	b lbl_8068D61C
lbl_8068D610:
/* 8068D610  38 00 00 03 */	li r0, 3
/* 8068D614  48 00 00 08 */	b lbl_8068D61C
lbl_8068D618:
/* 8068D618  38 00 00 04 */	li r0, 4
lbl_8068D61C:
/* 8068D61C  2C 00 00 01 */	cmpwi r0, 1
/* 8068D620  40 82 00 0C */	bne lbl_8068D62C
/* 8068D624  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068D628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8068D62C:
/* 8068D62C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8068D630  EC 00 00 72 */	fmuls f0, f0, f1
/* 8068D634  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8068D638:
/* 8068D638  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068D63C  7C 04 07 74 */	extsb r4, r0
/* 8068D640  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8068D644  38 00 00 00 */	li r0, 0
/* 8068D648  90 01 00 08 */	stw r0, 8(r1)
/* 8068D64C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8068D650  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8068D654  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8068D658  90 01 00 18 */	stw r0, 0x18(r1)
/* 8068D65C  38 80 00 00 */	li r4, 0
/* 8068D660  38 A0 02 9C */	li r5, 0x29c
/* 8068D664  7F 66 DB 78 */	mr r6, r27
/* 8068D668  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8068D66C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8068D670  7F 89 E3 78 */	mr r9, r28
/* 8068D674  39 40 00 FF */	li r10, 0xff
/* 8068D678  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068D67C  4B 9B F4 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068D680  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8068D684  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8068D688  90 01 00 28 */	stw r0, 0x28(r1)
/* 8068D68C  7F 43 D3 78 */	mr r3, r26
/* 8068D690  38 81 00 28 */	addi r4, r1, 0x28
/* 8068D694  38 A0 00 00 */	li r5, 0
/* 8068D698  38 C0 FF FF */	li r6, -1
/* 8068D69C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8068D6A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068D6A4  7D 89 03 A6 */	mtctr r12
/* 8068D6A8  4E 80 04 21 */	bctrl 
lbl_8068D6AC:
/* 8068D6AC  3A A0 00 00 */	li r21, 0
/* 8068D6B0  3A C0 00 00 */	li r22, 0
/* 8068D6B4  3A 80 00 00 */	li r20, 0
/* 8068D6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068D6BC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8068D6C0  57 A0 10 3A */	slwi r0, r29, 2
/* 8068D6C4  3B 17 00 28 */	addi r24, r23, 0x28
/* 8068D6C8  7F 18 02 14 */	add r24, r24, r0
/* 8068D6CC  3B B7 00 20 */	addi r29, r23, 0x20
/* 8068D6D0  7F BD 02 14 */	add r29, r29, r0
/* 8068D6D4  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8068D6D8:
/* 8068D6D8  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8068D6DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068D6E0  7C 05 07 74 */	extsb r5, r0
/* 8068D6E4  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8068D6E8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8068D6EC  38 00 00 FF */	li r0, 0xff
/* 8068D6F0  90 01 00 08 */	stw r0, 8(r1)
/* 8068D6F4  38 00 00 00 */	li r0, 0
/* 8068D6F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068D6FC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8068D700  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8068D704  93 01 00 18 */	stw r24, 0x18(r1)
/* 8068D708  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8068D70C  38 A0 00 00 */	li r5, 0
/* 8068D710  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8068D714  7F 67 DB 78 */	mr r7, r27
/* 8068D718  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8068D71C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8068D720  7F 8A E3 78 */	mr r10, r28
/* 8068D724  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068D728  4B 9B FD A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068D72C  7C 7E B9 2E */	stwx r3, r30, r23
/* 8068D730  3A B5 00 01 */	addi r21, r21, 1
/* 8068D734  2C 15 00 03 */	cmpwi r21, 3
/* 8068D738  3A D6 00 02 */	addi r22, r22, 2
/* 8068D73C  3A 94 00 04 */	addi r20, r20, 4
/* 8068D740  41 80 FF 98 */	blt lbl_8068D6D8
/* 8068D744  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8068D748  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8068D74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068D750  7F 43 D3 78 */	mr r3, r26
/* 8068D754  38 81 00 24 */	addi r4, r1, 0x24
/* 8068D758  38 A0 00 00 */	li r5, 0
/* 8068D75C  38 C0 FF FF */	li r6, -1
/* 8068D760  81 9A 00 00 */	lwz r12, 0(r26)
/* 8068D764  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8068D768  7D 89 03 A6 */	mtctr r12
/* 8068D76C  4E 80 04 21 */	bctrl 
/* 8068D770  38 60 00 01 */	li r3, 1
/* 8068D774  48 00 00 10 */	b lbl_8068D784
lbl_8068D778:
/* 8068D778  38 00 00 00 */	li r0, 0
/* 8068D77C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8068D780  38 60 00 00 */	li r3, 0
lbl_8068D784:
/* 8068D784  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8068D788  4B CD 4A 78 */	b _restgpr_19
/* 8068D78C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8068D790  7C 08 03 A6 */	mtlr r0
/* 8068D794  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8068D798  4E 80 00 20 */	blr 
