lbl_80C7ADA4:
/* 80C7ADA4  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C7ADA8  38 84 CA 64 */	addi r4, r4, l_HIO@l
/* 80C7ADAC  88 04 00 14 */	lbz r0, 0x14(r4)
/* 80C7ADB0  98 03 06 0A */	stb r0, 0x60a(r3)
/* 80C7ADB4  38 00 00 07 */	li r0, 7
/* 80C7ADB8  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C7ADBC  4E 80 00 20 */	blr 
