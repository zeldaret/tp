lbl_8025EEF0:
/* 8025EEF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025EEF4  7C 08 02 A6 */	mflr r0
/* 8025EEF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025EEFC  39 61 00 40 */	addi r11, r1, 0x40
/* 8025EF00  48 10 32 C1 */	bl _savegpr_22
/* 8025EF04  7C 79 1B 78 */	mr r25, r3
/* 8025EF08  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8025EF0C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8025EF10  90 83 00 84 */	stw r4, 0x84(r3)
/* 8025EF14  38 00 03 E8 */	li r0, 0x3e8
/* 8025EF18  7C A4 03 D6 */	divw r5, r4, r0
/* 8025EF1C  1C 05 03 E8 */	mulli r0, r5, 0x3e8
/* 8025EF20  7C C0 20 50 */	subf r6, r0, r4
/* 8025EF24  38 00 00 3C */	li r0, 0x3c
/* 8025EF28  7C 85 03 D6 */	divw r4, r5, r0
/* 8025EF2C  1C 04 00 3C */	mulli r0, r4, 0x3c
/* 8025EF30  7C A0 28 50 */	subf r5, r0, r5
/* 8025EF34  2C 04 00 63 */	cmpwi r4, 0x63
/* 8025EF38  40 81 00 10 */	ble lbl_8025EF48
/* 8025EF3C  38 80 00 63 */	li r4, 0x63
/* 8025EF40  38 A0 00 3B */	li r5, 0x3b
/* 8025EF44  38 C0 03 E7 */	li r6, 0x3e7
lbl_8025EF48:
/* 8025EF48  3B 40 00 00 */	li r26, 0
/* 8025EF4C  3B 00 00 00 */	li r24, 0
/* 8025EF50  38 60 00 0A */	li r3, 0xa
/* 8025EF54  7F E4 1B D6 */	divw r31, r4, r3
/* 8025EF58  7C 1F 19 D6 */	mullw r0, r31, r3
/* 8025EF5C  7F C0 20 50 */	subf r30, r0, r4
/* 8025EF60  7F A5 1B D6 */	divw r29, r5, r3
/* 8025EF64  7C 1D 19 D6 */	mullw r0, r29, r3
/* 8025EF68  7F 80 28 50 */	subf r28, r0, r5
/* 8025EF6C  38 00 00 64 */	li r0, 0x64
/* 8025EF70  7F 66 03 D6 */	divw r27, r6, r0
/* 8025EF74  7C 1B 01 D6 */	mullw r0, r27, r0
/* 8025EF78  7C 00 30 50 */	subf r0, r0, r6
/* 8025EF7C  7E E0 1B D6 */	divw r23, r0, r3
lbl_8025EF80:
/* 8025EF80  7E D9 C2 14 */	add r22, r25, r24
/* 8025EF84  80 96 00 2C */	lwz r4, 0x2c(r22)
/* 8025EF88  28 04 00 00 */	cmplwi r4, 0
/* 8025EF8C  41 82 00 10 */	beq lbl_8025EF9C
/* 8025EF90  7F 23 CB 78 */	mr r3, r25
/* 8025EF94  7F E5 FB 78 */	mr r5, r31
/* 8025EF98  4B FF FE 8D */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025EF9C:
/* 8025EF9C  80 96 00 34 */	lwz r4, 0x34(r22)
/* 8025EFA0  28 04 00 00 */	cmplwi r4, 0
/* 8025EFA4  41 82 00 10 */	beq lbl_8025EFB4
/* 8025EFA8  7F 23 CB 78 */	mr r3, r25
/* 8025EFAC  7F C5 F3 78 */	mr r5, r30
/* 8025EFB0  4B FF FE 75 */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025EFB4:
/* 8025EFB4  80 96 00 3C */	lwz r4, 0x3c(r22)
/* 8025EFB8  28 04 00 00 */	cmplwi r4, 0
/* 8025EFBC  41 82 00 10 */	beq lbl_8025EFCC
/* 8025EFC0  7F 23 CB 78 */	mr r3, r25
/* 8025EFC4  7F A5 EB 78 */	mr r5, r29
/* 8025EFC8  4B FF FE 5D */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025EFCC:
/* 8025EFCC  80 96 00 44 */	lwz r4, 0x44(r22)
/* 8025EFD0  28 04 00 00 */	cmplwi r4, 0
/* 8025EFD4  41 82 00 10 */	beq lbl_8025EFE4
/* 8025EFD8  7F 23 CB 78 */	mr r3, r25
/* 8025EFDC  7F 85 E3 78 */	mr r5, r28
/* 8025EFE0  4B FF FE 45 */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025EFE4:
/* 8025EFE4  80 96 00 4C */	lwz r4, 0x4c(r22)
/* 8025EFE8  28 04 00 00 */	cmplwi r4, 0
/* 8025EFEC  41 82 00 10 */	beq lbl_8025EFFC
/* 8025EFF0  7F 23 CB 78 */	mr r3, r25
/* 8025EFF4  7F 65 DB 78 */	mr r5, r27
/* 8025EFF8  4B FF FE 2D */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025EFFC:
/* 8025EFFC  80 96 00 54 */	lwz r4, 0x54(r22)
/* 8025F000  28 04 00 00 */	cmplwi r4, 0
/* 8025F004  41 82 00 10 */	beq lbl_8025F014
/* 8025F008  7F 23 CB 78 */	mr r3, r25
/* 8025F00C  7E E5 BB 78 */	mr r5, r23
/* 8025F010  4B FF FE 15 */	bl changeNumberTexture__21dDlst_TimerScrnDraw_cFP7J2DPanei
lbl_8025F014:
/* 8025F014  3B 5A 00 01 */	addi r26, r26, 1
/* 8025F018  2C 1A 00 02 */	cmpwi r26, 2
/* 8025F01C  3B 18 00 04 */	addi r24, r24, 4
/* 8025F020  41 80 FF 60 */	blt lbl_8025EF80
/* 8025F024  80 79 00 18 */	lwz r3, 0x18(r25)
/* 8025F028  28 03 00 00 */	cmplwi r3, 0
/* 8025F02C  41 82 01 3C */	beq lbl_8025F168
/* 8025F030  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025F034  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8025F038  88 04 4F AC */	lbz r0, 0x4fac(r4)
/* 8025F03C  28 00 00 01 */	cmplwi r0, 1
/* 8025F040  40 82 00 10 */	bne lbl_8025F050
/* 8025F044  88 19 03 DF */	lbz r0, 0x3df(r25)
/* 8025F048  28 00 00 00 */	cmplwi r0, 0
/* 8025F04C  40 82 00 10 */	bne lbl_8025F05C
lbl_8025F050:
/* 8025F050  88 19 03 E1 */	lbz r0, 0x3e1(r25)
/* 8025F054  28 00 00 00 */	cmplwi r0, 0
/* 8025F058  40 82 00 8C */	bne lbl_8025F0E4
lbl_8025F05C:
/* 8025F05C  A8 83 00 16 */	lha r4, 0x16(r3)
/* 8025F060  2C 04 00 05 */	cmpwi r4, 5
/* 8025F064  40 80 01 04 */	bge lbl_8025F168
/* 8025F068  3A C4 00 01 */	addi r22, r4, 1
/* 8025F06C  7E C0 07 34 */	extsh r0, r22
/* 8025F070  20 00 00 05 */	subfic r0, r0, 5
/* 8025F074  7C 00 07 34 */	extsh r0, r0
/* 8025F078  C8 42 B5 58 */	lfd f2, lit_4627(r2)
/* 8025F07C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8025F080  90 81 00 0C */	stw r4, 0xc(r1)
/* 8025F084  3C 00 43 30 */	lis r0, 0x4330
/* 8025F088  90 01 00 08 */	stw r0, 8(r1)
/* 8025F08C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025F090  EC 20 10 28 */	fsubs f1, f0, f2
/* 8025F094  90 81 00 14 */	stw r4, 0x14(r1)
/* 8025F098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025F09C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8025F0A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8025F0A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025F0A8  C0 02 B5 48 */	lfs f0, lit_4050(r2)
/* 8025F0AC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8025F0B0  C0 39 03 B0 */	lfs f1, 0x3b0(r25)
/* 8025F0B4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025F0B8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8025F0BC  88 19 03 DD */	lbz r0, 0x3dd(r25)
/* 8025F0C0  54 00 10 3A */	slwi r0, r0, 2
/* 8025F0C4  7C 84 02 14 */	add r4, r4, r0
/* 8025F0C8  C0 04 0A F8 */	lfs f0, 0xaf8(r4)
/* 8025F0CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8025F0D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025F0D4  4B FF 66 FD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025F0D8  80 79 00 18 */	lwz r3, 0x18(r25)
/* 8025F0DC  B2 C3 00 16 */	sth r22, 0x16(r3)
/* 8025F0E0  48 00 00 88 */	b lbl_8025F168
lbl_8025F0E4:
/* 8025F0E4  A8 83 00 16 */	lha r4, 0x16(r3)
/* 8025F0E8  7C 80 07 35 */	extsh. r0, r4
/* 8025F0EC  40 81 00 7C */	ble lbl_8025F168
/* 8025F0F0  3A C4 FF FF */	addi r22, r4, -1
/* 8025F0F4  7E C0 07 34 */	extsh r0, r22
/* 8025F0F8  20 00 00 05 */	subfic r0, r0, 5
/* 8025F0FC  7C 00 07 34 */	extsh r0, r0
/* 8025F100  C8 42 B5 58 */	lfd f2, lit_4627(r2)
/* 8025F104  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8025F108  90 81 00 14 */	stw r4, 0x14(r1)
/* 8025F10C  3C 00 43 30 */	lis r0, 0x4330
/* 8025F110  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025F114  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8025F118  EC 20 10 28 */	fsubs f1, f0, f2
/* 8025F11C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8025F120  90 01 00 08 */	stw r0, 8(r1)
/* 8025F124  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025F128  EC 00 10 28 */	fsubs f0, f0, f2
/* 8025F12C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025F130  C0 02 B5 48 */	lfs f0, lit_4050(r2)
/* 8025F134  EC 41 00 24 */	fdivs f2, f1, f0
/* 8025F138  C0 39 03 B0 */	lfs f1, 0x3b0(r25)
/* 8025F13C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8025F140  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8025F144  88 19 03 DD */	lbz r0, 0x3dd(r25)
/* 8025F148  54 00 10 3A */	slwi r0, r0, 2
/* 8025F14C  7C 84 02 14 */	add r4, r4, r0
/* 8025F150  C0 04 0A F8 */	lfs f0, 0xaf8(r4)
/* 8025F154  EC 02 00 32 */	fmuls f0, f2, f0
/* 8025F158  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025F15C  4B FF 66 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025F160  80 79 00 18 */	lwz r3, 0x18(r25)
/* 8025F164  B2 C3 00 16 */	sth r22, 0x16(r3)
lbl_8025F168:
/* 8025F168  39 61 00 40 */	addi r11, r1, 0x40
/* 8025F16C  48 10 30 A1 */	bl _restgpr_22
/* 8025F170  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8025F174  7C 08 03 A6 */	mtlr r0
/* 8025F178  38 21 00 40 */	addi r1, r1, 0x40
/* 8025F17C  4E 80 00 20 */	blr 
