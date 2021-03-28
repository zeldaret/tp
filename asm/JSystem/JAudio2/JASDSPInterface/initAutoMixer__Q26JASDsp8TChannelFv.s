lbl_8029DEC4:
/* 8029DEC4  A0 03 00 58 */	lhz r0, 0x58(r3)
/* 8029DEC8  28 00 00 00 */	cmplwi r0, 0
/* 8029DECC  41 82 00 10 */	beq lbl_8029DEDC
/* 8029DED0  A0 03 00 56 */	lhz r0, 0x56(r3)
/* 8029DED4  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8029DED8  4E 80 00 20 */	blr 
lbl_8029DEDC:
/* 8029DEDC  38 00 00 00 */	li r0, 0
/* 8029DEE0  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8029DEE4  38 00 00 01 */	li r0, 1
/* 8029DEE8  B0 03 00 58 */	sth r0, 0x58(r3)
/* 8029DEEC  4E 80 00 20 */	blr 
