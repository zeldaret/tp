lbl_802EE364:
/* 802EE364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EE368  7C 08 02 A6 */	mflr r0
/* 802EE36C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EE370  39 61 00 30 */	addi r11, r1, 0x30
/* 802EE374  48 07 3E 59 */	bl _savegpr_25
/* 802EE378  7C 79 1B 78 */	mr r25, r3
/* 802EE37C  7C 9A 23 78 */	mr r26, r4
/* 802EE380  7C BB 2B 78 */	mr r27, r5
/* 802EE384  28 1A 00 04 */	cmplwi r26, 4
/* 802EE388  41 80 00 0C */	blt lbl_802EE394
/* 802EE38C  38 60 00 00 */	li r3, 0
/* 802EE390  48 00 02 48 */	b lbl_802EE5D8
lbl_802EE394:
/* 802EE394  3B 80 00 00 */	li r28, 0
/* 802EE398  28 1B 00 00 */	cmplwi r27, 0
/* 802EE39C  41 82 00 CC */	beq lbl_802EE468
/* 802EE3A0  88 1B 00 08 */	lbz r0, 8(r27)
/* 802EE3A4  28 00 00 00 */	cmplwi r0, 0
/* 802EE3A8  41 82 00 C0 */	beq lbl_802EE468
/* 802EE3AC  38 C0 00 00 */	li r6, 0
/* 802EE3B0  38 E0 00 00 */	li r7, 0
/* 802EE3B4  38 60 00 00 */	li r3, 0
/* 802EE3B8  38 00 00 04 */	li r0, 4
/* 802EE3BC  7C 09 03 A6 */	mtctr r0
lbl_802EE3C0:
/* 802EE3C0  7C 07 D0 40 */	cmplw r7, r26
/* 802EE3C4  41 82 00 60 */	beq lbl_802EE424
/* 802EE3C8  38 03 00 8C */	addi r0, r3, 0x8c
/* 802EE3CC  7C B9 00 2E */	lwzx r5, r25, r0
/* 802EE3D0  28 05 00 00 */	cmplwi r5, 0
/* 802EE3D4  41 82 00 50 */	beq lbl_802EE424
/* 802EE3D8  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802EE3DC  28 04 00 00 */	cmplwi r4, 0
/* 802EE3E0  41 82 00 44 */	beq lbl_802EE424
/* 802EE3E4  88 04 00 08 */	lbz r0, 8(r4)
/* 802EE3E8  28 00 00 00 */	cmplwi r0, 0
/* 802EE3EC  41 82 00 38 */	beq lbl_802EE424
/* 802EE3F0  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802EE3F4  2C 04 00 10 */	cmpwi r4, 0x10
/* 802EE3F8  38 00 00 00 */	li r0, 0
/* 802EE3FC  41 80 00 08 */	blt lbl_802EE404
/* 802EE400  38 00 00 10 */	li r0, 0x10
lbl_802EE404:
/* 802EE404  7C 00 20 50 */	subf r0, r0, r4
/* 802EE408  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EE40C  28 04 00 04 */	cmplwi r4, 4
/* 802EE410  40 80 00 14 */	bge lbl_802EE424
/* 802EE414  38 00 00 01 */	li r0, 1
/* 802EE418  7C 00 20 30 */	slw r0, r0, r4
/* 802EE41C  7C C0 03 78 */	or r0, r6, r0
/* 802EE420  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802EE424:
/* 802EE424  38 E7 00 01 */	addi r7, r7, 1
/* 802EE428  38 63 00 04 */	addi r3, r3, 4
/* 802EE42C  42 00 FF 94 */	bdnz lbl_802EE3C0
/* 802EE430  38 A0 00 00 */	li r5, 0
/* 802EE434  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802EE438  38 60 00 01 */	li r3, 1
/* 802EE43C  48 00 00 20 */	b lbl_802EE45C
lbl_802EE440:
/* 802EE440  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EE444  7C 60 00 30 */	slw r0, r3, r0
/* 802EE448  7C 80 00 39 */	and. r0, r4, r0
/* 802EE44C  40 82 00 0C */	bne lbl_802EE458
/* 802EE450  7C BC 2B 78 */	mr r28, r5
/* 802EE454  48 00 00 14 */	b lbl_802EE468
lbl_802EE458:
/* 802EE458  38 A5 00 01 */	addi r5, r5, 1
lbl_802EE45C:
/* 802EE45C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EE460  28 00 00 04 */	cmplwi r0, 4
/* 802EE464  41 80 FF DC */	blt lbl_802EE440
lbl_802EE468:
/* 802EE468  57 5D 10 3A */	slwi r29, r26, 2
/* 802EE46C  7F F9 EA 14 */	add r31, r25, r29
/* 802EE470  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802EE474  28 03 00 00 */	cmplwi r3, 0
/* 802EE478  40 82 00 84 */	bne lbl_802EE4FC
/* 802EE47C  28 1B 00 00 */	cmplwi r27, 0
/* 802EE480  41 82 00 64 */	beq lbl_802EE4E4
/* 802EE484  38 60 00 40 */	li r3, 0x40
/* 802EE488  4B FE 07 C5 */	bl __nw__FUl
/* 802EE48C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EE490  41 82 00 24 */	beq lbl_802EE4B4
/* 802EE494  38 00 00 00 */	li r0, 0
/* 802EE498  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802EE49C  7F 64 DB 78 */	mr r4, r27
/* 802EE4A0  7F 85 E3 78 */	mr r5, r28
/* 802EE4A4  4B FE FE 05 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EE4A8  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802EE4AC  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EE4B0  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802EE4B4:
/* 802EE4B4  93 DF 00 8C */	stw r30, 0x8c(r31)
/* 802EE4B8  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 802EE4BC  28 00 00 00 */	cmplwi r0, 0
/* 802EE4C0  40 82 00 0C */	bne lbl_802EE4CC
/* 802EE4C4  38 60 00 00 */	li r3, 0
/* 802EE4C8  48 00 01 10 */	b lbl_802EE5D8
lbl_802EE4CC:
/* 802EE4CC  88 79 00 B0 */	lbz r3, 0xb0(r25)
/* 802EE4D0  38 00 00 01 */	li r0, 1
/* 802EE4D4  7C 00 D0 30 */	slw r0, r0, r26
/* 802EE4D8  7C 60 03 78 */	or r0, r3, r0
/* 802EE4DC  98 19 00 B0 */	stb r0, 0xb0(r25)
/* 802EE4E0  48 00 00 CC */	b lbl_802EE5AC
lbl_802EE4E4:
/* 802EE4E4  88 79 00 B0 */	lbz r3, 0xb0(r25)
/* 802EE4E8  38 00 00 01 */	li r0, 1
/* 802EE4EC  7C 00 D0 30 */	slw r0, r0, r26
/* 802EE4F0  7C 60 00 78 */	andc r0, r3, r0
/* 802EE4F4  98 19 00 B0 */	stb r0, 0xb0(r25)
/* 802EE4F8  48 00 00 B4 */	b lbl_802EE5AC
lbl_802EE4FC:
/* 802EE4FC  88 99 00 B0 */	lbz r4, 0xb0(r25)
/* 802EE500  38 00 00 01 */	li r0, 1
/* 802EE504  7C 1E D0 30 */	slw r30, r0, r26
/* 802EE508  7C 80 F0 39 */	and. r0, r4, r30
/* 802EE50C  41 82 00 3C */	beq lbl_802EE548
/* 802EE510  28 1B 00 00 */	cmplwi r27, 0
/* 802EE514  41 82 00 14 */	beq lbl_802EE528
/* 802EE518  7F 64 DB 78 */	mr r4, r27
/* 802EE51C  7F 85 E3 78 */	mr r5, r28
/* 802EE520  4B FE FD 89 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EE524  48 00 00 88 */	b lbl_802EE5AC
lbl_802EE528:
/* 802EE528  38 80 00 01 */	li r4, 1
/* 802EE52C  4B FE FD 09 */	bl __dt__10JUTTextureFv
/* 802EE530  38 00 00 00 */	li r0, 0
/* 802EE534  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802EE538  88 19 00 B0 */	lbz r0, 0xb0(r25)
/* 802EE53C  7C 00 F0 78 */	andc r0, r0, r30
/* 802EE540  98 19 00 B0 */	stb r0, 0xb0(r25)
/* 802EE544  48 00 00 68 */	b lbl_802EE5AC
lbl_802EE548:
/* 802EE548  38 00 00 00 */	li r0, 0
/* 802EE54C  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802EE550  28 1B 00 00 */	cmplwi r27, 0
/* 802EE554  41 82 00 58 */	beq lbl_802EE5AC
/* 802EE558  38 60 00 40 */	li r3, 0x40
/* 802EE55C  4B FE 06 F1 */	bl __nw__FUl
/* 802EE560  7C 7C 1B 79 */	or. r28, r3, r3
/* 802EE564  41 82 00 24 */	beq lbl_802EE588
/* 802EE568  38 00 00 00 */	li r0, 0
/* 802EE56C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802EE570  7F 64 DB 78 */	mr r4, r27
/* 802EE574  38 A0 00 00 */	li r5, 0
/* 802EE578  4B FE FD 31 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EE57C  88 1C 00 3B */	lbz r0, 0x3b(r28)
/* 802EE580  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EE584  98 1C 00 3B */	stb r0, 0x3b(r28)
lbl_802EE588:
/* 802EE588  93 9F 00 8C */	stw r28, 0x8c(r31)
/* 802EE58C  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 802EE590  28 00 00 00 */	cmplwi r0, 0
/* 802EE594  40 82 00 0C */	bne lbl_802EE5A0
/* 802EE598  38 60 00 00 */	li r3, 0
/* 802EE59C  48 00 00 3C */	b lbl_802EE5D8
lbl_802EE5A0:
/* 802EE5A0  88 19 00 B0 */	lbz r0, 0xb0(r25)
/* 802EE5A4  7C 00 F3 78 */	or r0, r0, r30
/* 802EE5A8  98 19 00 B0 */	stb r0, 0xb0(r25)
lbl_802EE5AC:
/* 802EE5AC  7F 79 EA 14 */	add r27, r25, r29
/* 802EE5B0  80 7B 00 9C */	lwz r3, 0x9c(r27)
/* 802EE5B4  4B FE 07 89 */	bl __dl__FPv
/* 802EE5B8  38 00 00 00 */	li r0, 0
/* 802EE5BC  90 1B 00 9C */	stw r0, 0x9c(r27)
/* 802EE5C0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EE5C4  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EE5C8  57 40 08 3C */	slwi r0, r26, 1
/* 802EE5CC  7C 79 02 14 */	add r3, r25, r0
/* 802EE5D0  B0 83 00 04 */	sth r4, 4(r3)
/* 802EE5D4  38 60 00 01 */	li r3, 1
lbl_802EE5D8:
/* 802EE5D8  39 61 00 30 */	addi r11, r1, 0x30
/* 802EE5DC  48 07 3C 3D */	bl _restgpr_25
/* 802EE5E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EE5E4  7C 08 03 A6 */	mtlr r0
/* 802EE5E8  38 21 00 30 */	addi r1, r1, 0x30
/* 802EE5EC  4E 80 00 20 */	blr 
