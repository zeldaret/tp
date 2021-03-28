lbl_806CCBD8:
/* 806CCBD8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806CCBDC  7C 08 02 A6 */	mflr r0
/* 806CCBE0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806CCBE4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806CCBE8  4B C9 55 CC */	b _savegpr_19
/* 806CCBEC  7C 7E 1B 78 */	mr r30, r3
/* 806CCBF0  7C 9A 23 78 */	mr r26, r4
/* 806CCBF4  7C BB 2B 78 */	mr r27, r5
/* 806CCBF8  7C DC 33 78 */	mr r28, r6
/* 806CCBFC  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha
/* 806CCC00  3A E3 D1 18 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806CCC04  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806CCC08  3B E3 D0 00 */	addi r31, r3, lit_3904@l
/* 806CCC0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CCC10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CCC14  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806CCC18  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806CCC1C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806CCC20  28 00 00 00 */	cmplwi r0, 0
/* 806CCC24  41 82 03 A4 */	beq lbl_806CCFC8
/* 806CCC28  7F C4 F3 78 */	mr r4, r30
/* 806CCC2C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806CCC30  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806CCC34  7D 89 03 A6 */	mtctr r12
/* 806CCC38  4E 80 04 21 */	bctrl 
/* 806CCC3C  2C 03 00 00 */	cmpwi r3, 0
/* 806CCC40  41 82 03 88 */	beq lbl_806CCFC8
/* 806CCC44  4B AD F9 38 */	b dKy_darkworld_check__Fv
/* 806CCC48  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806CCC4C  30 03 FF FF */	addic r0, r3, -1
/* 806CCC50  7F A0 19 10 */	subfe r29, r0, r3
/* 806CCC54  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806CCC58  28 00 00 00 */	cmplwi r0, 0
/* 806CCC5C  40 82 02 A0 */	bne lbl_806CCEFC
/* 806CCC60  38 00 00 01 */	li r0, 1
/* 806CCC64  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806CCC68  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806CCC6C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806CCC70  80 63 00 00 */	lwz r3, 0(r3)
/* 806CCC74  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806CCC78  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806CCC7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CCC80  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806CCC84  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CCC88  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CCC8C  4B C7 98 24 */	b PSMTXCopy
/* 806CCC90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806CCC94  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806CCC98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CCC9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806CCCA0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806CCCA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CCCA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CCCAC  38 81 00 4C */	addi r4, r1, 0x4c
/* 806CCCB0  38 A1 00 58 */	addi r5, r1, 0x58
/* 806CCCB4  4B C7 A0 B8 */	b PSMTXMultVec
/* 806CCCB8  38 61 00 34 */	addi r3, r1, 0x34
/* 806CCCBC  38 81 00 58 */	addi r4, r1, 0x58
/* 806CCCC0  7F 65 DB 78 */	mr r5, r27
/* 806CCCC4  4B B9 9E 70 */	b __mi__4cXyzCFRC3Vec
/* 806CCCC8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806CCCCC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806CCCD0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806CCCD4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806CCCD8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806CCCDC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806CCCE0  4B B9 A9 94 */	b cM_atan2s__Fff
/* 806CCCE4  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806CCCE8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806CCCEC  EC 20 00 32 */	fmuls f1, f0, f0
/* 806CCCF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806CCCF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 806CCCF8  EC 41 00 2A */	fadds f2, f1, f0
/* 806CCCFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CCD00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806CCD04  40 81 00 0C */	ble lbl_806CCD10
/* 806CCD08  FC 00 10 34 */	frsqrte f0, f2
/* 806CCD0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806CCD10:
/* 806CCD10  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806CCD14  4B B9 A9 60 */	b cM_atan2s__Fff
/* 806CCD18  7C 03 00 D0 */	neg r0, r3
/* 806CCD1C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806CCD20  38 80 00 00 */	li r4, 0
/* 806CCD24  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806CCD28  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CCD2C  7C 00 07 74 */	extsb r0, r0
/* 806CCD30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CCD34  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806CCD38  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806CCD3C  57 A5 10 3A */	slwi r5, r29, 2
/* 806CCD40  90 81 00 08 */	stw r4, 8(r1)
/* 806CCD44  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CCD48  3A B7 00 20 */	addi r21, r23, 0x20
/* 806CCD4C  7E B5 2A 14 */	add r21, r21, r5
/* 806CCD50  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806CCD54  3A D7 00 28 */	addi r22, r23, 0x28
/* 806CCD58  7E D6 2A 14 */	add r22, r22, r5
/* 806CCD5C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806CCD60  90 81 00 18 */	stw r4, 0x18(r1)
/* 806CCD64  38 80 00 00 */	li r4, 0
/* 806CCD68  38 A0 02 9B */	li r5, 0x29b
/* 806CCD6C  7F 66 DB 78 */	mr r6, r27
/* 806CCD70  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CCD74  39 01 00 2C */	addi r8, r1, 0x2c
/* 806CCD78  7F 89 E3 78 */	mr r9, r28
/* 806CCD7C  39 40 00 FF */	li r10, 0xff
/* 806CCD80  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CCD84  4B 97 FD 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806CCD88  7C 79 1B 79 */	or. r25, r3, r3
/* 806CCD8C  41 82 00 FC */	beq lbl_806CCE88
/* 806CCD90  38 61 00 40 */	addi r3, r1, 0x40
/* 806CCD94  4B C7 A3 A4 */	b PSVECSquareMag
/* 806CCD98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CCD9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CCDA0  40 81 00 58 */	ble lbl_806CCDF8
/* 806CCDA4  FC 00 08 34 */	frsqrte f0, f1
/* 806CCDA8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CCDAC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CCDB0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CCDB4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CCDB8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CCDBC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CCDC0  FC 02 00 32 */	fmul f0, f2, f0
/* 806CCDC4  FC 44 00 32 */	fmul f2, f4, f0
/* 806CCDC8  FC 00 00 32 */	fmul f0, f0, f0
/* 806CCDCC  FC 01 00 32 */	fmul f0, f1, f0
/* 806CCDD0  FC 03 00 28 */	fsub f0, f3, f0
/* 806CCDD4  FC 02 00 32 */	fmul f0, f2, f0
/* 806CCDD8  FC 44 00 32 */	fmul f2, f4, f0
/* 806CCDDC  FC 00 00 32 */	fmul f0, f0, f0
/* 806CCDE0  FC 01 00 32 */	fmul f0, f1, f0
/* 806CCDE4  FC 03 00 28 */	fsub f0, f3, f0
/* 806CCDE8  FC 02 00 32 */	fmul f0, f2, f0
/* 806CCDEC  FC 21 00 32 */	fmul f1, f1, f0
/* 806CCDF0  FC 20 08 18 */	frsp f1, f1
/* 806CCDF4  48 00 00 88 */	b lbl_806CCE7C
lbl_806CCDF8:
/* 806CCDF8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CCDFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CCE00  40 80 00 10 */	bge lbl_806CCE10
/* 806CCE04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CCE08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806CCE0C  48 00 00 70 */	b lbl_806CCE7C
lbl_806CCE10:
/* 806CCE10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806CCE14  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806CCE18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CCE1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CCE20  7C 03 00 00 */	cmpw r3, r0
/* 806CCE24  41 82 00 14 */	beq lbl_806CCE38
/* 806CCE28  40 80 00 40 */	bge lbl_806CCE68
/* 806CCE2C  2C 03 00 00 */	cmpwi r3, 0
/* 806CCE30  41 82 00 20 */	beq lbl_806CCE50
/* 806CCE34  48 00 00 34 */	b lbl_806CCE68
lbl_806CCE38:
/* 806CCE38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CCE3C  41 82 00 0C */	beq lbl_806CCE48
/* 806CCE40  38 00 00 01 */	li r0, 1
/* 806CCE44  48 00 00 28 */	b lbl_806CCE6C
lbl_806CCE48:
/* 806CCE48  38 00 00 02 */	li r0, 2
/* 806CCE4C  48 00 00 20 */	b lbl_806CCE6C
lbl_806CCE50:
/* 806CCE50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CCE54  41 82 00 0C */	beq lbl_806CCE60
/* 806CCE58  38 00 00 05 */	li r0, 5
/* 806CCE5C  48 00 00 10 */	b lbl_806CCE6C
lbl_806CCE60:
/* 806CCE60  38 00 00 03 */	li r0, 3
/* 806CCE64  48 00 00 08 */	b lbl_806CCE6C
lbl_806CCE68:
/* 806CCE68  38 00 00 04 */	li r0, 4
lbl_806CCE6C:
/* 806CCE6C  2C 00 00 01 */	cmpwi r0, 1
/* 806CCE70  40 82 00 0C */	bne lbl_806CCE7C
/* 806CCE74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806CCE78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806CCE7C:
/* 806CCE7C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806CCE80  EC 00 00 72 */	fmuls f0, f0, f1
/* 806CCE84  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806CCE88:
/* 806CCE88  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CCE8C  7C 04 07 74 */	extsb r4, r0
/* 806CCE90  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806CCE94  38 00 00 00 */	li r0, 0
/* 806CCE98  90 01 00 08 */	stw r0, 8(r1)
/* 806CCE9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806CCEA0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806CCEA4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806CCEA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 806CCEAC  38 80 00 00 */	li r4, 0
/* 806CCEB0  38 A0 02 9C */	li r5, 0x29c
/* 806CCEB4  7F 66 DB 78 */	mr r6, r27
/* 806CCEB8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CCEBC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806CCEC0  7F 89 E3 78 */	mr r9, r28
/* 806CCEC4  39 40 00 FF */	li r10, 0xff
/* 806CCEC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CCECC  4B 97 FB C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806CCED0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806CCED4  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806CCED8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806CCEDC  7F 43 D3 78 */	mr r3, r26
/* 806CCEE0  38 81 00 28 */	addi r4, r1, 0x28
/* 806CCEE4  38 A0 00 00 */	li r5, 0
/* 806CCEE8  38 C0 FF FF */	li r6, -1
/* 806CCEEC  81 9A 00 00 */	lwz r12, 0(r26)
/* 806CCEF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CCEF4  7D 89 03 A6 */	mtctr r12
/* 806CCEF8  4E 80 04 21 */	bctrl 
lbl_806CCEFC:
/* 806CCEFC  3A A0 00 00 */	li r21, 0
/* 806CCF00  3A C0 00 00 */	li r22, 0
/* 806CCF04  3A 80 00 00 */	li r20, 0
/* 806CCF08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CCF0C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806CCF10  57 A0 10 3A */	slwi r0, r29, 2
/* 806CCF14  3B 17 00 28 */	addi r24, r23, 0x28
/* 806CCF18  7F 18 02 14 */	add r24, r24, r0
/* 806CCF1C  3B B7 00 20 */	addi r29, r23, 0x20
/* 806CCF20  7F BD 02 14 */	add r29, r29, r0
/* 806CCF24  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806CCF28:
/* 806CCF28  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806CCF2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CCF30  7C 05 07 74 */	extsb r5, r0
/* 806CCF34  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806CCF38  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806CCF3C  38 00 00 FF */	li r0, 0xff
/* 806CCF40  90 01 00 08 */	stw r0, 8(r1)
/* 806CCF44  38 00 00 00 */	li r0, 0
/* 806CCF48  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CCF4C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806CCF50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806CCF54  93 01 00 18 */	stw r24, 0x18(r1)
/* 806CCF58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806CCF5C  38 A0 00 00 */	li r5, 0
/* 806CCF60  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806CCF64  7F 67 DB 78 */	mr r7, r27
/* 806CCF68  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806CCF6C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806CCF70  7F 8A E3 78 */	mr r10, r28
/* 806CCF74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CCF78  4B 98 05 54 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806CCF7C  7C 7E B9 2E */	stwx r3, r30, r23
/* 806CCF80  3A B5 00 01 */	addi r21, r21, 1
/* 806CCF84  2C 15 00 03 */	cmpwi r21, 3
/* 806CCF88  3A D6 00 02 */	addi r22, r22, 2
/* 806CCF8C  3A 94 00 04 */	addi r20, r20, 4
/* 806CCF90  41 80 FF 98 */	blt lbl_806CCF28
/* 806CCF94  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806CCF98  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806CCF9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CCFA0  7F 43 D3 78 */	mr r3, r26
/* 806CCFA4  38 81 00 24 */	addi r4, r1, 0x24
/* 806CCFA8  38 A0 00 00 */	li r5, 0
/* 806CCFAC  38 C0 FF FF */	li r6, -1
/* 806CCFB0  81 9A 00 00 */	lwz r12, 0(r26)
/* 806CCFB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806CCFB8  7D 89 03 A6 */	mtctr r12
/* 806CCFBC  4E 80 04 21 */	bctrl 
/* 806CCFC0  38 60 00 01 */	li r3, 1
/* 806CCFC4  48 00 00 10 */	b lbl_806CCFD4
lbl_806CCFC8:
/* 806CCFC8  38 00 00 00 */	li r0, 0
/* 806CCFCC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806CCFD0  38 60 00 00 */	li r3, 0
lbl_806CCFD4:
/* 806CCFD4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806CCFD8  4B C9 52 28 */	b _restgpr_19
/* 806CCFDC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806CCFE0  7C 08 03 A6 */	mtlr r0
/* 806CCFE4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806CCFE8  4E 80 00 20 */	blr 
