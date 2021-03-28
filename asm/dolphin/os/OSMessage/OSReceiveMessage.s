lbl_8033EABC:
/* 8033EABC  7C 08 02 A6 */	mflr r0
/* 8033EAC0  90 01 00 04 */	stw r0, 4(r1)
/* 8033EAC4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EAC8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EACC  3B E3 00 00 */	addi r31, r3, 0
/* 8033EAD0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EAD4  3B C5 00 00 */	addi r30, r5, 0
/* 8033EAD8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EADC  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EAE0  3B 84 00 00 */	addi r28, r4, 0
/* 8033EAE4  4B FF EC 11 */	bl OSDisableInterrupts
/* 8033EAE8  3B A3 00 00 */	addi r29, r3, 0
/* 8033EAEC  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 8033EAF0  48 00 00 24 */	b lbl_8033EB14
lbl_8033EAF4:
/* 8033EAF4  2C 1E 00 00 */	cmpwi r30, 0
/* 8033EAF8  40 82 00 14 */	bne lbl_8033EB0C
/* 8033EAFC  7F A3 EB 78 */	mr r3, r29
/* 8033EB00  4B FF EC 1D */	bl OSRestoreInterrupts
/* 8033EB04  38 60 00 00 */	li r3, 0
/* 8033EB08  48 00 00 70 */	b lbl_8033EB78
lbl_8033EB0C:
/* 8033EB0C  38 7F 00 08 */	addi r3, r31, 8
/* 8033EB10  48 00 30 9D */	bl OSSleepThread
lbl_8033EB14:
/* 8033EB14  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8033EB18  2C 00 00 00 */	cmpwi r0, 0
/* 8033EB1C  41 82 FF D8 */	beq lbl_8033EAF4
/* 8033EB20  28 1C 00 00 */	cmplwi r28, 0
/* 8033EB24  41 82 00 18 */	beq lbl_8033EB3C
/* 8033EB28  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033EB2C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8033EB30  54 00 10 3A */	slwi r0, r0, 2
/* 8033EB34  7C 03 00 2E */	lwzx r0, r3, r0
/* 8033EB38  90 1C 00 00 */	stw r0, 0(r28)
lbl_8033EB3C:
/* 8033EB3C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8033EB40  7F E3 FB 78 */	mr r3, r31
/* 8033EB44  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8033EB48  38 A5 00 01 */	addi r5, r5, 1
/* 8033EB4C  7C 05 23 D6 */	divw r0, r5, r4
/* 8033EB50  7C 00 21 D6 */	mullw r0, r0, r4
/* 8033EB54  7C 00 28 50 */	subf r0, r0, r5
/* 8033EB58  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033EB5C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8033EB60  38 04 FF FF */	addi r0, r4, -1
/* 8033EB64  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8033EB68  48 00 31 31 */	bl OSWakeupThread
/* 8033EB6C  7F A3 EB 78 */	mr r3, r29
/* 8033EB70  4B FF EB AD */	bl OSRestoreInterrupts
/* 8033EB74  38 60 00 01 */	li r3, 1
lbl_8033EB78:
/* 8033EB78  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EB7C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EB80  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EB84  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EB88  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EB8C  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EB90  7C 08 03 A6 */	mtlr r0
/* 8033EB94  4E 80 00 20 */	blr 
