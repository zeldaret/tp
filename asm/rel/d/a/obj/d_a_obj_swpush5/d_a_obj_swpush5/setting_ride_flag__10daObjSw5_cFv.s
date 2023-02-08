lbl_8059BC70:
/* 8059BC70  88 83 05 AC */	lbz r4, 0x5ac(r3)
/* 8059BC74  28 04 00 00 */	cmplwi r4, 0
/* 8059BC78  41 82 00 0C */	beq lbl_8059BC84
/* 8059BC7C  38 04 FF FF */	addi r0, r4, -1
/* 8059BC80  98 03 05 AC */	stb r0, 0x5ac(r3)
lbl_8059BC84:
/* 8059BC84  88 03 05 AE */	lbz r0, 0x5ae(r3)
/* 8059BC88  28 00 00 00 */	cmplwi r0, 0
/* 8059BC8C  41 82 00 5C */	beq lbl_8059BCE8
/* 8059BC90  88 03 05 B1 */	lbz r0, 0x5b1(r3)
/* 8059BC94  28 00 00 00 */	cmplwi r0, 0
/* 8059BC98  41 82 00 10 */	beq lbl_8059BCA8
/* 8059BC9C  38 00 00 08 */	li r0, 8
/* 8059BCA0  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 8059BCA4  48 00 00 24 */	b lbl_8059BCC8
lbl_8059BCA8:
/* 8059BCA8  88 83 05 B0 */	lbz r4, 0x5b0(r3)
/* 8059BCAC  38 04 00 01 */	addi r0, r4, 1
/* 8059BCB0  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 8059BCB4  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 8059BCB8  28 00 00 08 */	cmplwi r0, 8
/* 8059BCBC  40 81 00 0C */	ble lbl_8059BCC8
/* 8059BCC0  38 00 00 01 */	li r0, 1
/* 8059BCC4  98 03 05 B1 */	stb r0, 0x5b1(r3)
lbl_8059BCC8:
/* 8059BCC8  88 83 05 B3 */	lbz r4, 0x5b3(r3)
/* 8059BCCC  88 03 05 B2 */	lbz r0, 0x5b2(r3)
/* 8059BCD0  7C 04 00 40 */	cmplw r4, r0
/* 8059BCD4  4D 82 00 20 */	beqlr 
/* 8059BCD8  38 00 00 00 */	li r0, 0
/* 8059BCDC  98 03 05 B1 */	stb r0, 0x5b1(r3)
/* 8059BCE0  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 8059BCE4  4E 80 00 20 */	blr 
lbl_8059BCE8:
/* 8059BCE8  88 03 05 B1 */	lbz r0, 0x5b1(r3)
/* 8059BCEC  28 00 00 00 */	cmplwi r0, 0
/* 8059BCF0  41 82 00 28 */	beq lbl_8059BD18
/* 8059BCF4  88 83 05 B0 */	lbz r4, 0x5b0(r3)
/* 8059BCF8  38 04 FF FF */	addi r0, r4, -1
/* 8059BCFC  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 8059BD00  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 8059BD04  28 00 00 00 */	cmplwi r0, 0
/* 8059BD08  4C 82 00 20 */	bnelr 
/* 8059BD0C  38 00 00 00 */	li r0, 0
/* 8059BD10  98 03 05 B1 */	stb r0, 0x5b1(r3)
/* 8059BD14  4E 80 00 20 */	blr 
lbl_8059BD18:
/* 8059BD18  38 00 00 00 */	li r0, 0
/* 8059BD1C  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 8059BD20  4E 80 00 20 */	blr 
