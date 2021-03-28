lbl_800ECDEC:
/* 800ECDEC  38 80 00 00 */	li r4, 0
/* 800ECDF0  88 63 2F AB */	lbz r3, 0x2fab(r3)
/* 800ECDF4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800ECDF8  41 82 00 10 */	beq lbl_800ECE08
/* 800ECDFC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800ECE00  40 82 00 08 */	bne lbl_800ECE08
/* 800ECE04  38 80 00 01 */	li r4, 1
lbl_800ECE08:
/* 800ECE08  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800ECE0C  4E 80 00 20 */	blr 
