lbl_8012AD1C:
/* 8012AD1C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8012AD20  7C 08 02 A6 */	mflr r0
/* 8012AD24  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8012AD28  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8012AD2C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8012AD30  39 61 00 90 */	addi r11, r1, 0x90
/* 8012AD34  48 23 74 8D */	bl _savegpr_22
/* 8012AD38  7C 7F 1B 78 */	mr r31, r3
/* 8012AD3C  3B 3F 29 04 */	addi r25, r31, 0x2904
/* 8012AD40  3B 40 00 00 */	li r26, 0
/* 8012AD44  3A C0 00 00 */	li r22, 0
lbl_8012AD48:
/* 8012AD48  38 62 97 4C */	la r3, fFootJoint(r2) /* 8045314C-_SDA2_BASE_ */
/* 8012AD4C  7F 83 B2 2E */	lhzx r28, r3, r22
/* 8012AD50  3B 60 00 00 */	li r27, 0
/* 8012AD54  3B 00 00 00 */	li r24, 0
/* 8012AD58  1E FC 00 30 */	mulli r23, r28, 0x30
lbl_8012AD5C:
/* 8012AD5C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012AD60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012AD64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8012AD68  7C 60 BA 14 */	add r3, r0, r23
/* 8012AD6C  38 98 00 14 */	addi r4, r24, 0x14
/* 8012AD70  7C 99 22 14 */	add r4, r25, r4
/* 8012AD74  48 21 B7 3D */	bl PSMTXCopy
/* 8012AD78  2C 1B 00 01 */	cmpwi r27, 1
/* 8012AD7C  40 82 00 0C */	bne lbl_8012AD88
/* 8012AD80  3B 9C 00 01 */	addi r28, r28, 1
/* 8012AD84  3A F7 00 30 */	addi r23, r23, 0x30
lbl_8012AD88:
/* 8012AD88  3B 7B 00 01 */	addi r27, r27, 1
/* 8012AD8C  2C 1B 00 03 */	cmpwi r27, 3
/* 8012AD90  3B 18 00 30 */	addi r24, r24, 0x30
/* 8012AD94  3B 9C 00 01 */	addi r28, r28, 1
/* 8012AD98  3A F7 00 30 */	addi r23, r23, 0x30
/* 8012AD9C  41 80 FF C0 */	blt lbl_8012AD5C
/* 8012ADA0  3B 5A 00 01 */	addi r26, r26, 1
/* 8012ADA4  2C 1A 00 02 */	cmpwi r26, 2
/* 8012ADA8  3A D6 00 02 */	addi r22, r22, 2
/* 8012ADAC  3B 39 00 A4 */	addi r25, r25, 0xa4
/* 8012ADB0  41 80 FF 98 */	blt lbl_8012AD48
/* 8012ADB4  3B 3F 2A 4C */	addi r25, r31, 0x2a4c
/* 8012ADB8  3B 40 00 00 */	li r26, 0
/* 8012ADBC  3A C0 00 00 */	li r22, 0
lbl_8012ADC0:
/* 8012ADC0  38 62 97 50 */	la r3, bFootJoint(r2) /* 80453150-_SDA2_BASE_ */
/* 8012ADC4  7F 63 B2 2E */	lhzx r27, r3, r22
/* 8012ADC8  3B 80 00 00 */	li r28, 0
/* 8012ADCC  3B 00 00 00 */	li r24, 0
/* 8012ADD0  1E FB 00 30 */	mulli r23, r27, 0x30
lbl_8012ADD4:
/* 8012ADD4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012ADD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012ADDC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8012ADE0  7C 60 BA 14 */	add r3, r0, r23
/* 8012ADE4  38 98 00 14 */	addi r4, r24, 0x14
/* 8012ADE8  7C 99 22 14 */	add r4, r25, r4
/* 8012ADEC  48 21 B6 C5 */	bl PSMTXCopy
/* 8012ADF0  2C 1C 00 00 */	cmpwi r28, 0
/* 8012ADF4  40 82 00 0C */	bne lbl_8012AE00
/* 8012ADF8  3B 7B 00 01 */	addi r27, r27, 1
/* 8012ADFC  3A F7 00 30 */	addi r23, r23, 0x30
lbl_8012AE00:
/* 8012AE00  3B 9C 00 01 */	addi r28, r28, 1
/* 8012AE04  2C 1C 00 03 */	cmpwi r28, 3
/* 8012AE08  3B 18 00 30 */	addi r24, r24, 0x30
/* 8012AE0C  3B 7B 00 01 */	addi r27, r27, 1
/* 8012AE10  3A F7 00 30 */	addi r23, r23, 0x30
/* 8012AE14  41 80 FF C0 */	blt lbl_8012ADD4
/* 8012AE18  3B 5A 00 01 */	addi r26, r26, 1
/* 8012AE1C  2C 1A 00 02 */	cmpwi r26, 2
/* 8012AE20  3A D6 00 02 */	addi r22, r22, 2
/* 8012AE24  3B 39 00 A4 */	addi r25, r25, 0xa4
/* 8012AE28  41 80 FF 98 */	blt lbl_8012ADC0
/* 8012AE2C  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 8012AE30  88 03 00 00 */	lbz r0, 0(r3)
/* 8012AE34  28 00 00 00 */	cmplwi r0, 0
/* 8012AE38  41 82 08 CC */	beq lbl_8012B704
/* 8012AE3C  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 8012AE40  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 8012AE44  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 8012AE48  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 8012AE4C  3B 1F 29 04 */	addi r24, r31, 0x2904
/* 8012AE50  3A E0 00 00 */	li r23, 0
/* 8012AE54  3B 60 00 00 */	li r27, 0
/* 8012AE58  3B C1 00 44 */	addi r30, r1, 0x44
/* 8012AE5C  3B A1 00 50 */	addi r29, r1, 0x50
/* 8012AE60  3B 81 00 5C */	addi r28, r1, 0x5c
/* 8012AE64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012AE68  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012AE6C  7F 59 D3 78 */	mr r25, r26
lbl_8012AE70:
/* 8012AE70  38 E2 97 4C */	la r7, fFootJoint(r2) /* 8045314C-_SDA2_BASE_ */
/* 8012AE74  7D 07 DA 2E */	lhzx r8, r7, r27
/* 8012AE78  38 60 00 00 */	li r3, 0
/* 8012AE7C  1C 88 00 30 */	mulli r4, r8, 0x30
/* 8012AE80  38 00 00 04 */	li r0, 4
/* 8012AE84  7C 09 03 A6 */	mtctr r0
lbl_8012AE88:
/* 8012AE88  80 BF 06 50 */	lwz r5, 0x650(r31)
/* 8012AE8C  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 8012AE90  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8012AE94  7C A0 22 14 */	add r5, r0, r4
/* 8012AE98  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8012AE9C  38 C1 00 38 */	addi r6, r1, 0x38
/* 8012AEA0  7C C6 1A 14 */	add r6, r6, r3
/* 8012AEA4  D0 06 00 00 */	stfs f0, 0(r6)
/* 8012AEA8  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 8012AEAC  D0 06 00 04 */	stfs f0, 4(r6)
/* 8012AEB0  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8012AEB4  D0 06 00 08 */	stfs f0, 8(r6)
/* 8012AEB8  38 63 00 0C */	addi r3, r3, 0xc
/* 8012AEBC  39 08 00 01 */	addi r8, r8, 1
/* 8012AEC0  38 84 00 30 */	addi r4, r4, 0x30
/* 8012AEC4  42 00 FF C4 */	bdnz lbl_8012AE88
/* 8012AEC8  7E C7 DA 2E */	lhzx r22, r7, r27
/* 8012AECC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012AED0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012AED4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012AED8  1C 16 00 30 */	mulli r0, r22, 0x30
/* 8012AEDC  7C 83 02 14 */	add r4, r3, r0
/* 8012AEE0  7F E3 FB 78 */	mr r3, r31
/* 8012AEE4  A8 B8 00 06 */	lha r5, 6(r24)
/* 8012AEE8  38 C0 00 00 */	li r6, 0
/* 8012AEEC  38 E0 00 00 */	li r7, 0
/* 8012AEF0  39 00 00 00 */	li r8, 0
/* 8012AEF4  39 20 00 00 */	li r9, 0
/* 8012AEF8  4B F7 2D 75 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012AEFC  38 61 00 38 */	addi r3, r1, 0x38
/* 8012AF00  7F C4 F3 78 */	mr r4, r30
/* 8012AF04  48 21 C4 99 */	bl PSVECSquareDistance
/* 8012AF08  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012AF0C  40 81 00 58 */	ble lbl_8012AF64
/* 8012AF10  FC 00 08 34 */	frsqrte f0, f1
/* 8012AF14  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012AF18  FC 44 00 32 */	fmul f2, f4, f0
/* 8012AF1C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012AF20  FC 00 00 32 */	fmul f0, f0, f0
/* 8012AF24  FC 01 00 32 */	fmul f0, f1, f0
/* 8012AF28  FC 03 00 28 */	fsub f0, f3, f0
/* 8012AF2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8012AF30  FC 44 00 32 */	fmul f2, f4, f0
/* 8012AF34  FC 00 00 32 */	fmul f0, f0, f0
/* 8012AF38  FC 01 00 32 */	fmul f0, f1, f0
/* 8012AF3C  FC 03 00 28 */	fsub f0, f3, f0
/* 8012AF40  FC 02 00 32 */	fmul f0, f2, f0
/* 8012AF44  FC 44 00 32 */	fmul f2, f4, f0
/* 8012AF48  FC 00 00 32 */	fmul f0, f0, f0
/* 8012AF4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012AF50  FC 03 00 28 */	fsub f0, f3, f0
/* 8012AF54  FC 02 00 32 */	fmul f0, f2, f0
/* 8012AF58  FC 21 00 32 */	fmul f1, f1, f0
/* 8012AF5C  FC 20 08 18 */	frsp f1, f1
/* 8012AF60  48 00 00 88 */	b lbl_8012AFE8
lbl_8012AF64:
/* 8012AF64  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012AF68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012AF6C  40 80 00 10 */	bge lbl_8012AF7C
/* 8012AF70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012AF74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012AF78  48 00 00 70 */	b lbl_8012AFE8
lbl_8012AF7C:
/* 8012AF7C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8012AF80  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8012AF84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012AF88  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012AF8C  7C 03 00 00 */	cmpw r3, r0
/* 8012AF90  41 82 00 14 */	beq lbl_8012AFA4
/* 8012AF94  40 80 00 40 */	bge lbl_8012AFD4
/* 8012AF98  2C 03 00 00 */	cmpwi r3, 0
/* 8012AF9C  41 82 00 20 */	beq lbl_8012AFBC
/* 8012AFA0  48 00 00 34 */	b lbl_8012AFD4
lbl_8012AFA4:
/* 8012AFA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012AFA8  41 82 00 0C */	beq lbl_8012AFB4
/* 8012AFAC  38 00 00 01 */	li r0, 1
/* 8012AFB0  48 00 00 28 */	b lbl_8012AFD8
lbl_8012AFB4:
/* 8012AFB4  38 00 00 02 */	li r0, 2
/* 8012AFB8  48 00 00 20 */	b lbl_8012AFD8
lbl_8012AFBC:
/* 8012AFBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012AFC0  41 82 00 0C */	beq lbl_8012AFCC
/* 8012AFC4  38 00 00 05 */	li r0, 5
/* 8012AFC8  48 00 00 10 */	b lbl_8012AFD8
lbl_8012AFCC:
/* 8012AFCC  38 00 00 03 */	li r0, 3
/* 8012AFD0  48 00 00 08 */	b lbl_8012AFD8
lbl_8012AFD4:
/* 8012AFD4  38 00 00 04 */	li r0, 4
lbl_8012AFD8:
/* 8012AFD8  2C 00 00 01 */	cmpwi r0, 1
/* 8012AFDC  40 82 00 0C */	bne lbl_8012AFE8
/* 8012AFE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012AFE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012AFE8:
/* 8012AFE8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012AFEC  7F 43 D3 78 */	mr r3, r26
/* 8012AFF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012AFF4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012AFF8  48 21 BD 75 */	bl PSMTXMultVec
/* 8012AFFC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B000  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B004  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B008  38 16 00 01 */	addi r0, r22, 1
/* 8012B00C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B010  7C 83 02 14 */	add r4, r3, r0
/* 8012B014  7F E3 FB 78 */	mr r3, r31
/* 8012B018  A8 B8 00 04 */	lha r5, 4(r24)
/* 8012B01C  38 C0 00 00 */	li r6, 0
/* 8012B020  38 E0 00 00 */	li r7, 0
/* 8012B024  39 00 00 00 */	li r8, 0
/* 8012B028  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B02C  4B F7 2C 41 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B030  7F C3 F3 78 */	mr r3, r30
/* 8012B034  7F A4 EB 78 */	mr r4, r29
/* 8012B038  48 21 C3 65 */	bl PSVECSquareDistance
/* 8012B03C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012B040  40 81 00 58 */	ble lbl_8012B098
/* 8012B044  FC 00 08 34 */	frsqrte f0, f1
/* 8012B048  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012B04C  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B050  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012B054  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B058  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B05C  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B060  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B064  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B068  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B06C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B070  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B074  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B078  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B07C  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B080  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B084  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B088  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B08C  FC 21 00 32 */	fmul f1, f1, f0
/* 8012B090  FC 20 08 18 */	frsp f1, f1
/* 8012B094  48 00 00 88 */	b lbl_8012B11C
lbl_8012B098:
/* 8012B098  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012B09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B0A0  40 80 00 10 */	bge lbl_8012B0B0
/* 8012B0A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B0A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012B0AC  48 00 00 70 */	b lbl_8012B11C
lbl_8012B0B0:
/* 8012B0B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8012B0B4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8012B0B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012B0BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012B0C0  7C 03 00 00 */	cmpw r3, r0
/* 8012B0C4  41 82 00 14 */	beq lbl_8012B0D8
/* 8012B0C8  40 80 00 40 */	bge lbl_8012B108
/* 8012B0CC  2C 03 00 00 */	cmpwi r3, 0
/* 8012B0D0  41 82 00 20 */	beq lbl_8012B0F0
/* 8012B0D4  48 00 00 34 */	b lbl_8012B108
lbl_8012B0D8:
/* 8012B0D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B0DC  41 82 00 0C */	beq lbl_8012B0E8
/* 8012B0E0  38 00 00 01 */	li r0, 1
/* 8012B0E4  48 00 00 28 */	b lbl_8012B10C
lbl_8012B0E8:
/* 8012B0E8  38 00 00 02 */	li r0, 2
/* 8012B0EC  48 00 00 20 */	b lbl_8012B10C
lbl_8012B0F0:
/* 8012B0F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B0F4  41 82 00 0C */	beq lbl_8012B100
/* 8012B0F8  38 00 00 05 */	li r0, 5
/* 8012B0FC  48 00 00 10 */	b lbl_8012B10C
lbl_8012B100:
/* 8012B100  38 00 00 03 */	li r0, 3
/* 8012B104  48 00 00 08 */	b lbl_8012B10C
lbl_8012B108:
/* 8012B108  38 00 00 04 */	li r0, 4
lbl_8012B10C:
/* 8012B10C  2C 00 00 01 */	cmpwi r0, 1
/* 8012B110  40 82 00 0C */	bne lbl_8012B11C
/* 8012B114  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B118  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012B11C:
/* 8012B11C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012B120  7F 43 D3 78 */	mr r3, r26
/* 8012B124  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012B128  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012B12C  48 21 BC 41 */	bl PSMTXMultVec
/* 8012B130  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B134  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B138  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B13C  38 16 00 02 */	addi r0, r22, 2
/* 8012B140  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B144  7C 83 02 14 */	add r4, r3, r0
/* 8012B148  7F E3 FB 78 */	mr r3, r31
/* 8012B14C  A8 B8 00 04 */	lha r5, 4(r24)
/* 8012B150  38 C0 00 00 */	li r6, 0
/* 8012B154  38 E0 00 00 */	li r7, 0
/* 8012B158  39 00 00 00 */	li r8, 0
/* 8012B15C  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B160  4B F7 2B 0D */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B164  7F A3 EB 78 */	mr r3, r29
/* 8012B168  7F 84 E3 78 */	mr r4, r28
/* 8012B16C  48 21 C2 31 */	bl PSVECSquareDistance
/* 8012B170  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012B174  40 81 00 58 */	ble lbl_8012B1CC
/* 8012B178  FC 00 08 34 */	frsqrte f0, f1
/* 8012B17C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012B180  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B184  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012B188  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B18C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B190  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B194  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B198  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B19C  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B1A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B1A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B1A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B1AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B1B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B1B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B1B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B1BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B1C0  FC 21 00 32 */	fmul f1, f1, f0
/* 8012B1C4  FC 20 08 18 */	frsp f1, f1
/* 8012B1C8  48 00 00 88 */	b lbl_8012B250
lbl_8012B1CC:
/* 8012B1CC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012B1D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B1D4  40 80 00 10 */	bge lbl_8012B1E4
/* 8012B1D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B1DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012B1E0  48 00 00 70 */	b lbl_8012B250
lbl_8012B1E4:
/* 8012B1E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8012B1E8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8012B1EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012B1F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012B1F4  7C 03 00 00 */	cmpw r3, r0
/* 8012B1F8  41 82 00 14 */	beq lbl_8012B20C
/* 8012B1FC  40 80 00 40 */	bge lbl_8012B23C
/* 8012B200  2C 03 00 00 */	cmpwi r3, 0
/* 8012B204  41 82 00 20 */	beq lbl_8012B224
/* 8012B208  48 00 00 34 */	b lbl_8012B23C
lbl_8012B20C:
/* 8012B20C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B210  41 82 00 0C */	beq lbl_8012B21C
/* 8012B214  38 00 00 01 */	li r0, 1
/* 8012B218  48 00 00 28 */	b lbl_8012B240
lbl_8012B21C:
/* 8012B21C  38 00 00 02 */	li r0, 2
/* 8012B220  48 00 00 20 */	b lbl_8012B240
lbl_8012B224:
/* 8012B224  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B228  41 82 00 0C */	beq lbl_8012B234
/* 8012B22C  38 00 00 05 */	li r0, 5
/* 8012B230  48 00 00 10 */	b lbl_8012B240
lbl_8012B234:
/* 8012B234  38 00 00 03 */	li r0, 3
/* 8012B238  48 00 00 08 */	b lbl_8012B240
lbl_8012B23C:
/* 8012B23C  38 00 00 04 */	li r0, 4
lbl_8012B240:
/* 8012B240  2C 00 00 01 */	cmpwi r0, 1
/* 8012B244  40 82 00 0C */	bne lbl_8012B250
/* 8012B248  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B24C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012B250:
/* 8012B250  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012B254  7F 23 CB 78 */	mr r3, r25
/* 8012B258  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012B25C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012B260  48 21 BB 0D */	bl PSMTXMultVec
/* 8012B264  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B268  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B26C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B270  38 16 00 03 */	addi r0, r22, 3
/* 8012B274  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B278  7C 83 02 14 */	add r4, r3, r0
/* 8012B27C  7F E3 FB 78 */	mr r3, r31
/* 8012B280  A8 B8 00 02 */	lha r5, 2(r24)
/* 8012B284  38 C0 00 00 */	li r6, 0
/* 8012B288  38 E0 00 00 */	li r7, 0
/* 8012B28C  39 00 00 00 */	li r8, 0
/* 8012B290  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B294  4B F7 29 D9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B298  3A F7 00 01 */	addi r23, r23, 1
/* 8012B29C  2C 17 00 02 */	cmpwi r23, 2
/* 8012B2A0  3B 7B 00 02 */	addi r27, r27, 2
/* 8012B2A4  3B 18 00 A4 */	addi r24, r24, 0xa4
/* 8012B2A8  41 80 FB C8 */	blt lbl_8012AE70
/* 8012B2AC  3B 1F 2A 4C */	addi r24, r31, 0x2a4c
/* 8012B2B0  3A E0 00 00 */	li r23, 0
/* 8012B2B4  3B 60 00 00 */	li r27, 0
/* 8012B2B8  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 8012B2BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8012B2C0  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8012B2C4  7F 3A CB 78 */	mr r26, r25
lbl_8012B2C8:
/* 8012B2C8  38 E2 97 50 */	la r7, bFootJoint(r2) /* 80453150-_SDA2_BASE_ */
/* 8012B2CC  7D 07 DA 2E */	lhzx r8, r7, r27
/* 8012B2D0  38 60 00 00 */	li r3, 0
/* 8012B2D4  1C 88 00 30 */	mulli r4, r8, 0x30
/* 8012B2D8  38 00 00 04 */	li r0, 4
/* 8012B2DC  7C 09 03 A6 */	mtctr r0
lbl_8012B2E0:
/* 8012B2E0  80 BF 06 50 */	lwz r5, 0x650(r31)
/* 8012B2E4  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 8012B2E8  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8012B2EC  7C A0 22 14 */	add r5, r0, r4
/* 8012B2F0  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8012B2F4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8012B2F8  7C C6 1A 14 */	add r6, r6, r3
/* 8012B2FC  D0 06 00 00 */	stfs f0, 0(r6)
/* 8012B300  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 8012B304  D0 06 00 04 */	stfs f0, 4(r6)
/* 8012B308  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8012B30C  D0 06 00 08 */	stfs f0, 8(r6)
/* 8012B310  38 63 00 0C */	addi r3, r3, 0xc
/* 8012B314  39 08 00 01 */	addi r8, r8, 1
/* 8012B318  38 84 00 30 */	addi r4, r4, 0x30
/* 8012B31C  42 00 FF C4 */	bdnz lbl_8012B2E0
/* 8012B320  7E C7 DA 2E */	lhzx r22, r7, r27
/* 8012B324  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B328  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B32C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B330  1C 16 00 30 */	mulli r0, r22, 0x30
/* 8012B334  7C 83 02 14 */	add r4, r3, r0
/* 8012B338  7F E3 FB 78 */	mr r3, r31
/* 8012B33C  A8 B8 00 06 */	lha r5, 6(r24)
/* 8012B340  38 C0 00 00 */	li r6, 0
/* 8012B344  38 E0 00 00 */	li r7, 0
/* 8012B348  39 00 00 00 */	li r8, 0
/* 8012B34C  39 20 00 00 */	li r9, 0
/* 8012B350  4B F7 29 1D */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B354  38 61 00 38 */	addi r3, r1, 0x38
/* 8012B358  7F C4 F3 78 */	mr r4, r30
/* 8012B35C  48 21 C0 41 */	bl PSVECSquareDistance
/* 8012B360  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012B364  40 81 00 58 */	ble lbl_8012B3BC
/* 8012B368  FC 00 08 34 */	frsqrte f0, f1
/* 8012B36C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012B370  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B374  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012B378  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B37C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B380  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B384  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B388  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B38C  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B390  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B394  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B398  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B39C  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B3A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B3A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B3A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B3AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B3B0  FC 21 00 32 */	fmul f1, f1, f0
/* 8012B3B4  FC 20 08 18 */	frsp f1, f1
/* 8012B3B8  48 00 00 88 */	b lbl_8012B440
lbl_8012B3BC:
/* 8012B3BC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012B3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B3C4  40 80 00 10 */	bge lbl_8012B3D4
/* 8012B3C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B3CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012B3D0  48 00 00 70 */	b lbl_8012B440
lbl_8012B3D4:
/* 8012B3D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8012B3D8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8012B3DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012B3E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012B3E4  7C 03 00 00 */	cmpw r3, r0
/* 8012B3E8  41 82 00 14 */	beq lbl_8012B3FC
/* 8012B3EC  40 80 00 40 */	bge lbl_8012B42C
/* 8012B3F0  2C 03 00 00 */	cmpwi r3, 0
/* 8012B3F4  41 82 00 20 */	beq lbl_8012B414
/* 8012B3F8  48 00 00 34 */	b lbl_8012B42C
lbl_8012B3FC:
/* 8012B3FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B400  41 82 00 0C */	beq lbl_8012B40C
/* 8012B404  38 00 00 01 */	li r0, 1
/* 8012B408  48 00 00 28 */	b lbl_8012B430
lbl_8012B40C:
/* 8012B40C  38 00 00 02 */	li r0, 2
/* 8012B410  48 00 00 20 */	b lbl_8012B430
lbl_8012B414:
/* 8012B414  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B418  41 82 00 0C */	beq lbl_8012B424
/* 8012B41C  38 00 00 05 */	li r0, 5
/* 8012B420  48 00 00 10 */	b lbl_8012B430
lbl_8012B424:
/* 8012B424  38 00 00 03 */	li r0, 3
/* 8012B428  48 00 00 08 */	b lbl_8012B430
lbl_8012B42C:
/* 8012B42C  38 00 00 04 */	li r0, 4
lbl_8012B430:
/* 8012B430  2C 00 00 01 */	cmpwi r0, 1
/* 8012B434  40 82 00 0C */	bne lbl_8012B440
/* 8012B438  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B43C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012B440:
/* 8012B440  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012B444  7F 23 CB 78 */	mr r3, r25
/* 8012B448  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012B44C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012B450  48 21 B9 1D */	bl PSMTXMultVec
/* 8012B454  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B458  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B45C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B460  38 16 00 01 */	addi r0, r22, 1
/* 8012B464  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B468  7C 83 02 14 */	add r4, r3, r0
/* 8012B46C  7F E3 FB 78 */	mr r3, r31
/* 8012B470  A8 B8 00 06 */	lha r5, 6(r24)
/* 8012B474  38 C0 00 00 */	li r6, 0
/* 8012B478  38 E0 00 00 */	li r7, 0
/* 8012B47C  39 00 00 00 */	li r8, 0
/* 8012B480  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B484  4B F7 27 E9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B488  7F C3 F3 78 */	mr r3, r30
/* 8012B48C  7F A4 EB 78 */	mr r4, r29
/* 8012B490  48 21 BF 0D */	bl PSVECSquareDistance
/* 8012B494  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012B498  40 81 00 58 */	ble lbl_8012B4F0
/* 8012B49C  FC 00 08 34 */	frsqrte f0, f1
/* 8012B4A0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012B4A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B4A8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012B4AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B4B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B4B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B4B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B4BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B4C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B4C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B4C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B4D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B4D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B4D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B4DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B4E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8012B4E8  FC 20 08 18 */	frsp f1, f1
/* 8012B4EC  48 00 00 88 */	b lbl_8012B574
lbl_8012B4F0:
/* 8012B4F0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012B4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B4F8  40 80 00 10 */	bge lbl_8012B508
/* 8012B4FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B500  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012B504  48 00 00 70 */	b lbl_8012B574
lbl_8012B508:
/* 8012B508  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8012B50C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8012B510  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012B514  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012B518  7C 03 00 00 */	cmpw r3, r0
/* 8012B51C  41 82 00 14 */	beq lbl_8012B530
/* 8012B520  40 80 00 40 */	bge lbl_8012B560
/* 8012B524  2C 03 00 00 */	cmpwi r3, 0
/* 8012B528  41 82 00 20 */	beq lbl_8012B548
/* 8012B52C  48 00 00 34 */	b lbl_8012B560
lbl_8012B530:
/* 8012B530  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B534  41 82 00 0C */	beq lbl_8012B540
/* 8012B538  38 00 00 01 */	li r0, 1
/* 8012B53C  48 00 00 28 */	b lbl_8012B564
lbl_8012B540:
/* 8012B540  38 00 00 02 */	li r0, 2
/* 8012B544  48 00 00 20 */	b lbl_8012B564
lbl_8012B548:
/* 8012B548  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B54C  41 82 00 0C */	beq lbl_8012B558
/* 8012B550  38 00 00 05 */	li r0, 5
/* 8012B554  48 00 00 10 */	b lbl_8012B564
lbl_8012B558:
/* 8012B558  38 00 00 03 */	li r0, 3
/* 8012B55C  48 00 00 08 */	b lbl_8012B564
lbl_8012B560:
/* 8012B560  38 00 00 04 */	li r0, 4
lbl_8012B564:
/* 8012B564  2C 00 00 01 */	cmpwi r0, 1
/* 8012B568  40 82 00 0C */	bne lbl_8012B574
/* 8012B56C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B570  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012B574:
/* 8012B574  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012B578  7F 23 CB 78 */	mr r3, r25
/* 8012B57C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012B580  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012B584  48 21 B7 E9 */	bl PSMTXMultVec
/* 8012B588  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B58C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B590  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B594  38 16 00 02 */	addi r0, r22, 2
/* 8012B598  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B59C  7C 83 02 14 */	add r4, r3, r0
/* 8012B5A0  7F E3 FB 78 */	mr r3, r31
/* 8012B5A4  A8 B8 00 04 */	lha r5, 4(r24)
/* 8012B5A8  38 C0 00 00 */	li r6, 0
/* 8012B5AC  38 E0 00 00 */	li r7, 0
/* 8012B5B0  39 00 00 00 */	li r8, 0
/* 8012B5B4  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B5B8  4B F7 26 B5 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B5BC  7F A3 EB 78 */	mr r3, r29
/* 8012B5C0  7F 84 E3 78 */	mr r4, r28
/* 8012B5C4  48 21 BD D9 */	bl PSVECSquareDistance
/* 8012B5C8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012B5CC  40 81 00 58 */	ble lbl_8012B624
/* 8012B5D0  FC 00 08 34 */	frsqrte f0, f1
/* 8012B5D4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8012B5D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B5DC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8012B5E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B5E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B5E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B5EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B5F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B5F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B5F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B5FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B600  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B604  FC 44 00 32 */	fmul f2, f4, f0
/* 8012B608  FC 00 00 32 */	fmul f0, f0, f0
/* 8012B60C  FC 01 00 32 */	fmul f0, f1, f0
/* 8012B610  FC 03 00 28 */	fsub f0, f3, f0
/* 8012B614  FC 02 00 32 */	fmul f0, f2, f0
/* 8012B618  FC 21 00 32 */	fmul f1, f1, f0
/* 8012B61C  FC 20 08 18 */	frsp f1, f1
/* 8012B620  48 00 00 88 */	b lbl_8012B6A8
lbl_8012B624:
/* 8012B624  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8012B628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012B62C  40 80 00 10 */	bge lbl_8012B63C
/* 8012B630  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B634  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012B638  48 00 00 70 */	b lbl_8012B6A8
lbl_8012B63C:
/* 8012B63C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012B640  80 81 00 08 */	lwz r4, 8(r1)
/* 8012B644  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8012B648  3C 00 7F 80 */	lis r0, 0x7f80
/* 8012B64C  7C 03 00 00 */	cmpw r3, r0
/* 8012B650  41 82 00 14 */	beq lbl_8012B664
/* 8012B654  40 80 00 40 */	bge lbl_8012B694
/* 8012B658  2C 03 00 00 */	cmpwi r3, 0
/* 8012B65C  41 82 00 20 */	beq lbl_8012B67C
/* 8012B660  48 00 00 34 */	b lbl_8012B694
lbl_8012B664:
/* 8012B664  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B668  41 82 00 0C */	beq lbl_8012B674
/* 8012B66C  38 00 00 01 */	li r0, 1
/* 8012B670  48 00 00 28 */	b lbl_8012B698
lbl_8012B674:
/* 8012B674  38 00 00 02 */	li r0, 2
/* 8012B678  48 00 00 20 */	b lbl_8012B698
lbl_8012B67C:
/* 8012B67C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8012B680  41 82 00 0C */	beq lbl_8012B68C
/* 8012B684  38 00 00 05 */	li r0, 5
/* 8012B688  48 00 00 10 */	b lbl_8012B698
lbl_8012B68C:
/* 8012B68C  38 00 00 03 */	li r0, 3
/* 8012B690  48 00 00 08 */	b lbl_8012B698
lbl_8012B694:
/* 8012B694  38 00 00 04 */	li r0, 4
lbl_8012B698:
/* 8012B698  2C 00 00 01 */	cmpwi r0, 1
/* 8012B69C  40 82 00 0C */	bne lbl_8012B6A8
/* 8012B6A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8012B6A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8012B6A8:
/* 8012B6A8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012B6AC  7F 43 D3 78 */	mr r3, r26
/* 8012B6B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8012B6B4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012B6B8  48 21 B6 B5 */	bl PSMTXMultVec
/* 8012B6BC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8012B6C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012B6C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8012B6C8  38 16 00 03 */	addi r0, r22, 3
/* 8012B6CC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8012B6D0  7C 83 02 14 */	add r4, r3, r0
/* 8012B6D4  7F E3 FB 78 */	mr r3, r31
/* 8012B6D8  A8 B8 00 02 */	lha r5, 2(r24)
/* 8012B6DC  38 C0 00 00 */	li r6, 0
/* 8012B6E0  38 E0 00 00 */	li r7, 0
/* 8012B6E4  39 00 00 00 */	li r8, 0
/* 8012B6E8  39 21 00 20 */	addi r9, r1, 0x20
/* 8012B6EC  4B F7 25 81 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8012B6F0  3A F7 00 01 */	addi r23, r23, 1
/* 8012B6F4  2C 17 00 02 */	cmpwi r23, 2
/* 8012B6F8  3B 7B 00 02 */	addi r27, r27, 2
/* 8012B6FC  3B 18 00 A4 */	addi r24, r24, 0xa4
/* 8012B700  41 80 FB C8 */	blt lbl_8012B2C8
lbl_8012B704:
/* 8012B704  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8012B708  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8012B70C  39 61 00 90 */	addi r11, r1, 0x90
/* 8012B710  48 23 6A FD */	bl _restgpr_22
/* 8012B714  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8012B718  7C 08 03 A6 */	mtlr r0
/* 8012B71C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8012B720  4E 80 00 20 */	blr 
