lbl_802DBC14:
/* 802DBC14  39 20 00 00 */	li r9, 0
/* 802DBC18  80 03 00 04 */	lwz r0, 4(r3)
/* 802DBC1C  7C 04 02 14 */	add r0, r4, r0
/* 802DBC20  7C E6 00 50 */	subf r7, r6, r0
/* 802DBC24  28 05 00 00 */	cmplwi r5, 0
/* 802DBC28  4D 82 00 20 */	beqlr 
/* 802DBC2C  80 03 00 00 */	lwz r0, 0(r3)
/* 802DBC30  7C 06 00 40 */	cmplw r6, r0
/* 802DBC34  4D 81 00 20 */	bgtlr 
/* 802DBC38  39 63 00 10 */	addi r11, r3, 0x10
lbl_802DBC3C:
/* 802DBC3C  2C 09 00 00 */	cmpwi r9, 0
/* 802DBC40  40 82 00 10 */	bne lbl_802DBC50
/* 802DBC44  89 4B 00 00 */	lbz r10, 0(r11)
/* 802DBC48  39 20 00 08 */	li r9, 8
/* 802DBC4C  39 6B 00 01 */	addi r11, r11, 1
lbl_802DBC50:
/* 802DBC50  55 40 06 31 */	rlwinm. r0, r10, 0, 0x18, 0x18
/* 802DBC54  41 82 00 30 */	beq lbl_802DBC84
/* 802DBC58  28 06 00 00 */	cmplwi r6, 0
/* 802DBC5C  40 82 00 1C */	bne lbl_802DBC78
/* 802DBC60  88 0B 00 00 */	lbz r0, 0(r11)
/* 802DBC64  98 04 00 00 */	stb r0, 0(r4)
/* 802DBC68  34 A5 FF FF */	addic. r5, r5, -1
/* 802DBC6C  38 84 00 01 */	addi r4, r4, 1
/* 802DBC70  40 82 00 0C */	bne lbl_802DBC7C
/* 802DBC74  4E 80 00 20 */	blr 
lbl_802DBC78:
/* 802DBC78  38 C6 FF FF */	addi r6, r6, -1
lbl_802DBC7C:
/* 802DBC7C  39 6B 00 01 */	addi r11, r11, 1
/* 802DBC80  48 00 00 64 */	b lbl_802DBCE4
lbl_802DBC84:
/* 802DBC84  88 0B 00 01 */	lbz r0, 1(r11)
/* 802DBC88  88 6B 00 00 */	lbz r3, 0(r11)
/* 802DBC8C  50 60 45 2E */	rlwimi r0, r3, 8, 0x14, 0x17
/* 802DBC90  7C 63 26 71 */	srawi. r3, r3, 4
/* 802DBC94  7D 00 20 50 */	subf r8, r0, r4
/* 802DBC98  39 6B 00 02 */	addi r11, r11, 2
/* 802DBC9C  40 82 00 14 */	bne lbl_802DBCB0
/* 802DBCA0  88 6B 00 00 */	lbz r3, 0(r11)
/* 802DBCA4  38 63 00 12 */	addi r3, r3, 0x12
/* 802DBCA8  39 6B 00 01 */	addi r11, r11, 1
/* 802DBCAC  48 00 00 08 */	b lbl_802DBCB4
lbl_802DBCB0:
/* 802DBCB0  38 63 00 02 */	addi r3, r3, 2
lbl_802DBCB4:
/* 802DBCB4  28 06 00 00 */	cmplwi r6, 0
/* 802DBCB8  40 82 00 1C */	bne lbl_802DBCD4
/* 802DBCBC  88 08 FF FF */	lbz r0, -1(r8)
/* 802DBCC0  98 04 00 00 */	stb r0, 0(r4)
/* 802DBCC4  34 A5 FF FF */	addic. r5, r5, -1
/* 802DBCC8  38 84 00 01 */	addi r4, r4, 1
/* 802DBCCC  40 82 00 0C */	bne lbl_802DBCD8
/* 802DBCD0  4E 80 00 20 */	blr 
lbl_802DBCD4:
/* 802DBCD4  38 C6 FF FF */	addi r6, r6, -1
lbl_802DBCD8:
/* 802DBCD8  34 63 FF FF */	addic. r3, r3, -1
/* 802DBCDC  39 08 00 01 */	addi r8, r8, 1
/* 802DBCE0  40 82 FF D4 */	bne lbl_802DBCB4
lbl_802DBCE4:
/* 802DBCE4  55 4A 08 3C */	slwi r10, r10, 1
/* 802DBCE8  7C 04 38 40 */	cmplw r4, r7
/* 802DBCEC  39 29 FF FF */	addi r9, r9, -1
/* 802DBCF0  40 82 FF 4C */	bne lbl_802DBC3C
/* 802DBCF4  4E 80 00 20 */	blr 
