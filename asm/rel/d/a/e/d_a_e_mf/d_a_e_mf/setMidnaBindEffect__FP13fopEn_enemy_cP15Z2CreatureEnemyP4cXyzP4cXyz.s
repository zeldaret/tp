lbl_80713510:
/* 80713510  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80713514  7C 08 02 A6 */	mflr r0
/* 80713518  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8071351C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80713520  4B C4 EC 94 */	b _savegpr_19
/* 80713524  7C 7E 1B 78 */	mr r30, r3
/* 80713528  7C 9A 23 78 */	mr r26, r4
/* 8071352C  7C BB 2B 78 */	mr r27, r5
/* 80713530  7C DC 33 78 */	mr r28, r6
/* 80713534  3C 60 80 71 */	lis r3, cNullVec__6Z2Calc@ha
/* 80713538  3A E3 3B 08 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 8071353C  3C 60 80 71 */	lis r3, lit_3828@ha
/* 80713540  3B E3 39 74 */	addi r31, r3, lit_3828@l
/* 80713544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80713548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071354C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80713550  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80713554  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 80713558  28 00 00 00 */	cmplwi r0, 0
/* 8071355C  41 82 03 A4 */	beq lbl_80713900
/* 80713560  7F C4 F3 78 */	mr r4, r30
/* 80713564  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80713568  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8071356C  7D 89 03 A6 */	mtctr r12
/* 80713570  4E 80 04 21 */	bctrl 
/* 80713574  2C 03 00 00 */	cmpwi r3, 0
/* 80713578  41 82 03 88 */	beq lbl_80713900
/* 8071357C  4B A9 90 00 */	b dKy_darkworld_check__Fv
/* 80713580  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80713584  30 03 FF FF */	addic r0, r3, -1
/* 80713588  7F A0 19 10 */	subfe r29, r0, r3
/* 8071358C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80713590  28 00 00 00 */	cmplwi r0, 0
/* 80713594  40 82 02 A0 */	bne lbl_80713834
/* 80713598  38 00 00 01 */	li r0, 1
/* 8071359C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807135A0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 807135A4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 807135A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807135AC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807135B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807135B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807135B8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807135BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807135C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807135C4  4B C3 2E EC */	b PSMTXCopy
/* 807135C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807135CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807135D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807135D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807135D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807135DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807135E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807135E4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807135E8  38 A1 00 58 */	addi r5, r1, 0x58
/* 807135EC  4B C3 37 80 */	b PSMTXMultVec
/* 807135F0  38 61 00 34 */	addi r3, r1, 0x34
/* 807135F4  38 81 00 58 */	addi r4, r1, 0x58
/* 807135F8  7F 65 DB 78 */	mr r5, r27
/* 807135FC  4B B5 35 38 */	b __mi__4cXyzCFRC3Vec
/* 80713600  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80713604  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80713608  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071360C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80713610  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80713614  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80713618  4B B5 40 5C */	b cM_atan2s__Fff
/* 8071361C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80713620  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80713624  EC 20 00 32 */	fmuls f1, f0, f0
/* 80713628  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8071362C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80713630  EC 41 00 2A */	fadds f2, f1, f0
/* 80713634  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80713638  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8071363C  40 81 00 0C */	ble lbl_80713648
/* 80713640  FC 00 10 34 */	frsqrte f0, f2
/* 80713644  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80713648:
/* 80713648  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8071364C  4B B5 40 28 */	b cM_atan2s__Fff
/* 80713650  7C 03 00 D0 */	neg r0, r3
/* 80713654  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80713658  38 80 00 00 */	li r4, 0
/* 8071365C  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80713660  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80713664  7C 00 07 74 */	extsb r0, r0
/* 80713668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071366C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80713670  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80713674  57 A5 10 3A */	slwi r5, r29, 2
/* 80713678  90 81 00 08 */	stw r4, 8(r1)
/* 8071367C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80713680  3A B7 00 20 */	addi r21, r23, 0x20
/* 80713684  7E B5 2A 14 */	add r21, r21, r5
/* 80713688  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8071368C  3A D7 00 28 */	addi r22, r23, 0x28
/* 80713690  7E D6 2A 14 */	add r22, r22, r5
/* 80713694  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80713698  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071369C  38 80 00 00 */	li r4, 0
/* 807136A0  38 A0 02 9B */	li r5, 0x29b
/* 807136A4  7F 66 DB 78 */	mr r6, r27
/* 807136A8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807136AC  39 01 00 2C */	addi r8, r1, 0x2c
/* 807136B0  7F 89 E3 78 */	mr r9, r28
/* 807136B4  39 40 00 FF */	li r10, 0xff
/* 807136B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807136BC  4B 93 93 D4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807136C0  7C 79 1B 79 */	or. r25, r3, r3
/* 807136C4  41 82 00 FC */	beq lbl_807137C0
/* 807136C8  38 61 00 40 */	addi r3, r1, 0x40
/* 807136CC  4B C3 3A 6C */	b PSVECSquareMag
/* 807136D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807136D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807136D8  40 81 00 58 */	ble lbl_80713730
/* 807136DC  FC 00 08 34 */	frsqrte f0, f1
/* 807136E0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807136E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807136E8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807136EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807136F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807136F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807136F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807136FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80713700  FC 00 00 32 */	fmul f0, f0, f0
/* 80713704  FC 01 00 32 */	fmul f0, f1, f0
/* 80713708  FC 03 00 28 */	fsub f0, f3, f0
/* 8071370C  FC 02 00 32 */	fmul f0, f2, f0
/* 80713710  FC 44 00 32 */	fmul f2, f4, f0
/* 80713714  FC 00 00 32 */	fmul f0, f0, f0
/* 80713718  FC 01 00 32 */	fmul f0, f1, f0
/* 8071371C  FC 03 00 28 */	fsub f0, f3, f0
/* 80713720  FC 02 00 32 */	fmul f0, f2, f0
/* 80713724  FC 21 00 32 */	fmul f1, f1, f0
/* 80713728  FC 20 08 18 */	frsp f1, f1
/* 8071372C  48 00 00 88 */	b lbl_807137B4
lbl_80713730:
/* 80713730  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80713734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80713738  40 80 00 10 */	bge lbl_80713748
/* 8071373C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80713740  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80713744  48 00 00 70 */	b lbl_807137B4
lbl_80713748:
/* 80713748  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8071374C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80713750  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80713754  3C 00 7F 80 */	lis r0, 0x7f80
/* 80713758  7C 03 00 00 */	cmpw r3, r0
/* 8071375C  41 82 00 14 */	beq lbl_80713770
/* 80713760  40 80 00 40 */	bge lbl_807137A0
/* 80713764  2C 03 00 00 */	cmpwi r3, 0
/* 80713768  41 82 00 20 */	beq lbl_80713788
/* 8071376C  48 00 00 34 */	b lbl_807137A0
lbl_80713770:
/* 80713770  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80713774  41 82 00 0C */	beq lbl_80713780
/* 80713778  38 00 00 01 */	li r0, 1
/* 8071377C  48 00 00 28 */	b lbl_807137A4
lbl_80713780:
/* 80713780  38 00 00 02 */	li r0, 2
/* 80713784  48 00 00 20 */	b lbl_807137A4
lbl_80713788:
/* 80713788  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071378C  41 82 00 0C */	beq lbl_80713798
/* 80713790  38 00 00 05 */	li r0, 5
/* 80713794  48 00 00 10 */	b lbl_807137A4
lbl_80713798:
/* 80713798  38 00 00 03 */	li r0, 3
/* 8071379C  48 00 00 08 */	b lbl_807137A4
lbl_807137A0:
/* 807137A0  38 00 00 04 */	li r0, 4
lbl_807137A4:
/* 807137A4  2C 00 00 01 */	cmpwi r0, 1
/* 807137A8  40 82 00 0C */	bne lbl_807137B4
/* 807137AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807137B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807137B4:
/* 807137B4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807137B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807137BC  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807137C0:
/* 807137C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807137C4  7C 04 07 74 */	extsb r4, r0
/* 807137C8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807137CC  38 00 00 00 */	li r0, 0
/* 807137D0  90 01 00 08 */	stw r0, 8(r1)
/* 807137D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807137D8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807137DC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807137E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 807137E4  38 80 00 00 */	li r4, 0
/* 807137E8  38 A0 02 9C */	li r5, 0x29c
/* 807137EC  7F 66 DB 78 */	mr r6, r27
/* 807137F0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807137F4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807137F8  7F 89 E3 78 */	mr r9, r28
/* 807137FC  39 40 00 FF */	li r10, 0xff
/* 80713800  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80713804  4B 93 92 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80713808  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8071380C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80713810  90 01 00 28 */	stw r0, 0x28(r1)
/* 80713814  7F 43 D3 78 */	mr r3, r26
/* 80713818  38 81 00 28 */	addi r4, r1, 0x28
/* 8071381C  38 A0 00 00 */	li r5, 0
/* 80713820  38 C0 FF FF */	li r6, -1
/* 80713824  81 9A 00 00 */	lwz r12, 0(r26)
/* 80713828  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071382C  7D 89 03 A6 */	mtctr r12
/* 80713830  4E 80 04 21 */	bctrl 
lbl_80713834:
/* 80713834  3A A0 00 00 */	li r21, 0
/* 80713838  3A C0 00 00 */	li r22, 0
/* 8071383C  3A 80 00 00 */	li r20, 0
/* 80713840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80713844  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80713848  57 A0 10 3A */	slwi r0, r29, 2
/* 8071384C  3B 17 00 28 */	addi r24, r23, 0x28
/* 80713850  7F 18 02 14 */	add r24, r24, r0
/* 80713854  3B B7 00 20 */	addi r29, r23, 0x20
/* 80713858  7F BD 02 14 */	add r29, r29, r0
/* 8071385C  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80713860:
/* 80713860  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80713864  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80713868  7C 05 07 74 */	extsb r5, r0
/* 8071386C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80713870  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80713874  38 00 00 FF */	li r0, 0xff
/* 80713878  90 01 00 08 */	stw r0, 8(r1)
/* 8071387C  38 00 00 00 */	li r0, 0
/* 80713880  90 01 00 0C */	stw r0, 0xc(r1)
/* 80713884  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80713888  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8071388C  93 01 00 18 */	stw r24, 0x18(r1)
/* 80713890  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80713894  38 A0 00 00 */	li r5, 0
/* 80713898  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8071389C  7F 67 DB 78 */	mr r7, r27
/* 807138A0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807138A4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807138A8  7F 8A E3 78 */	mr r10, r28
/* 807138AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807138B0  4B 93 9C 1C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807138B4  7C 7E B9 2E */	stwx r3, r30, r23
/* 807138B8  3A B5 00 01 */	addi r21, r21, 1
/* 807138BC  2C 15 00 03 */	cmpwi r21, 3
/* 807138C0  3A D6 00 02 */	addi r22, r22, 2
/* 807138C4  3A 94 00 04 */	addi r20, r20, 4
/* 807138C8  41 80 FF 98 */	blt lbl_80713860
/* 807138CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807138D0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807138D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807138D8  7F 43 D3 78 */	mr r3, r26
/* 807138DC  38 81 00 24 */	addi r4, r1, 0x24
/* 807138E0  38 A0 00 00 */	li r5, 0
/* 807138E4  38 C0 FF FF */	li r6, -1
/* 807138E8  81 9A 00 00 */	lwz r12, 0(r26)
/* 807138EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807138F0  7D 89 03 A6 */	mtctr r12
/* 807138F4  4E 80 04 21 */	bctrl 
/* 807138F8  38 60 00 01 */	li r3, 1
/* 807138FC  48 00 00 10 */	b lbl_8071390C
lbl_80713900:
/* 80713900  38 00 00 00 */	li r0, 0
/* 80713904  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80713908  38 60 00 00 */	li r3, 0
lbl_8071390C:
/* 8071390C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80713910  4B C4 E8 F0 */	b _restgpr_19
/* 80713914  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80713918  7C 08 03 A6 */	mtlr r0
/* 8071391C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80713920  4E 80 00 20 */	blr 
