lbl_8025BEDC:
/* 8025BEDC  38 C0 00 00 */	li r6, 0
/* 8025BEE0  38 80 00 00 */	li r4, 0
/* 8025BEE4  38 00 00 20 */	li r0, 0x20
/* 8025BEE8  7C 09 03 A6 */	mtctr r0
lbl_8025BEEC:
/* 8025BEEC  7C A3 32 14 */	add r5, r3, r6
/* 8025BEF0  98 85 00 05 */	stb r4, 5(r5)
/* 8025BEF4  88 05 00 05 */	lbz r0, 5(r5)
/* 8025BEF8  98 05 00 25 */	stb r0, 0x25(r5)
/* 8025BEFC  38 C6 00 01 */	addi r6, r6, 1
/* 8025BF00  42 00 FF EC */	bdnz lbl_8025BEEC
/* 8025BF04  4E 80 00 20 */	blr 
