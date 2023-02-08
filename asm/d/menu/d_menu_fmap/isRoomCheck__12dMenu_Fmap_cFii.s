lbl_801CB2C0:
/* 801CB2C0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801CB2C4  7C 08 02 A6 */	mflr r0
/* 801CB2C8  90 01 01 34 */	stw r0, 0x134(r1)
/* 801CB2CC  39 61 01 30 */	addi r11, r1, 0x130
/* 801CB2D0  48 19 6E E5 */	bl _savegpr_19
/* 801CB2D4  7C 76 1B 78 */	mr r22, r3
/* 801CB2D8  7C 97 23 78 */	mr r23, r4
/* 801CB2DC  7C B8 2B 78 */	mr r24, r5
/* 801CB2E0  88 03 03 05 */	lbz r0, 0x305(r3)
/* 801CB2E4  28 00 00 00 */	cmplwi r0, 0
/* 801CB2E8  40 82 00 0C */	bne lbl_801CB2F4
/* 801CB2EC  38 60 00 00 */	li r3, 0
/* 801CB2F0  48 00 02 68 */	b lbl_801CB558
lbl_801CB2F4:
/* 801CB2F4  80 96 00 8C */	lwz r4, 0x8c(r22)
/* 801CB2F8  80 64 00 04 */	lwz r3, 4(r4)
/* 801CB2FC  3B A3 00 04 */	addi r29, r3, 4
/* 801CB300  7F A4 EA 14 */	add r29, r4, r29
/* 801CB304  3B 80 00 00 */	li r28, 0
/* 801CB308  3B 60 00 00 */	li r27, 0
/* 801CB30C  3A A0 00 00 */	li r21, 0
/* 801CB310  88 96 03 03 */	lbz r4, 0x303(r22)
/* 801CB314  38 00 00 00 */	li r0, 0
/* 801CB318  38 61 00 90 */	addi r3, r1, 0x90
/* 801CB31C  7C 89 03 A6 */	mtctr r4
/* 801CB320  2C 04 00 00 */	cmpwi r4, 0
/* 801CB324  40 81 00 10 */	ble lbl_801CB334
lbl_801CB328:
/* 801CB328  98 03 00 00 */	stb r0, 0(r3)
/* 801CB32C  38 63 00 01 */	addi r3, r3, 1
/* 801CB330  42 00 FF F8 */	bdnz lbl_801CB328
lbl_801CB334:
/* 801CB334  3B E1 00 10 */	addi r31, r1, 0x10
/* 801CB338  3A 81 00 90 */	addi r20, r1, 0x90
/* 801CB33C  48 00 01 74 */	b lbl_801CB4B0
lbl_801CB340:
/* 801CB340  88 14 00 00 */	lbz r0, 0(r20)
/* 801CB344  28 00 00 00 */	cmplwi r0, 0
/* 801CB348  40 82 01 5C */	bne lbl_801CB4A4
/* 801CB34C  38 61 00 08 */	addi r3, r1, 8
/* 801CB350  7C 9D AA 14 */	add r4, r29, r21
/* 801CB354  48 19 D7 D9 */	bl strcpy
/* 801CB358  38 C0 00 00 */	li r6, 0
/* 801CB35C  38 A0 00 00 */	li r5, 0
/* 801CB360  38 81 00 50 */	addi r4, r1, 0x50
/* 801CB364  38 61 00 10 */	addi r3, r1, 0x10
/* 801CB368  38 00 00 40 */	li r0, 0x40
/* 801CB36C  7C 09 03 A6 */	mtctr r0
lbl_801CB370:
/* 801CB370  98 A4 00 00 */	stb r5, 0(r4)
/* 801CB374  98 A3 00 00 */	stb r5, 0(r3)
/* 801CB378  38 C6 00 01 */	addi r6, r6, 1
/* 801CB37C  38 63 00 01 */	addi r3, r3, 1
/* 801CB380  38 84 00 01 */	addi r4, r4, 1
/* 801CB384  42 00 FF EC */	bdnz lbl_801CB370
/* 801CB388  3B 40 00 00 */	li r26, 0
/* 801CB38C  7F 79 DB 78 */	mr r25, r27
/* 801CB390  1E 7B 00 14 */	mulli r19, r27, 0x14
/* 801CB394  48 00 00 CC */	b lbl_801CB460
lbl_801CB398:
/* 801CB398  7F DD 9A 14 */	add r30, r29, r19
/* 801CB39C  7F C3 F3 78 */	mr r3, r30
/* 801CB3A0  38 81 00 08 */	addi r4, r1, 8
/* 801CB3A4  48 19 D5 F1 */	bl strcmp
/* 801CB3A8  2C 03 00 00 */	cmpwi r3, 0
/* 801CB3AC  40 82 00 AC */	bne lbl_801CB458
/* 801CB3B0  38 A0 00 01 */	li r5, 1
/* 801CB3B4  38 61 00 90 */	addi r3, r1, 0x90
/* 801CB3B8  7C A3 C9 AE */	stbx r5, r3, r25
/* 801CB3BC  80 76 00 14 */	lwz r3, 0x14(r22)
/* 801CB3C0  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801CB3C4  88 7E 00 09 */	lbz r3, 9(r30)
/* 801CB3C8  38 04 00 01 */	addi r0, r4, 1
/* 801CB3CC  7C 03 00 00 */	cmpw r3, r0
/* 801CB3D0  40 82 00 74 */	bne lbl_801CB444
/* 801CB3D4  88 1E 00 08 */	lbz r0, 8(r30)
/* 801CB3D8  28 00 00 FF */	cmplwi r0, 0xff
/* 801CB3DC  41 82 00 24 */	beq lbl_801CB400
/* 801CB3E0  38 61 00 50 */	addi r3, r1, 0x50
/* 801CB3E4  7C A3 01 AE */	stbx r5, r3, r0
/* 801CB3E8  38 61 00 10 */	addi r3, r1, 0x10
/* 801CB3EC  7C A3 01 AE */	stbx r5, r3, r0
/* 801CB3F0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801CB3F4  40 82 00 64 */	bne lbl_801CB458
/* 801CB3F8  3B 40 00 01 */	li r26, 1
/* 801CB3FC  48 00 00 5C */	b lbl_801CB458
lbl_801CB400:
/* 801CB400  38 C0 00 00 */	li r6, 0
/* 801CB404  38 81 00 50 */	addi r4, r1, 0x50
/* 801CB408  38 61 00 10 */	addi r3, r1, 0x10
/* 801CB40C  38 00 00 40 */	li r0, 0x40
/* 801CB410  7C 09 03 A6 */	mtctr r0
lbl_801CB414:
/* 801CB414  88 04 00 00 */	lbz r0, 0(r4)
/* 801CB418  28 00 00 00 */	cmplwi r0, 0
/* 801CB41C  40 82 00 08 */	bne lbl_801CB424
/* 801CB420  98 A3 00 00 */	stb r5, 0(r3)
lbl_801CB424:
/* 801CB424  38 C6 00 01 */	addi r6, r6, 1
/* 801CB428  38 63 00 01 */	addi r3, r3, 1
/* 801CB42C  38 84 00 01 */	addi r4, r4, 1
/* 801CB430  42 00 FF E4 */	bdnz lbl_801CB414
/* 801CB434  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801CB438  40 82 00 20 */	bne lbl_801CB458
/* 801CB43C  3B 40 00 01 */	li r26, 1
/* 801CB440  48 00 00 18 */	b lbl_801CB458
lbl_801CB444:
/* 801CB444  88 1E 00 08 */	lbz r0, 8(r30)
/* 801CB448  28 00 00 FF */	cmplwi r0, 0xff
/* 801CB44C  41 82 00 0C */	beq lbl_801CB458
/* 801CB450  38 61 00 50 */	addi r3, r1, 0x50
/* 801CB454  7C A3 01 AE */	stbx r5, r3, r0
lbl_801CB458:
/* 801CB458  3B 39 00 01 */	addi r25, r25, 1
/* 801CB45C  3A 73 00 14 */	addi r19, r19, 0x14
lbl_801CB460:
/* 801CB460  88 16 03 03 */	lbz r0, 0x303(r22)
/* 801CB464  7C 19 00 00 */	cmpw r25, r0
/* 801CB468  41 80 FF 30 */	blt lbl_801CB398
/* 801CB46C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 801CB470  41 82 00 34 */	beq lbl_801CB4A4
/* 801CB474  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801CB478  7C 17 00 00 */	cmpw r23, r0
/* 801CB47C  40 82 00 10 */	bne lbl_801CB48C
/* 801CB480  7C 1F C0 AE */	lbzx r0, r31, r24
/* 801CB484  28 00 00 00 */	cmplwi r0, 0
/* 801CB488  40 82 00 34 */	bne lbl_801CB4BC
lbl_801CB48C:
/* 801CB48C  3B 9C 00 01 */	addi r28, r28, 1
/* 801CB490  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801CB494  7C 00 B8 00 */	cmpw r0, r23
/* 801CB498  40 81 00 0C */	ble lbl_801CB4A4
/* 801CB49C  38 60 00 00 */	li r3, 0
/* 801CB4A0  48 00 00 B8 */	b lbl_801CB558
lbl_801CB4A4:
/* 801CB4A4  3B 7B 00 01 */	addi r27, r27, 1
/* 801CB4A8  3A B5 00 14 */	addi r21, r21, 0x14
/* 801CB4AC  3A 94 00 01 */	addi r20, r20, 1
lbl_801CB4B0:
/* 801CB4B0  88 16 03 03 */	lbz r0, 0x303(r22)
/* 801CB4B4  7C 1B 00 00 */	cmpw r27, r0
/* 801CB4B8  41 80 FE 88 */	blt lbl_801CB340
lbl_801CB4BC:
/* 801CB4BC  80 76 00 14 */	lwz r3, 0x14(r22)
/* 801CB4C0  88 03 12 27 */	lbz r0, 0x1227(r3)
/* 801CB4C4  38 80 00 00 */	li r4, 0
/* 801CB4C8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801CB4CC  7C 76 02 14 */	add r3, r22, r0
/* 801CB4D0  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801CB4D4  7E E9 03 A6 */	mtctr r23
/* 801CB4D8  2C 17 00 00 */	cmpwi r23, 0
/* 801CB4DC  40 81 00 1C */	ble lbl_801CB4F8
lbl_801CB4E0:
/* 801CB4E0  80 03 00 04 */	lwz r0, 4(r3)
/* 801CB4E4  7C 03 03 78 */	mr r3, r0
/* 801CB4E8  28 00 00 00 */	cmplwi r0, 0
/* 801CB4EC  41 82 00 0C */	beq lbl_801CB4F8
/* 801CB4F0  38 84 00 01 */	addi r4, r4, 1
/* 801CB4F4  42 00 FF EC */	bdnz lbl_801CB4E0
lbl_801CB4F8:
/* 801CB4F8  28 03 00 00 */	cmplwi r3, 0
/* 801CB4FC  41 82 00 0C */	beq lbl_801CB508
/* 801CB500  7C 04 B8 00 */	cmpw r4, r23
/* 801CB504  41 82 00 0C */	beq lbl_801CB510
lbl_801CB508:
/* 801CB508  38 60 00 00 */	li r3, 0
/* 801CB50C  48 00 00 4C */	b lbl_801CB558
lbl_801CB510:
/* 801CB510  80 63 00 00 */	lwz r3, 0(r3)
/* 801CB514  88 03 00 00 */	lbz r0, 0(r3)
/* 801CB518  38 81 00 10 */	addi r4, r1, 0x10
/* 801CB51C  38 63 00 04 */	addi r3, r3, 4
/* 801CB520  7C 09 03 A6 */	mtctr r0
/* 801CB524  2C 00 00 00 */	cmpwi r0, 0
/* 801CB528  40 81 00 2C */	ble lbl_801CB554
lbl_801CB52C:
/* 801CB52C  88 03 00 00 */	lbz r0, 0(r3)
/* 801CB530  7C 18 00 00 */	cmpw r24, r0
/* 801CB534  40 82 00 18 */	bne lbl_801CB54C
/* 801CB538  7C 04 00 AE */	lbzx r0, r4, r0
/* 801CB53C  28 00 00 00 */	cmplwi r0, 0
/* 801CB540  41 82 00 0C */	beq lbl_801CB54C
/* 801CB544  38 60 00 01 */	li r3, 1
/* 801CB548  48 00 00 10 */	b lbl_801CB558
lbl_801CB54C:
/* 801CB54C  38 63 00 01 */	addi r3, r3, 1
/* 801CB550  42 00 FF DC */	bdnz lbl_801CB52C
lbl_801CB554:
/* 801CB554  38 60 00 00 */	li r3, 0
lbl_801CB558:
/* 801CB558  39 61 01 30 */	addi r11, r1, 0x130
/* 801CB55C  48 19 6C A5 */	bl _restgpr_19
/* 801CB560  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801CB564  7C 08 03 A6 */	mtlr r0
/* 801CB568  38 21 01 30 */	addi r1, r1, 0x130
/* 801CB56C  4E 80 00 20 */	blr 
