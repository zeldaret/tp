lbl_8036AB9C:
/* 8036AB9C  94 21 FD 30 */	stwu r1, -0x2d0(r1)
/* 8036ABA0  7C 08 02 A6 */	mflr r0
/* 8036ABA4  90 01 02 D4 */	stw r0, 0x2d4(r1)
/* 8036ABA8  39 61 02 D0 */	addi r11, r1, 0x2d0
/* 8036ABAC  4B FF 75 89 */	bl _savefpr_25
/* 8036ABB0  BE 01 02 58 */	stmw r16, 0x258(r1)
/* 8036ABB4  3D 20 2A AB */	lis r9, 0x2AAB /* 0x2AAAAAAB@ha */
/* 8036ABB8  7C F7 3B 78 */	mr r23, r7
/* 8036ABBC  38 05 FF FD */	addi r0, r5, -3
/* 8036ABC0  3D 40 80 3A */	lis r10, init_jk@ha /* 0x803A2538@ha */
/* 8036ABC4  38 E9 AA AB */	addi r7, r9, 0xAAAB /* 0x2AAAAAAB@l */
/* 8036ABC8  56 E9 10 3A */	slwi r9, r23, 2
/* 8036ABCC  7C 07 00 96 */	mulhw r0, r7, r0
/* 8036ABD0  38 EA 25 38 */	addi r7, r10, init_jk@l /* 0x803A2538@l */
/* 8036ABD4  7F 87 48 2E */	lwzx r28, r7, r9
/* 8036ABD8  7C 75 1B 78 */	mr r21, r3
/* 8036ABDC  7C 96 23 78 */	mr r22, r4
/* 8036ABE0  7D 18 43 78 */	mr r24, r8
/* 8036ABE4  7C 00 16 70 */	srawi r0, r0, 2
/* 8036ABE8  3B C6 FF FF */	addi r30, r6, -1
/* 8036ABEC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8036ABF0  7F A0 1A 15 */	add. r29, r0, r3
/* 8036ABF4  40 80 00 08 */	bge lbl_8036ABFC
/* 8036ABF8  3B A0 00 00 */	li r29, 0
lbl_8036ABFC:
/* 8036ABFC  38 1D 00 01 */	addi r0, r29, 1
/* 8036AC00  7C FE E2 15 */	add. r7, r30, r28
/* 8036AC04  1C 80 00 18 */	mulli r4, r0, 0x18
/* 8036AC08  7C DE E8 50 */	subf r6, r30, r29
/* 8036AC0C  C8 22 D0 40 */	lfd f1, lit_445(r2)
/* 8036AC10  54 C3 10 3A */	slwi r3, r6, 2
/* 8036AC14  7F 44 28 50 */	subf r26, r4, r5
/* 8036AC18  38 07 00 01 */	addi r0, r7, 1
/* 8036AC1C  7C 98 1A 14 */	add r4, r24, r3
/* 8036AC20  38 A1 01 98 */	addi r5, r1, 0x198
/* 8036AC24  3C 60 43 30 */	lis r3, 0x4330
/* 8036AC28  7C 09 03 A6 */	mtctr r0
/* 8036AC2C  41 80 00 40 */	blt lbl_8036AC6C
lbl_8036AC30:
/* 8036AC30  2C 06 00 00 */	cmpwi r6, 0
/* 8036AC34  40 80 00 0C */	bge lbl_8036AC40
/* 8036AC38  C8 02 D0 08 */	lfd f0, lit_436(r2)
/* 8036AC3C  48 00 00 1C */	b lbl_8036AC58
lbl_8036AC40:
/* 8036AC40  80 04 00 00 */	lwz r0, 0(r4)
/* 8036AC44  90 61 02 38 */	stw r3, 0x238(r1)
/* 8036AC48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036AC4C  90 01 02 3C */	stw r0, 0x23c(r1)
/* 8036AC50  C8 01 02 38 */	lfd f0, 0x238(r1)
/* 8036AC54  FC 00 08 28 */	fsub f0, f0, f1
lbl_8036AC58:
/* 8036AC58  D8 05 00 00 */	stfd f0, 0(r5)
/* 8036AC5C  38 A5 00 08 */	addi r5, r5, 8
/* 8036AC60  38 84 00 04 */	addi r4, r4, 4
/* 8036AC64  38 C6 00 01 */	addi r6, r6, 1
/* 8036AC68  42 00 FF C8 */	bdnz lbl_8036AC30
lbl_8036AC6C:
/* 8036AC6C  38 A1 00 58 */	addi r5, r1, 0x58
/* 8036AC70  38 E0 00 00 */	li r7, 0
/* 8036AC74  48 00 01 5C */	b lbl_8036ADD0
lbl_8036AC78:
/* 8036AC78  2C 1E 00 00 */	cmpwi r30, 0
/* 8036AC7C  C8 82 D0 08 */	lfd f4, lit_436(r2)
/* 8036AC80  38 C0 00 00 */	li r6, 0
/* 8036AC84  41 80 01 40 */	blt lbl_8036ADC4
/* 8036AC88  38 1E 00 01 */	addi r0, r30, 1
/* 8036AC8C  39 3E FF F8 */	addi r9, r30, -8
/* 8036AC90  2C 00 00 08 */	cmpwi r0, 8
/* 8036AC94  40 81 00 EC */	ble lbl_8036AD80
/* 8036AC98  39 09 00 08 */	addi r8, r9, 8
/* 8036AC9C  7E A4 AB 78 */	mr r4, r21
/* 8036ACA0  55 08 E8 FE */	srwi r8, r8, 3
/* 8036ACA4  7C 1E 3A 14 */	add r0, r30, r7
/* 8036ACA8  38 61 01 98 */	addi r3, r1, 0x198
/* 8036ACAC  7D 09 03 A6 */	mtctr r8
/* 8036ACB0  2C 09 00 00 */	cmpwi r9, 0
/* 8036ACB4  41 80 00 CC */	blt lbl_8036AD80
lbl_8036ACB8:
/* 8036ACB8  7D 06 00 50 */	subf r8, r6, r0
/* 8036ACBC  39 26 00 01 */	addi r9, r6, 1
/* 8036ACC0  55 0A 18 38 */	slwi r10, r8, 3
/* 8036ACC4  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036ACC8  7C 03 54 AE */	lfdx f0, r3, r10
/* 8036ACCC  7D 29 00 50 */	subf r9, r9, r0
/* 8036ACD0  55 2A 18 38 */	slwi r10, r9, 3
/* 8036ACD4  39 06 00 02 */	addi r8, r6, 2
/* 8036ACD8  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036ACDC  7D 28 00 50 */	subf r9, r8, r0
/* 8036ACE0  39 06 00 03 */	addi r8, r6, 3
/* 8036ACE4  C8 24 00 08 */	lfd f1, 8(r4)
/* 8036ACE8  7C 03 54 AE */	lfdx f0, r3, r10
/* 8036ACEC  7D 08 00 50 */	subf r8, r8, r0
/* 8036ACF0  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036ACF4  55 29 18 38 */	slwi r9, r9, 3
/* 8036ACF8  C8 24 00 10 */	lfd f1, 0x10(r4)
/* 8036ACFC  55 0A 18 38 */	slwi r10, r8, 3
/* 8036AD00  7C 03 4C AE */	lfdx f0, r3, r9
/* 8036AD04  39 06 00 04 */	addi r8, r6, 4
/* 8036AD08  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036AD0C  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8036AD10  7C 03 54 AE */	lfdx f0, r3, r10
/* 8036AD14  7D 28 00 50 */	subf r9, r8, r0
/* 8036AD18  55 2A 18 38 */	slwi r10, r9, 3
/* 8036AD1C  39 06 00 05 */	addi r8, r6, 5
/* 8036AD20  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036AD24  C8 44 00 20 */	lfd f2, 0x20(r4)
/* 8036AD28  7C 03 54 AE */	lfdx f0, r3, r10
/* 8036AD2C  7D 08 00 50 */	subf r8, r8, r0
/* 8036AD30  55 0A 18 38 */	slwi r10, r8, 3
/* 8036AD34  39 26 00 06 */	addi r9, r6, 6
/* 8036AD38  FC 82 20 3A */	fmadd f4, f2, f0, f4
/* 8036AD3C  7D 29 00 50 */	subf r9, r9, r0
/* 8036AD40  55 29 18 38 */	slwi r9, r9, 3
/* 8036AD44  C8 24 00 28 */	lfd f1, 0x28(r4)
/* 8036AD48  7C 03 54 AE */	lfdx f0, r3, r10
/* 8036AD4C  39 06 00 07 */	addi r8, r6, 7
/* 8036AD50  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036AD54  7D 08 00 50 */	subf r8, r8, r0
/* 8036AD58  55 08 18 38 */	slwi r8, r8, 3
/* 8036AD5C  C8 64 00 30 */	lfd f3, 0x30(r4)
/* 8036AD60  7C 43 4C AE */	lfdx f2, r3, r9
/* 8036AD64  38 C6 00 08 */	addi r6, r6, 8
/* 8036AD68  C8 24 00 38 */	lfd f1, 0x38(r4)
/* 8036AD6C  FC 83 20 BA */	fmadd f4, f3, f2, f4
/* 8036AD70  7C 03 44 AE */	lfdx f0, r3, r8
/* 8036AD74  38 84 00 40 */	addi r4, r4, 0x40
/* 8036AD78  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036AD7C  42 00 FF 3C */	bdnz lbl_8036ACB8
lbl_8036AD80:
/* 8036AD80  38 1E 00 01 */	addi r0, r30, 1
/* 8036AD84  54 C3 18 38 */	slwi r3, r6, 3
/* 8036AD88  7C 06 00 50 */	subf r0, r6, r0
/* 8036AD8C  7D 1E 3A 14 */	add r8, r30, r7
/* 8036AD90  7C 95 1A 14 */	add r4, r21, r3
/* 8036AD94  38 61 01 98 */	addi r3, r1, 0x198
/* 8036AD98  7C 09 03 A6 */	mtctr r0
/* 8036AD9C  7C 06 F0 00 */	cmpw r6, r30
/* 8036ADA0  41 81 00 24 */	bgt lbl_8036ADC4
lbl_8036ADA4:
/* 8036ADA4  7C 06 40 50 */	subf r0, r6, r8
/* 8036ADA8  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036ADAC  54 00 18 38 */	slwi r0, r0, 3
/* 8036ADB0  38 84 00 08 */	addi r4, r4, 8
/* 8036ADB4  7C 03 04 AE */	lfdx f0, r3, r0
/* 8036ADB8  38 C6 00 01 */	addi r6, r6, 1
/* 8036ADBC  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036ADC0  42 00 FF E4 */	bdnz lbl_8036ADA4
lbl_8036ADC4:
/* 8036ADC4  D8 85 00 00 */	stfd f4, 0(r5)
/* 8036ADC8  38 A5 00 08 */	addi r5, r5, 8
/* 8036ADCC  38 E7 00 01 */	addi r7, r7, 1
lbl_8036ADD0:
/* 8036ADD0  7C 07 E0 00 */	cmpw r7, r28
/* 8036ADD4  40 81 FE A4 */	ble lbl_8036AC78
/* 8036ADD8  22 5A 00 18 */	subfic r18, r26, 0x18
/* 8036ADDC  CB 42 D0 10 */	lfd f26, lit_437(r2)
/* 8036ADE0  CB 62 D0 40 */	lfd f27, lit_445(r2)
/* 8036ADE4  3A 01 00 08 */	addi r16, r1, 8
/* 8036ADE8  CB 82 D0 18 */	lfd f28, lit_438(r2)
/* 8036ADEC  7F 9F E3 78 */	mr r31, r28
/* 8036ADF0  CB A2 D0 28 */	lfd f29, lit_440(r2)
/* 8036ADF4  22 3A 00 17 */	subfic r17, r26, 0x17
/* 8036ADF8  CB C2 D0 20 */	lfd f30, lit_439(r2)
/* 8036ADFC  3A 81 01 98 */	addi r20, r1, 0x198
/* 8036AE00  CB E2 D0 08 */	lfd f31, lit_436(r2)
/* 8036AE04  3E 60 43 30 */	lis r19, 0x4330
lbl_8036AE08:
/* 8036AE08  57 E0 18 38 */	slwi r0, r31, 3
/* 8036AE0C  38 A1 00 58 */	addi r5, r1, 0x58
/* 8036AE10  7C A5 02 14 */	add r5, r5, r0
/* 8036AE14  2C 1F 00 00 */	cmpwi r31, 0
/* 8036AE18  C8 25 00 00 */	lfd f1, 0(r5)
/* 8036AE1C  7E 04 83 78 */	mr r4, r16
/* 8036AE20  7F E3 FB 78 */	mr r3, r31
/* 8036AE24  40 81 00 EC */	ble lbl_8036AF10
/* 8036AE28  57 E0 F8 7F */	rlwinm. r0, r31, 0x1f, 1, 0x1f
/* 8036AE2C  7C 09 03 A6 */	mtctr r0
/* 8036AE30  41 82 00 94 */	beq lbl_8036AEC4
lbl_8036AE34:
/* 8036AE34  FC 7A 00 72 */	fmul f3, f26, f1
/* 8036AE38  92 61 02 40 */	stw r19, 0x240(r1)
/* 8036AE3C  C8 05 FF F8 */	lfd f0, -8(r5)
/* 8036AE40  FC 40 18 1E */	fctiwz f2, f3
/* 8036AE44  D8 41 02 38 */	stfd f2, 0x238(r1)
/* 8036AE48  80 01 02 3C */	lwz r0, 0x23c(r1)
/* 8036AE4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036AE50  90 01 02 44 */	stw r0, 0x244(r1)
/* 8036AE54  C8 41 02 40 */	lfd f2, 0x240(r1)
/* 8036AE58  FC 62 D8 28 */	fsub f3, f2, f27
/* 8036AE5C  92 61 02 40 */	stw r19, 0x240(r1)
/* 8036AE60  FC 5C 08 FC */	fnmsub f2, f28, f3, f1
/* 8036AE64  FC 23 00 2A */	fadd f1, f3, f0
/* 8036AE68  CC 05 FF F0 */	lfdu f0, -0x10(r5)
/* 8036AE6C  FC 40 10 1E */	fctiwz f2, f2
/* 8036AE70  FC 7A 00 72 */	fmul f3, f26, f1
/* 8036AE74  D8 41 02 48 */	stfd f2, 0x248(r1)
/* 8036AE78  FC 40 18 1E */	fctiwz f2, f3
/* 8036AE7C  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 8036AE80  90 04 00 00 */	stw r0, 0(r4)
/* 8036AE84  D8 41 02 38 */	stfd f2, 0x238(r1)
/* 8036AE88  80 01 02 3C */	lwz r0, 0x23c(r1)
/* 8036AE8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036AE90  90 01 02 44 */	stw r0, 0x244(r1)
/* 8036AE94  C8 41 02 40 */	lfd f2, 0x240(r1)
/* 8036AE98  FC 62 D8 28 */	fsub f3, f2, f27
/* 8036AE9C  FC 5C 08 FC */	fnmsub f2, f28, f3, f1
/* 8036AEA0  FC 23 00 2A */	fadd f1, f3, f0
/* 8036AEA4  FC 40 10 1E */	fctiwz f2, f2
/* 8036AEA8  D8 41 02 48 */	stfd f2, 0x248(r1)
/* 8036AEAC  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 8036AEB0  90 04 00 04 */	stw r0, 4(r4)
/* 8036AEB4  38 84 00 08 */	addi r4, r4, 8
/* 8036AEB8  42 00 FF 7C */	bdnz lbl_8036AE34
/* 8036AEBC  70 63 00 01 */	andi. r3, r3, 1
/* 8036AEC0  41 82 00 50 */	beq lbl_8036AF10
lbl_8036AEC4:
/* 8036AEC4  7C 69 03 A6 */	mtctr r3
lbl_8036AEC8:
/* 8036AEC8  FC 7A 00 72 */	fmul f3, f26, f1
/* 8036AECC  92 61 02 40 */	stw r19, 0x240(r1)
/* 8036AED0  CC 05 FF F8 */	lfdu f0, -8(r5)
/* 8036AED4  FC 40 18 1E */	fctiwz f2, f3
/* 8036AED8  D8 41 02 38 */	stfd f2, 0x238(r1)
/* 8036AEDC  80 01 02 3C */	lwz r0, 0x23c(r1)
/* 8036AEE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036AEE4  90 01 02 44 */	stw r0, 0x244(r1)
/* 8036AEE8  C8 41 02 40 */	lfd f2, 0x240(r1)
/* 8036AEEC  FC 62 D8 28 */	fsub f3, f2, f27
/* 8036AEF0  FC 5C 08 FC */	fnmsub f2, f28, f3, f1
/* 8036AEF4  FC 23 00 2A */	fadd f1, f3, f0
/* 8036AEF8  FC 40 10 1E */	fctiwz f2, f2
/* 8036AEFC  D8 41 02 48 */	stfd f2, 0x248(r1)
/* 8036AF00  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 8036AF04  90 04 00 00 */	stw r0, 0(r4)
/* 8036AF08  38 84 00 04 */	addi r4, r4, 4
/* 8036AF0C  42 00 FF BC */	bdnz lbl_8036AEC8
lbl_8036AF10:
/* 8036AF10  7F 43 D3 78 */	mr r3, r26
/* 8036AF14  48 00 13 BD */	bl ldexp
/* 8036AF18  FF 20 08 90 */	fmr f25, f1
/* 8036AF1C  FC 3D 06 72 */	fmul f1, f29, f25
/* 8036AF20  48 00 11 DD */	bl floor
/* 8036AF24  FF 3E C8 7C */	fnmsub f25, f30, f1, f25
/* 8036AF28  92 61 02 40 */	stw r19, 0x240(r1)
/* 8036AF2C  2C 1A 00 00 */	cmpwi r26, 0
/* 8036AF30  3B 20 00 00 */	li r25, 0
/* 8036AF34  FC 00 C8 1E */	fctiwz f0, f25
/* 8036AF38  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 8036AF3C  83 61 02 4C */	lwz r27, 0x24c(r1)
/* 8036AF40  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8036AF44  90 01 02 44 */	stw r0, 0x244(r1)
/* 8036AF48  C8 01 02 40 */	lfd f0, 0x240(r1)
/* 8036AF4C  FC 00 D8 28 */	fsub f0, f0, f27
/* 8036AF50  FF 39 00 28 */	fsub f25, f25, f0
/* 8036AF54  40 81 00 34 */	ble lbl_8036AF88
/* 8036AF58  57 E3 10 3A */	slwi r3, r31, 2
/* 8036AF5C  38 81 00 08 */	addi r4, r1, 8
/* 8036AF60  38 A3 FF FC */	addi r5, r3, -4
/* 8036AF64  7C 64 28 2E */	lwzx r3, r4, r5
/* 8036AF68  7C 66 96 30 */	sraw r6, r3, r18
/* 8036AF6C  7C C0 90 30 */	slw r0, r6, r18
/* 8036AF70  7C 00 18 50 */	subf r0, r0, r3
/* 8036AF74  7F 7B 32 14 */	add r27, r27, r6
/* 8036AF78  7C 04 29 2E */	stwx r0, r4, r5
/* 8036AF7C  7C 04 28 2E */	lwzx r0, r4, r5
/* 8036AF80  7C 19 8E 30 */	sraw r25, r0, r17
/* 8036AF84  48 00 00 34 */	b lbl_8036AFB8
lbl_8036AF88:
/* 8036AF88  40 82 00 1C */	bne lbl_8036AFA4
/* 8036AF8C  57 E4 10 3A */	slwi r4, r31, 2
/* 8036AF90  38 61 00 08 */	addi r3, r1, 8
/* 8036AF94  38 04 FF FC */	addi r0, r4, -4
/* 8036AF98  7C 03 00 2E */	lwzx r0, r3, r0
/* 8036AF9C  7C 19 BE 70 */	srawi r25, r0, 0x17
/* 8036AFA0  48 00 00 18 */	b lbl_8036AFB8
lbl_8036AFA4:
/* 8036AFA4  C8 02 D0 30 */	lfd f0, lit_441(r2)
/* 8036AFA8  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 8036AFAC  4C 41 13 82 */	cror 2, 1, 2
/* 8036AFB0  40 82 00 08 */	bne lbl_8036AFB8
/* 8036AFB4  3B 20 00 02 */	li r25, 2
lbl_8036AFB8:
/* 8036AFB8  2C 19 00 00 */	cmpwi r25, 0
/* 8036AFBC  40 81 00 D0 */	ble lbl_8036B08C
/* 8036AFC0  3C A0 01 00 */	lis r5, 0x0100 /* 0x00FFFFFF@ha */
/* 8036AFC4  7E 06 83 78 */	mr r6, r16
/* 8036AFC8  38 00 00 00 */	li r0, 0
/* 8036AFCC  38 85 FF FF */	addi r4, r5, 0xFFFF /* 0x00FFFFFF@l */
/* 8036AFD0  7F E9 03 A6 */	mtctr r31
/* 8036AFD4  2C 1F 00 00 */	cmpwi r31, 0
/* 8036AFD8  3B 7B 00 01 */	addi r27, r27, 1
/* 8036AFDC  40 81 00 38 */	ble lbl_8036B014
lbl_8036AFE0:
/* 8036AFE0  2C 00 00 00 */	cmpwi r0, 0
/* 8036AFE4  80 66 00 00 */	lwz r3, 0(r6)
/* 8036AFE8  40 82 00 1C */	bne lbl_8036B004
/* 8036AFEC  2C 03 00 00 */	cmpwi r3, 0
/* 8036AFF0  41 82 00 1C */	beq lbl_8036B00C
/* 8036AFF4  7C 63 28 50 */	subf r3, r3, r5
/* 8036AFF8  38 00 00 01 */	li r0, 1
/* 8036AFFC  90 66 00 00 */	stw r3, 0(r6)
/* 8036B000  48 00 00 0C */	b lbl_8036B00C
lbl_8036B004:
/* 8036B004  7C 63 20 50 */	subf r3, r3, r4
/* 8036B008  90 66 00 00 */	stw r3, 0(r6)
lbl_8036B00C:
/* 8036B00C  38 C6 00 04 */	addi r6, r6, 4
/* 8036B010  42 00 FF D0 */	bdnz lbl_8036AFE0
lbl_8036B014:
/* 8036B014  2C 1A 00 00 */	cmpwi r26, 0
/* 8036B018  40 81 00 50 */	ble lbl_8036B068
/* 8036B01C  2C 1A 00 02 */	cmpwi r26, 2
/* 8036B020  41 82 00 30 */	beq lbl_8036B050
/* 8036B024  40 80 00 44 */	bge lbl_8036B068
/* 8036B028  2C 1A 00 01 */	cmpwi r26, 1
/* 8036B02C  40 80 00 08 */	bge lbl_8036B034
/* 8036B030  48 00 00 38 */	b lbl_8036B068
lbl_8036B034:
/* 8036B034  57 E3 10 3A */	slwi r3, r31, 2
/* 8036B038  38 A1 00 08 */	addi r5, r1, 8
/* 8036B03C  38 83 FF FC */	addi r4, r3, -4
/* 8036B040  7C 65 20 2E */	lwzx r3, r5, r4
/* 8036B044  54 63 02 7E */	clrlwi r3, r3, 9
/* 8036B048  7C 65 21 2E */	stwx r3, r5, r4
/* 8036B04C  48 00 00 1C */	b lbl_8036B068
lbl_8036B050:
/* 8036B050  57 E3 10 3A */	slwi r3, r31, 2
/* 8036B054  38 A1 00 08 */	addi r5, r1, 8
/* 8036B058  38 83 FF FC */	addi r4, r3, -4
/* 8036B05C  7C 65 20 2E */	lwzx r3, r5, r4
/* 8036B060  54 63 02 BE */	clrlwi r3, r3, 0xa
/* 8036B064  7C 65 21 2E */	stwx r3, r5, r4
lbl_8036B068:
/* 8036B068  2C 19 00 02 */	cmpwi r25, 2
/* 8036B06C  40 82 00 20 */	bne lbl_8036B08C
/* 8036B070  C8 22 D0 38 */	lfd f1, lit_442(r2)
/* 8036B074  2C 00 00 00 */	cmpwi r0, 0
/* 8036B078  FF 21 C8 28 */	fsub f25, f1, f25
/* 8036B07C  41 82 00 10 */	beq lbl_8036B08C
/* 8036B080  7F 43 D3 78 */	mr r3, r26
/* 8036B084  48 00 12 4D */	bl ldexp
/* 8036B088  FF 39 08 28 */	fsub f25, f25, f1
lbl_8036B08C:
/* 8036B08C  FC 1F C8 00 */	fcmpu cr0, f31, f25
/* 8036B090  40 82 02 64 */	bne lbl_8036B2F4
/* 8036B094  38 7F FF FF */	addi r3, r31, -1
/* 8036B098  38 81 00 08 */	addi r4, r1, 8
/* 8036B09C  7C 03 E0 00 */	cmpw r3, r28
/* 8036B0A0  38 A0 00 00 */	li r5, 0
/* 8036B0A4  54 60 10 3A */	slwi r0, r3, 2
/* 8036B0A8  38 63 00 01 */	addi r3, r3, 1
/* 8036B0AC  7C 84 02 14 */	add r4, r4, r0
/* 8036B0B0  7C 7C 18 50 */	subf r3, r28, r3
/* 8036B0B4  41 80 00 74 */	blt lbl_8036B128
/* 8036B0B8  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8036B0BC  7C 09 03 A6 */	mtctr r0
/* 8036B0C0  41 82 00 54 */	beq lbl_8036B114
lbl_8036B0C4:
/* 8036B0C4  80 04 00 00 */	lwz r0, 0(r4)
/* 8036B0C8  7C A5 03 78 */	or r5, r5, r0
/* 8036B0CC  80 04 FF FC */	lwz r0, -4(r4)
/* 8036B0D0  7C A5 03 78 */	or r5, r5, r0
/* 8036B0D4  80 04 FF F8 */	lwz r0, -8(r4)
/* 8036B0D8  7C A5 03 78 */	or r5, r5, r0
/* 8036B0DC  80 04 FF F4 */	lwz r0, -0xc(r4)
/* 8036B0E0  7C A5 03 78 */	or r5, r5, r0
/* 8036B0E4  80 04 FF F0 */	lwz r0, -0x10(r4)
/* 8036B0E8  7C A5 03 78 */	or r5, r5, r0
/* 8036B0EC  80 04 FF EC */	lwz r0, -0x14(r4)
/* 8036B0F0  7C A5 03 78 */	or r5, r5, r0
/* 8036B0F4  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 8036B0F8  7C A5 03 78 */	or r5, r5, r0
/* 8036B0FC  80 04 FF E4 */	lwz r0, -0x1c(r4)
/* 8036B100  38 84 FF E0 */	addi r4, r4, -32
/* 8036B104  7C A5 03 78 */	or r5, r5, r0
/* 8036B108  42 00 FF BC */	bdnz lbl_8036B0C4
/* 8036B10C  70 63 00 07 */	andi. r3, r3, 7
/* 8036B110  41 82 00 18 */	beq lbl_8036B128
lbl_8036B114:
/* 8036B114  7C 69 03 A6 */	mtctr r3
lbl_8036B118:
/* 8036B118  80 04 00 00 */	lwz r0, 0(r4)
/* 8036B11C  38 84 FF FC */	addi r4, r4, -4
/* 8036B120  7C A5 03 78 */	or r5, r5, r0
/* 8036B124  42 00 FF F4 */	bdnz lbl_8036B118
lbl_8036B128:
/* 8036B128  2C 05 00 00 */	cmpwi r5, 0
/* 8036B12C  40 82 01 C8 */	bne lbl_8036B2F4
/* 8036B130  39 40 00 01 */	li r10, 1
/* 8036B134  48 00 00 08 */	b lbl_8036B13C
lbl_8036B138:
/* 8036B138  39 4A 00 01 */	addi r10, r10, 1
lbl_8036B13C:
/* 8036B13C  7C 0A E0 50 */	subf r0, r10, r28
/* 8036B140  54 00 10 3A */	slwi r0, r0, 2
/* 8036B144  7C 10 00 2E */	lwzx r0, r16, r0
/* 8036B148  2C 00 00 00 */	cmpwi r0, 0
/* 8036B14C  41 82 FF EC */	beq lbl_8036B138
/* 8036B150  39 3F 00 01 */	addi r9, r31, 1
/* 8036B154  38 A1 00 58 */	addi r5, r1, 0x58
/* 8036B158  55 20 18 38 */	slwi r0, r9, 3
/* 8036B15C  7C DF 52 14 */	add r6, r31, r10
/* 8036B160  7C A5 02 14 */	add r5, r5, r0
/* 8036B164  48 00 01 80 */	b lbl_8036B2E4
lbl_8036B168:
/* 8036B168  7C 1D 4A 14 */	add r0, r29, r9
/* 8036B16C  7C FE 4A 14 */	add r7, r30, r9
/* 8036B170  54 00 10 3A */	slwi r0, r0, 2
/* 8036B174  92 61 02 48 */	stw r19, 0x248(r1)
/* 8036B178  7C 78 00 2E */	lwzx r3, r24, r0
/* 8036B17C  2C 1E 00 00 */	cmpwi r30, 0
/* 8036B180  54 E0 18 38 */	slwi r0, r7, 3
/* 8036B184  C8 82 D0 08 */	lfd f4, lit_436(r2)
/* 8036B188  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8036B18C  39 00 00 00 */	li r8, 0
/* 8036B190  90 61 02 4C */	stw r3, 0x24c(r1)
/* 8036B194  C8 01 02 48 */	lfd f0, 0x248(r1)
/* 8036B198  FC 00 D8 28 */	fsub f0, f0, f27
/* 8036B19C  7C 14 05 AE */	stfdx f0, r20, r0
/* 8036B1A0  41 80 01 38 */	blt lbl_8036B2D8
/* 8036B1A4  38 1E 00 01 */	addi r0, r30, 1
/* 8036B1A8  39 7E FF F8 */	addi r11, r30, -8
/* 8036B1AC  2C 00 00 08 */	cmpwi r0, 8
/* 8036B1B0  40 81 00 E8 */	ble lbl_8036B298
/* 8036B1B4  38 0B 00 08 */	addi r0, r11, 8
/* 8036B1B8  7E A4 AB 78 */	mr r4, r21
/* 8036B1BC  54 00 E8 FE */	srwi r0, r0, 3
/* 8036B1C0  38 61 01 98 */	addi r3, r1, 0x198
/* 8036B1C4  7C 09 03 A6 */	mtctr r0
/* 8036B1C8  2C 0B 00 00 */	cmpwi r11, 0
/* 8036B1CC  41 80 00 CC */	blt lbl_8036B298
lbl_8036B1D0:
/* 8036B1D0  7D 68 38 50 */	subf r11, r8, r7
/* 8036B1D4  38 08 00 01 */	addi r0, r8, 1
/* 8036B1D8  55 6C 18 38 */	slwi r12, r11, 3
/* 8036B1DC  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B1E0  7C 03 64 AE */	lfdx f0, r3, r12
/* 8036B1E4  7C 00 38 50 */	subf r0, r0, r7
/* 8036B1E8  39 68 00 02 */	addi r11, r8, 2
/* 8036B1EC  C8 44 00 20 */	lfd f2, 0x20(r4)
/* 8036B1F0  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B1F4  7D 8B 38 50 */	subf r12, r11, r7
/* 8036B1F8  54 00 18 38 */	slwi r0, r0, 3
/* 8036B1FC  39 68 00 03 */	addi r11, r8, 3
/* 8036B200  7C 03 04 AE */	lfdx f0, r3, r0
/* 8036B204  55 99 18 38 */	slwi r25, r12, 3
/* 8036B208  C8 24 00 08 */	lfd f1, 8(r4)
/* 8036B20C  7D 6B 38 50 */	subf r11, r11, r7
/* 8036B210  55 6C 18 38 */	slwi r12, r11, 3
/* 8036B214  38 08 00 04 */	addi r0, r8, 4
/* 8036B218  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B21C  C8 24 00 10 */	lfd f1, 0x10(r4)
/* 8036B220  7C 03 CC AE */	lfdx f0, r3, r25
/* 8036B224  7D 60 38 50 */	subf r11, r0, r7
/* 8036B228  38 08 00 05 */	addi r0, r8, 5
/* 8036B22C  C8 64 00 30 */	lfd f3, 0x30(r4)
/* 8036B230  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B234  7C 03 64 AE */	lfdx f0, r3, r12
/* 8036B238  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8036B23C  55 6C 18 38 */	slwi r12, r11, 3
/* 8036B240  39 68 00 06 */	addi r11, r8, 6
/* 8036B244  7C 00 38 50 */	subf r0, r0, r7
/* 8036B248  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B24C  7C 03 64 AE */	lfdx f0, r3, r12
/* 8036B250  54 0C 18 38 */	slwi r12, r0, 3
/* 8036B254  C8 24 00 28 */	lfd f1, 0x28(r4)
/* 8036B258  38 08 00 07 */	addi r0, r8, 7
/* 8036B25C  7D 6B 38 50 */	subf r11, r11, r7
/* 8036B260  FC 82 20 3A */	fmadd f4, f2, f0, f4
/* 8036B264  7C 03 64 AE */	lfdx f0, r3, r12
/* 8036B268  55 6B 18 38 */	slwi r11, r11, 3
/* 8036B26C  7C 00 38 50 */	subf r0, r0, r7
/* 8036B270  7C 43 5C AE */	lfdx f2, r3, r11
/* 8036B274  54 00 18 38 */	slwi r0, r0, 3
/* 8036B278  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B27C  C8 24 00 38 */	lfd f1, 0x38(r4)
/* 8036B280  7C 03 04 AE */	lfdx f0, r3, r0
/* 8036B284  38 84 00 40 */	addi r4, r4, 0x40
/* 8036B288  39 08 00 08 */	addi r8, r8, 8
/* 8036B28C  FC 83 20 BA */	fmadd f4, f3, f2, f4
/* 8036B290  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B294  42 00 FF 3C */	bdnz lbl_8036B1D0
lbl_8036B298:
/* 8036B298  38 1E 00 01 */	addi r0, r30, 1
/* 8036B29C  55 04 18 38 */	slwi r4, r8, 3
/* 8036B2A0  7C 08 00 50 */	subf r0, r8, r0
/* 8036B2A4  38 61 01 98 */	addi r3, r1, 0x198
/* 8036B2A8  7C 95 22 14 */	add r4, r21, r4
/* 8036B2AC  7C 09 03 A6 */	mtctr r0
/* 8036B2B0  7C 08 F0 00 */	cmpw r8, r30
/* 8036B2B4  41 81 00 24 */	bgt lbl_8036B2D8
lbl_8036B2B8:
/* 8036B2B8  7C 08 38 50 */	subf r0, r8, r7
/* 8036B2BC  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B2C0  54 00 18 38 */	slwi r0, r0, 3
/* 8036B2C4  38 84 00 08 */	addi r4, r4, 8
/* 8036B2C8  7C 03 04 AE */	lfdx f0, r3, r0
/* 8036B2CC  39 08 00 01 */	addi r8, r8, 1
/* 8036B2D0  FC 81 20 3A */	fmadd f4, f1, f0, f4
/* 8036B2D4  42 00 FF E4 */	bdnz lbl_8036B2B8
lbl_8036B2D8:
/* 8036B2D8  D8 85 00 00 */	stfd f4, 0(r5)
/* 8036B2DC  38 A5 00 08 */	addi r5, r5, 8
/* 8036B2E0  39 29 00 01 */	addi r9, r9, 1
lbl_8036B2E4:
/* 8036B2E4  7C 09 30 00 */	cmpw r9, r6
/* 8036B2E8  40 81 FE 80 */	ble lbl_8036B168
/* 8036B2EC  7F FF 52 14 */	add r31, r31, r10
/* 8036B2F0  4B FF FB 18 */	b lbl_8036AE08
lbl_8036B2F4:
/* 8036B2F4  C8 02 D0 08 */	lfd f0, lit_436(r2)
/* 8036B2F8  FC 00 C8 00 */	fcmpu cr0, f0, f25
/* 8036B2FC  40 82 00 38 */	bne lbl_8036B334
/* 8036B300  3B FF FF FF */	addi r31, r31, -1
/* 8036B304  38 61 00 08 */	addi r3, r1, 8
/* 8036B308  57 E0 10 3A */	slwi r0, r31, 2
/* 8036B30C  3B 5A FF E8 */	addi r26, r26, -24
/* 8036B310  7C 63 02 14 */	add r3, r3, r0
/* 8036B314  48 00 00 10 */	b lbl_8036B324
lbl_8036B318:
/* 8036B318  38 63 FF FC */	addi r3, r3, -4
/* 8036B31C  3B FF FF FF */	addi r31, r31, -1
/* 8036B320  3B 5A FF E8 */	addi r26, r26, -24
lbl_8036B324:
/* 8036B324  80 03 00 00 */	lwz r0, 0(r3)
/* 8036B328  2C 00 00 00 */	cmpwi r0, 0
/* 8036B32C  41 82 FF EC */	beq lbl_8036B318
/* 8036B330  48 00 00 A4 */	b lbl_8036B3D4
lbl_8036B334:
/* 8036B334  FC 20 C8 90 */	fmr f1, f25
/* 8036B338  7C 7A 00 D0 */	neg r3, r26
/* 8036B33C  48 00 0F 95 */	bl ldexp
/* 8036B340  C8 62 D0 18 */	lfd f3, lit_438(r2)
/* 8036B344  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8036B348  4C 41 13 82 */	cror 2, 1, 2
/* 8036B34C  40 82 00 70 */	bne lbl_8036B3BC
/* 8036B350  C8 02 D0 10 */	lfd f0, lit_437(r2)
/* 8036B354  3C 00 43 30 */	lis r0, 0x4330
/* 8036B358  57 E5 10 3A */	slwi r5, r31, 2
/* 8036B35C  90 01 02 40 */	stw r0, 0x240(r1)
/* 8036B360  FC 00 00 72 */	fmul f0, f0, f1
/* 8036B364  3B FF 00 01 */	addi r31, r31, 1
/* 8036B368  C8 42 D0 40 */	lfd f2, lit_445(r2)
/* 8036B36C  38 81 00 08 */	addi r4, r1, 8
/* 8036B370  57 E0 10 3A */	slwi r0, r31, 2
/* 8036B374  3B 5A 00 18 */	addi r26, r26, 0x18
/* 8036B378  FC 00 00 1E */	fctiwz f0, f0
/* 8036B37C  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 8036B380  80 61 02 4C */	lwz r3, 0x24c(r1)
/* 8036B384  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8036B388  90 61 02 44 */	stw r3, 0x244(r1)
/* 8036B38C  C8 01 02 40 */	lfd f0, 0x240(r1)
/* 8036B390  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B394  FC 23 08 3C */	fnmsub f1, f3, f0, f1
/* 8036B398  FC 00 00 1E */	fctiwz f0, f0
/* 8036B39C  FC 20 08 1E */	fctiwz f1, f1
/* 8036B3A0  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 8036B3A4  D8 21 02 38 */	stfd f1, 0x238(r1)
/* 8036B3A8  80 61 02 54 */	lwz r3, 0x254(r1)
/* 8036B3AC  80 C1 02 3C */	lwz r6, 0x23c(r1)
/* 8036B3B0  7C C4 29 2E */	stwx r6, r4, r5
/* 8036B3B4  7C 64 01 2E */	stwx r3, r4, r0
/* 8036B3B8  48 00 00 1C */	b lbl_8036B3D4
lbl_8036B3BC:
/* 8036B3BC  FC 00 08 1E */	fctiwz f0, f1
/* 8036B3C0  57 E0 10 3A */	slwi r0, r31, 2
/* 8036B3C4  38 61 00 08 */	addi r3, r1, 8
/* 8036B3C8  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 8036B3CC  80 81 02 54 */	lwz r4, 0x254(r1)
/* 8036B3D0  7C 83 01 2E */	stwx r4, r3, r0
lbl_8036B3D4:
/* 8036B3D4  C8 22 D0 38 */	lfd f1, lit_442(r2)
/* 8036B3D8  7F 43 D3 78 */	mr r3, r26
/* 8036B3DC  48 00 0E F5 */	bl ldexp
/* 8036B3E0  2C 1F 00 00 */	cmpwi r31, 0
/* 8036B3E4  57 E0 10 3A */	slwi r0, r31, 2
/* 8036B3E8  38 C1 00 08 */	addi r6, r1, 8
/* 8036B3EC  57 E8 18 38 */	slwi r8, r31, 3
/* 8036B3F0  38 E1 00 58 */	addi r7, r1, 0x58
/* 8036B3F4  C8 A2 D0 40 */	lfd f5, lit_445(r2)
/* 8036B3F8  C8 02 D0 10 */	lfd f0, lit_437(r2)
/* 8036B3FC  7C C6 02 14 */	add r6, r6, r0
/* 8036B400  7C E7 42 14 */	add r7, r7, r8
/* 8036B404  38 7F 00 01 */	addi r3, r31, 1
/* 8036B408  3C 80 43 30 */	lis r4, 0x4330
/* 8036B40C  41 80 00 E8 */	blt lbl_8036B4F4
/* 8036B410  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8036B414  7C 09 03 A6 */	mtctr r0
/* 8036B418  41 82 00 A8 */	beq lbl_8036B4C0
lbl_8036B41C:
/* 8036B41C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8036B420  90 81 02 50 */	stw r4, 0x250(r1)
/* 8036B424  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8036B428  80 A6 FF FC */	lwz r5, -4(r6)
/* 8036B42C  90 01 02 54 */	stw r0, 0x254(r1)
/* 8036B430  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8036B434  80 A6 FF F8 */	lwz r5, -8(r6)
/* 8036B438  C8 81 02 50 */	lfd f4, 0x250(r1)
/* 8036B43C  90 01 02 54 */	stw r0, 0x254(r1)
/* 8036B440  FC 64 28 28 */	fsub f3, f4, f5
/* 8036B444  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8036B448  80 A6 FF F4 */	lwz r5, -0xc(r6)
/* 8036B44C  90 81 02 50 */	stw r4, 0x250(r1)
/* 8036B450  38 C6 FF F0 */	addi r6, r6, -16
/* 8036B454  FC 41 00 F2 */	fmul f2, f1, f3
/* 8036B458  C8 81 02 50 */	lfd f4, 0x250(r1)
/* 8036B45C  FC 21 00 32 */	fmul f1, f1, f0
/* 8036B460  90 01 02 54 */	stw r0, 0x254(r1)
/* 8036B464  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8036B468  FC 64 28 28 */	fsub f3, f4, f5
/* 8036B46C  90 81 02 50 */	stw r4, 0x250(r1)
/* 8036B470  C8 81 02 50 */	lfd f4, 0x250(r1)
/* 8036B474  D8 47 00 00 */	stfd f2, 0(r7)
/* 8036B478  FC 41 00 F2 */	fmul f2, f1, f3
/* 8036B47C  FC 21 00 32 */	fmul f1, f1, f0
/* 8036B480  90 01 02 54 */	stw r0, 0x254(r1)
/* 8036B484  90 81 02 50 */	stw r4, 0x250(r1)
/* 8036B488  FC 64 28 28 */	fsub f3, f4, f5
/* 8036B48C  D8 47 FF F8 */	stfd f2, -8(r7)
/* 8036B490  FC 41 00 F2 */	fmul f2, f1, f3
/* 8036B494  C8 81 02 50 */	lfd f4, 0x250(r1)
/* 8036B498  FC 21 00 32 */	fmul f1, f1, f0
/* 8036B49C  FC 64 28 28 */	fsub f3, f4, f5
/* 8036B4A0  D8 47 FF F0 */	stfd f2, -0x10(r7)
/* 8036B4A4  FC 41 00 F2 */	fmul f2, f1, f3
/* 8036B4A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8036B4AC  D8 47 FF E8 */	stfd f2, -0x18(r7)
/* 8036B4B0  38 E7 FF E0 */	addi r7, r7, -32
/* 8036B4B4  42 00 FF 68 */	bdnz lbl_8036B41C
/* 8036B4B8  70 63 00 03 */	andi. r3, r3, 3
/* 8036B4BC  41 82 00 38 */	beq lbl_8036B4F4
lbl_8036B4C0:
/* 8036B4C0  7C 69 03 A6 */	mtctr r3
lbl_8036B4C4:
/* 8036B4C4  80 A6 00 00 */	lwz r5, 0(r6)
/* 8036B4C8  38 C6 FF FC */	addi r6, r6, -4
/* 8036B4CC  90 81 02 50 */	stw r4, 0x250(r1)
/* 8036B4D0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8036B4D4  90 01 02 54 */	stw r0, 0x254(r1)
/* 8036B4D8  C8 81 02 50 */	lfd f4, 0x250(r1)
/* 8036B4DC  FC 64 28 28 */	fsub f3, f4, f5
/* 8036B4E0  FC 41 00 F2 */	fmul f2, f1, f3
/* 8036B4E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8036B4E8  D8 47 00 00 */	stfd f2, 0(r7)
/* 8036B4EC  38 E7 FF F8 */	addi r7, r7, -8
/* 8036B4F0  42 00 FF D4 */	bdnz lbl_8036B4C4
lbl_8036B4F4:
/* 8036B4F4  3C 60 80 3A */	lis r3, PIo2@ha /* 0x803A2548@ha */
/* 8036B4F8  38 1F 00 01 */	addi r0, r31, 1
/* 8036B4FC  7F E9 FB 78 */	mr r9, r31
/* 8036B500  38 81 00 58 */	addi r4, r1, 0x58
/* 8036B504  38 A3 25 48 */	addi r5, r3, PIo2@l /* 0x803A2548@l */
/* 8036B508  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8036B50C  7C 09 03 A6 */	mtctr r0
/* 8036B510  2C 1F 00 00 */	cmpwi r31, 0
/* 8036B514  41 80 00 54 */	blt lbl_8036B568
lbl_8036B518:
/* 8036B518  C8 42 D0 08 */	lfd f2, lit_436(r2)
/* 8036B51C  7C A6 2B 78 */	mr r6, r5
/* 8036B520  7C E9 F8 50 */	subf r7, r9, r31
/* 8036B524  39 40 00 00 */	li r10, 0
/* 8036B528  48 00 00 20 */	b lbl_8036B548
lbl_8036B52C:
/* 8036B52C  7C 09 52 14 */	add r0, r9, r10
/* 8036B530  C8 26 00 00 */	lfd f1, 0(r6)
/* 8036B534  54 00 18 38 */	slwi r0, r0, 3
/* 8036B538  38 C6 00 08 */	addi r6, r6, 8
/* 8036B53C  7C 04 04 AE */	lfdx f0, r4, r0
/* 8036B540  39 4A 00 01 */	addi r10, r10, 1
/* 8036B544  FC 41 10 3A */	fmadd f2, f1, f0, f2
lbl_8036B548:
/* 8036B548  7C 0A E0 00 */	cmpw r10, r28
/* 8036B54C  41 81 00 0C */	bgt lbl_8036B558
/* 8036B550  7C 0A 38 00 */	cmpw r10, r7
/* 8036B554  40 81 FF D8 */	ble lbl_8036B52C
lbl_8036B558:
/* 8036B558  54 E0 18 38 */	slwi r0, r7, 3
/* 8036B55C  39 29 FF FF */	addi r9, r9, -1
/* 8036B560  7C 43 05 AE */	stfdx f2, r3, r0
/* 8036B564  42 00 FF B4 */	bdnz lbl_8036B518
lbl_8036B568:
/* 8036B568  2C 17 00 03 */	cmpwi r23, 3
/* 8036B56C  41 82 02 24 */	beq lbl_8036B790
/* 8036B570  40 80 04 60 */	bge lbl_8036B9D0
/* 8036B574  2C 17 00 00 */	cmpwi r23, 0
/* 8036B578  41 82 00 0C */	beq lbl_8036B584
/* 8036B57C  40 80 00 A8 */	bge lbl_8036B624
/* 8036B580  48 00 04 50 */	b lbl_8036B9D0
lbl_8036B584:
/* 8036B584  2C 1F 00 00 */	cmpwi r31, 0
/* 8036B588  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8036B58C  C8 22 D0 08 */	lfd f1, lit_436(r2)
/* 8036B590  7C 84 42 14 */	add r4, r4, r8
/* 8036B594  38 7F 00 01 */	addi r3, r31, 1
/* 8036B598  41 80 00 74 */	blt lbl_8036B60C
/* 8036B59C  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8036B5A0  7C 09 03 A6 */	mtctr r0
/* 8036B5A4  41 82 00 54 */	beq lbl_8036B5F8
lbl_8036B5A8:
/* 8036B5A8  C8 04 00 00 */	lfd f0, 0(r4)
/* 8036B5AC  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5B0  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B5B4  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5B8  C8 04 FF F0 */	lfd f0, -0x10(r4)
/* 8036B5BC  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5C0  C8 04 FF E8 */	lfd f0, -0x18(r4)
/* 8036B5C4  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5C8  C8 04 FF E0 */	lfd f0, -0x20(r4)
/* 8036B5CC  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5D0  C8 04 FF D8 */	lfd f0, -0x28(r4)
/* 8036B5D4  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5D8  C8 04 FF D0 */	lfd f0, -0x30(r4)
/* 8036B5DC  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5E0  C8 04 FF C8 */	lfd f0, -0x38(r4)
/* 8036B5E4  38 84 FF C0 */	addi r4, r4, -64
/* 8036B5E8  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B5EC  42 00 FF BC */	bdnz lbl_8036B5A8
/* 8036B5F0  70 63 00 07 */	andi. r3, r3, 7
/* 8036B5F4  41 82 00 18 */	beq lbl_8036B60C
lbl_8036B5F8:
/* 8036B5F8  7C 69 03 A6 */	mtctr r3
lbl_8036B5FC:
/* 8036B5FC  C8 04 00 00 */	lfd f0, 0(r4)
/* 8036B600  38 84 FF F8 */	addi r4, r4, -8
/* 8036B604  FC 21 00 2A */	fadd f1, f1, f0
/* 8036B608  42 00 FF F4 */	bdnz lbl_8036B5FC
lbl_8036B60C:
/* 8036B60C  2C 19 00 00 */	cmpwi r25, 0
/* 8036B610  40 82 00 08 */	bne lbl_8036B618
/* 8036B614  48 00 00 08 */	b lbl_8036B61C
lbl_8036B618:
/* 8036B618  FC 20 08 50 */	fneg f1, f1
lbl_8036B61C:
/* 8036B61C  D8 36 00 00 */	stfd f1, 0(r22)
/* 8036B620  48 00 03 B0 */	b lbl_8036B9D0
lbl_8036B624:
/* 8036B624  2C 1F 00 00 */	cmpwi r31, 0
/* 8036B628  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8036B62C  C8 42 D0 08 */	lfd f2, lit_436(r2)
/* 8036B630  7C 84 42 14 */	add r4, r4, r8
/* 8036B634  38 7F 00 01 */	addi r3, r31, 1
/* 8036B638  41 80 00 74 */	blt lbl_8036B6AC
/* 8036B63C  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8036B640  7C 09 03 A6 */	mtctr r0
/* 8036B644  41 82 00 54 */	beq lbl_8036B698
lbl_8036B648:
/* 8036B648  C8 04 00 00 */	lfd f0, 0(r4)
/* 8036B64C  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B650  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B654  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B658  C8 04 FF F0 */	lfd f0, -0x10(r4)
/* 8036B65C  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B660  C8 04 FF E8 */	lfd f0, -0x18(r4)
/* 8036B664  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B668  C8 04 FF E0 */	lfd f0, -0x20(r4)
/* 8036B66C  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B670  C8 04 FF D8 */	lfd f0, -0x28(r4)
/* 8036B674  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B678  C8 04 FF D0 */	lfd f0, -0x30(r4)
/* 8036B67C  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B680  C8 04 FF C8 */	lfd f0, -0x38(r4)
/* 8036B684  38 84 FF C0 */	addi r4, r4, -64
/* 8036B688  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B68C  42 00 FF BC */	bdnz lbl_8036B648
/* 8036B690  70 63 00 07 */	andi. r3, r3, 7
/* 8036B694  41 82 00 18 */	beq lbl_8036B6AC
lbl_8036B698:
/* 8036B698  7C 69 03 A6 */	mtctr r3
lbl_8036B69C:
/* 8036B69C  C8 04 00 00 */	lfd f0, 0(r4)
/* 8036B6A0  38 84 FF F8 */	addi r4, r4, -8
/* 8036B6A4  FC 42 00 2A */	fadd f2, f2, f0
/* 8036B6A8  42 00 FF F4 */	bdnz lbl_8036B69C
lbl_8036B6AC:
/* 8036B6AC  2C 19 00 00 */	cmpwi r25, 0
/* 8036B6B0  40 82 00 0C */	bne lbl_8036B6BC
/* 8036B6B4  FC 20 10 90 */	fmr f1, f2
/* 8036B6B8  48 00 00 08 */	b lbl_8036B6C0
lbl_8036B6BC:
/* 8036B6BC  FC 20 10 50 */	fneg f1, f2
lbl_8036B6C0:
/* 8036B6C0  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8036B6C4  2C 1F 00 01 */	cmpwi r31, 1
/* 8036B6C8  D8 36 00 00 */	stfd f1, 0(r22)
/* 8036B6CC  38 A0 00 01 */	li r5, 1
/* 8036B6D0  FC C0 10 28 */	fsub f6, f0, f2
/* 8036B6D4  41 80 00 A4 */	blt lbl_8036B778
/* 8036B6D8  2C 1F 00 08 */	cmpwi r31, 8
/* 8036B6DC  38 7F FF F8 */	addi r3, r31, -8
/* 8036B6E0  40 81 00 68 */	ble lbl_8036B748
/* 8036B6E4  38 03 00 07 */	addi r0, r3, 7
/* 8036B6E8  38 81 01 00 */	addi r4, r1, 0x100
/* 8036B6EC  54 00 E8 FE */	srwi r0, r0, 3
/* 8036B6F0  7C 09 03 A6 */	mtctr r0
/* 8036B6F4  2C 03 00 01 */	cmpwi r3, 1
/* 8036B6F8  41 80 00 50 */	blt lbl_8036B748
lbl_8036B6FC:
/* 8036B6FC  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B700  38 A5 00 08 */	addi r5, r5, 8
/* 8036B704  C8 04 00 08 */	lfd f0, 8(r4)
/* 8036B708  FC C6 08 2A */	fadd f6, f6, f1
/* 8036B70C  C8 A4 00 10 */	lfd f5, 0x10(r4)
/* 8036B710  C8 84 00 18 */	lfd f4, 0x18(r4)
/* 8036B714  C8 64 00 20 */	lfd f3, 0x20(r4)
/* 8036B718  FC C6 00 2A */	fadd f6, f6, f0
/* 8036B71C  C8 44 00 28 */	lfd f2, 0x28(r4)
/* 8036B720  C8 24 00 30 */	lfd f1, 0x30(r4)
/* 8036B724  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 8036B728  38 84 00 40 */	addi r4, r4, 0x40
/* 8036B72C  FC C6 28 2A */	fadd f6, f6, f5
/* 8036B730  FC C6 20 2A */	fadd f6, f6, f4
/* 8036B734  FC C6 18 2A */	fadd f6, f6, f3
/* 8036B738  FC C6 10 2A */	fadd f6, f6, f2
/* 8036B73C  FC C6 08 2A */	fadd f6, f6, f1
/* 8036B740  FC C6 00 2A */	fadd f6, f6, f0
/* 8036B744  42 00 FF B8 */	bdnz lbl_8036B6FC
lbl_8036B748:
/* 8036B748  38 1F 00 01 */	addi r0, r31, 1
/* 8036B74C  54 A3 18 38 */	slwi r3, r5, 3
/* 8036B750  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8036B754  7C 05 00 50 */	subf r0, r5, r0
/* 8036B758  7C 84 1A 14 */	add r4, r4, r3
/* 8036B75C  7C 09 03 A6 */	mtctr r0
/* 8036B760  7C 05 F8 00 */	cmpw r5, r31
/* 8036B764  41 81 00 14 */	bgt lbl_8036B778
lbl_8036B768:
/* 8036B768  C8 04 00 00 */	lfd f0, 0(r4)
/* 8036B76C  38 84 00 08 */	addi r4, r4, 8
/* 8036B770  FC C6 00 2A */	fadd f6, f6, f0
/* 8036B774  42 00 FF F4 */	bdnz lbl_8036B768
lbl_8036B778:
/* 8036B778  2C 19 00 00 */	cmpwi r25, 0
/* 8036B77C  40 82 00 08 */	bne lbl_8036B784
/* 8036B780  48 00 00 08 */	b lbl_8036B788
lbl_8036B784:
/* 8036B784  FC C0 30 50 */	fneg f6, f6
lbl_8036B788:
/* 8036B788  D8 D6 00 08 */	stfd f6, 8(r22)
/* 8036B78C  48 00 02 44 */	b lbl_8036B9D0
lbl_8036B790:
/* 8036B790  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8036B794  2C 1F 00 00 */	cmpwi r31, 0
/* 8036B798  7C A5 42 14 */	add r5, r5, r8
/* 8036B79C  7F E3 FB 78 */	mr r3, r31
/* 8036B7A0  7C A4 2B 78 */	mr r4, r5
/* 8036B7A4  40 81 00 B0 */	ble lbl_8036B854
/* 8036B7A8  57 E0 F0 BF */	rlwinm. r0, r31, 0x1e, 2, 0x1f
/* 8036B7AC  7C 09 03 A6 */	mtctr r0
/* 8036B7B0  41 82 00 80 */	beq lbl_8036B830
lbl_8036B7B4:
/* 8036B7B4  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B7B8  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B7BC  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B7C0  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B7C4  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B7C8  D8 04 00 00 */	stfd f0, 0(r4)
/* 8036B7CC  D8 44 FF F8 */	stfd f2, -8(r4)
/* 8036B7D0  C8 04 FF F0 */	lfd f0, -0x10(r4)
/* 8036B7D4  C8 24 FF F8 */	lfd f1, -8(r4)
/* 8036B7D8  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B7DC  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B7E0  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B7E4  D8 04 FF F8 */	stfd f0, -8(r4)
/* 8036B7E8  D8 44 FF F0 */	stfd f2, -0x10(r4)
/* 8036B7EC  C8 04 FF E8 */	lfd f0, -0x18(r4)
/* 8036B7F0  C8 24 FF F0 */	lfd f1, -0x10(r4)
/* 8036B7F4  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B7F8  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B7FC  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B800  D8 04 FF F0 */	stfd f0, -0x10(r4)
/* 8036B804  D8 44 FF E8 */	stfd f2, -0x18(r4)
/* 8036B808  C8 04 FF E0 */	lfd f0, -0x20(r4)
/* 8036B80C  C8 24 FF E8 */	lfd f1, -0x18(r4)
/* 8036B810  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B814  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B818  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B81C  D8 04 FF E8 */	stfd f0, -0x18(r4)
/* 8036B820  DC 44 FF E0 */	stfdu f2, -0x20(r4)
/* 8036B824  42 00 FF 90 */	bdnz lbl_8036B7B4
/* 8036B828  70 63 00 03 */	andi. r3, r3, 3
/* 8036B82C  41 82 00 28 */	beq lbl_8036B854
lbl_8036B830:
/* 8036B830  7C 69 03 A6 */	mtctr r3
lbl_8036B834:
/* 8036B834  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B838  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B83C  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B840  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B844  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B848  D8 04 00 00 */	stfd f0, 0(r4)
/* 8036B84C  DC 44 FF F8 */	stfdu f2, -8(r4)
/* 8036B850  42 00 FF E4 */	bdnz lbl_8036B834
lbl_8036B854:
/* 8036B854  2C 1F 00 01 */	cmpwi r31, 1
/* 8036B858  7C A4 2B 78 */	mr r4, r5
/* 8036B85C  38 7F FF FF */	addi r3, r31, -1
/* 8036B860  40 81 00 B0 */	ble lbl_8036B910
/* 8036B864  54 60 F0 BF */	rlwinm. r0, r3, 0x1e, 2, 0x1f
/* 8036B868  7C 09 03 A6 */	mtctr r0
/* 8036B86C  41 82 00 80 */	beq lbl_8036B8EC
lbl_8036B870:
/* 8036B870  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B874  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B878  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B87C  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B880  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B884  D8 04 00 00 */	stfd f0, 0(r4)
/* 8036B888  D8 44 FF F8 */	stfd f2, -8(r4)
/* 8036B88C  C8 04 FF F0 */	lfd f0, -0x10(r4)
/* 8036B890  C8 24 FF F8 */	lfd f1, -8(r4)
/* 8036B894  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B898  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B89C  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B8A0  D8 04 FF F8 */	stfd f0, -8(r4)
/* 8036B8A4  D8 44 FF F0 */	stfd f2, -0x10(r4)
/* 8036B8A8  C8 04 FF E8 */	lfd f0, -0x18(r4)
/* 8036B8AC  C8 24 FF F0 */	lfd f1, -0x10(r4)
/* 8036B8B0  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B8B4  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B8B8  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B8BC  D8 04 FF F0 */	stfd f0, -0x10(r4)
/* 8036B8C0  D8 44 FF E8 */	stfd f2, -0x18(r4)
/* 8036B8C4  C8 04 FF E0 */	lfd f0, -0x20(r4)
/* 8036B8C8  C8 24 FF E8 */	lfd f1, -0x18(r4)
/* 8036B8CC  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B8D0  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B8D4  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B8D8  D8 04 FF E8 */	stfd f0, -0x18(r4)
/* 8036B8DC  DC 44 FF E0 */	stfdu f2, -0x20(r4)
/* 8036B8E0  42 00 FF 90 */	bdnz lbl_8036B870
/* 8036B8E4  70 63 00 03 */	andi. r3, r3, 3
/* 8036B8E8  41 82 00 28 */	beq lbl_8036B910
lbl_8036B8EC:
/* 8036B8EC  7C 69 03 A6 */	mtctr r3
lbl_8036B8F0:
/* 8036B8F0  C8 04 FF F8 */	lfd f0, -8(r4)
/* 8036B8F4  C8 24 00 00 */	lfd f1, 0(r4)
/* 8036B8F8  FC 40 08 2A */	fadd f2, f0, f1
/* 8036B8FC  FC 00 10 28 */	fsub f0, f0, f2
/* 8036B900  FC 01 00 2A */	fadd f0, f1, f0
/* 8036B904  D8 04 00 00 */	stfd f0, 0(r4)
/* 8036B908  DC 44 FF F8 */	stfdu f2, -8(r4)
/* 8036B90C  42 00 FF E4 */	bdnz lbl_8036B8F0
lbl_8036B910:
/* 8036B910  2C 1F 00 02 */	cmpwi r31, 2
/* 8036B914  C8 62 D0 08 */	lfd f3, lit_436(r2)
/* 8036B918  38 7F FF FF */	addi r3, r31, -1
/* 8036B91C  41 80 00 74 */	blt lbl_8036B990
/* 8036B920  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 8036B924  7C 09 03 A6 */	mtctr r0
/* 8036B928  41 82 00 54 */	beq lbl_8036B97C
lbl_8036B92C:
/* 8036B92C  C8 05 00 00 */	lfd f0, 0(r5)
/* 8036B930  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B934  C8 05 FF F8 */	lfd f0, -8(r5)
/* 8036B938  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B93C  C8 05 FF F0 */	lfd f0, -0x10(r5)
/* 8036B940  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B944  C8 05 FF E8 */	lfd f0, -0x18(r5)
/* 8036B948  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B94C  C8 05 FF E0 */	lfd f0, -0x20(r5)
/* 8036B950  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B954  C8 05 FF D8 */	lfd f0, -0x28(r5)
/* 8036B958  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B95C  C8 05 FF D0 */	lfd f0, -0x30(r5)
/* 8036B960  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B964  C8 05 FF C8 */	lfd f0, -0x38(r5)
/* 8036B968  38 A5 FF C0 */	addi r5, r5, -64
/* 8036B96C  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B970  42 00 FF BC */	bdnz lbl_8036B92C
/* 8036B974  70 63 00 07 */	andi. r3, r3, 7
/* 8036B978  41 82 00 18 */	beq lbl_8036B990
lbl_8036B97C:
/* 8036B97C  7C 69 03 A6 */	mtctr r3
lbl_8036B980:
/* 8036B980  C8 05 00 00 */	lfd f0, 0(r5)
/* 8036B984  38 A5 FF F8 */	addi r5, r5, -8
/* 8036B988  FC 63 00 2A */	fadd f3, f3, f0
/* 8036B98C  42 00 FF F4 */	bdnz lbl_8036B980
lbl_8036B990:
/* 8036B990  2C 19 00 00 */	cmpwi r25, 0
/* 8036B994  40 82 00 1C */	bne lbl_8036B9B0
/* 8036B998  C8 21 00 F8 */	lfd f1, 0xf8(r1)
/* 8036B99C  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 8036B9A0  D8 36 00 00 */	stfd f1, 0(r22)
/* 8036B9A4  D8 16 00 08 */	stfd f0, 8(r22)
/* 8036B9A8  D8 76 00 10 */	stfd f3, 0x10(r22)
/* 8036B9AC  48 00 00 24 */	b lbl_8036B9D0
lbl_8036B9B0:
/* 8036B9B0  C8 41 00 F8 */	lfd f2, 0xf8(r1)
/* 8036B9B4  FC 00 18 50 */	fneg f0, f3
/* 8036B9B8  C8 21 01 00 */	lfd f1, 0x100(r1)
/* 8036B9BC  FC 40 10 50 */	fneg f2, f2
/* 8036B9C0  FC 20 08 50 */	fneg f1, f1
/* 8036B9C4  D8 56 00 00 */	stfd f2, 0(r22)
/* 8036B9C8  D8 36 00 08 */	stfd f1, 8(r22)
/* 8036B9CC  D8 16 00 10 */	stfd f0, 0x10(r22)
lbl_8036B9D0:
/* 8036B9D0  57 63 07 7E */	clrlwi r3, r27, 0x1d
/* 8036B9D4  39 61 02 D0 */	addi r11, r1, 0x2d0
/* 8036B9D8  4B FF 67 A9 */	bl _restfpr_25
/* 8036B9DC  BA 01 02 58 */	lmw r16, 0x258(r1)
/* 8036B9E0  80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 8036B9E4  7C 08 03 A6 */	mtlr r0
/* 8036B9E8  38 21 02 D0 */	addi r1, r1, 0x2d0
/* 8036B9EC  4E 80 00 20 */	blr 
