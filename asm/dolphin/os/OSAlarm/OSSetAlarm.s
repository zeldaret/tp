lbl_8033AB58:
/* 8033AB58  7C 08 02 A6 */	mflr r0
/* 8033AB5C  90 01 00 04 */	stw r0, 4(r1)
/* 8033AB60  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8033AB64  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8033AB68  3B 63 00 00 */	addi r27, r3, 0
/* 8033AB6C  3B A5 00 00 */	addi r29, r5, 0
/* 8033AB70  3B 86 00 00 */	addi r28, r6, 0
/* 8033AB74  3B C7 00 00 */	addi r30, r7, 0
/* 8033AB78  48 00 2B 7D */	bl OSDisableInterrupts
/* 8033AB7C  38 00 00 00 */	li r0, 0
/* 8033AB80  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 8033AB84  7C 7F 1B 78 */	mr r31, r3
/* 8033AB88  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8033AB8C  48 00 7B 91 */	bl __OSGetSystemTime
/* 8033AB90  7C DC 20 14 */	addc r6, r28, r4
/* 8033AB94  7C BD 19 14 */	adde r5, r29, r3
/* 8033AB98  38 7B 00 00 */	addi r3, r27, 0
/* 8033AB9C  38 FE 00 00 */	addi r7, r30, 0
/* 8033ABA0  4B FF FD 69 */	bl InsertAlarm
/* 8033ABA4  7F E3 FB 78 */	mr r3, r31
/* 8033ABA8  48 00 2B 75 */	bl OSRestoreInterrupts
/* 8033ABAC  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8033ABB0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8033ABB4  38 21 00 38 */	addi r1, r1, 0x38
/* 8033ABB8  7C 08 03 A6 */	mtlr r0
/* 8033ABBC  4E 80 00 20 */	blr 
