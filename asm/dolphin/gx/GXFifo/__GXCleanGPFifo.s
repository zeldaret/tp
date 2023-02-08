lbl_8035AD54:
/* 8035AD54  7C 08 02 A6 */	mflr r0
/* 8035AD58  90 01 00 04 */	stw r0, 4(r1)
/* 8035AD5C  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 8035AD60  93 E1 00 A4 */	stw r31, 0xa4(r1)
/* 8035AD64  93 C1 00 A0 */	stw r30, 0xa0(r1)
/* 8035AD68  93 A1 00 9C */	stw r29, 0x9c(r1)
/* 8035AD6C  48 00 01 45 */	bl GXGetGPFifo
/* 8035AD70  7C 7F 1B 79 */	or. r31, r3, r3
/* 8035AD74  41 82 00 C4 */	beq lbl_8035AE38
/* 8035AD78  48 00 01 31 */	bl GXGetCPUFifo
/* 8035AD7C  38 00 00 10 */	li r0, 0x10
/* 8035AD80  83 BF 00 00 */	lwz r29, 0(r31)
/* 8035AD84  7C 09 03 A6 */	mtctr r0
/* 8035AD88  3B C3 00 00 */	addi r30, r3, 0
/* 8035AD8C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8035AD90  38 9F FF F8 */	addi r4, r31, -8
lbl_8035AD94:
/* 8035AD94  84 64 00 08 */	lwzu r3, 8(r4)
/* 8035AD98  80 04 00 04 */	lwz r0, 4(r4)
/* 8035AD9C  94 65 00 08 */	stwu r3, 8(r5)
/* 8035ADA0  90 05 00 04 */	stw r0, 4(r5)
/* 8035ADA4  42 00 FF F0 */	bdnz lbl_8035AD94
/* 8035ADA8  4B FE 29 4D */	bl OSDisableInterrupts
/* 8035ADAC  93 A1 00 28 */	stw r29, 0x28(r1)
/* 8035ADB0  38 00 00 00 */	li r0, 0
/* 8035ADB4  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8035ADB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8035ADBC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8035ADC0  2C 04 00 00 */	cmpwi r4, 0
/* 8035ADC4  40 80 00 10 */	bge lbl_8035ADD4
/* 8035ADC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035ADCC  7C 04 02 14 */	add r0, r4, r0
/* 8035ADD0  90 01 00 30 */	stw r0, 0x30(r1)
lbl_8035ADD4:
/* 8035ADD4  4B FE 29 49 */	bl OSRestoreInterrupts
/* 8035ADD8  38 61 00 14 */	addi r3, r1, 0x14
/* 8035ADDC  4B FF FB 11 */	bl GXSetGPFifo
/* 8035ADE0  7C 1E F8 40 */	cmplw r30, r31
/* 8035ADE4  40 82 00 0C */	bne lbl_8035ADF0
/* 8035ADE8  38 61 00 14 */	addi r3, r1, 0x14
/* 8035ADEC  4B FF F9 D9 */	bl GXSetCPUFifo
lbl_8035ADF0:
/* 8035ADF0  4B FE 29 05 */	bl OSDisableInterrupts
/* 8035ADF4  93 BF 00 14 */	stw r29, 0x14(r31)
/* 8035ADF8  38 00 00 00 */	li r0, 0
/* 8035ADFC  93 BF 00 18 */	stw r29, 0x18(r31)
/* 8035AE00  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8035AE04  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8035AE08  2C 04 00 00 */	cmpwi r4, 0
/* 8035AE0C  40 80 00 10 */	bge lbl_8035AE1C
/* 8035AE10  80 1F 00 08 */	lwz r0, 8(r31)
/* 8035AE14  7C 04 02 14 */	add r0, r4, r0
/* 8035AE18  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8035AE1C:
/* 8035AE1C  4B FE 29 01 */	bl OSRestoreInterrupts
/* 8035AE20  7F E3 FB 78 */	mr r3, r31
/* 8035AE24  4B FF FA C9 */	bl GXSetGPFifo
/* 8035AE28  7C 1E F8 40 */	cmplw r30, r31
/* 8035AE2C  40 82 00 0C */	bne lbl_8035AE38
/* 8035AE30  7F C3 F3 78 */	mr r3, r30
/* 8035AE34  4B FF F9 91 */	bl GXSetCPUFifo
lbl_8035AE38:
/* 8035AE38  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8035AE3C  83 E1 00 A4 */	lwz r31, 0xa4(r1)
/* 8035AE40  83 C1 00 A0 */	lwz r30, 0xa0(r1)
/* 8035AE44  83 A1 00 9C */	lwz r29, 0x9c(r1)
/* 8035AE48  38 21 00 A8 */	addi r1, r1, 0xa8
/* 8035AE4C  7C 08 03 A6 */	mtlr r0
/* 8035AE50  4E 80 00 20 */	blr 
