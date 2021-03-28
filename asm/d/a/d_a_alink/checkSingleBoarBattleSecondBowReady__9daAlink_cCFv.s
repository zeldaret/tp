lbl_800D07D4:
/* 800D07D4  38 80 00 00 */	li r4, 0
/* 800D07D8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D07DC  28 00 00 45 */	cmplwi r0, 0x45
/* 800D07E0  40 82 00 14 */	bne lbl_800D07F4
/* 800D07E4  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800D07E8  2C 00 00 00 */	cmpwi r0, 0
/* 800D07EC  41 82 00 08 */	beq lbl_800D07F4
/* 800D07F0  38 80 00 01 */	li r4, 1
lbl_800D07F4:
/* 800D07F4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800D07F8  4E 80 00 20 */	blr 
