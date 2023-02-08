lbl_8036F4B0:
/* 8036F4B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036F4B4  7C 08 02 A6 */	mflr r0
/* 8036F4B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036F4BC  38 81 00 08 */	addi r4, r1, 8
/* 8036F4C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036F4C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036F4C8  7C 7E 1B 78 */	mr r30, r3
/* 8036F4CC  38 61 00 0C */	addi r3, r1, 0xc
/* 8036F4D0  4B FF E2 4D */	bl TRKGetFreeBuffer
/* 8036F4D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036F4D8  40 82 00 54 */	bne lbl_8036F52C
/* 8036F4DC  40 82 00 20 */	bne lbl_8036F4FC
/* 8036F4E0  2C 1E 00 90 */	cmpwi r30, 0x90
/* 8036F4E4  40 82 00 10 */	bne lbl_8036F4F4
/* 8036F4E8  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F4EC  48 00 0A 2D */	bl TRKTargetAddStopInfo
/* 8036F4F0  48 00 00 0C */	b lbl_8036F4FC
lbl_8036F4F4:
/* 8036F4F4  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F4F8  48 00 09 9D */	bl TRKTargetAddExceptionInfo
lbl_8036F4FC:
/* 8036F4FC  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F500  38 81 00 10 */	addi r4, r1, 0x10
/* 8036F504  38 A0 00 02 */	li r5, 2
/* 8036F508  38 C0 00 03 */	li r6, 3
/* 8036F50C  38 E0 00 01 */	li r7, 1
/* 8036F510  4B FF FB 89 */	bl TRKRequestSend
/* 8036F514  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036F518  40 82 00 0C */	bne lbl_8036F524
/* 8036F51C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036F520  4B FF E1 6D */	bl TRKReleaseBuffer
lbl_8036F524:
/* 8036F524  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036F528  4B FF E1 65 */	bl TRKReleaseBuffer
lbl_8036F52C:
/* 8036F52C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036F530  7F E3 FB 78 */	mr r3, r31
/* 8036F534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036F538  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036F53C  7C 08 03 A6 */	mtlr r0
/* 8036F540  38 21 00 20 */	addi r1, r1, 0x20
/* 8036F544  4E 80 00 20 */	blr 
