lbl_8025BCE4:
/* 8025BCE4  38 C0 00 00 */	li r6, 0
/* 8025BCE8  38 80 00 00 */	li r4, 0
/* 8025BCEC  38 00 00 20 */	li r0, 0x20
/* 8025BCF0  7C 09 03 A6 */	mtctr r0
lbl_8025BCF4:
/* 8025BCF4  7C A3 32 14 */	add r5, r3, r6
/* 8025BCF8  98 85 00 05 */	stb r4, 5(r5)
/* 8025BCFC  88 05 00 05 */	lbz r0, 5(r5)
/* 8025BD00  98 05 00 25 */	stb r0, 0x25(r5)
/* 8025BD04  38 C6 00 01 */	addi r6, r6, 1
/* 8025BD08  42 00 FF EC */	bdnz lbl_8025BCF4
/* 8025BD0C  4E 80 00 20 */	blr 
