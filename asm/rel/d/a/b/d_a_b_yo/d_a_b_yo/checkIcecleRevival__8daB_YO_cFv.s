lbl_80633EDC:
/* 80633EDC  38 A0 00 00 */	li r5, 0
/* 80633EE0  A0 03 0F 6E */	lhz r0, 0xf6e(r3)
/* 80633EE4  28 00 03 FF */	cmplwi r0, 0x3ff
/* 80633EE8  40 82 00 60 */	bne lbl_80633F48
/* 80633EEC  88 83 0F B2 */	lbz r4, 0xfb2(r3)
/* 80633EF0  28 04 00 00 */	cmplwi r4, 0
/* 80633EF4  41 82 00 54 */	beq lbl_80633F48
/* 80633EF8  38 04 FF FF */	addi r0, r4, -1
/* 80633EFC  98 03 0F B2 */	stb r0, 0xfb2(r3)
/* 80633F00  88 03 0F B2 */	lbz r0, 0xfb2(r3)
/* 80633F04  28 00 00 00 */	cmplwi r0, 0
/* 80633F08  40 82 00 40 */	bne lbl_80633F48
/* 80633F0C  88 83 0F B1 */	lbz r4, 0xfb1(r3)
/* 80633F10  88 A3 0F B3 */	lbz r5, 0xfb3(r3)
/* 80633F14  7C 80 28 39 */	and. r0, r4, r5
/* 80633F18  40 82 00 24 */	bne lbl_80633F3C
/* 80633F1C  7C 80 2B 78 */	or r0, r4, r5
/* 80633F20  98 03 0F B1 */	stb r0, 0xfb1(r3)
/* 80633F24  88 83 0F B1 */	lbz r4, 0xfb1(r3)
/* 80633F28  88 03 0F B3 */	lbz r0, 0xfb3(r3)
/* 80633F2C  7C 80 03 78 */	or r0, r4, r0
/* 80633F30  98 03 0F B1 */	stb r0, 0xfb1(r3)
/* 80633F34  38 60 00 02 */	li r3, 2
/* 80633F38  4E 80 00 20 */	blr 
lbl_80633F3C:
/* 80633F3C  38 00 00 00 */	li r0, 0
/* 80633F40  B0 03 0F 6E */	sth r0, 0xf6e(r3)
/* 80633F44  38 A0 00 01 */	li r5, 1
lbl_80633F48:
/* 80633F48  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80633F4C  4E 80 00 20 */	blr 
