lbl_8024A13C:
/* 8024A13C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024A140  7C 08 02 A6 */	mflr r0
/* 8024A144  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024A148  39 61 00 30 */	addi r11, r1, 0x30
/* 8024A14C  48 11 80 81 */	bl _savegpr_25
/* 8024A150  7C 7A 1B 78 */	mr r26, r3
/* 8024A154  7C 9B 23 78 */	mr r27, r4
/* 8024A158  7C BC 2B 78 */	mr r28, r5
/* 8024A15C  4B FE E0 D1 */	bl getStatus__12dMsgObject_cFv
/* 8024A160  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024A164  20 60 00 01 */	subfic r3, r0, 1
/* 8024A168  30 03 FF FF */	addic r0, r3, -1
/* 8024A16C  7C 00 19 10 */	subfe r0, r0, r3
/* 8024A170  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8024A174  41 82 00 0C */	beq lbl_8024A180
/* 8024A178  38 60 00 00 */	li r3, 0
/* 8024A17C  48 00 01 44 */	b lbl_8024A2C0
lbl_8024A180:
/* 8024A180  3B E0 00 00 */	li r31, 0
/* 8024A184  3B C0 00 00 */	li r30, 0
/* 8024A188  3B A0 00 00 */	li r29, 0
/* 8024A18C  7F 43 D3 78 */	mr r3, r26
/* 8024A190  A0 9A 00 1C */	lhz r4, 0x1c(r26)
/* 8024A194  48 00 05 F1 */	bl getInitNodeIndex__10dMsgFlow_cFUs
/* 8024A198  48 00 00 FC */	b lbl_8024A294
lbl_8024A19C:
/* 8024A19C  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 8024A1A0  54 60 1B 78 */	rlwinm r0, r3, 3, 0xd, 0x1c
/* 8024A1A4  7C A4 02 14 */	add r5, r4, r0
/* 8024A1A8  88 05 00 00 */	lbz r0, 0(r5)
/* 8024A1AC  2C 00 00 02 */	cmpwi r0, 2
/* 8024A1B0  41 82 00 30 */	beq lbl_8024A1E0
/* 8024A1B4  40 80 00 14 */	bge lbl_8024A1C8
/* 8024A1B8  2C 00 00 00 */	cmpwi r0, 0
/* 8024A1BC  41 82 00 D8 */	beq lbl_8024A294
/* 8024A1C0  40 80 00 14 */	bge lbl_8024A1D4
/* 8024A1C4  48 00 00 D0 */	b lbl_8024A294
lbl_8024A1C8:
/* 8024A1C8  2C 00 00 04 */	cmpwi r0, 4
/* 8024A1CC  40 80 00 C8 */	bge lbl_8024A294
/* 8024A1D0  48 00 00 7C */	b lbl_8024A24C
lbl_8024A1D4:
/* 8024A1D4  A0 65 00 04 */	lhz r3, 4(r5)
/* 8024A1D8  3B DE 00 01 */	addi r30, r30, 1
/* 8024A1DC  48 00 00 B8 */	b lbl_8024A294
lbl_8024A1E0:
/* 8024A1E0  7C B9 2B 78 */	mr r25, r5
/* 8024A1E4  A0 E5 00 02 */	lhz r7, 2(r5)
/* 8024A1E8  28 07 00 19 */	cmplwi r7, 0x19
/* 8024A1EC  41 81 00 20 */	bgt lbl_8024A20C
/* 8024A1F0  3C 60 80 3C */	lis r3, lit_4645@ha
/* 8024A1F4  38 63 15 1C */	addi r3, r3, lit_4645@l
/* 8024A1F8  54 E0 10 3A */	slwi r0, r7, 2
/* 8024A1FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8024A200  7C 09 03 A6 */	mtctr r0
/* 8024A204  4E 80 04 20 */	bctr 
/* 8024A208  3B A0 00 01 */	li r29, 1
lbl_8024A20C:
/* 8024A20C  7F 43 D3 78 */	mr r3, r26
/* 8024A210  7F 24 CB 78 */	mr r4, r25
/* 8024A214  7F 65 DB 78 */	mr r5, r27
/* 8024A218  38 C0 00 00 */	li r6, 0
/* 8024A21C  1D 07 00 0C */	mulli r8, r7, 0xc
/* 8024A220  3C E0 80 3C */	lis r7, mQueryList__10dMsgFlow_c@ha
/* 8024A224  38 07 18 4C */	addi r0, r7, mQueryList__10dMsgFlow_c@l
/* 8024A228  7D 80 42 14 */	add r12, r0, r8
/* 8024A22C  48 11 7E 59 */	bl __ptmf_scall
/* 8024A230  60 00 00 00 */	nop 
/* 8024A234  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 8024A238  A0 19 00 06 */	lhz r0, 6(r25)
/* 8024A23C  7C 00 1A 14 */	add r0, r0, r3
/* 8024A240  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024A244  7C 64 02 2E */	lhzx r3, r4, r0
/* 8024A248  48 00 00 4C */	b lbl_8024A294
lbl_8024A24C:
/* 8024A24C  88 85 00 01 */	lbz r4, 1(r5)
/* 8024A250  38 04 FF F8 */	addi r0, r4, -8
/* 8024A254  28 00 00 15 */	cmplwi r0, 0x15
/* 8024A258  41 81 00 2C */	bgt lbl_8024A284
/* 8024A25C  3C 80 80 3C */	lis r4, lit_4646@ha
/* 8024A260  38 84 14 C4 */	addi r4, r4, lit_4646@l
/* 8024A264  54 00 10 3A */	slwi r0, r0, 2
/* 8024A268  7C 04 00 2E */	lwzx r0, r4, r0
/* 8024A26C  7C 09 03 A6 */	mtctr r0
/* 8024A270  4E 80 04 20 */	bctr 
/* 8024A274  3B E0 00 01 */	li r31, 1
/* 8024A278  48 00 00 1C */	b lbl_8024A294
/* 8024A27C  3B A0 00 01 */	li r29, 1
/* 8024A280  48 00 00 14 */	b lbl_8024A294
lbl_8024A284:
/* 8024A284  80 7A 00 14 */	lwz r3, 0x14(r26)
/* 8024A288  A0 05 00 02 */	lhz r0, 2(r5)
/* 8024A28C  54 00 08 3C */	slwi r0, r0, 1
/* 8024A290  7C 63 02 2E */	lhzx r3, r3, r0
lbl_8024A294:
/* 8024A294  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024A298  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A29C  41 82 00 14 */	beq lbl_8024A2B0
/* 8024A2A0  2C 1F 00 00 */	cmpwi r31, 0
/* 8024A2A4  40 82 00 0C */	bne lbl_8024A2B0
/* 8024A2A8  2C 1D 00 00 */	cmpwi r29, 0
/* 8024A2AC  41 82 FE F0 */	beq lbl_8024A19C
lbl_8024A2B0:
/* 8024A2B0  28 1C 00 00 */	cmplwi r28, 0
/* 8024A2B4  41 82 00 08 */	beq lbl_8024A2BC
/* 8024A2B8  93 DC 00 00 */	stw r30, 0(r28)
lbl_8024A2BC:
/* 8024A2BC  7F E3 FB 78 */	mr r3, r31
lbl_8024A2C0:
/* 8024A2C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8024A2C4  48 11 7F 55 */	bl _restgpr_25
/* 8024A2C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024A2CC  7C 08 03 A6 */	mtlr r0
/* 8024A2D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8024A2D4  4E 80 00 20 */	blr 
