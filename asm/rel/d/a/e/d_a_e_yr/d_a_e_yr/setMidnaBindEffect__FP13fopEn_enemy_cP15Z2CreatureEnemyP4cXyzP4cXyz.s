lbl_808283EC:
/* 808283EC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 808283F0  7C 08 02 A6 */	mflr r0
/* 808283F4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 808283F8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 808283FC  4B B3 9D B8 */	b _savegpr_19
/* 80828400  7C 7E 1B 78 */	mr r30, r3
/* 80828404  7C 9A 23 78 */	mr r26, r4
/* 80828408  7C BB 2B 78 */	mr r27, r5
/* 8082840C  7C DC 33 78 */	mr r28, r6
/* 80828410  3C 60 80 83 */	lis r3, cNullVec__6Z2Calc@ha
/* 80828414  3A E3 89 B4 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80828418  3C 60 80 83 */	lis r3, lit_3902@ha
/* 8082841C  3B E3 88 50 */	addi r31, r3, lit_3902@l
/* 80828420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80828424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80828428  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8082842C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80828430  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 80828434  28 00 00 00 */	cmplwi r0, 0
/* 80828438  41 82 03 A4 */	beq lbl_808287DC
/* 8082843C  7F C4 F3 78 */	mr r4, r30
/* 80828440  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80828444  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80828448  7D 89 03 A6 */	mtctr r12
/* 8082844C  4E 80 04 21 */	bctrl 
/* 80828450  2C 03 00 00 */	cmpwi r3, 0
/* 80828454  41 82 03 88 */	beq lbl_808287DC
/* 80828458  4B 98 41 24 */	b dKy_darkworld_check__Fv
/* 8082845C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80828460  30 03 FF FF */	addic r0, r3, -1
/* 80828464  7F A0 19 10 */	subfe r29, r0, r3
/* 80828468  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8082846C  28 00 00 00 */	cmplwi r0, 0
/* 80828470  40 82 02 A0 */	bne lbl_80828710
/* 80828474  38 00 00 01 */	li r0, 1
/* 80828478  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8082847C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80828480  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80828484  80 63 00 00 */	lwz r3, 0(r3)
/* 80828488  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8082848C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80828490  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80828494  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80828498  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8082849C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808284A0  4B B1 E0 10 */	b PSMTXCopy
/* 808284A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 808284A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808284AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808284B0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 808284B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808284B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808284BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808284C0  38 81 00 4C */	addi r4, r1, 0x4c
/* 808284C4  38 A1 00 58 */	addi r5, r1, 0x58
/* 808284C8  4B B1 E8 A4 */	b PSMTXMultVec
/* 808284CC  38 61 00 34 */	addi r3, r1, 0x34
/* 808284D0  38 81 00 58 */	addi r4, r1, 0x58
/* 808284D4  7F 65 DB 78 */	mr r5, r27
/* 808284D8  4B A3 E6 5C */	b __mi__4cXyzCFRC3Vec
/* 808284DC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 808284E0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 808284E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 808284E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808284EC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 808284F0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 808284F4  4B A3 F1 80 */	b cM_atan2s__Fff
/* 808284F8  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 808284FC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80828500  EC 20 00 32 */	fmuls f1, f0, f0
/* 80828504  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80828508  EC 00 00 32 */	fmuls f0, f0, f0
/* 8082850C  EC 41 00 2A */	fadds f2, f1, f0
/* 80828510  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80828514  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80828518  40 81 00 0C */	ble lbl_80828524
/* 8082851C  FC 00 10 34 */	frsqrte f0, f2
/* 80828520  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80828524:
/* 80828524  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80828528  4B A3 F1 4C */	b cM_atan2s__Fff
/* 8082852C  7C 03 00 D0 */	neg r0, r3
/* 80828530  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80828534  38 80 00 00 */	li r4, 0
/* 80828538  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8082853C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80828540  7C 00 07 74 */	extsb r0, r0
/* 80828544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80828548  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8082854C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80828550  57 A5 10 3A */	slwi r5, r29, 2
/* 80828554  90 81 00 08 */	stw r4, 8(r1)
/* 80828558  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082855C  3A B7 00 20 */	addi r21, r23, 0x20
/* 80828560  7E B5 2A 14 */	add r21, r21, r5
/* 80828564  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80828568  3A D7 00 28 */	addi r22, r23, 0x28
/* 8082856C  7E D6 2A 14 */	add r22, r22, r5
/* 80828570  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80828574  90 81 00 18 */	stw r4, 0x18(r1)
/* 80828578  38 80 00 00 */	li r4, 0
/* 8082857C  38 A0 02 9B */	li r5, 0x29b
/* 80828580  7F 66 DB 78 */	mr r6, r27
/* 80828584  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80828588  39 01 00 2C */	addi r8, r1, 0x2c
/* 8082858C  7F 89 E3 78 */	mr r9, r28
/* 80828590  39 40 00 FF */	li r10, 0xff
/* 80828594  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80828598  4B 82 44 F8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8082859C  7C 79 1B 79 */	or. r25, r3, r3
/* 808285A0  41 82 00 FC */	beq lbl_8082869C
/* 808285A4  38 61 00 40 */	addi r3, r1, 0x40
/* 808285A8  4B B1 EB 90 */	b PSVECSquareMag
/* 808285AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808285B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808285B4  40 81 00 58 */	ble lbl_8082860C
/* 808285B8  FC 00 08 34 */	frsqrte f0, f1
/* 808285BC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 808285C0  FC 44 00 32 */	fmul f2, f4, f0
/* 808285C4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 808285C8  FC 00 00 32 */	fmul f0, f0, f0
/* 808285CC  FC 01 00 32 */	fmul f0, f1, f0
/* 808285D0  FC 03 00 28 */	fsub f0, f3, f0
/* 808285D4  FC 02 00 32 */	fmul f0, f2, f0
/* 808285D8  FC 44 00 32 */	fmul f2, f4, f0
/* 808285DC  FC 00 00 32 */	fmul f0, f0, f0
/* 808285E0  FC 01 00 32 */	fmul f0, f1, f0
/* 808285E4  FC 03 00 28 */	fsub f0, f3, f0
/* 808285E8  FC 02 00 32 */	fmul f0, f2, f0
/* 808285EC  FC 44 00 32 */	fmul f2, f4, f0
/* 808285F0  FC 00 00 32 */	fmul f0, f0, f0
/* 808285F4  FC 01 00 32 */	fmul f0, f1, f0
/* 808285F8  FC 03 00 28 */	fsub f0, f3, f0
/* 808285FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80828600  FC 21 00 32 */	fmul f1, f1, f0
/* 80828604  FC 20 08 18 */	frsp f1, f1
/* 80828608  48 00 00 88 */	b lbl_80828690
lbl_8082860C:
/* 8082860C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80828610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80828614  40 80 00 10 */	bge lbl_80828624
/* 80828618  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082861C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80828620  48 00 00 70 */	b lbl_80828690
lbl_80828624:
/* 80828624  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80828628  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8082862C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80828630  3C 00 7F 80 */	lis r0, 0x7f80
/* 80828634  7C 03 00 00 */	cmpw r3, r0
/* 80828638  41 82 00 14 */	beq lbl_8082864C
/* 8082863C  40 80 00 40 */	bge lbl_8082867C
/* 80828640  2C 03 00 00 */	cmpwi r3, 0
/* 80828644  41 82 00 20 */	beq lbl_80828664
/* 80828648  48 00 00 34 */	b lbl_8082867C
lbl_8082864C:
/* 8082864C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80828650  41 82 00 0C */	beq lbl_8082865C
/* 80828654  38 00 00 01 */	li r0, 1
/* 80828658  48 00 00 28 */	b lbl_80828680
lbl_8082865C:
/* 8082865C  38 00 00 02 */	li r0, 2
/* 80828660  48 00 00 20 */	b lbl_80828680
lbl_80828664:
/* 80828664  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80828668  41 82 00 0C */	beq lbl_80828674
/* 8082866C  38 00 00 05 */	li r0, 5
/* 80828670  48 00 00 10 */	b lbl_80828680
lbl_80828674:
/* 80828674  38 00 00 03 */	li r0, 3
/* 80828678  48 00 00 08 */	b lbl_80828680
lbl_8082867C:
/* 8082867C  38 00 00 04 */	li r0, 4
lbl_80828680:
/* 80828680  2C 00 00 01 */	cmpwi r0, 1
/* 80828684  40 82 00 0C */	bne lbl_80828690
/* 80828688  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082868C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80828690:
/* 80828690  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80828694  EC 00 00 72 */	fmuls f0, f0, f1
/* 80828698  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8082869C:
/* 8082869C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808286A0  7C 04 07 74 */	extsb r4, r0
/* 808286A4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 808286A8  38 00 00 00 */	li r0, 0
/* 808286AC  90 01 00 08 */	stw r0, 8(r1)
/* 808286B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 808286B4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 808286B8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 808286BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 808286C0  38 80 00 00 */	li r4, 0
/* 808286C4  38 A0 02 9C */	li r5, 0x29c
/* 808286C8  7F 66 DB 78 */	mr r6, r27
/* 808286CC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 808286D0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 808286D4  7F 89 E3 78 */	mr r9, r28
/* 808286D8  39 40 00 FF */	li r10, 0xff
/* 808286DC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808286E0  4B 82 43 B0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808286E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 808286E8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 808286EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 808286F0  7F 43 D3 78 */	mr r3, r26
/* 808286F4  38 81 00 28 */	addi r4, r1, 0x28
/* 808286F8  38 A0 00 00 */	li r5, 0
/* 808286FC  38 C0 FF FF */	li r6, -1
/* 80828700  81 9A 00 00 */	lwz r12, 0(r26)
/* 80828704  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80828708  7D 89 03 A6 */	mtctr r12
/* 8082870C  4E 80 04 21 */	bctrl 
lbl_80828710:
/* 80828710  3A A0 00 00 */	li r21, 0
/* 80828714  3A C0 00 00 */	li r22, 0
/* 80828718  3A 80 00 00 */	li r20, 0
/* 8082871C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80828720  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80828724  57 A0 10 3A */	slwi r0, r29, 2
/* 80828728  3B 17 00 28 */	addi r24, r23, 0x28
/* 8082872C  7F 18 02 14 */	add r24, r24, r0
/* 80828730  3B B7 00 20 */	addi r29, r23, 0x20
/* 80828734  7F BD 02 14 */	add r29, r29, r0
/* 80828738  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8082873C:
/* 8082873C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80828740  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80828744  7C 05 07 74 */	extsb r5, r0
/* 80828748  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8082874C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80828750  38 00 00 FF */	li r0, 0xff
/* 80828754  90 01 00 08 */	stw r0, 8(r1)
/* 80828758  38 00 00 00 */	li r0, 0
/* 8082875C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80828760  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80828764  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80828768  93 01 00 18 */	stw r24, 0x18(r1)
/* 8082876C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80828770  38 A0 00 00 */	li r5, 0
/* 80828774  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80828778  7F 67 DB 78 */	mr r7, r27
/* 8082877C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80828780  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80828784  7F 8A E3 78 */	mr r10, r28
/* 80828788  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8082878C  4B 82 4D 40 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80828790  7C 7E B9 2E */	stwx r3, r30, r23
/* 80828794  3A B5 00 01 */	addi r21, r21, 1
/* 80828798  2C 15 00 03 */	cmpwi r21, 3
/* 8082879C  3A D6 00 02 */	addi r22, r22, 2
/* 808287A0  3A 94 00 04 */	addi r20, r20, 4
/* 808287A4  41 80 FF 98 */	blt lbl_8082873C
/* 808287A8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 808287AC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 808287B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808287B4  7F 43 D3 78 */	mr r3, r26
/* 808287B8  38 81 00 24 */	addi r4, r1, 0x24
/* 808287BC  38 A0 00 00 */	li r5, 0
/* 808287C0  38 C0 FF FF */	li r6, -1
/* 808287C4  81 9A 00 00 */	lwz r12, 0(r26)
/* 808287C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 808287CC  7D 89 03 A6 */	mtctr r12
/* 808287D0  4E 80 04 21 */	bctrl 
/* 808287D4  38 60 00 01 */	li r3, 1
/* 808287D8  48 00 00 10 */	b lbl_808287E8
lbl_808287DC:
/* 808287DC  38 00 00 00 */	li r0, 0
/* 808287E0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 808287E4  38 60 00 00 */	li r3, 0
lbl_808287E8:
/* 808287E8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 808287EC  4B B3 9A 14 */	b _restgpr_19
/* 808287F0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 808287F4  7C 08 03 A6 */	mtlr r0
/* 808287F8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 808287FC  4E 80 00 20 */	blr 
