lbl_800D04CC:
/* 800D04CC  38 80 00 00 */	li r4, 0
/* 800D04D0  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800D04D4  28 00 00 60 */	cmplwi r0, 0x60
/* 800D04D8  40 82 00 14 */	bne lbl_800D04EC
/* 800D04DC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D04E0  28 00 00 B5 */	cmplwi r0, 0xb5
/* 800D04E4  40 82 00 08 */	bne lbl_800D04EC
/* 800D04E8  38 80 00 01 */	li r4, 1
lbl_800D04EC:
/* 800D04EC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800D04F0  4E 80 00 20 */	blr 
