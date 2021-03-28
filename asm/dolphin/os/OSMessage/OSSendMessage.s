lbl_8033E9F4:
/* 8033E9F4  7C 08 02 A6 */	mflr r0
/* 8033E9F8  90 01 00 04 */	stw r0, 4(r1)
/* 8033E9FC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EA00  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EA04  3B E5 00 00 */	addi r31, r5, 0
/* 8033EA08  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EA0C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EA10  3B A4 00 00 */	addi r29, r4, 0
/* 8033EA14  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EA18  3B 83 00 00 */	addi r28, r3, 0
/* 8033EA1C  4B FF EC D9 */	bl OSDisableInterrupts
/* 8033EA20  3B C3 00 00 */	addi r30, r3, 0
/* 8033EA24  57 FF 07 FE */	clrlwi r31, r31, 0x1f
/* 8033EA28  48 00 00 24 */	b lbl_8033EA4C
lbl_8033EA2C:
/* 8033EA2C  2C 1F 00 00 */	cmpwi r31, 0
/* 8033EA30  40 82 00 14 */	bne lbl_8033EA44
/* 8033EA34  7F C3 F3 78 */	mr r3, r30
/* 8033EA38  4B FF EC E5 */	bl OSRestoreInterrupts
/* 8033EA3C  38 60 00 00 */	li r3, 0
/* 8033EA40  48 00 00 5C */	b lbl_8033EA9C
lbl_8033EA44:
/* 8033EA44  7F 83 E3 78 */	mr r3, r28
/* 8033EA48  48 00 31 65 */	bl OSSleepThread
lbl_8033EA4C:
/* 8033EA4C  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 8033EA50  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8033EA54  7C 06 20 00 */	cmpw r6, r4
/* 8033EA58  40 81 FF D4 */	ble lbl_8033EA2C
/* 8033EA5C  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8033EA60  38 7C 00 08 */	addi r3, r28, 8
/* 8033EA64  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8033EA68  7C 80 22 14 */	add r4, r0, r4
/* 8033EA6C  7C 04 33 D6 */	divw r0, r4, r6
/* 8033EA70  7C 00 31 D6 */	mullw r0, r0, r6
/* 8033EA74  7C 00 20 50 */	subf r0, r0, r4
/* 8033EA78  54 00 10 3A */	slwi r0, r0, 2
/* 8033EA7C  7F A5 01 2E */	stwx r29, r5, r0
/* 8033EA80  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8033EA84  38 04 00 01 */	addi r0, r4, 1
/* 8033EA88  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 8033EA8C  48 00 32 0D */	bl OSWakeupThread
/* 8033EA90  7F C3 F3 78 */	mr r3, r30
/* 8033EA94  4B FF EC 89 */	bl OSRestoreInterrupts
/* 8033EA98  38 60 00 01 */	li r3, 1
lbl_8033EA9C:
/* 8033EA9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EAA0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EAA4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EAA8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EAAC  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EAB0  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EAB4  7C 08 03 A6 */	mtlr r0
/* 8033EAB8  4E 80 00 20 */	blr 
