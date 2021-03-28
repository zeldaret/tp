lbl_8034ED50:
/* 8034ED50  7C 08 02 A6 */	mflr r0
/* 8034ED54  3C 60 80 45 */	lis r3, Type@ha
/* 8034ED58  90 01 00 04 */	stw r0, 4(r1)
/* 8034ED5C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8034ED60  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 8034ED64  3B E3 CB 70 */	addi r31, r3, Type@l
/* 8034ED68  80 0D 92 C8 */	lwz r0, Initialized(r13)
/* 8034ED6C  2C 00 00 00 */	cmpwi r0, 0
/* 8034ED70  41 82 00 0C */	beq lbl_8034ED7C
/* 8034ED74  38 60 00 01 */	li r3, 1
/* 8034ED78  48 00 01 14 */	b lbl_8034EE8C
lbl_8034ED7C:
/* 8034ED7C  80 6D 84 A0 */	lwz r3, __PADVersion(r13)
/* 8034ED80  4B FE BA F5 */	bl OSRegisterVersion
/* 8034ED84  80 6D 92 F0 */	lwz r3, __PADSpec(r13)
/* 8034ED88  28 03 00 00 */	cmplwi r3, 0
/* 8034ED8C  41 82 00 08 */	beq lbl_8034ED94
/* 8034ED90  48 00 04 C9 */	bl PADSetSpec
lbl_8034ED94:
/* 8034ED94  80 0D 91 78 */	lwz r0, __PADFixBits(r13)
/* 8034ED98  38 60 00 01 */	li r3, 1
/* 8034ED9C  90 6D 92 C8 */	stw r3, Initialized(r13)
/* 8034EDA0  28 00 00 00 */	cmplwi r0, 0
/* 8034EDA4  41 82 00 8C */	beq lbl_8034EE30
/* 8034EDA8  4B FF 39 55 */	bl OSGetTime
/* 8034EDAC  3B 24 00 00 */	addi r25, r4, 0
/* 8034EDB0  3B 43 00 00 */	addi r26, r3, 0
/* 8034EDB4  38 A0 00 10 */	li r5, 0x10
/* 8034EDB8  48 01 38 DD */	bl __shr2i
/* 8034EDBC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8034EDC0  3B 65 FF FF */	addi r27, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8034EDC4  3B 80 00 00 */	li r28, 0
/* 8034EDC8  7C 86 D8 38 */	and r6, r4, r27
/* 8034EDCC  7F 24 D8 38 */	and r4, r25, r27
/* 8034EDD0  7C 65 E0 38 */	and r5, r3, r28
/* 8034EDD4  7F 40 E0 38 */	and r0, r26, r28
/* 8034EDD8  7F A4 30 14 */	addc r29, r4, r6
/* 8034EDDC  38 7A 00 00 */	addi r3, r26, 0
/* 8034EDE0  38 99 00 00 */	addi r4, r25, 0
/* 8034EDE4  7F C0 29 14 */	adde r30, r0, r5
/* 8034EDE8  38 A0 00 20 */	li r5, 0x20
/* 8034EDEC  48 01 38 A9 */	bl __shr2i
/* 8034EDF0  7C 84 D8 38 */	and r4, r4, r27
/* 8034EDF4  7C 60 E0 38 */	and r0, r3, r28
/* 8034EDF8  7F A4 E8 14 */	addc r29, r4, r29
/* 8034EDFC  38 7A 00 00 */	addi r3, r26, 0
/* 8034EE00  38 99 00 00 */	addi r4, r25, 0
/* 8034EE04  7F C0 F1 14 */	adde r30, r0, r30
/* 8034EE08  38 A0 00 30 */	li r5, 0x30
/* 8034EE0C  48 01 38 89 */	bl __shr2i
/* 8034EE10  7C 80 D8 38 */	and r0, r4, r27
/* 8034EE14  7C A0 E8 14 */	addc r5, r0, r29
/* 8034EE18  3C 00 F0 00 */	lis r0, 0xf000
/* 8034EE1C  38 80 3F FF */	li r4, 0x3fff
/* 8034EE20  90 0D 92 D4 */	stw r0, RecalibrateBits(r13)
/* 8034EE24  7C A0 20 38 */	and r0, r5, r4
/* 8034EE28  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E0@ha */
/* 8034EE2C  B0 03 30 E0 */	sth r0, 0x30E0(r3)
lbl_8034EE30:
/* 8034EE30  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E0@ha */
/* 8034EE34  A0 03 30 E0 */	lhz r0, 0x30E0(r3)
/* 8034EE38  54 00 42 AE */	rlwinm r0, r0, 8, 0xa, 0x17
/* 8034EE3C  64 00 4D 00 */	oris r0, r0, 0x4d00
/* 8034EE40  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8034EE44  A0 03 30 E0 */	lhz r0, 0x30e0(r3)
/* 8034EE48  54 00 42 AE */	rlwinm r0, r0, 8, 0xa, 0x17
/* 8034EE4C  64 00 4D 40 */	oris r0, r0, 0x4d40
/* 8034EE50  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8034EE54  A0 03 30 E0 */	lhz r0, 0x30e0(r3)
/* 8034EE58  54 00 42 AE */	rlwinm r0, r0, 8, 0xa, 0x17
/* 8034EE5C  64 00 4D 80 */	oris r0, r0, 0x4d80
/* 8034EE60  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8034EE64  A0 03 30 E0 */	lhz r0, 0x30e0(r3)
/* 8034EE68  54 00 42 AE */	rlwinm r0, r0, 8, 0xa, 0x17
/* 8034EE6C  64 00 4D C0 */	oris r0, r0, 0x4dc0
/* 8034EE70  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8034EE74  4B FF 75 01 */	bl SIRefreshSamplingRate
/* 8034EE78  3C 60 80 3D */	lis r3, ResetFunctionInfo@ha
/* 8034EE7C  38 63 1B 90 */	addi r3, r3, ResetFunctionInfo@l
/* 8034EE80  4B FF 07 E1 */	bl OSRegisterResetFunction
/* 8034EE84  3C 60 F0 00 */	lis r3, 0xf000
/* 8034EE88  4B FF FC A5 */	bl PADReset
lbl_8034EE8C:
/* 8034EE8C  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 8034EE90  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8034EE94  38 21 00 38 */	addi r1, r1, 0x38
/* 8034EE98  7C 08 03 A6 */	mtlr r0
/* 8034EE9C  4E 80 00 20 */	blr 
