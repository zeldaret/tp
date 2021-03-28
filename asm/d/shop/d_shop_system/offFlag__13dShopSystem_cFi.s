lbl_801975DC:
/* 801975DC  A0 A3 0F 6A */	lhz r5, 0xf6a(r3)
/* 801975E0  38 00 00 01 */	li r0, 1
/* 801975E4  7C 00 20 30 */	slw r0, r0, r4
/* 801975E8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801975EC  7C A0 00 78 */	andc r0, r5, r0
/* 801975F0  B0 03 0F 6A */	sth r0, 0xf6a(r3)
/* 801975F4  4E 80 00 20 */	blr 
