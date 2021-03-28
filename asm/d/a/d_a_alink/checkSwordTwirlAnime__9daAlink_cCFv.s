lbl_800B93CC:
/* 800B93CC  38 80 00 00 */	li r4, 0
/* 800B93D0  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800B93D4  28 00 00 40 */	cmplwi r0, 0x40
/* 800B93D8  41 82 00 10 */	beq lbl_800B93E8
/* 800B93DC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B93E0  28 00 00 3F */	cmplwi r0, 0x3f
/* 800B93E4  40 82 00 08 */	bne lbl_800B93EC
lbl_800B93E8:
/* 800B93E8  38 80 00 01 */	li r4, 1
lbl_800B93EC:
/* 800B93EC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800B93F0  4E 80 00 20 */	blr 
