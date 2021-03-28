lbl_8029D540:
/* 8029D540  38 C0 00 FF */	li r6, 0xff
/* 8029D544  38 E0 FF FF */	li r7, -1
/* 8029D548  39 00 00 00 */	li r8, 0
/* 8029D54C  39 20 00 00 */	li r9, 0
/* 8029D550  38 80 00 00 */	li r4, 0
/* 8029D554  80 AD 8D 60 */	lwz r5, sDspChannels__13JASDSPChannel(r13)
/* 8029D558  38 00 00 40 */	li r0, 0x40
/* 8029D55C  7C 09 03 A6 */	mtctr r0
lbl_8029D560:
/* 8029D560  7D 45 22 14 */	add r10, r5, r4
/* 8029D564  A9 6A 00 04 */	lha r11, 4(r10)
/* 8029D568  7D 60 07 35 */	extsh. r0, r11
/* 8029D56C  40 80 00 0C */	bge lbl_8029D578
/* 8029D570  7D 43 53 78 */	mr r3, r10
/* 8029D574  4E 80 00 20 */	blr 
lbl_8029D578:
/* 8029D578  7C 0B 18 00 */	cmpw r11, r3
/* 8029D57C  41 81 00 2C */	bgt lbl_8029D5A8
/* 8029D580  7C C0 07 34 */	extsh r0, r6
/* 8029D584  7C 0B 00 00 */	cmpw r11, r0
/* 8029D588  41 81 00 20 */	bgt lbl_8029D5A8
/* 8029D58C  40 82 00 10 */	bne lbl_8029D59C
/* 8029D590  80 0A 00 0C */	lwz r0, 0xc(r10)
/* 8029D594  7C 00 40 40 */	cmplw r0, r8
/* 8029D598  40 81 00 10 */	ble lbl_8029D5A8
lbl_8029D59C:
/* 8029D59C  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 8029D5A0  7D 27 4B 78 */	mr r7, r9
/* 8029D5A4  7D 66 5B 78 */	mr r6, r11
lbl_8029D5A8:
/* 8029D5A8  39 29 00 01 */	addi r9, r9, 1
/* 8029D5AC  38 84 00 1C */	addi r4, r4, 0x1c
/* 8029D5B0  42 00 FF B0 */	bdnz lbl_8029D560
/* 8029D5B4  2C 07 00 00 */	cmpwi r7, 0
/* 8029D5B8  40 80 00 0C */	bge lbl_8029D5C4
/* 8029D5BC  38 60 00 00 */	li r3, 0
/* 8029D5C0  4E 80 00 20 */	blr 
lbl_8029D5C4:
/* 8029D5C4  1C 07 00 1C */	mulli r0, r7, 0x1c
/* 8029D5C8  7C 65 02 14 */	add r3, r5, r0
/* 8029D5CC  4E 80 00 20 */	blr 
