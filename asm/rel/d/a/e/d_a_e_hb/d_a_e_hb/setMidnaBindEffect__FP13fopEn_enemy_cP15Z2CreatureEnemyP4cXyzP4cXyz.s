lbl_80500664:
/* 80500664  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80500668  7C 08 02 A6 */	mflr r0
/* 8050066C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80500670  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80500674  4B E6 1B 40 */	b _savegpr_19
/* 80500678  7C 7E 1B 78 */	mr r30, r3
/* 8050067C  7C 9A 23 78 */	mr r26, r4
/* 80500680  7C BB 2B 78 */	mr r27, r5
/* 80500684  7C DC 33 78 */	mr r28, r6
/* 80500688  3C 60 80 50 */	lis r3, cNullVec__6Z2Calc@ha
/* 8050068C  3A E3 0C 3C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80500690  3C 60 80 50 */	lis r3, lit_3788@ha
/* 80500694  3B E3 0B 04 */	addi r31, r3, lit_3788@l
/* 80500698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8050069C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805006A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805006A4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 805006A8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 805006AC  28 00 00 00 */	cmplwi r0, 0
/* 805006B0  41 82 03 A4 */	beq lbl_80500A54
/* 805006B4  7F C4 F3 78 */	mr r4, r30
/* 805006B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805006BC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805006C0  7D 89 03 A6 */	mtctr r12
/* 805006C4  4E 80 04 21 */	bctrl 
/* 805006C8  2C 03 00 00 */	cmpwi r3, 0
/* 805006CC  41 82 03 88 */	beq lbl_80500A54
/* 805006D0  4B CA BE AC */	b dKy_darkworld_check__Fv
/* 805006D4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805006D8  30 03 FF FF */	addic r0, r3, -1
/* 805006DC  7F A0 19 10 */	subfe r29, r0, r3
/* 805006E0  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 805006E4  28 00 00 00 */	cmplwi r0, 0
/* 805006E8  40 82 02 A0 */	bne lbl_80500988
/* 805006EC  38 00 00 01 */	li r0, 1
/* 805006F0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 805006F4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 805006F8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 805006FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80500700  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80500704  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80500708  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8050070C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80500710  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80500714  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80500718  4B E4 5D 98 */	b PSMTXCopy
/* 8050071C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80500720  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80500724  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80500728  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8050072C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80500730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80500734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80500738  38 81 00 4C */	addi r4, r1, 0x4c
/* 8050073C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80500740  4B E4 66 2C */	b PSMTXMultVec
/* 80500744  38 61 00 34 */	addi r3, r1, 0x34
/* 80500748  38 81 00 58 */	addi r4, r1, 0x58
/* 8050074C  7F 65 DB 78 */	mr r5, r27
/* 80500750  4B D6 63 E4 */	b __mi__4cXyzCFRC3Vec
/* 80500754  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80500758  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8050075C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80500760  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80500764  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80500768  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8050076C  4B D6 6F 08 */	b cM_atan2s__Fff
/* 80500770  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80500774  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80500778  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050077C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80500780  EC 00 00 32 */	fmuls f0, f0, f0
/* 80500784  EC 41 00 2A */	fadds f2, f1, f0
/* 80500788  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050078C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80500790  40 81 00 0C */	ble lbl_8050079C
/* 80500794  FC 00 10 34 */	frsqrte f0, f2
/* 80500798  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8050079C:
/* 8050079C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805007A0  4B D6 6E D4 */	b cM_atan2s__Fff
/* 805007A4  7C 03 00 D0 */	neg r0, r3
/* 805007A8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 805007AC  38 80 00 00 */	li r4, 0
/* 805007B0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 805007B4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805007B8  7C 00 07 74 */	extsb r0, r0
/* 805007BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805007C0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 805007C4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805007C8  57 A5 10 3A */	slwi r5, r29, 2
/* 805007CC  90 81 00 08 */	stw r4, 8(r1)
/* 805007D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805007D4  3A B7 00 20 */	addi r21, r23, 0x20
/* 805007D8  7E B5 2A 14 */	add r21, r21, r5
/* 805007DC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 805007E0  3A D7 00 28 */	addi r22, r23, 0x28
/* 805007E4  7E D6 2A 14 */	add r22, r22, r5
/* 805007E8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 805007EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805007F0  38 80 00 00 */	li r4, 0
/* 805007F4  38 A0 02 9B */	li r5, 0x29b
/* 805007F8  7F 66 DB 78 */	mr r6, r27
/* 805007FC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80500800  39 01 00 2C */	addi r8, r1, 0x2c
/* 80500804  7F 89 E3 78 */	mr r9, r28
/* 80500808  39 40 00 FF */	li r10, 0xff
/* 8050080C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80500810  4B B4 C2 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80500814  7C 79 1B 79 */	or. r25, r3, r3
/* 80500818  41 82 00 FC */	beq lbl_80500914
/* 8050081C  38 61 00 40 */	addi r3, r1, 0x40
/* 80500820  4B E4 69 18 */	b PSVECSquareMag
/* 80500824  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80500828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050082C  40 81 00 58 */	ble lbl_80500884
/* 80500830  FC 00 08 34 */	frsqrte f0, f1
/* 80500834  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80500838  FC 44 00 32 */	fmul f2, f4, f0
/* 8050083C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80500840  FC 00 00 32 */	fmul f0, f0, f0
/* 80500844  FC 01 00 32 */	fmul f0, f1, f0
/* 80500848  FC 03 00 28 */	fsub f0, f3, f0
/* 8050084C  FC 02 00 32 */	fmul f0, f2, f0
/* 80500850  FC 44 00 32 */	fmul f2, f4, f0
/* 80500854  FC 00 00 32 */	fmul f0, f0, f0
/* 80500858  FC 01 00 32 */	fmul f0, f1, f0
/* 8050085C  FC 03 00 28 */	fsub f0, f3, f0
/* 80500860  FC 02 00 32 */	fmul f0, f2, f0
/* 80500864  FC 44 00 32 */	fmul f2, f4, f0
/* 80500868  FC 00 00 32 */	fmul f0, f0, f0
/* 8050086C  FC 01 00 32 */	fmul f0, f1, f0
/* 80500870  FC 03 00 28 */	fsub f0, f3, f0
/* 80500874  FC 02 00 32 */	fmul f0, f2, f0
/* 80500878  FC 21 00 32 */	fmul f1, f1, f0
/* 8050087C  FC 20 08 18 */	frsp f1, f1
/* 80500880  48 00 00 88 */	b lbl_80500908
lbl_80500884:
/* 80500884  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80500888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050088C  40 80 00 10 */	bge lbl_8050089C
/* 80500890  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80500894  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80500898  48 00 00 70 */	b lbl_80500908
lbl_8050089C:
/* 8050089C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805008A0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805008A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805008A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805008AC  7C 03 00 00 */	cmpw r3, r0
/* 805008B0  41 82 00 14 */	beq lbl_805008C4
/* 805008B4  40 80 00 40 */	bge lbl_805008F4
/* 805008B8  2C 03 00 00 */	cmpwi r3, 0
/* 805008BC  41 82 00 20 */	beq lbl_805008DC
/* 805008C0  48 00 00 34 */	b lbl_805008F4
lbl_805008C4:
/* 805008C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805008C8  41 82 00 0C */	beq lbl_805008D4
/* 805008CC  38 00 00 01 */	li r0, 1
/* 805008D0  48 00 00 28 */	b lbl_805008F8
lbl_805008D4:
/* 805008D4  38 00 00 02 */	li r0, 2
/* 805008D8  48 00 00 20 */	b lbl_805008F8
lbl_805008DC:
/* 805008DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805008E0  41 82 00 0C */	beq lbl_805008EC
/* 805008E4  38 00 00 05 */	li r0, 5
/* 805008E8  48 00 00 10 */	b lbl_805008F8
lbl_805008EC:
/* 805008EC  38 00 00 03 */	li r0, 3
/* 805008F0  48 00 00 08 */	b lbl_805008F8
lbl_805008F4:
/* 805008F4  38 00 00 04 */	li r0, 4
lbl_805008F8:
/* 805008F8  2C 00 00 01 */	cmpwi r0, 1
/* 805008FC  40 82 00 0C */	bne lbl_80500908
/* 80500900  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80500904  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80500908:
/* 80500908  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8050090C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80500910  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80500914:
/* 80500914  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80500918  7C 04 07 74 */	extsb r4, r0
/* 8050091C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80500920  38 00 00 00 */	li r0, 0
/* 80500924  90 01 00 08 */	stw r0, 8(r1)
/* 80500928  90 81 00 0C */	stw r4, 0xc(r1)
/* 8050092C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80500930  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80500934  90 01 00 18 */	stw r0, 0x18(r1)
/* 80500938  38 80 00 00 */	li r4, 0
/* 8050093C  38 A0 02 9C */	li r5, 0x29c
/* 80500940  7F 66 DB 78 */	mr r6, r27
/* 80500944  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80500948  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8050094C  7F 89 E3 78 */	mr r9, r28
/* 80500950  39 40 00 FF */	li r10, 0xff
/* 80500954  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80500958  4B B4 C1 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8050095C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80500960  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80500964  90 01 00 28 */	stw r0, 0x28(r1)
/* 80500968  7F 43 D3 78 */	mr r3, r26
/* 8050096C  38 81 00 28 */	addi r4, r1, 0x28
/* 80500970  38 A0 00 00 */	li r5, 0
/* 80500974  38 C0 FF FF */	li r6, -1
/* 80500978  81 9A 00 00 */	lwz r12, 0(r26)
/* 8050097C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80500980  7D 89 03 A6 */	mtctr r12
/* 80500984  4E 80 04 21 */	bctrl 
lbl_80500988:
/* 80500988  3A A0 00 00 */	li r21, 0
/* 8050098C  3A C0 00 00 */	li r22, 0
/* 80500990  3A 80 00 00 */	li r20, 0
/* 80500994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80500998  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 8050099C  57 A0 10 3A */	slwi r0, r29, 2
/* 805009A0  3B 17 00 28 */	addi r24, r23, 0x28
/* 805009A4  7F 18 02 14 */	add r24, r24, r0
/* 805009A8  3B B7 00 20 */	addi r29, r23, 0x20
/* 805009AC  7F BD 02 14 */	add r29, r29, r0
/* 805009B0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_805009B4:
/* 805009B4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 805009B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805009BC  7C 05 07 74 */	extsb r5, r0
/* 805009C0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 805009C4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805009C8  38 00 00 FF */	li r0, 0xff
/* 805009CC  90 01 00 08 */	stw r0, 8(r1)
/* 805009D0  38 00 00 00 */	li r0, 0
/* 805009D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805009D8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805009DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805009E0  93 01 00 18 */	stw r24, 0x18(r1)
/* 805009E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805009E8  38 A0 00 00 */	li r5, 0
/* 805009EC  7C D3 B2 2E */	lhzx r6, r19, r22
/* 805009F0  7F 67 DB 78 */	mr r7, r27
/* 805009F4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 805009F8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 805009FC  7F 8A E3 78 */	mr r10, r28
/* 80500A00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80500A04  4B B4 CA C8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80500A08  7C 7E B9 2E */	stwx r3, r30, r23
/* 80500A0C  3A B5 00 01 */	addi r21, r21, 1
/* 80500A10  2C 15 00 03 */	cmpwi r21, 3
/* 80500A14  3A D6 00 02 */	addi r22, r22, 2
/* 80500A18  3A 94 00 04 */	addi r20, r20, 4
/* 80500A1C  41 80 FF 98 */	blt lbl_805009B4
/* 80500A20  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80500A24  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80500A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80500A2C  7F 43 D3 78 */	mr r3, r26
/* 80500A30  38 81 00 24 */	addi r4, r1, 0x24
/* 80500A34  38 A0 00 00 */	li r5, 0
/* 80500A38  38 C0 FF FF */	li r6, -1
/* 80500A3C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80500A40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80500A44  7D 89 03 A6 */	mtctr r12
/* 80500A48  4E 80 04 21 */	bctrl 
/* 80500A4C  38 60 00 01 */	li r3, 1
/* 80500A50  48 00 00 10 */	b lbl_80500A60
lbl_80500A54:
/* 80500A54  38 00 00 00 */	li r0, 0
/* 80500A58  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80500A5C  38 60 00 00 */	li r3, 0
lbl_80500A60:
/* 80500A60  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80500A64  4B E6 17 9C */	b _restgpr_19
/* 80500A68  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80500A6C  7C 08 03 A6 */	mtlr r0
/* 80500A70  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80500A74  4E 80 00 20 */	blr 
