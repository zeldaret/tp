lbl_80C019A4:
/* 80C019A4  1C 84 00 14 */	mulli r4, r4, 0x14
/* 80C019A8  38 04 00 5E */	addi r0, r4, 0x5e
/* 80C019AC  7C 03 02 14 */	add r0, r3, r0
/* 80C019B0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C019B4  4E 80 00 20 */	blr 
