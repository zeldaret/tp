lbl_802E45A4:
/* 802E45A4  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 802E45A8  7C 08 02 A6 */	mflr r0
/* 802E45AC  90 01 01 34 */	stw r0, 0x134(r1)
/* 802E45B0  39 61 01 30 */	addi r11, r1, 0x130
/* 802E45B4  48 07 DC 15 */	bl _savegpr_24
/* 802E45B8  7C 79 1B 78 */	mr r25, r3
/* 802E45BC  7C 9A 23 78 */	mr r26, r4
/* 802E45C0  7C BB 2B 78 */	mr r27, r5
/* 802E45C4  7D 18 43 78 */	mr r24, r8
/* 802E45C8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802E45CC  28 00 00 00 */	cmplwi r0, 0
/* 802E45D0  41 82 00 F0 */	beq lbl_802E46C0
/* 802E45D4  38 61 00 08 */	addi r3, r1, 8
/* 802E45D8  38 80 01 00 */	li r4, 0x100
/* 802E45DC  7C C5 33 78 */	mr r5, r6
/* 802E45E0  7C E6 3B 78 */	mr r6, r7
/* 802E45E4  48 08 20 AD */	bl vsnprintf
/* 802E45E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E45EC  7F 5D D3 78 */	mr r29, r26
/* 802E45F0  40 81 00 C4 */	ble lbl_802E46B4
/* 802E45F4  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 802E45F8  41 82 00 28 */	beq lbl_802E4620
/* 802E45FC  7F 23 CB 78 */	mr r3, r25
/* 802E4600  57 44 04 3E */	clrlwi r4, r26, 0x10
/* 802E4604  38 84 FF FA */	addi r4, r4, -6
/* 802E4608  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 802E460C  38 A5 FF FD */	addi r5, r5, -3
/* 802E4610  38 1E 00 02 */	addi r0, r30, 2
/* 802E4614  1C C0 00 06 */	mulli r6, r0, 6
/* 802E4618  38 E0 00 0D */	li r7, 0xd
/* 802E461C  4B FF FC 6D */	bl erase__14JUTDirectPrintFiiii
lbl_802E4620:
/* 802E4620  3B 81 00 08 */	addi r28, r1, 8
/* 802E4624  57 5F 04 3E */	clrlwi r31, r26, 0x10
/* 802E4628  3C 60 80 3D */	lis r3, sAsciiTable__14JUTDirectPrint@ha
/* 802E462C  3B 03 C6 B8 */	addi r24, r3, sAsciiTable__14JUTDirectPrint@l
/* 802E4630  48 00 00 7C */	b lbl_802E46AC
lbl_802E4634:
/* 802E4634  88 1C 00 00 */	lbz r0, 0(r28)
/* 802E4638  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802E463C  7C D8 00 AE */	lbzx r6, r24, r0
/* 802E4640  2C 06 00 FE */	cmpwi r6, 0xfe
/* 802E4644  40 82 00 10 */	bne lbl_802E4654
/* 802E4648  7F BA EB 78 */	mr r26, r29
/* 802E464C  3B 7B 00 07 */	addi r27, r27, 7
/* 802E4650  48 00 00 54 */	b lbl_802E46A4
lbl_802E4654:
/* 802E4654  2C 06 00 FD */	cmpwi r6, 0xfd
/* 802E4658  40 82 00 30 */	bne lbl_802E4688
/* 802E465C  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 802E4660  7C 7F 28 50 */	subf r3, r31, r5
/* 802E4664  38 83 00 2F */	addi r4, r3, 0x2f
/* 802E4668  38 60 00 30 */	li r3, 0x30
/* 802E466C  7C 04 1B D6 */	divw r0, r4, r3
/* 802E4670  7C 00 19 D6 */	mullw r0, r0, r3
/* 802E4674  7C 60 20 50 */	subf r3, r0, r4
/* 802E4678  38 05 00 30 */	addi r0, r5, 0x30
/* 802E467C  7C 03 00 50 */	subf r0, r3, r0
/* 802E4680  54 1A 04 3E */	clrlwi r26, r0, 0x10
/* 802E4684  48 00 00 20 */	b lbl_802E46A4
lbl_802E4688:
/* 802E4688  2C 06 00 FF */	cmpwi r6, 0xff
/* 802E468C  41 82 00 14 */	beq lbl_802E46A0
/* 802E4690  7F 23 CB 78 */	mr r3, r25
/* 802E4694  57 44 04 3E */	clrlwi r4, r26, 0x10
/* 802E4698  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 802E469C  4B FF FC 81 */	bl drawChar__14JUTDirectPrintFiii
lbl_802E46A0:
/* 802E46A0  3B 5A 00 06 */	addi r26, r26, 6
lbl_802E46A4:
/* 802E46A4  3B DE FF FF */	addi r30, r30, -1
/* 802E46A8  3B 9C 00 01 */	addi r28, r28, 1
lbl_802E46AC:
/* 802E46AC  2C 1E 00 00 */	cmpwi r30, 0
/* 802E46B0  41 81 FF 84 */	bgt lbl_802E4634
lbl_802E46B4:
/* 802E46B4  80 79 00 14 */	lwz r3, 0x14(r25)
/* 802E46B8  80 99 00 0C */	lwz r4, 0xc(r25)
/* 802E46BC  48 05 6F 21 */	bl DCStoreRange
lbl_802E46C0:
/* 802E46C0  39 61 01 30 */	addi r11, r1, 0x130
/* 802E46C4  48 07 DB 51 */	bl _restgpr_24
/* 802E46C8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802E46CC  7C 08 03 A6 */	mtlr r0
/* 802E46D0  38 21 01 30 */	addi r1, r1, 0x130
/* 802E46D4  4E 80 00 20 */	blr 
