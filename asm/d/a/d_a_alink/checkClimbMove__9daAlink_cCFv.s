lbl_800D06D8:
/* 800D06D8  38 00 00 00 */	li r0, 0
/* 800D06DC  A0 63 2F E8 */	lhz r3, 0x2fe8(r3)
/* 800D06E0  28 03 00 82 */	cmplwi r3, 0x82
/* 800D06E4  41 82 00 14 */	beq lbl_800D06F8
/* 800D06E8  28 03 00 6B */	cmplwi r3, 0x6b
/* 800D06EC  41 82 00 0C */	beq lbl_800D06F8
/* 800D06F0  28 03 00 83 */	cmplwi r3, 0x83
/* 800D06F4  40 82 00 08 */	bne lbl_800D06FC
lbl_800D06F8:
/* 800D06F8  38 00 00 01 */	li r0, 1
lbl_800D06FC:
/* 800D06FC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800D0700  4E 80 00 20 */	blr 
