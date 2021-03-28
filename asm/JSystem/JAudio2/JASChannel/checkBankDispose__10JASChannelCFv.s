lbl_8029BCC0:
/* 8029BCC0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8029BCC4  28 05 00 00 */	cmplwi r5, 0
/* 8029BCC8  40 82 00 0C */	bne lbl_8029BCD4
/* 8029BCCC  38 60 00 00 */	li r3, 0
/* 8029BCD0  4E 80 00 20 */	blr 
lbl_8029BCD4:
/* 8029BCD4  38 60 00 00 */	li r3, 0
/* 8029BCD8  80 0D 8D 18 */	lwz r0, sBankDisposeListSize__10JASChannel(r13)
/* 8029BCDC  3C 80 80 43 */	lis r4, sBankDisposeList__10JASChannel@ha
/* 8029BCE0  38 84 1B F0 */	addi r4, r4, sBankDisposeList__10JASChannel@l
/* 8029BCE4  7C 09 03 A6 */	mtctr r0
/* 8029BCE8  2C 00 00 00 */	cmpwi r0, 0
/* 8029BCEC  40 81 00 20 */	ble lbl_8029BD0C
lbl_8029BCF0:
/* 8029BCF0  7C 04 18 2E */	lwzx r0, r4, r3
/* 8029BCF4  7C 05 00 40 */	cmplw r5, r0
/* 8029BCF8  40 82 00 0C */	bne lbl_8029BD04
/* 8029BCFC  38 60 00 01 */	li r3, 1
/* 8029BD00  4E 80 00 20 */	blr 
lbl_8029BD04:
/* 8029BD04  38 63 00 04 */	addi r3, r3, 4
/* 8029BD08  42 00 FF E8 */	bdnz lbl_8029BCF0
lbl_8029BD0C:
/* 8029BD0C  38 60 00 00 */	li r3, 0
/* 8029BD10  4E 80 00 20 */	blr 
