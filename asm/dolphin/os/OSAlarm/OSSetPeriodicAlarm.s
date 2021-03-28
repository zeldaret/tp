lbl_8033ABC0:
/* 8033ABC0  7C 08 02 A6 */	mflr r0
/* 8033ABC4  90 01 00 04 */	stw r0, 4(r1)
/* 8033ABC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033ABCC  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 8033ABD0  3B 43 00 00 */	addi r26, r3, 0
/* 8033ABD4  3B 85 00 00 */	addi r28, r5, 0
/* 8033ABD8  3B 66 00 00 */	addi r27, r6, 0
/* 8033ABDC  3B A7 00 00 */	addi r29, r7, 0
/* 8033ABE0  3B E8 00 00 */	addi r31, r8, 0
/* 8033ABE4  3B C9 00 00 */	addi r30, r9, 0
/* 8033ABE8  48 00 2B 0D */	bl OSDisableInterrupts
/* 8033ABEC  93 FA 00 1C */	stw r31, 0x1c(r26)
/* 8033ABF0  7C 7F 1B 78 */	mr r31, r3
/* 8033ABF4  38 9B 00 00 */	addi r4, r27, 0
/* 8033ABF8  93 BA 00 18 */	stw r29, 0x18(r26)
/* 8033ABFC  38 7C 00 00 */	addi r3, r28, 0
/* 8033AC00  48 00 7B 81 */	bl __OSTimeToSystemTime
/* 8033AC04  90 9A 00 24 */	stw r4, 0x24(r26)
/* 8033AC08  38 FE 00 00 */	addi r7, r30, 0
/* 8033AC0C  38 C0 00 00 */	li r6, 0
/* 8033AC10  90 7A 00 20 */	stw r3, 0x20(r26)
/* 8033AC14  38 7A 00 00 */	addi r3, r26, 0
/* 8033AC18  38 A0 00 00 */	li r5, 0
/* 8033AC1C  4B FF FC ED */	bl InsertAlarm
/* 8033AC20  7F E3 FB 78 */	mr r3, r31
/* 8033AC24  48 00 2A F9 */	bl OSRestoreInterrupts
/* 8033AC28  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 8033AC2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033AC30  38 21 00 40 */	addi r1, r1, 0x40
/* 8033AC34  7C 08 03 A6 */	mtlr r0
/* 8033AC38  4E 80 00 20 */	blr 
