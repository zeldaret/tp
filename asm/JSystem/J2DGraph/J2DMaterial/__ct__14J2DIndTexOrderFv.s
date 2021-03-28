lbl_802EB378:
/* 802EB378  88 02 C7 84 */	lbz r0, j2dDefaultIndTexOrderNull(r2)
/* 802EB37C  98 03 00 00 */	stb r0, 0(r3)
/* 802EB380  38 82 C7 84 */	la r4, j2dDefaultIndTexOrderNull(r2) /* 80456184-_SDA2_BASE_ */
/* 802EB384  88 04 00 01 */	lbz r0, 1(r4)
/* 802EB388  98 03 00 01 */	stb r0, 1(r3)
/* 802EB38C  4E 80 00 20 */	blr 
