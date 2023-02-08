lbl_802EB280:
/* 802EB280  38 82 C7 A8 */	la r4, j2dDefaultColorChanInfo(r2) /* 804561A8-_SDA2_BASE_ */
/* 802EB284  88 04 00 01 */	lbz r0, 1(r4)
/* 802EB288  B0 03 00 00 */	sth r0, 0(r3)
/* 802EB28C  4E 80 00 20 */	blr 
