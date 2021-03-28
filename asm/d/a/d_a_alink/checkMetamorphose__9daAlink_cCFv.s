lbl_800D09EC:
/* 800D09EC  38 80 00 00 */	li r4, 0
/* 800D09F0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D09F4  28 00 01 4D */	cmplwi r0, 0x14d
/* 800D09F8  40 82 00 14 */	bne lbl_800D0A0C
/* 800D09FC  A8 03 30 0A */	lha r0, 0x300a(r3)
/* 800D0A00  2C 00 00 00 */	cmpwi r0, 0
/* 800D0A04  40 82 00 08 */	bne lbl_800D0A0C
/* 800D0A08  38 80 00 01 */	li r4, 1
lbl_800D0A0C:
/* 800D0A0C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800D0A10  4E 80 00 20 */	blr 
