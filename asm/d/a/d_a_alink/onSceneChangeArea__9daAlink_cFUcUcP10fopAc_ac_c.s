lbl_800CF314:
/* 800CF314  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800CF318  B0 03 31 12 */	sth r0, 0x3112(r3)
/* 800CF31C  98 A3 2F AC */	stb r5, 0x2fac(r3)
/* 800CF320  90 C3 28 08 */	stw r6, 0x2808(r3)
/* 800CF324  4E 80 00 20 */	blr 
