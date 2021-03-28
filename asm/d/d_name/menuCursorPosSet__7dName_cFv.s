lbl_8024FAF4:
/* 8024FAF4  88 03 02 AF */	lbz r0, 0x2af(r3)
/* 8024FAF8  98 03 02 B0 */	stb r0, 0x2b0(r3)
/* 8024FAFC  38 00 00 03 */	li r0, 3
/* 8024FB00  98 03 02 AF */	stb r0, 0x2af(r3)
/* 8024FB04  4E 80 00 20 */	blr 
