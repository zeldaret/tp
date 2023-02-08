lbl_8036EF7C:
/* 8036EF7C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8036EF80  7C 08 02 A6 */	mflr r0
/* 8036EF84  90 01 00 74 */	stw r0, 0x74(r1)
/* 8036EF88  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 8036EF8C  7C 7B 1B 78 */	mr r27, r3
/* 8036EF90  7C 9F 23 78 */	mr r31, r4
/* 8036EF94  7C BC 2B 78 */	mr r28, r5
/* 8036EF98  7C DD 33 78 */	mr r29, r6
/* 8036EF9C  38 61 00 14 */	addi r3, r1, 0x14
/* 8036EFA0  38 80 00 00 */	li r4, 0
/* 8036EFA4  38 A0 00 40 */	li r5, 0x40
/* 8036EFA8  4B C9 44 B1 */	bl memset
/* 8036EFAC  38 60 00 00 */	li r3, 0
/* 8036EFB0  38 00 00 D2 */	li r0, 0xd2
/* 8036EFB4  90 7C 00 00 */	stw r3, 0(r28)
/* 8036EFB8  7F 63 DB 78 */	mr r3, r27
/* 8036EFBC  98 01 00 18 */	stb r0, 0x18(r1)
/* 8036EFC0  4B FF 9C 25 */	bl strlen
/* 8036EFC4  38 03 00 41 */	addi r0, r3, 0x41
/* 8036EFC8  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 8036EFCC  7F 63 DB 78 */	mr r3, r27
/* 8036EFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036EFD4  4B FF 9C 11 */	bl strlen
/* 8036EFD8  38 03 00 01 */	addi r0, r3, 1
/* 8036EFDC  38 61 00 0C */	addi r3, r1, 0xc
/* 8036EFE0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8036EFE4  38 81 00 08 */	addi r4, r1, 8
/* 8036EFE8  4B FF E7 35 */	bl TRKGetFreeBuffer
/* 8036EFEC  80 61 00 08 */	lwz r3, 8(r1)
/* 8036EFF0  38 81 00 14 */	addi r4, r1, 0x14
/* 8036EFF4  38 A0 00 40 */	li r5, 0x40
/* 8036EFF8  4B FF E3 91 */	bl TRKAppendBuffer_ui8
/* 8036EFFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036F000  40 82 00 24 */	bne lbl_8036F024
/* 8036F004  7F 63 DB 78 */	mr r3, r27
/* 8036F008  4B FF 9B DD */	bl strlen
/* 8036F00C  7C 65 1B 78 */	mr r5, r3
/* 8036F010  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F014  7F 64 DB 78 */	mr r4, r27
/* 8036F018  38 A5 00 01 */	addi r5, r5, 1
/* 8036F01C  4B FF E3 6D */	bl TRKAppendBuffer_ui8
/* 8036F020  7C 7F 1B 78 */	mr r31, r3
lbl_8036F024:
/* 8036F024  2C 1F 00 00 */	cmpwi r31, 0
/* 8036F028  40 82 00 50 */	bne lbl_8036F078
/* 8036F02C  38 00 00 00 */	li r0, 0
/* 8036F030  38 81 00 10 */	addi r4, r1, 0x10
/* 8036F034  90 1D 00 00 */	stw r0, 0(r29)
/* 8036F038  38 A0 00 07 */	li r5, 7
/* 8036F03C  38 C0 00 03 */	li r6, 3
/* 8036F040  38 E0 00 00 */	li r7, 0
/* 8036F044  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F048  48 00 00 51 */	bl TRKRequestSend
/* 8036F04C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036F050  40 82 00 10 */	bne lbl_8036F060
/* 8036F054  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036F058  4B FF E6 99 */	bl TRKGetBuffer
/* 8036F05C  7C 7E 1B 78 */	mr r30, r3
lbl_8036F060:
/* 8036F060  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8036F064  90 1D 00 00 */	stw r0, 0(r29)
/* 8036F068  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8036F06C  90 1C 00 00 */	stw r0, 0(r28)
/* 8036F070  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036F074  4B FF E6 19 */	bl TRKReleaseBuffer
lbl_8036F078:
/* 8036F078  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036F07C  4B FF E6 11 */	bl TRKReleaseBuffer
/* 8036F080  7F E3 FB 78 */	mr r3, r31
/* 8036F084  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 8036F088  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8036F08C  7C 08 03 A6 */	mtlr r0
/* 8036F090  38 21 00 70 */	addi r1, r1, 0x70
/* 8036F094  4E 80 00 20 */	blr 
