lbl_8014CA18:
/* 8014CA18  1C 84 00 14 */	mulli r4, r4, 0x14
/* 8014CA1C  38 04 00 5E */	addi r0, r4, 0x5e
/* 8014CA20  7C 03 02 14 */	add r0, r3, r0
/* 8014CA24  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8014CA28  4E 80 00 20 */	blr 
