lbl_8033AD58:
/* 8033AD58  7C 08 02 A6 */	mflr r0
/* 8033AD5C  90 01 00 04 */	stw r0, 4(r1)
/* 8033AD60  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 8033AD64  93 E1 02 EC */	stw r31, 0x2ec(r1)
/* 8033AD68  93 C1 02 E8 */	stw r30, 0x2e8(r1)
/* 8033AD6C  93 A1 02 E4 */	stw r29, 0x2e4(r1)
/* 8033AD70  7C 9D 23 78 */	mr r29, r4
/* 8033AD74  93 81 02 E0 */	stw r28, 0x2e0(r1)
/* 8033AD78  48 00 79 A5 */	bl __OSGetSystemTime
/* 8033AD7C  80 0D 90 B8 */	lwz r0, AlarmQueue(r13)
/* 8033AD80  3B 84 00 00 */	addi r28, r4, 0
/* 8033AD84  3B C3 00 00 */	addi r30, r3, 0
/* 8033AD88  28 00 00 00 */	cmplwi r0, 0
/* 8033AD8C  7C 1F 03 78 */	mr r31, r0
/* 8033AD90  40 82 00 0C */	bne lbl_8033AD9C
/* 8033AD94  7F A3 EB 78 */	mr r3, r29
/* 8033AD98  48 00 11 89 */	bl OSLoadContext
lbl_8033AD9C:
/* 8033AD9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033ADA0  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 8033ADA4  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8033ADA8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033ADAC  7C 05 E0 10 */	subfc r0, r5, r28
/* 8033ADB0  7C 63 21 10 */	subfe r3, r3, r4
/* 8033ADB4  7C 64 21 10 */	subfe r3, r4, r4
/* 8033ADB8  7C 63 00 D1 */	neg. r3, r3
/* 8033ADBC  41 82 00 7C */	beq lbl_8033AE38
/* 8033ADC0  48 00 79 5D */	bl __OSGetSystemTime
/* 8033ADC4  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8033ADC8  38 E0 00 00 */	li r7, 0
/* 8033ADCC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033ADD0  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033ADD4  7D 04 30 10 */	subfc r8, r4, r6
/* 8033ADD8  7C 03 01 10 */	subfe r0, r3, r0
/* 8033ADDC  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033ADE0  7C 07 40 10 */	subfc r0, r7, r8
/* 8033ADE4  7C A5 31 10 */	subfe r5, r5, r6
/* 8033ADE8  7C A6 31 10 */	subfe r5, r6, r6
/* 8033ADEC  7C A5 00 D1 */	neg. r5, r5
/* 8033ADF0  41 82 00 10 */	beq lbl_8033AE00
/* 8033ADF4  38 60 00 00 */	li r3, 0
/* 8033ADF8  4B FF EE F9 */	bl PPCMtdec
/* 8033ADFC  48 00 00 34 */	b lbl_8033AE30
lbl_8033AE00:
/* 8033AE00  3C 80 80 00 */	lis r4, 0x8000
/* 8033AE04  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AE08  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AE0C  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AE10  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AE14  7C 63 00 D1 */	neg. r3, r3
/* 8033AE18  41 82 00 10 */	beq lbl_8033AE28
/* 8033AE1C  7D 03 43 78 */	mr r3, r8
/* 8033AE20  4B FF EE D1 */	bl PPCMtdec
/* 8033AE24  48 00 00 0C */	b lbl_8033AE30
lbl_8033AE28:
/* 8033AE28  38 64 FF FF */	addi r3, r4, -1
/* 8033AE2C  4B FF EE C5 */	bl PPCMtdec
lbl_8033AE30:
/* 8033AE30  7F A3 EB 78 */	mr r3, r29
/* 8033AE34  48 00 10 ED */	bl OSLoadContext
lbl_8033AE38:
/* 8033AE38  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8033AE3C  28 03 00 00 */	cmplwi r3, 0
/* 8033AE40  90 6D 90 B8 */	stw r3, AlarmQueue(r13)
/* 8033AE44  40 82 00 14 */	bne lbl_8033AE58
/* 8033AE48  38 00 00 00 */	li r0, 0
/* 8033AE4C  38 6D 90 B8 */	la r3, AlarmQueue(r13) /* 80451638-_SDA_BASE_ */
/* 8033AE50  90 03 00 04 */	stw r0, 4(r3)
/* 8033AE54  48 00 00 0C */	b lbl_8033AE60
lbl_8033AE58:
/* 8033AE58  38 00 00 00 */	li r0, 0
/* 8033AE5C  90 03 00 10 */	stw r0, 0x10(r3)
lbl_8033AE60:
/* 8033AE60  83 DF 00 00 */	lwz r30, 0(r31)
/* 8033AE64  38 C0 00 00 */	li r6, 0
/* 8033AE68  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8033AE6C  90 DF 00 00 */	stw r6, 0(r31)
/* 8033AE70  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033AE74  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 8033AE78  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033AE7C  7C 05 30 10 */	subfc r0, r5, r6
/* 8033AE80  7C 63 21 10 */	subfe r3, r3, r4
/* 8033AE84  7C 64 21 10 */	subfe r3, r4, r4
/* 8033AE88  7C 63 00 D1 */	neg. r3, r3
/* 8033AE8C  41 82 00 18 */	beq lbl_8033AEA4
/* 8033AE90  38 7F 00 00 */	addi r3, r31, 0
/* 8033AE94  38 FE 00 00 */	addi r7, r30, 0
/* 8033AE98  38 C0 00 00 */	li r6, 0
/* 8033AE9C  38 A0 00 00 */	li r5, 0
/* 8033AEA0  4B FF FA 69 */	bl InsertAlarm
lbl_8033AEA4:
/* 8033AEA4  83 8D 90 B8 */	lwz r28, AlarmQueue(r13)
/* 8033AEA8  28 1C 00 00 */	cmplwi r28, 0
/* 8033AEAC  41 82 00 74 */	beq lbl_8033AF20
/* 8033AEB0  48 00 78 6D */	bl __OSGetSystemTime
/* 8033AEB4  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 8033AEB8  38 E0 00 00 */	li r7, 0
/* 8033AEBC  80 1C 00 08 */	lwz r0, 8(r28)
/* 8033AEC0  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033AEC4  7D 04 30 10 */	subfc r8, r4, r6
/* 8033AEC8  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AECC  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AED0  7C 07 40 10 */	subfc r0, r7, r8
/* 8033AED4  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AED8  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AEDC  7C A5 00 D1 */	neg. r5, r5
/* 8033AEE0  41 82 00 10 */	beq lbl_8033AEF0
/* 8033AEE4  38 60 00 00 */	li r3, 0
/* 8033AEE8  4B FF EE 09 */	bl PPCMtdec
/* 8033AEEC  48 00 00 34 */	b lbl_8033AF20
lbl_8033AEF0:
/* 8033AEF0  3C 80 80 00 */	lis r4, 0x8000
/* 8033AEF4  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AEF8  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AEFC  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AF00  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AF04  7C 63 00 D1 */	neg. r3, r3
/* 8033AF08  41 82 00 10 */	beq lbl_8033AF18
/* 8033AF0C  7D 03 43 78 */	mr r3, r8
/* 8033AF10  4B FF ED E1 */	bl PPCMtdec
/* 8033AF14  48 00 00 0C */	b lbl_8033AF20
lbl_8033AF18:
/* 8033AF18  38 64 FF FF */	addi r3, r4, -1
/* 8033AF1C  4B FF ED D5 */	bl PPCMtdec
lbl_8033AF20:
/* 8033AF20  48 00 5D A5 */	bl OSDisableScheduler
/* 8033AF24  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF28  48 00 10 D9 */	bl OSClearContext
/* 8033AF2C  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF30  48 00 0F 09 */	bl OSSetCurrentContext
/* 8033AF34  39 9E 00 00 */	addi r12, r30, 0
/* 8033AF38  7D 88 03 A6 */	mtlr r12
/* 8033AF3C  38 7F 00 00 */	addi r3, r31, 0
/* 8033AF40  38 9D 00 00 */	addi r4, r29, 0
/* 8033AF44  4E 80 00 21 */	blrl 
/* 8033AF48  38 61 00 18 */	addi r3, r1, 0x18
/* 8033AF4C  48 00 10 B5 */	bl OSClearContext
/* 8033AF50  7F A3 EB 78 */	mr r3, r29
/* 8033AF54  48 00 0E E5 */	bl OSSetCurrentContext
/* 8033AF58  48 00 5D AD */	bl OSEnableScheduler
/* 8033AF5C  48 00 62 C5 */	bl __OSReschedule
/* 8033AF60  7F A3 EB 78 */	mr r3, r29
/* 8033AF64  48 00 0F BD */	bl OSLoadContext
/* 8033AF68  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 8033AF6C  83 E1 02 EC */	lwz r31, 0x2ec(r1)
/* 8033AF70  83 C1 02 E8 */	lwz r30, 0x2e8(r1)
/* 8033AF74  83 A1 02 E4 */	lwz r29, 0x2e4(r1)
/* 8033AF78  83 81 02 E0 */	lwz r28, 0x2e0(r1)
/* 8033AF7C  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 8033AF80  7C 08 03 A6 */	mtlr r0
/* 8033AF84  4E 80 00 20 */	blr 
