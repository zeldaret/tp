lbl_8036F278:
/* 8036F278  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8036F27C  7C 08 02 A6 */	mflr r0
/* 8036F280  90 01 00 94 */	stw r0, 0x94(r1)
/* 8036F284  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 8036F288  7C 98 23 79 */	or. r24, r4, r4
/* 8036F28C  7C 77 1B 78 */	mr r23, r3
/* 8036F290  7C B9 2B 78 */	mr r25, r5
/* 8036F294  7C DA 33 78 */	mr r26, r6
/* 8036F298  7C FB 3B 78 */	mr r27, r7
/* 8036F29C  7D 1C 43 78 */	mr r28, r8
/* 8036F2A0  41 82 00 10 */	beq lbl_8036F2B0
/* 8036F2A4  80 19 00 00 */	lwz r0, 0(r25)
/* 8036F2A8  28 00 00 00 */	cmplwi r0, 0
/* 8036F2AC  40 82 00 0C */	bne lbl_8036F2B8
lbl_8036F2B0:
/* 8036F2B0  38 60 00 02 */	li r3, 2
/* 8036F2B4  48 00 01 D0 */	b lbl_8036F484
lbl_8036F2B8:
/* 8036F2B8  38 00 00 00 */	li r0, 0
/* 8036F2BC  3B A0 00 00 */	li r29, 0
/* 8036F2C0  90 1A 00 00 */	stw r0, 0(r26)
/* 8036F2C4  3B C0 00 00 */	li r30, 0
/* 8036F2C8  3A A0 00 00 */	li r21, 0
/* 8036F2CC  48 00 01 88 */	b lbl_8036F454
lbl_8036F2D0:
/* 8036F2D0  38 61 00 14 */	addi r3, r1, 0x14
/* 8036F2D4  38 80 00 00 */	li r4, 0
/* 8036F2D8  38 A0 00 40 */	li r5, 0x40
/* 8036F2DC  4B C9 41 7D */	bl memset
/* 8036F2E0  80 19 00 00 */	lwz r0, 0(r25)
/* 8036F2E4  38 60 08 00 */	li r3, 0x800
/* 8036F2E8  7C 1E 00 50 */	subf r0, r30, r0
/* 8036F2EC  28 00 08 00 */	cmplwi r0, 0x800
/* 8036F2F0  41 81 00 08 */	bgt lbl_8036F2F8
/* 8036F2F4  7C 03 03 78 */	mr r3, r0
lbl_8036F2F8:
/* 8036F2F8  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F2FC  7C 7F 1B 78 */	mr r31, r3
/* 8036F300  38 00 00 D0 */	li r0, 0xd0
/* 8036F304  41 82 00 08 */	beq lbl_8036F30C
/* 8036F308  38 00 00 D1 */	li r0, 0xd1
lbl_8036F30C:
/* 8036F30C  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F310  98 01 00 18 */	stb r0, 0x18(r1)
/* 8036F314  38 00 00 40 */	li r0, 0x40
/* 8036F318  40 82 00 08 */	bne lbl_8036F320
/* 8036F31C  38 1F 00 40 */	addi r0, r31, 0x40
lbl_8036F320:
/* 8036F320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036F324  38 61 00 0C */	addi r3, r1, 0xc
/* 8036F328  38 81 00 08 */	addi r4, r1, 8
/* 8036F32C  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 8036F330  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 8036F334  4B FF E3 E9 */	bl TRKGetFreeBuffer
/* 8036F338  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F33C  38 81 00 14 */	addi r4, r1, 0x14
/* 8036F340  38 A0 00 40 */	li r5, 0x40
/* 8036F344  4B FF E0 45 */	bl TRKAppendBuffer_ui8
/* 8036F348  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F34C  7C 75 1B 78 */	mr r21, r3
/* 8036F350  40 82 00 20 */	bne lbl_8036F370
/* 8036F354  2C 15 00 00 */	cmpwi r21, 0
/* 8036F358  40 82 00 18 */	bne lbl_8036F370
/* 8036F35C  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F360  7F E5 FB 78 */	mr r5, r31
/* 8036F364  7C 98 F2 14 */	add r4, r24, r30
/* 8036F368  4B FF E0 21 */	bl TRKAppendBuffer_ui8
/* 8036F36C  7C 75 1B 78 */	mr r21, r3
lbl_8036F370:
/* 8036F370  2C 15 00 00 */	cmpwi r21, 0
/* 8036F374  40 82 00 D4 */	bne lbl_8036F448
/* 8036F378  2C 1B 00 00 */	cmpwi r27, 0
/* 8036F37C  41 82 00 C0 */	beq lbl_8036F43C
/* 8036F380  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F384  38 00 00 00 */	li r0, 0
/* 8036F388  41 82 00 10 */	beq lbl_8036F398
/* 8036F38C  28 17 00 00 */	cmplwi r23, 0
/* 8036F390  40 82 00 08 */	bne lbl_8036F398
/* 8036F394  38 00 00 01 */	li r0, 1
lbl_8036F398:
/* 8036F398  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F39C  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F3A0  38 81 00 10 */	addi r4, r1, 0x10
/* 8036F3A4  38 A0 00 05 */	li r5, 5
/* 8036F3A8  7C 00 00 34 */	cntlzw r0, r0
/* 8036F3AC  38 C0 00 03 */	li r6, 3
/* 8036F3B0  54 07 D9 7E */	srwi r7, r0, 5
/* 8036F3B4  4B FF FC E5 */	bl TRKRequestSend
/* 8036F3B8  7C 75 1B 79 */	or. r21, r3, r3
/* 8036F3BC  40 82 00 10 */	bne lbl_8036F3CC
/* 8036F3C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036F3C4  4B FF E3 2D */	bl TRKGetBuffer
/* 8036F3C8  7C 76 1B 78 */	mr r22, r3
lbl_8036F3CC:
/* 8036F3CC  80 16 00 20 */	lwz r0, 0x20(r22)
/* 8036F3D0  2C 1C 00 00 */	cmpwi r28, 0
/* 8036F3D4  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 8036F3D8  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 8036F3DC  41 82 00 40 */	beq lbl_8036F41C
/* 8036F3E0  2C 15 00 00 */	cmpwi r21, 0
/* 8036F3E4  40 82 00 38 */	bne lbl_8036F41C
/* 8036F3E8  7C 13 F8 40 */	cmplw r19, r31
/* 8036F3EC  41 81 00 30 */	bgt lbl_8036F41C
/* 8036F3F0  7E C3 B3 78 */	mr r3, r22
/* 8036F3F4  38 80 00 40 */	li r4, 0x40
/* 8036F3F8  4B FF E2 25 */	bl TRKSetBufferPosition
/* 8036F3FC  7E C3 B3 78 */	mr r3, r22
/* 8036F400  7E 65 9B 78 */	mr r5, r19
/* 8036F404  7C 98 F2 14 */	add r4, r24, r30
/* 8036F408  4B FF DD 05 */	bl TRKReadBuffer_ui8
/* 8036F40C  7C 75 1B 78 */	mr r21, r3
/* 8036F410  2C 15 03 02 */	cmpwi r21, 0x302
/* 8036F414  40 82 00 08 */	bne lbl_8036F41C
/* 8036F418  3A A0 00 00 */	li r21, 0
lbl_8036F41C:
/* 8036F41C  7C 13 F8 40 */	cmplw r19, r31
/* 8036F420  41 82 00 0C */	beq lbl_8036F42C
/* 8036F424  7E 7F 9B 78 */	mr r31, r19
/* 8036F428  3B A0 00 01 */	li r29, 1
lbl_8036F42C:
/* 8036F42C  92 9A 00 00 */	stw r20, 0(r26)
/* 8036F430  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036F434  4B FF E2 59 */	bl TRKReleaseBuffer
/* 8036F438  48 00 00 10 */	b lbl_8036F448
lbl_8036F43C:
/* 8036F43C  80 61 00 08 */	lwz r3, 8(r1)
/* 8036F440  4B FF DB 99 */	bl TRKMessageSend
/* 8036F444  7C 75 1B 78 */	mr r21, r3
lbl_8036F448:
/* 8036F448  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036F44C  4B FF E2 41 */	bl TRKReleaseBuffer
/* 8036F450  7F DE FA 14 */	add r30, r30, r31
lbl_8036F454:
/* 8036F454  2C 1D 00 00 */	cmpwi r29, 0
/* 8036F458  40 82 00 24 */	bne lbl_8036F47C
/* 8036F45C  80 19 00 00 */	lwz r0, 0(r25)
/* 8036F460  7C 1E 00 40 */	cmplw r30, r0
/* 8036F464  40 80 00 18 */	bge lbl_8036F47C
/* 8036F468  2C 15 00 00 */	cmpwi r21, 0
/* 8036F46C  40 82 00 10 */	bne lbl_8036F47C
/* 8036F470  80 1A 00 00 */	lwz r0, 0(r26)
/* 8036F474  2C 00 00 00 */	cmpwi r0, 0
/* 8036F478  41 82 FE 58 */	beq lbl_8036F2D0
lbl_8036F47C:
/* 8036F47C  93 D9 00 00 */	stw r30, 0(r25)
/* 8036F480  7E A3 AB 78 */	mr r3, r21
lbl_8036F484:
/* 8036F484  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 8036F488  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8036F48C  7C 08 03 A6 */	mtlr r0
/* 8036F490  38 21 00 90 */	addi r1, r1, 0x90
/* 8036F494  4E 80 00 20 */	blr 
