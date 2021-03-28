lbl_802EF2B0:
/* 802EF2B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EF2B4  7C 08 02 A6 */	mflr r0
/* 802EF2B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EF2BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802EF2C0  48 07 2F 0D */	bl _savegpr_25
/* 802EF2C4  7C 79 1B 78 */	mr r25, r3
/* 802EF2C8  7C 9A 23 78 */	mr r26, r4
/* 802EF2CC  7C BB 2B 78 */	mr r27, r5
/* 802EF2D0  7C DC 33 78 */	mr r28, r6
/* 802EF2D4  28 1A 00 08 */	cmplwi r26, 8
/* 802EF2D8  40 80 00 0C */	bge lbl_802EF2E4
/* 802EF2DC  28 1B 00 00 */	cmplwi r27, 0
/* 802EF2E0  40 82 00 0C */	bne lbl_802EF2EC
lbl_802EF2E4:
/* 802EF2E4  38 60 00 00 */	li r3, 0
/* 802EF2E8  48 00 03 7C */	b lbl_802EF664
lbl_802EF2EC:
/* 802EF2EC  3B C0 00 00 */	li r30, 0
/* 802EF2F0  48 00 00 28 */	b lbl_802EF318
lbl_802EF2F4:
/* 802EF2F4  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802EF2F8  38 03 00 DC */	addi r0, r3, 0xdc
/* 802EF2FC  7C 79 00 2E */	lwzx r3, r25, r0
/* 802EF300  28 03 00 00 */	cmplwi r3, 0
/* 802EF304  41 82 00 20 */	beq lbl_802EF324
/* 802EF308  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EF30C  28 00 00 00 */	cmplwi r0, 0
/* 802EF310  41 82 00 14 */	beq lbl_802EF324
/* 802EF314  3B DE 00 01 */	addi r30, r30, 1
lbl_802EF318:
/* 802EF318  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802EF31C  28 00 00 08 */	cmplwi r0, 8
/* 802EF320  41 80 FF D4 */	blt lbl_802EF2F4
lbl_802EF324:
/* 802EF324  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802EF328  7C 00 D0 40 */	cmplw r0, r26
/* 802EF32C  40 80 00 0C */	bge lbl_802EF338
/* 802EF330  38 60 00 00 */	li r3, 0
/* 802EF334  48 00 03 30 */	b lbl_802EF664
lbl_802EF338:
/* 802EF338  28 00 00 08 */	cmplwi r0, 8
/* 802EF33C  40 82 00 0C */	bne lbl_802EF348
/* 802EF340  38 60 00 00 */	li r3, 0
/* 802EF344  48 00 03 20 */	b lbl_802EF664
lbl_802EF348:
/* 802EF348  3B A0 00 00 */	li r29, 0
/* 802EF34C  88 1B 00 08 */	lbz r0, 8(r27)
/* 802EF350  28 00 00 00 */	cmplwi r0, 0
/* 802EF354  41 82 00 B8 */	beq lbl_802EF40C
/* 802EF358  28 1C 00 00 */	cmplwi r28, 0
/* 802EF35C  40 82 00 B0 */	bne lbl_802EF40C
/* 802EF360  38 C0 00 00 */	li r6, 0
/* 802EF364  38 60 00 00 */	li r3, 0
/* 802EF368  38 00 00 07 */	li r0, 7
/* 802EF36C  7C 09 03 A6 */	mtctr r0
lbl_802EF370:
/* 802EF370  38 03 00 DC */	addi r0, r3, 0xdc
/* 802EF374  7C B9 00 2E */	lwzx r5, r25, r0
/* 802EF378  28 05 00 00 */	cmplwi r5, 0
/* 802EF37C  41 82 00 50 */	beq lbl_802EF3CC
/* 802EF380  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802EF384  28 04 00 00 */	cmplwi r4, 0
/* 802EF388  41 82 00 44 */	beq lbl_802EF3CC
/* 802EF38C  88 04 00 08 */	lbz r0, 8(r4)
/* 802EF390  28 00 00 00 */	cmplwi r0, 0
/* 802EF394  41 82 00 38 */	beq lbl_802EF3CC
/* 802EF398  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802EF39C  2C 04 00 10 */	cmpwi r4, 0x10
/* 802EF3A0  38 00 00 00 */	li r0, 0
/* 802EF3A4  41 80 00 08 */	blt lbl_802EF3AC
/* 802EF3A8  38 00 00 10 */	li r0, 0x10
lbl_802EF3AC:
/* 802EF3AC  7C 00 20 50 */	subf r0, r0, r4
/* 802EF3B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EF3B4  28 04 00 08 */	cmplwi r4, 8
/* 802EF3B8  40 80 00 14 */	bge lbl_802EF3CC
/* 802EF3BC  38 00 00 01 */	li r0, 1
/* 802EF3C0  7C 00 20 30 */	slw r0, r0, r4
/* 802EF3C4  7C C0 03 78 */	or r0, r6, r0
/* 802EF3C8  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802EF3CC:
/* 802EF3CC  38 63 00 04 */	addi r3, r3, 4
/* 802EF3D0  42 00 FF A0 */	bdnz lbl_802EF370
/* 802EF3D4  38 A0 00 00 */	li r5, 0
/* 802EF3D8  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802EF3DC  38 60 00 01 */	li r3, 1
/* 802EF3E0  48 00 00 20 */	b lbl_802EF400
lbl_802EF3E4:
/* 802EF3E4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EF3E8  7C 60 00 30 */	slw r0, r3, r0
/* 802EF3EC  7C 80 00 39 */	and. r0, r4, r0
/* 802EF3F0  40 82 00 0C */	bne lbl_802EF3FC
/* 802EF3F4  7C BD 2B 78 */	mr r29, r5
/* 802EF3F8  48 00 00 14 */	b lbl_802EF40C
lbl_802EF3FC:
/* 802EF3FC  38 A5 00 01 */	addi r5, r5, 1
lbl_802EF400:
/* 802EF400  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802EF404  28 00 00 08 */	cmplwi r0, 8
/* 802EF408  41 80 FF DC */	blt lbl_802EF3E4
lbl_802EF40C:
/* 802EF40C  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802EF410  7C 79 02 14 */	add r3, r25, r0
/* 802EF414  83 E3 00 DC */	lwz r31, 0xdc(r3)
/* 802EF418  28 1F 00 00 */	cmplwi r31, 0
/* 802EF41C  40 82 00 EC */	bne lbl_802EF508
/* 802EF420  38 60 00 40 */	li r3, 0x40
/* 802EF424  4B FD F8 29 */	bl __nw__FUl
/* 802EF428  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EF42C  41 82 00 24 */	beq lbl_802EF450
/* 802EF430  38 00 00 00 */	li r0, 0
/* 802EF434  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802EF438  7F 64 DB 78 */	mr r4, r27
/* 802EF43C  7F A5 EB 78 */	mr r5, r29
/* 802EF440  4B FE EE 69 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EF444  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802EF448  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EF44C  98 1F 00 3B */	stb r0, 0x3b(r31)
lbl_802EF450:
/* 802EF450  28 1F 00 00 */	cmplwi r31, 0
/* 802EF454  40 82 00 0C */	bne lbl_802EF460
/* 802EF458  38 60 00 00 */	li r3, 0
/* 802EF45C  48 00 02 08 */	b lbl_802EF664
lbl_802EF460:
/* 802EF460  28 1C 00 00 */	cmplwi r28, 0
/* 802EF464  41 82 00 14 */	beq lbl_802EF478
/* 802EF468  7F E3 FB 78 */	mr r3, r31
/* 802EF46C  7F 64 DB 78 */	mr r4, r27
/* 802EF470  7F 85 E3 78 */	mr r5, r28
/* 802EF474  4B FE EF D9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802EF478:
/* 802EF478  38 E0 00 07 */	li r7, 7
/* 802EF47C  48 00 00 40 */	b lbl_802EF4BC
lbl_802EF480:
/* 802EF480  54 80 10 3A */	slwi r0, r4, 2
/* 802EF484  7C B9 02 14 */	add r5, r25, r0
/* 802EF488  80 65 00 D8 */	lwz r3, 0xd8(r5)
/* 802EF48C  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 802EF490  7C D9 02 14 */	add r6, r25, r0
/* 802EF494  90 66 00 DC */	stw r3, 0xdc(r6)
/* 802EF498  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 802EF49C  90 06 00 FC */	stw r0, 0xfc(r6)
/* 802EF4A0  54 83 08 3C */	slwi r3, r4, 1
/* 802EF4A4  38 03 00 02 */	addi r0, r3, 2
/* 802EF4A8  7C 99 02 2E */	lhzx r4, r25, r0
/* 802EF4AC  54 E3 0D FC */	rlwinm r3, r7, 1, 0x17, 0x1e
/* 802EF4B0  38 03 00 04 */	addi r0, r3, 4
/* 802EF4B4  7C 99 03 2E */	sthx r4, r25, r0
/* 802EF4B8  38 E7 FF FF */	addi r7, r7, -1
lbl_802EF4BC:
/* 802EF4BC  54 E4 06 3E */	clrlwi r4, r7, 0x18
/* 802EF4C0  7C 04 D0 40 */	cmplw r4, r26
/* 802EF4C4  41 81 FF BC */	bgt lbl_802EF480
/* 802EF4C8  57 40 10 3A */	slwi r0, r26, 2
/* 802EF4CC  7C 79 02 14 */	add r3, r25, r0
/* 802EF4D0  93 E3 00 DC */	stw r31, 0xdc(r3)
/* 802EF4D4  7F 23 CB 78 */	mr r3, r25
/* 802EF4D8  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 802EF4DC  38 A0 00 01 */	li r5, 1
/* 802EF4E0  81 99 00 00 */	lwz r12, 0(r25)
/* 802EF4E4  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 802EF4E8  7D 89 03 A6 */	mtctr r12
/* 802EF4EC  4E 80 04 21 */	bctrl 
/* 802EF4F0  88 79 01 20 */	lbz r3, 0x120(r25)
/* 802EF4F4  38 00 00 01 */	li r0, 1
/* 802EF4F8  7C 00 D0 30 */	slw r0, r0, r26
/* 802EF4FC  7C 60 03 78 */	or r0, r3, r0
/* 802EF500  98 19 01 20 */	stb r0, 0x120(r25)
/* 802EF504  48 00 01 38 */	b lbl_802EF63C
lbl_802EF508:
/* 802EF508  28 1C 00 00 */	cmplwi r28, 0
/* 802EF50C  40 82 00 18 */	bne lbl_802EF524
/* 802EF510  7F E3 FB 78 */	mr r3, r31
/* 802EF514  7F 64 DB 78 */	mr r4, r27
/* 802EF518  7F A5 EB 78 */	mr r5, r29
/* 802EF51C  4B FE ED 8D */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EF520  48 00 00 14 */	b lbl_802EF534
lbl_802EF524:
/* 802EF524  7F E3 FB 78 */	mr r3, r31
/* 802EF528  7F 64 DB 78 */	mr r4, r27
/* 802EF52C  7F 85 E3 78 */	mr r5, r28
/* 802EF530  4B FE EF 1D */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802EF534:
/* 802EF534  38 E0 00 00 */	li r7, 0
/* 802EF538  38 C0 00 01 */	li r6, 1
/* 802EF53C  38 61 00 08 */	addi r3, r1, 8
/* 802EF540  48 00 00 24 */	b lbl_802EF564
lbl_802EF544:
/* 802EF544  88 99 01 20 */	lbz r4, 0x120(r25)
/* 802EF548  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802EF54C  7C C0 28 30 */	slw r0, r6, r5
/* 802EF550  7C 84 00 38 */	and r4, r4, r0
/* 802EF554  30 04 FF FF */	addic r0, r4, -1
/* 802EF558  7C 00 21 10 */	subfe r0, r0, r4
/* 802EF55C  7C 03 29 AE */	stbx r0, r3, r5
/* 802EF560  38 E7 00 01 */	addi r7, r7, 1
lbl_802EF564:
/* 802EF564  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802EF568  28 00 00 08 */	cmplwi r0, 8
/* 802EF56C  41 80 FF D8 */	blt lbl_802EF544
/* 802EF570  7F C9 F3 78 */	mr r9, r30
/* 802EF574  38 61 00 08 */	addi r3, r1, 8
/* 802EF578  48 00 00 50 */	b lbl_802EF5C8
lbl_802EF57C:
/* 802EF57C  54 C0 10 3A */	slwi r0, r6, 2
/* 802EF580  7C B9 02 14 */	add r5, r25, r0
/* 802EF584  80 85 00 D8 */	lwz r4, 0xd8(r5)
/* 802EF588  55 28 06 3E */	clrlwi r8, r9, 0x18
/* 802EF58C  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802EF590  7C F9 02 14 */	add r7, r25, r0
/* 802EF594  90 87 00 DC */	stw r4, 0xdc(r7)
/* 802EF598  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 802EF59C  90 07 00 FC */	stw r0, 0xfc(r7)
/* 802EF5A0  54 C4 08 3C */	slwi r4, r6, 1
/* 802EF5A4  38 04 00 02 */	addi r0, r4, 2
/* 802EF5A8  7C B9 02 2E */	lhzx r5, r25, r0
/* 802EF5AC  55 24 0D FC */	rlwinm r4, r9, 1, 0x17, 0x1e
/* 802EF5B0  38 04 00 04 */	addi r0, r4, 4
/* 802EF5B4  7C B9 03 2E */	sthx r5, r25, r0
/* 802EF5B8  38 06 FF FF */	addi r0, r6, -1
/* 802EF5BC  7C 03 00 AE */	lbzx r0, r3, r0
/* 802EF5C0  7C 03 41 AE */	stbx r0, r3, r8
/* 802EF5C4  39 29 FF FF */	addi r9, r9, -1
lbl_802EF5C8:
/* 802EF5C8  55 26 06 3E */	clrlwi r6, r9, 0x18
/* 802EF5CC  7C 06 D0 40 */	cmplw r6, r26
/* 802EF5D0  41 81 FF AC */	bgt lbl_802EF57C
/* 802EF5D4  57 40 10 3A */	slwi r0, r26, 2
/* 802EF5D8  7C 79 02 14 */	add r3, r25, r0
/* 802EF5DC  93 E3 00 DC */	stw r31, 0xdc(r3)
/* 802EF5E0  38 00 00 00 */	li r0, 0
/* 802EF5E4  98 19 01 20 */	stb r0, 0x120(r25)
/* 802EF5E8  38 E0 00 00 */	li r7, 0
/* 802EF5EC  38 A1 00 08 */	addi r5, r1, 8
/* 802EF5F0  38 60 00 01 */	li r3, 1
/* 802EF5F4  48 00 00 28 */	b lbl_802EF61C
lbl_802EF5F8:
/* 802EF5F8  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802EF5FC  7C 05 30 AE */	lbzx r0, r5, r6
/* 802EF600  28 00 00 00 */	cmplwi r0, 0
/* 802EF604  41 82 00 14 */	beq lbl_802EF618
/* 802EF608  88 99 01 20 */	lbz r4, 0x120(r25)
/* 802EF60C  7C 60 30 30 */	slw r0, r3, r6
/* 802EF610  7C 80 03 78 */	or r0, r4, r0
/* 802EF614  98 19 01 20 */	stb r0, 0x120(r25)
lbl_802EF618:
/* 802EF618  38 E7 00 01 */	addi r7, r7, 1
lbl_802EF61C:
/* 802EF61C  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802EF620  28 00 00 08 */	cmplwi r0, 8
/* 802EF624  41 80 FF D4 */	blt lbl_802EF5F8
/* 802EF628  88 79 01 20 */	lbz r3, 0x120(r25)
/* 802EF62C  38 00 00 01 */	li r0, 1
/* 802EF630  7C 00 D0 30 */	slw r0, r0, r26
/* 802EF634  7C 60 03 78 */	or r0, r3, r0
/* 802EF638  98 19 01 20 */	stb r0, 0x120(r25)
lbl_802EF63C:
/* 802EF63C  38 80 00 00 */	li r4, 0
/* 802EF640  57 40 10 3A */	slwi r0, r26, 2
/* 802EF644  7C 79 02 14 */	add r3, r25, r0
/* 802EF648  90 83 00 FC */	stw r4, 0xfc(r3)
/* 802EF64C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EF650  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EF654  57 40 08 3C */	slwi r0, r26, 1
/* 802EF658  7C 79 02 14 */	add r3, r25, r0
/* 802EF65C  B0 83 00 04 */	sth r4, 4(r3)
/* 802EF660  38 60 00 01 */	li r3, 1
lbl_802EF664:
/* 802EF664  39 61 00 30 */	addi r11, r1, 0x30
/* 802EF668  48 07 2B B1 */	bl _restgpr_25
/* 802EF66C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EF670  7C 08 03 A6 */	mtlr r0
/* 802EF674  38 21 00 30 */	addi r1, r1, 0x30
/* 802EF678  4E 80 00 20 */	blr 
