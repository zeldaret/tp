lbl_8034CE8C:
/* 8034CE8C  7C 08 02 A6 */	mflr r0
/* 8034CE90  3C A0 80 3D */	lis r5, lit_1@ha
/* 8034CE94  90 01 00 04 */	stw r0, 4(r1)
/* 8034CE98  3C 80 80 45 */	lis r4, regs@ha
/* 8034CE9C  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8034CEA0  BD E1 00 34 */	stmw r15, 0x34(r1)
/* 8034CEA4  3A 63 00 00 */	addi r19, r3, 0
/* 8034CEA8  3A 05 17 60 */	addi r16, r5, lit_1@l
/* 8034CEAC  3B C4 CA 28 */	addi r30, r4, regs@l
/* 8034CEB0  4B FF 08 45 */	bl OSDisableInterrupts
/* 8034CEB4  80 93 00 00 */	lwz r4, 0(r19)
/* 8034CEB8  3B BE 01 14 */	addi r29, r30, 0x114
/* 8034CEBC  80 1E 01 14 */	lwz r0, 0x114(r30)
/* 8034CEC0  39 E3 00 00 */	addi r15, r3, 0
/* 8034CEC4  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 8034CEC8  7C 00 20 40 */	cmplw r0, r4
/* 8034CECC  41 82 00 10 */	beq lbl_8034CEDC
/* 8034CED0  38 00 00 01 */	li r0, 1
/* 8034CED4  90 0D 92 88 */	stw r0, changeMode(r13)
/* 8034CED8  90 9D 00 00 */	stw r4, 0(r29)
lbl_8034CEDC:
/* 8034CEDC  80 13 00 00 */	lwz r0, 0(r19)
/* 8034CEE0  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000CC@ha */
/* 8034CEE4  82 23 00 CC */	lwz r17, 0x00CC(r3)
/* 8034CEE8  54 00 F0 BE */	srwi r0, r0, 2
/* 8034CEEC  28 00 00 04 */	cmplwi r0, 4
/* 8034CEF0  7C 12 03 78 */	mr r18, r0
/* 8034CEF4  40 82 00 6C */	bne lbl_8034CF60
/* 8034CEF8  80 0D 92 C0 */	lwz r0, message(r13)
/* 8034CEFC  28 00 00 00 */	cmplwi r0, 0
/* 8034CF00  40 82 00 60 */	bne lbl_8034CF60
/* 8034CF04  38 00 00 01 */	li r0, 1
/* 8034CF08  4C C6 31 82 */	crclr 6
/* 8034CF0C  90 0D 92 C0 */	stw r0, message(r13)
/* 8034CF10  38 70 02 70 */	addi r3, r16, 0x270
/* 8034CF14  4B CB 9B A9 */	bl OSReport
/* 8034CF18  38 70 02 9C */	addi r3, r16, 0x29c
/* 8034CF1C  4C C6 31 82 */	crclr 6
/* 8034CF20  4B CB 9B 9D */	bl OSReport
/* 8034CF24  38 70 02 C8 */	addi r3, r16, 0x2c8
/* 8034CF28  4C C6 31 82 */	crclr 6
/* 8034CF2C  4B CB 9B 91 */	bl OSReport
/* 8034CF30  38 70 02 F4 */	addi r3, r16, 0x2f4
/* 8034CF34  4C C6 31 82 */	crclr 6
/* 8034CF38  4B CB 9B 85 */	bl OSReport
/* 8034CF3C  38 70 03 20 */	addi r3, r16, 0x320
/* 8034CF40  4C C6 31 82 */	crclr 6
/* 8034CF44  4B CB 9B 79 */	bl OSReport
/* 8034CF48  38 70 03 4C */	addi r3, r16, 0x34c
/* 8034CF4C  4C C6 31 82 */	crclr 6
/* 8034CF50  4B CB 9B 6D */	bl OSReport
/* 8034CF54  38 70 02 70 */	addi r3, r16, 0x270
/* 8034CF58  4C C6 31 82 */	crclr 6
/* 8034CF5C  4B CB 9B 61 */	bl OSReport
lbl_8034CF60:
/* 8034CF60  2C 11 00 02 */	cmpwi r17, 2
/* 8034CF64  41 82 00 2C */	beq lbl_8034CF90
/* 8034CF68  40 80 00 14 */	bge lbl_8034CF7C
/* 8034CF6C  2C 11 00 00 */	cmpwi r17, 0
/* 8034CF70  41 82 00 20 */	beq lbl_8034CF90
/* 8034CF74  40 80 00 3C */	bge lbl_8034CFB0
/* 8034CF78  48 00 00 48 */	b lbl_8034CFC0
lbl_8034CF7C:
/* 8034CF7C  2C 11 00 05 */	cmpwi r17, 5
/* 8034CF80  41 82 00 30 */	beq lbl_8034CFB0
/* 8034CF84  41 80 00 3C */	blt lbl_8034CFC0
/* 8034CF88  2C 11 00 08 */	cmpwi r17, 8
/* 8034CF8C  40 80 00 34 */	bge lbl_8034CFC0
lbl_8034CF90:
/* 8034CF90  28 12 00 00 */	cmplwi r18, 0
/* 8034CF94  41 82 00 48 */	beq lbl_8034CFDC
/* 8034CF98  28 12 00 02 */	cmplwi r18, 2
/* 8034CF9C  41 82 00 40 */	beq lbl_8034CFDC
/* 8034CFA0  38 12 FF FA */	addi r0, r18, -6
/* 8034CFA4  28 00 00 01 */	cmplwi r0, 1
/* 8034CFA8  41 81 00 18 */	bgt lbl_8034CFC0
/* 8034CFAC  48 00 00 30 */	b lbl_8034CFDC
lbl_8034CFB0:
/* 8034CFB0  28 12 00 01 */	cmplwi r18, 1
/* 8034CFB4  41 82 00 28 */	beq lbl_8034CFDC
/* 8034CFB8  28 12 00 05 */	cmplwi r18, 5
/* 8034CFBC  41 82 00 20 */	beq lbl_8034CFDC
lbl_8034CFC0:
/* 8034CFC0  38 D1 00 00 */	addi r6, r17, 0
/* 8034CFC4  4C C6 31 82 */	crclr 6
/* 8034CFC8  38 F2 00 00 */	addi r7, r18, 0
/* 8034CFCC  38 B0 03 78 */	addi r5, r16, 0x378
/* 8034CFD0  38 6D 84 94 */	la r3, lit_537(r13) /* 80450A14-_SDA_BASE_ */
/* 8034CFD4  38 80 07 BB */	li r4, 0x7bb
/* 8034CFD8  4B CB 9E A5 */	bl OSPanic
lbl_8034CFDC:
/* 8034CFDC  28 12 00 00 */	cmplwi r18, 0
/* 8034CFE0  41 82 00 0C */	beq lbl_8034CFEC
/* 8034CFE4  28 12 00 02 */	cmplwi r18, 2
/* 8034CFE8  40 82 00 0C */	bne lbl_8034CFF4
lbl_8034CFEC:
/* 8034CFEC  92 3E 01 18 */	stw r17, 0x118(r30)
/* 8034CFF0  48 00 00 08 */	b lbl_8034CFF8
lbl_8034CFF4:
/* 8034CFF4  92 5E 01 18 */	stw r18, 0x118(r30)
lbl_8034CFF8:
/* 8034CFF8  A0 13 00 0A */	lhz r0, 0xa(r19)
/* 8034CFFC  B0 1E 00 F0 */	sth r0, 0xf0(r30)
/* 8034D000  80 1D 00 00 */	lwz r0, 0(r29)
/* 8034D004  28 00 00 01 */	cmplwi r0, 1
/* 8034D008  40 82 00 10 */	bne lbl_8034D018
/* 8034D00C  A0 13 00 0C */	lhz r0, 0xc(r19)
/* 8034D010  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 8034D014  48 00 00 08 */	b lbl_8034D01C
lbl_8034D018:
/* 8034D018  A0 13 00 0C */	lhz r0, 0xc(r19)
lbl_8034D01C:
/* 8034D01C  B0 1E 00 F2 */	sth r0, 0xf2(r30)
/* 8034D020  3B 1E 00 F2 */	addi r24, r30, 0xf2
/* 8034D024  3B 3E 00 F4 */	addi r25, r30, 0xf4
/* 8034D028  A0 13 00 0E */	lhz r0, 0xe(r19)
/* 8034D02C  3B 9E 01 02 */	addi r28, r30, 0x102
/* 8034D030  3B 5E 01 10 */	addi r26, r30, 0x110
/* 8034D034  B0 1E 00 F4 */	sth r0, 0xf4(r30)
/* 8034D038  38 00 00 00 */	li r0, 0
/* 8034D03C  3A 3E 01 0A */	addi r17, r30, 0x10a
/* 8034D040  A0 73 00 04 */	lhz r3, 4(r19)
/* 8034D044  3B 7E 01 0C */	addi r27, r30, 0x10c
/* 8034D048  3A 1E 01 06 */	addi r16, r30, 0x106
/* 8034D04C  B0 7E 01 02 */	sth r3, 0x102(r30)
/* 8034D050  3A 5E 01 08 */	addi r18, r30, 0x108
/* 8034D054  A0 73 00 08 */	lhz r3, 8(r19)
/* 8034D058  B0 7E 01 04 */	sth r3, 0x104(r30)
/* 8034D05C  80 73 00 14 */	lwz r3, 0x14(r19)
/* 8034D060  90 7E 01 10 */	stw r3, 0x110(r30)
/* 8034D064  A0 7E 01 02 */	lhz r3, 0x102(r30)
/* 8034D068  B0 7E 01 0A */	sth r3, 0x10a(r30)
/* 8034D06C  A0 7E 01 04 */	lhz r3, 0x104(r30)
/* 8034D070  B0 7E 01 0C */	sth r3, 0x10c(r30)
/* 8034D074  B0 1E 01 06 */	sth r0, 0x106(r30)
/* 8034D078  B0 1E 01 08 */	sth r0, 0x108(r30)
/* 8034D07C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8034D080  28 00 00 02 */	cmplwi r0, 2
/* 8034D084  40 82 00 0C */	bne lbl_8034D090
/* 8034D088  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8034D08C  48 00 00 30 */	b lbl_8034D0BC
lbl_8034D090:
/* 8034D090  28 00 00 03 */	cmplwi r0, 3
/* 8034D094  40 82 00 0C */	bne lbl_8034D0A0
/* 8034D098  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8034D09C  48 00 00 20 */	b lbl_8034D0BC
lbl_8034D0A0:
/* 8034D0A0  80 1A 00 00 */	lwz r0, 0(r26)
/* 8034D0A4  2C 00 00 00 */	cmpwi r0, 0
/* 8034D0A8  40 82 00 10 */	bne lbl_8034D0B8
/* 8034D0AC  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8034D0B0  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 8034D0B4  48 00 00 08 */	b lbl_8034D0BC
lbl_8034D0B8:
/* 8034D0B8  A0 1B 00 00 */	lhz r0, 0(r27)
lbl_8034D0BC:
/* 8034D0BC  3A FE 00 F6 */	addi r23, r30, 0xf6
/* 8034D0C0  B0 1E 00 F6 */	sth r0, 0xf6(r30)
/* 8034D0C4  80 1D 00 00 */	lwz r0, 0(r29)
/* 8034D0C8  28 00 00 03 */	cmplwi r0, 3
/* 8034D0CC  40 82 00 0C */	bne lbl_8034D0D8
/* 8034D0D0  38 00 00 01 */	li r0, 1
/* 8034D0D4  48 00 00 08 */	b lbl_8034D0DC
lbl_8034D0D8:
/* 8034D0D8  38 00 00 00 */	li r0, 0
lbl_8034D0DC:
/* 8034D0DC  3A BE 01 34 */	addi r21, r30, 0x134
/* 8034D0E0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8034D0E4  3A DE 01 18 */	addi r22, r30, 0x118
/* 8034D0E8  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 8034D0EC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8034D0F0  54 63 10 3A */	slwi r3, r3, 2
/* 8034D0F4  7C 63 02 14 */	add r3, r3, r0
/* 8034D0F8  4B FF F1 71 */	bl getTiming
/* 8034D0FC  7C 7F 1B 78 */	mr r31, r3
/* 8034D100  93 FE 01 44 */	stw r31, 0x144(r30)
/* 8034D104  A0 19 00 00 */	lhz r0, 0(r25)
/* 8034D108  A8 9E 00 F0 */	lha r4, 0xf0(r30)
/* 8034D10C  A8 6D 92 84 */	lha r3, struct_80451804+0x0(r13)
/* 8034D110  20 00 02 D0 */	subfic r0, r0, 0x2d0
/* 8034D114  A0 DF 00 02 */	lhz r6, 2(r31)
/* 8034D118  7C 64 1A 14 */	add r3, r4, r3
/* 8034D11C  7C 03 00 00 */	cmpw r3, r0
/* 8034D120  40 81 00 08 */	ble lbl_8034D128
/* 8034D124  48 00 00 14 */	b lbl_8034D138
lbl_8034D128:
/* 8034D128  2C 03 00 00 */	cmpwi r3, 0
/* 8034D12C  40 80 00 08 */	bge lbl_8034D134
/* 8034D130  38 60 00 00 */	li r3, 0
lbl_8034D134:
/* 8034D134  7C 60 1B 78 */	mr r0, r3
lbl_8034D138:
/* 8034D138  B0 1E 00 F8 */	sth r0, 0xf8(r30)
/* 8034D13C  38 7E 00 F8 */	addi r3, r30, 0xf8
/* 8034D140  80 1A 00 00 */	lwz r0, 0(r26)
/* 8034D144  2C 00 00 00 */	cmpwi r0, 0
/* 8034D148  40 82 00 0C */	bne lbl_8034D154
/* 8034D14C  38 00 00 02 */	li r0, 2
/* 8034D150  48 00 00 08 */	b lbl_8034D158
lbl_8034D154:
/* 8034D154  38 00 00 01 */	li r0, 1
lbl_8034D158:
/* 8034D158  A0 98 00 00 */	lhz r4, 0(r24)
/* 8034D15C  A8 AD 92 86 */	lha r5, struct_80451804+0x2(r13)
/* 8034D160  7C 87 07 34 */	extsh r7, r4
/* 8034D164  54 84 07 FE */	clrlwi r4, r4, 0x1f
/* 8034D168  7C E7 2A 14 */	add r7, r7, r5
/* 8034D16C  7C 07 20 00 */	cmpw r7, r4
/* 8034D170  40 81 00 08 */	ble lbl_8034D178
/* 8034D174  48 00 00 08 */	b lbl_8034D17C
lbl_8034D178:
/* 8034D178  7C 87 23 78 */	mr r7, r4
lbl_8034D17C:
/* 8034D17C  B0 FE 00 FA */	sth r7, 0xfa(r30)
/* 8034D180  7C C6 07 34 */	extsh r6, r6
/* 8034D184  54 C6 08 3C */	slwi r6, r6, 1
/* 8034D188  A0 F7 00 00 */	lhz r7, 0(r23)
/* 8034D18C  7C C4 30 50 */	subf r6, r4, r6
/* 8034D190  A9 58 00 00 */	lha r10, 0(r24)
/* 8034D194  3A 7E 00 FA */	addi r19, r30, 0xfa
/* 8034D198  7C E8 07 34 */	extsh r8, r7
/* 8034D19C  7D 28 2A 14 */	add r9, r8, r5
/* 8034D1A0  7D 2A 4A 14 */	add r9, r10, r9
/* 8034D1A4  7D 06 48 51 */	subf. r8, r6, r9
/* 8034D1A8  40 81 00 0C */	ble lbl_8034D1B4
/* 8034D1AC  7D 26 48 50 */	subf r9, r6, r9
/* 8034D1B0  48 00 00 08 */	b lbl_8034D1B8
lbl_8034D1B4:
/* 8034D1B4  39 20 00 00 */	li r9, 0
lbl_8034D1B8:
/* 8034D1B8  7D 4A 2A 14 */	add r10, r10, r5
/* 8034D1BC  7D 04 50 51 */	subf. r8, r4, r10
/* 8034D1C0  40 80 00 0C */	bge lbl_8034D1CC
/* 8034D1C4  7D 04 50 50 */	subf r8, r4, r10
/* 8034D1C8  48 00 00 08 */	b lbl_8034D1D0
lbl_8034D1CC:
/* 8034D1CC  39 00 00 00 */	li r8, 0
lbl_8034D1D0:
/* 8034D1D0  7C E7 42 14 */	add r7, r7, r8
/* 8034D1D4  7C E9 38 50 */	subf r7, r9, r7
/* 8034D1D8  3A 9E 00 FC */	addi r20, r30, 0xfc
/* 8034D1DC  B0 FE 00 FC */	sth r7, 0xfc(r30)
/* 8034D1E0  A8 F8 00 00 */	lha r7, 0(r24)
/* 8034D1E4  7D 07 2A 14 */	add r8, r7, r5
/* 8034D1E8  7C E4 40 51 */	subf. r7, r4, r8
/* 8034D1EC  40 80 00 0C */	bge lbl_8034D1F8
/* 8034D1F0  7C E4 40 50 */	subf r7, r4, r8
/* 8034D1F4  48 00 00 08 */	b lbl_8034D1FC
lbl_8034D1F8:
/* 8034D1F8  38 E0 00 00 */	li r7, 0
lbl_8034D1FC:
/* 8034D1FC  7D 07 03 D6 */	divw r8, r7, r0
/* 8034D200  A0 F2 00 00 */	lhz r7, 0(r18)
/* 8034D204  7C E8 38 50 */	subf r7, r8, r7
/* 8034D208  B0 FE 00 FE */	sth r7, 0xfe(r30)
/* 8034D20C  A8 F7 00 00 */	lha r7, 0(r23)
/* 8034D210  A9 38 00 00 */	lha r9, 0(r24)
/* 8034D214  7D 07 2A 14 */	add r8, r7, r5
/* 8034D218  7D 09 42 14 */	add r8, r9, r8
/* 8034D21C  7C E6 40 51 */	subf. r7, r6, r8
/* 8034D220  40 81 00 0C */	ble lbl_8034D22C
/* 8034D224  7C C6 40 50 */	subf r6, r6, r8
/* 8034D228  48 00 00 08 */	b lbl_8034D230
lbl_8034D22C:
/* 8034D22C  38 C0 00 00 */	li r6, 0
lbl_8034D230:
/* 8034D230  7C E9 2A 14 */	add r7, r9, r5
/* 8034D234  7C A4 38 51 */	subf. r5, r4, r7
/* 8034D238  40 80 00 0C */	bge lbl_8034D244
/* 8034D23C  7C 84 38 50 */	subf r4, r4, r7
/* 8034D240  48 00 00 08 */	b lbl_8034D248
lbl_8034D244:
/* 8034D244  38 80 00 00 */	li r4, 0
lbl_8034D248:
/* 8034D248  7C 84 03 D6 */	divw r4, r4, r0
/* 8034D24C  A0 BB 00 00 */	lhz r5, 0(r27)
/* 8034D250  7C C6 03 D6 */	divw r6, r6, r0
/* 8034D254  7C 05 22 14 */	add r0, r5, r4
/* 8034D258  7C 06 00 50 */	subf r0, r6, r0
/* 8034D25C  B0 1E 01 00 */	sth r0, 0x100(r30)
/* 8034D260  80 0D 92 80 */	lwz r0, encoderType(r13)
/* 8034D264  28 00 00 00 */	cmplwi r0, 0
/* 8034D268  40 82 00 0C */	bne lbl_8034D274
/* 8034D26C  38 00 00 03 */	li r0, 3
/* 8034D270  90 16 00 00 */	stw r0, 0(r22)
lbl_8034D274:
/* 8034D274  A0 BF 00 18 */	lhz r5, 0x18(r31)
/* 8034D278  7C A4 0E 70 */	srawi r4, r5, 1
/* 8034D27C  7C 84 01 94 */	addze r4, r4
/* 8034D280  7C A0 0E 70 */	srawi r0, r5, 1
/* 8034D284  7C 00 01 94 */	addze r0, r0
/* 8034D288  54 00 08 3C */	slwi r0, r0, 1
/* 8034D28C  7C 00 28 10 */	subfc r0, r0, r5
/* 8034D290  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8034D294  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8034D298  41 82 00 0C */	beq lbl_8034D2A4
/* 8034D29C  A0 BF 00 1A */	lhz r5, 0x1a(r31)
/* 8034D2A0  48 00 00 08 */	b lbl_8034D2A8
lbl_8034D2A4:
/* 8034D2A4  38 A0 00 00 */	li r5, 0
lbl_8034D2A8:
/* 8034D2A8  38 05 00 01 */	addi r0, r5, 1
/* 8034D2AC  B0 1E 00 32 */	sth r0, 0x32(r30)
/* 8034D2B0  38 04 00 01 */	addi r0, r4, 1
/* 8034D2B4  60 00 10 00 */	ori r0, r0, 0x1000
/* 8034D2B8  80 CD 92 90 */	lwz r6, changed(r13)
/* 8034D2BC  38 9E 00 02 */	addi r4, r30, 2
/* 8034D2C0  38 BE 00 6C */	addi r5, r30, 0x6c
/* 8034D2C4  80 ED 92 94 */	lwz r7, data_80451814(r13)
/* 8034D2C8  60 C6 00 40 */	ori r6, r6, 0x40
/* 8034D2CC  90 ED 92 94 */	stw r7, data_80451814(r13)
/* 8034D2D0  90 CD 92 90 */	stw r6, changed(r13)
/* 8034D2D4  B0 1E 00 30 */	sth r0, 0x30(r30)
/* 8034D2D8  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D2DC  80 CD 92 94 */	lwz r6, data_80451814(r13)
/* 8034D2E0  60 00 00 80 */	ori r0, r0, 0x80
/* 8034D2E4  90 CD 92 94 */	stw r6, data_80451814(r13)
/* 8034D2E8  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D2EC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8034D2F0  A0 DE 00 02 */	lhz r6, 2(r30)
/* 8034D2F4  28 00 00 02 */	cmplwi r0, 2
/* 8034D2F8  A0 FE 00 6C */	lhz r7, 0x6c(r30)
/* 8034D2FC  41 82 00 0C */	beq lbl_8034D308
/* 8034D300  28 00 00 03 */	cmplwi r0, 3
/* 8034D304  40 82 00 18 */	bne lbl_8034D31C
lbl_8034D308:
/* 8034D308  54 C6 07 B8 */	rlwinm r6, r6, 0, 0x1e, 0x1c
/* 8034D30C  54 E0 00 3C */	rlwinm r0, r7, 0, 0, 0x1e
/* 8034D310  60 C6 00 04 */	ori r6, r6, 4
/* 8034D314  60 09 00 01 */	ori r9, r0, 1
/* 8034D318  48 00 00 10 */	b lbl_8034D328
lbl_8034D31C:
/* 8034D31C  54 C6 07 B8 */	rlwinm r6, r6, 0, 0x1e, 0x1c
/* 8034D320  50 06 17 7A */	rlwimi r6, r0, 2, 0x1d, 0x1d
/* 8034D324  54 E9 00 3C */	rlwinm r9, r7, 0, 0, 0x1e
lbl_8034D328:
/* 8034D328  80 F6 00 00 */	lwz r7, 0(r22)
/* 8034D32C  54 C6 07 76 */	rlwinm r6, r6, 0, 0x1d, 0x1b
/* 8034D330  81 15 00 00 */	lwz r8, 0(r21)
/* 8034D334  28 07 00 01 */	cmplwi r7, 1
/* 8034D338  55 00 18 38 */	slwi r0, r8, 3
/* 8034D33C  7C C6 03 78 */	or r6, r6, r0
/* 8034D340  41 82 00 10 */	beq lbl_8034D350
/* 8034D344  38 07 FF FE */	addi r0, r7, -2
/* 8034D348  28 00 00 01 */	cmplwi r0, 1
/* 8034D34C  41 81 00 14 */	bgt lbl_8034D360
lbl_8034D350:
/* 8034D350  54 C6 06 2A */	rlwinm r6, r6, 0, 0x18, 0x15
/* 8034D354  54 E0 40 2E */	slwi r0, r7, 8
/* 8034D358  7C C0 03 78 */	or r0, r6, r0
/* 8034D35C  48 00 00 08 */	b lbl_8034D364
lbl_8034D360:
/* 8034D360  54 C0 06 2A */	rlwinm r0, r6, 0, 0x18, 0x15
lbl_8034D364:
/* 8034D364  B0 04 00 00 */	sth r0, 0(r4)
/* 8034D368  3C 00 40 00 */	lis r0, 0x4000
/* 8034D36C  2C 08 00 00 */	cmpwi r8, 0
/* 8034D370  B1 25 00 00 */	sth r9, 0(r5)
/* 8034D374  80 8D 92 90 */	lwz r4, changed(r13)
/* 8034D378  80 AD 92 94 */	lwz r5, data_80451814(r13)
/* 8034D37C  7C 80 03 78 */	or r0, r4, r0
/* 8034D380  90 AD 92 94 */	stw r5, data_80451814(r13)
/* 8034D384  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D388  80 8D 92 90 */	lwz r4, changed(r13)
/* 8034D38C  80 0D 92 94 */	lwz r0, data_80451814(r13)
/* 8034D390  60 00 02 00 */	ori r0, r0, 0x200
/* 8034D394  90 0D 92 94 */	stw r0, data_80451814(r13)
/* 8034D398  90 8D 92 90 */	stw r4, changed(r13)
/* 8034D39C  A0 99 00 00 */	lhz r4, 0(r25)
/* 8034D3A0  A0 B1 00 00 */	lhz r5, 0(r17)
/* 8034D3A4  41 82 00 0C */	beq lbl_8034D3B0
/* 8034D3A8  54 A0 08 3C */	slwi r0, r5, 1
/* 8034D3AC  48 00 00 08 */	b lbl_8034D3B4
lbl_8034D3B0:
/* 8034D3B0  7C A0 2B 78 */	mr r0, r5
lbl_8034D3B4:
/* 8034D3B4  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 8034D3B8  7C 08 20 40 */	cmplw r8, r4
/* 8034D3BC  40 80 00 50 */	bge lbl_8034D40C
/* 8034D3C0  55 06 40 2E */	slwi r6, r8, 8
/* 8034D3C4  38 06 FF FF */	addi r0, r6, -1
/* 8034D3C8  7C 04 02 14 */	add r0, r4, r0
/* 8034D3CC  7C 00 23 96 */	divwu r0, r0, r4
/* 8034D3D0  60 00 10 00 */	ori r0, r0, 0x1000
/* 8034D3D4  B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 8034D3D8  3C 00 04 00 */	lis r0, 0x400
/* 8034D3DC  80 CD 92 90 */	lwz r6, changed(r13)
/* 8034D3E0  80 ED 92 94 */	lwz r7, data_80451814(r13)
/* 8034D3E4  7C E0 03 78 */	or r0, r7, r0
/* 8034D3E8  90 0D 92 94 */	stw r0, data_80451814(r13)
/* 8034D3EC  90 CD 92 90 */	stw r6, changed(r13)
/* 8034D3F0  B1 1E 00 70 */	sth r8, 0x70(r30)
/* 8034D3F4  80 CD 92 90 */	lwz r6, changed(r13)
/* 8034D3F8  80 0D 92 94 */	lwz r0, data_80451814(r13)
/* 8034D3FC  60 00 00 80 */	ori r0, r0, 0x80
/* 8034D400  90 0D 92 94 */	stw r0, data_80451814(r13)
/* 8034D404  90 CD 92 90 */	stw r6, changed(r13)
/* 8034D408  48 00 00 24 */	b lbl_8034D42C
lbl_8034D40C:
/* 8034D40C  38 00 01 00 */	li r0, 0x100
/* 8034D410  B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 8034D414  3C 00 04 00 */	lis r0, 0x400
/* 8034D418  80 CD 92 90 */	lwz r6, changed(r13)
/* 8034D41C  80 ED 92 94 */	lwz r7, data_80451814(r13)
/* 8034D420  7C E0 03 78 */	or r0, r7, r0
/* 8034D424  90 0D 92 94 */	stw r0, data_80451814(r13)
/* 8034D428  90 CD 92 90 */	stw r6, changed(r13)
lbl_8034D42C:
/* 8034D42C  A0 03 00 00 */	lhz r0, 0(r3)
/* 8034D430  21 84 02 D0 */	subfic r12, r4, 0x2d0
/* 8034D434  A0 DF 00 1A */	lhz r6, 0x1a(r31)
/* 8034D438  3C 60 10 00 */	lis r3, 0x1000
/* 8034D43C  3D 00 20 00 */	lis r8, 0x2000
/* 8034D440  B0 DE 00 06 */	sth r6, 6(r30)
/* 8034D444  3D 20 04 00 */	lis r9, 0x400
/* 8034D448  3C E0 08 00 */	lis r7, 0x800
/* 8034D44C  81 4D 92 90 */	lwz r10, changed(r13)
/* 8034D450  3C C0 00 10 */	lis r6, 0x10
/* 8034D454  3C 80 00 20 */	lis r4, 0x20
/* 8034D458  81 6D 92 94 */	lwz r11, data_80451814(r13)
/* 8034D45C  7D 4A 1B 78 */	or r10, r10, r3
/* 8034D460  3C 60 00 04 */	lis r3, 4
/* 8034D464  91 6D 92 94 */	stw r11, data_80451814(r13)
/* 8034D468  91 4D 92 90 */	stw r10, changed(r13)
/* 8034D46C  89 5F 00 1D */	lbz r10, 0x1d(r31)
/* 8034D470  89 7F 00 1E */	lbz r11, 0x1e(r31)
/* 8034D474  51 4B 44 2E */	rlwimi r11, r10, 8, 0x10, 0x17
/* 8034D478  B1 7E 00 04 */	sth r11, 4(r30)
/* 8034D47C  81 4D 92 90 */	lwz r10, changed(r13)
/* 8034D480  81 6D 92 94 */	lwz r11, data_80451814(r13)
/* 8034D484  7D 48 43 78 */	or r8, r10, r8
/* 8034D488  91 6D 92 94 */	stw r11, data_80451814(r13)
/* 8034D48C  91 0D 92 90 */	stw r8, changed(r13)
/* 8034D490  89 1F 00 1F */	lbz r8, 0x1f(r31)
/* 8034D494  89 5F 00 1C */	lbz r10, 0x1c(r31)
/* 8034D498  7E 28 02 14 */	add r17, r8, r0
/* 8034D49C  A1 7F 00 20 */	lhz r11, 0x20(r31)
/* 8034D4A0  3A 31 FF D8 */	addi r17, r17, -40
/* 8034D4A4  56 28 3C 30 */	rlwinm r8, r17, 7, 0x10, 0x18
/* 8034D4A8  7D 48 43 78 */	or r8, r10, r8
/* 8034D4AC  B1 1E 00 0A */	sth r8, 0xa(r30)
/* 8034D4B0  7D 0B 02 14 */	add r8, r11, r0
/* 8034D4B4  38 08 00 28 */	addi r0, r8, 0x28
/* 8034D4B8  81 4D 92 90 */	lwz r10, changed(r13)
/* 8034D4BC  7C 0C 00 50 */	subf r0, r12, r0
/* 8034D4C0  56 28 BA 7E */	srwi r8, r17, 9
/* 8034D4C4  81 6D 92 94 */	lwz r11, data_80451814(r13)
/* 8034D4C8  54 00 08 3C */	slwi r0, r0, 1
/* 8034D4CC  7D 49 4B 78 */	or r9, r10, r9
/* 8034D4D0  91 6D 92 94 */	stw r11, data_80451814(r13)
/* 8034D4D4  7D 00 03 78 */	or r0, r8, r0
/* 8034D4D8  91 2D 92 90 */	stw r9, changed(r13)
/* 8034D4DC  B0 1E 00 08 */	sth r0, 8(r30)
/* 8034D4E0  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D4E4  81 0D 92 94 */	lwz r8, data_80451814(r13)
/* 8034D4E8  7C 00 3B 78 */	or r0, r0, r7
/* 8034D4EC  91 0D 92 94 */	stw r8, data_80451814(r13)
/* 8034D4F0  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D4F4  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 8034D4F8  88 FF 00 0C */	lbz r7, 0xc(r31)
/* 8034D4FC  54 00 28 34 */	slwi r0, r0, 5
/* 8034D500  7C E0 03 78 */	or r0, r7, r0
/* 8034D504  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 8034D508  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D50C  80 ED 92 94 */	lwz r7, data_80451814(r13)
/* 8034D510  7C 00 33 78 */	or r0, r0, r6
/* 8034D514  90 ED 92 94 */	stw r7, data_80451814(r13)
/* 8034D518  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D51C  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8034D520  88 DF 00 0E */	lbz r6, 0xe(r31)
/* 8034D524  54 00 28 34 */	slwi r0, r0, 5
/* 8034D528  7C C0 03 78 */	or r0, r6, r0
/* 8034D52C  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8034D530  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D534  80 CD 92 94 */	lwz r6, data_80451814(r13)
/* 8034D538  7C 00 23 78 */	or r0, r0, r4
/* 8034D53C  90 CD 92 94 */	stw r6, data_80451814(r13)
/* 8034D540  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D544  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 8034D548  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 8034D54C  54 00 28 34 */	slwi r0, r0, 5
/* 8034D550  7C 80 03 78 */	or r0, r4, r0
/* 8034D554  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 8034D558  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034D55C  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034D560  7C 00 1B 78 */	or r0, r0, r3
/* 8034D564  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034D568  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D56C  A0 1F 00 16 */	lhz r0, 0x16(r31)
/* 8034D570  88 7F 00 0F */	lbz r3, 0xf(r31)
/* 8034D574  54 00 28 34 */	slwi r0, r0, 5
/* 8034D578  7C 60 03 78 */	or r0, r3, r0
/* 8034D57C  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 8034D580  80 6D 92 90 */	lwz r3, changed(r13)
/* 8034D584  3C 00 00 08 */	lis r0, 8
/* 8034D588  38 DE 01 1C */	addi r6, r30, 0x11c
/* 8034D58C  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034D590  7C 60 03 78 */	or r0, r3, r0
/* 8034D594  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034D598  90 0D 92 90 */	stw r0, changed(r13)
/* 8034D59C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8034D5A0  80 9A 00 00 */	lwz r4, 0(r26)
/* 8034D5A4  38 03 00 0F */	addi r0, r3, 0xf
/* 8034D5A8  A0 70 00 00 */	lhz r3, 0(r16)
/* 8034D5AC  7C 00 26 70 */	srawi r0, r0, 4
/* 8034D5B0  7C 00 01 94 */	addze r0, r0
/* 8034D5B4  2C 04 00 00 */	cmpwi r4, 0
/* 8034D5B8  98 1E 01 1C */	stb r0, 0x11c(r30)
/* 8034D5BC  40 82 00 0C */	bne lbl_8034D5C8
/* 8034D5C0  88 86 00 00 */	lbz r4, 0(r6)
/* 8034D5C4  48 00 00 0C */	b lbl_8034D5D0
lbl_8034D5C8:
/* 8034D5C8  88 06 00 00 */	lbz r0, 0(r6)
/* 8034D5CC  54 04 0E 3C */	rlwinm r4, r0, 1, 0x18, 0x1e
lbl_8034D5D0:
/* 8034D5D0  7C 60 26 70 */	srawi r0, r3, 4
/* 8034D5D4  98 9E 01 1D */	stb r4, 0x11d(r30)
/* 8034D5D8  7C 00 01 94 */	addze r0, r0
/* 8034D5DC  54 00 20 36 */	slwi r0, r0, 4
/* 8034D5E0  7C 00 18 10 */	subfc r0, r0, r3
/* 8034D5E4  98 1E 01 2C */	stb r0, 0x12c(r30)
/* 8034D5E8  38 05 00 0F */	addi r0, r5, 0xf
/* 8034D5EC  3C 60 08 00 */	lis r3, 0x800
/* 8034D5F0  88 9E 01 2C */	lbz r4, 0x12c(r30)
/* 8034D5F4  7C 04 02 14 */	add r0, r4, r0
/* 8034D5F8  7C 00 26 70 */	srawi r0, r0, 4
/* 8034D5FC  7C 00 01 94 */	addze r0, r0
/* 8034D600  98 1E 01 1E */	stb r0, 0x11e(r30)
/* 8034D604  88 1E 01 1E */	lbz r0, 0x11e(r30)
/* 8034D608  88 9E 01 1D */	lbz r4, 0x11d(r30)
/* 8034D60C  50 04 44 2E */	rlwimi r4, r0, 8, 0x10, 0x17
/* 8034D610  B0 9E 00 48 */	sth r4, 0x48(r30)
/* 8034D614  80 8D 92 90 */	lwz r4, changed(r13)
/* 8034D618  80 0D 92 B8 */	lwz r0, FBSet(r13)
/* 8034D61C  80 AD 92 94 */	lwz r5, data_80451814(r13)
/* 8034D620  28 00 00 00 */	cmplwi r0, 0
/* 8034D624  7C A0 1B 78 */	or r0, r5, r3
/* 8034D628  90 0D 92 94 */	stw r0, data_80451814(r13)
/* 8034D62C  90 8D 92 90 */	stw r4, changed(r13)
/* 8034D630  41 82 00 1C */	beq lbl_8034D64C
/* 8034D634  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8034D638  38 9E 01 24 */	addi r4, r30, 0x124
/* 8034D63C  38 BE 01 28 */	addi r5, r30, 0x128
/* 8034D640  38 DE 01 3C */	addi r6, r30, 0x13c
/* 8034D644  38 FE 01 40 */	addi r7, r30, 0x140
/* 8034D648  4B FF F3 D1 */	bl setFbbRegs
lbl_8034D64C:
/* 8034D64C  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 8034D650  90 01 00 08 */	stw r0, 8(r1)
/* 8034D654  A0 73 00 00 */	lhz r3, 0(r19)
/* 8034D658  A0 94 00 00 */	lhz r4, 0(r20)
/* 8034D65C  88 BF 00 00 */	lbz r5, 0(r31)
/* 8034D660  A0 DF 00 02 */	lhz r6, 2(r31)
/* 8034D664  A0 FF 00 04 */	lhz r7, 4(r31)
/* 8034D668  A1 1F 00 06 */	lhz r8, 6(r31)
/* 8034D66C  A1 3F 00 08 */	lhz r9, 8(r31)
/* 8034D670  A1 5F 00 0A */	lhz r10, 0xa(r31)
/* 8034D674  4B FF F6 79 */	bl setVerticalRegs
/* 8034D678  7D E3 7B 78 */	mr r3, r15
/* 8034D67C  4B FF 00 A1 */	bl OSRestoreInterrupts
/* 8034D680  B9 E1 00 34 */	lmw r15, 0x34(r1)
/* 8034D684  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8034D688  38 21 00 78 */	addi r1, r1, 0x78
/* 8034D68C  7C 08 03 A6 */	mtlr r0
/* 8034D690  4E 80 00 20 */	blr 
