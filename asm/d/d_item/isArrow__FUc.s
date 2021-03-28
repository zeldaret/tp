lbl_8009B6D4:
/* 8009B6D4  38 A0 00 00 */	li r5, 0
/* 8009B6D8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8009B6DC  28 04 00 11 */	cmplwi r4, 0x11
/* 8009B6E0  41 82 00 1C */	beq lbl_8009B6FC
/* 8009B6E4  38 03 FF F2 */	addi r0, r3, -14
/* 8009B6E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8009B6EC  28 00 00 01 */	cmplwi r0, 1
/* 8009B6F0  40 81 00 0C */	ble lbl_8009B6FC
/* 8009B6F4  28 04 00 10 */	cmplwi r4, 0x10
/* 8009B6F8  40 82 00 08 */	bne lbl_8009B700
lbl_8009B6FC:
/* 8009B6FC  38 A0 00 01 */	li r5, 1
lbl_8009B700:
/* 8009B700  7C A3 2B 78 */	mr r3, r5
/* 8009B704  4E 80 00 20 */	blr 
