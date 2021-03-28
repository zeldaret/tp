lbl_805BA3B0:
/* 805BA3B0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 805BA3B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805BA3B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805BA3BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 805BA3C0  4E 80 00 20 */	blr 
