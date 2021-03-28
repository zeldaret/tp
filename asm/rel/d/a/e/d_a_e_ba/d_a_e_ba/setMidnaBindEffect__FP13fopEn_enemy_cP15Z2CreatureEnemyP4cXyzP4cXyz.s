lbl_80681F94:
/* 80681F94  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80681F98  7C 08 02 A6 */	mflr r0
/* 80681F9C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80681FA0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80681FA4  4B CE 02 10 */	b _savegpr_19
/* 80681FA8  7C 7E 1B 78 */	mr r30, r3
/* 80681FAC  7C 9A 23 78 */	mr r26, r4
/* 80681FB0  7C BB 2B 78 */	mr r27, r5
/* 80681FB4  7C DC 33 78 */	mr r28, r6
/* 80681FB8  3C 60 80 68 */	lis r3, cNullVec__6Z2Calc@ha
/* 80681FBC  3A E3 24 9C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80681FC0  3C 60 80 68 */	lis r3, lit_3947@ha
/* 80681FC4  3B E3 23 BC */	addi r31, r3, lit_3947@l
/* 80681FC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80681FCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80681FD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80681FD4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80681FD8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 80681FDC  28 00 00 00 */	cmplwi r0, 0
/* 80681FE0  41 82 03 A4 */	beq lbl_80682384
/* 80681FE4  7F C4 F3 78 */	mr r4, r30
/* 80681FE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80681FEC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80681FF0  7D 89 03 A6 */	mtctr r12
/* 80681FF4  4E 80 04 21 */	bctrl 
/* 80681FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80681FFC  41 82 03 88 */	beq lbl_80682384
/* 80682000  4B B2 A5 7C */	b dKy_darkworld_check__Fv
/* 80682004  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80682008  30 03 FF FF */	addic r0, r3, -1
/* 8068200C  7F A0 19 10 */	subfe r29, r0, r3
/* 80682010  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80682014  28 00 00 00 */	cmplwi r0, 0
/* 80682018  40 82 02 A0 */	bne lbl_806822B8
/* 8068201C  38 00 00 01 */	li r0, 1
/* 80682020  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80682024  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80682028  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8068202C  80 63 00 00 */	lwz r3, 0(r3)
/* 80682030  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80682034  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80682038  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068203C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80682040  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80682044  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80682048  4B CC 44 68 */	b PSMTXCopy
/* 8068204C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80682050  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80682054  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80682058  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8068205C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80682060  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80682064  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80682068  38 81 00 4C */	addi r4, r1, 0x4c
/* 8068206C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80682070  4B CC 4C FC */	b PSMTXMultVec
/* 80682074  38 61 00 34 */	addi r3, r1, 0x34
/* 80682078  38 81 00 58 */	addi r4, r1, 0x58
/* 8068207C  7F 65 DB 78 */	mr r5, r27
/* 80682080  4B BE 4A B4 */	b __mi__4cXyzCFRC3Vec
/* 80682084  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80682088  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8068208C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80682090  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80682094  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80682098  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8068209C  4B BE 55 D8 */	b cM_atan2s__Fff
/* 806820A0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806820A4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806820A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 806820AC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806820B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 806820B4  EC 41 00 2A */	fadds f2, f1, f0
/* 806820B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806820BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806820C0  40 81 00 0C */	ble lbl_806820CC
/* 806820C4  FC 00 10 34 */	frsqrte f0, f2
/* 806820C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806820CC:
/* 806820CC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806820D0  4B BE 55 A4 */	b cM_atan2s__Fff
/* 806820D4  7C 03 00 D0 */	neg r0, r3
/* 806820D8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806820DC  38 80 00 00 */	li r4, 0
/* 806820E0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806820E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806820E8  7C 00 07 74 */	extsb r0, r0
/* 806820EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806820F0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806820F4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806820F8  57 A5 10 3A */	slwi r5, r29, 2
/* 806820FC  90 81 00 08 */	stw r4, 8(r1)
/* 80682100  90 01 00 0C */	stw r0, 0xc(r1)
/* 80682104  3A B7 00 20 */	addi r21, r23, 0x20
/* 80682108  7E B5 2A 14 */	add r21, r21, r5
/* 8068210C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80682110  3A D7 00 28 */	addi r22, r23, 0x28
/* 80682114  7E D6 2A 14 */	add r22, r22, r5
/* 80682118  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8068211C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80682120  38 80 00 00 */	li r4, 0
/* 80682124  38 A0 02 9B */	li r5, 0x29b
/* 80682128  7F 66 DB 78 */	mr r6, r27
/* 8068212C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80682130  39 01 00 2C */	addi r8, r1, 0x2c
/* 80682134  7F 89 E3 78 */	mr r9, r28
/* 80682138  39 40 00 FF */	li r10, 0xff
/* 8068213C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80682140  4B 9C A9 50 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80682144  7C 79 1B 79 */	or. r25, r3, r3
/* 80682148  41 82 00 FC */	beq lbl_80682244
/* 8068214C  38 61 00 40 */	addi r3, r1, 0x40
/* 80682150  4B CC 4F E8 */	b PSVECSquareMag
/* 80682154  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80682158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068215C  40 81 00 58 */	ble lbl_806821B4
/* 80682160  FC 00 08 34 */	frsqrte f0, f1
/* 80682164  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80682168  FC 44 00 32 */	fmul f2, f4, f0
/* 8068216C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80682170  FC 00 00 32 */	fmul f0, f0, f0
/* 80682174  FC 01 00 32 */	fmul f0, f1, f0
/* 80682178  FC 03 00 28 */	fsub f0, f3, f0
/* 8068217C  FC 02 00 32 */	fmul f0, f2, f0
/* 80682180  FC 44 00 32 */	fmul f2, f4, f0
/* 80682184  FC 00 00 32 */	fmul f0, f0, f0
/* 80682188  FC 01 00 32 */	fmul f0, f1, f0
/* 8068218C  FC 03 00 28 */	fsub f0, f3, f0
/* 80682190  FC 02 00 32 */	fmul f0, f2, f0
/* 80682194  FC 44 00 32 */	fmul f2, f4, f0
/* 80682198  FC 00 00 32 */	fmul f0, f0, f0
/* 8068219C  FC 01 00 32 */	fmul f0, f1, f0
/* 806821A0  FC 03 00 28 */	fsub f0, f3, f0
/* 806821A4  FC 02 00 32 */	fmul f0, f2, f0
/* 806821A8  FC 21 00 32 */	fmul f1, f1, f0
/* 806821AC  FC 20 08 18 */	frsp f1, f1
/* 806821B0  48 00 00 88 */	b lbl_80682238
lbl_806821B4:
/* 806821B4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806821B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806821BC  40 80 00 10 */	bge lbl_806821CC
/* 806821C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806821C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806821C8  48 00 00 70 */	b lbl_80682238
lbl_806821CC:
/* 806821CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806821D0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806821D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806821D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806821DC  7C 03 00 00 */	cmpw r3, r0
/* 806821E0  41 82 00 14 */	beq lbl_806821F4
/* 806821E4  40 80 00 40 */	bge lbl_80682224
/* 806821E8  2C 03 00 00 */	cmpwi r3, 0
/* 806821EC  41 82 00 20 */	beq lbl_8068220C
/* 806821F0  48 00 00 34 */	b lbl_80682224
lbl_806821F4:
/* 806821F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806821F8  41 82 00 0C */	beq lbl_80682204
/* 806821FC  38 00 00 01 */	li r0, 1
/* 80682200  48 00 00 28 */	b lbl_80682228
lbl_80682204:
/* 80682204  38 00 00 02 */	li r0, 2
/* 80682208  48 00 00 20 */	b lbl_80682228
lbl_8068220C:
/* 8068220C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80682210  41 82 00 0C */	beq lbl_8068221C
/* 80682214  38 00 00 05 */	li r0, 5
/* 80682218  48 00 00 10 */	b lbl_80682228
lbl_8068221C:
/* 8068221C  38 00 00 03 */	li r0, 3
/* 80682220  48 00 00 08 */	b lbl_80682228
lbl_80682224:
/* 80682224  38 00 00 04 */	li r0, 4
lbl_80682228:
/* 80682228  2C 00 00 01 */	cmpwi r0, 1
/* 8068222C  40 82 00 0C */	bne lbl_80682238
/* 80682230  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80682234  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80682238:
/* 80682238  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8068223C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80682240  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80682244:
/* 80682244  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80682248  7C 04 07 74 */	extsb r4, r0
/* 8068224C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80682250  38 00 00 00 */	li r0, 0
/* 80682254  90 01 00 08 */	stw r0, 8(r1)
/* 80682258  90 81 00 0C */	stw r4, 0xc(r1)
/* 8068225C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80682260  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80682264  90 01 00 18 */	stw r0, 0x18(r1)
/* 80682268  38 80 00 00 */	li r4, 0
/* 8068226C  38 A0 02 9C */	li r5, 0x29c
/* 80682270  7F 66 DB 78 */	mr r6, r27
/* 80682274  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80682278  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8068227C  7F 89 E3 78 */	mr r9, r28
/* 80682280  39 40 00 FF */	li r10, 0xff
/* 80682284  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80682288  4B 9C A8 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068228C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80682290  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80682294  90 01 00 28 */	stw r0, 0x28(r1)
/* 80682298  7F 43 D3 78 */	mr r3, r26
/* 8068229C  38 81 00 28 */	addi r4, r1, 0x28
/* 806822A0  38 A0 00 00 */	li r5, 0
/* 806822A4  38 C0 FF FF */	li r6, -1
/* 806822A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 806822AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806822B0  7D 89 03 A6 */	mtctr r12
/* 806822B4  4E 80 04 21 */	bctrl 
lbl_806822B8:
/* 806822B8  3A A0 00 00 */	li r21, 0
/* 806822BC  3A C0 00 00 */	li r22, 0
/* 806822C0  3A 80 00 00 */	li r20, 0
/* 806822C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806822C8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806822CC  57 A0 10 3A */	slwi r0, r29, 2
/* 806822D0  3B 17 00 28 */	addi r24, r23, 0x28
/* 806822D4  7F 18 02 14 */	add r24, r24, r0
/* 806822D8  3B B7 00 20 */	addi r29, r23, 0x20
/* 806822DC  7F BD 02 14 */	add r29, r29, r0
/* 806822E0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806822E4:
/* 806822E4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806822E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806822EC  7C 05 07 74 */	extsb r5, r0
/* 806822F0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806822F4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806822F8  38 00 00 FF */	li r0, 0xff
/* 806822FC  90 01 00 08 */	stw r0, 8(r1)
/* 80682300  38 00 00 00 */	li r0, 0
/* 80682304  90 01 00 0C */	stw r0, 0xc(r1)
/* 80682308  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8068230C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80682310  93 01 00 18 */	stw r24, 0x18(r1)
/* 80682314  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80682318  38 A0 00 00 */	li r5, 0
/* 8068231C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80682320  7F 67 DB 78 */	mr r7, r27
/* 80682324  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80682328  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8068232C  7F 8A E3 78 */	mr r10, r28
/* 80682330  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80682334  4B 9C B1 98 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80682338  7C 7E B9 2E */	stwx r3, r30, r23
/* 8068233C  3A B5 00 01 */	addi r21, r21, 1
/* 80682340  2C 15 00 03 */	cmpwi r21, 3
/* 80682344  3A D6 00 02 */	addi r22, r22, 2
/* 80682348  3A 94 00 04 */	addi r20, r20, 4
/* 8068234C  41 80 FF 98 */	blt lbl_806822E4
/* 80682350  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80682354  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80682358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068235C  7F 43 D3 78 */	mr r3, r26
/* 80682360  38 81 00 24 */	addi r4, r1, 0x24
/* 80682364  38 A0 00 00 */	li r5, 0
/* 80682368  38 C0 FF FF */	li r6, -1
/* 8068236C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80682370  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80682374  7D 89 03 A6 */	mtctr r12
/* 80682378  4E 80 04 21 */	bctrl 
/* 8068237C  38 60 00 01 */	li r3, 1
/* 80682380  48 00 00 10 */	b lbl_80682390
lbl_80682384:
/* 80682384  38 00 00 00 */	li r0, 0
/* 80682388  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8068238C  38 60 00 00 */	li r3, 0
lbl_80682390:
/* 80682390  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80682394  4B CD FE 6C */	b _restgpr_19
/* 80682398  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8068239C  7C 08 03 A6 */	mtlr r0
/* 806823A0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806823A4  4E 80 00 20 */	blr 
