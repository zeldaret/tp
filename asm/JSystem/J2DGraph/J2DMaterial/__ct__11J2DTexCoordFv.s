lbl_802EB260:
/* 802EB260  3C 80 80 3A */	lis r4, j2dDefaultTexCoordInfo@ha
/* 802EB264  8C 04 1B 80 */	lbzu r0, j2dDefaultTexCoordInfo@l(r4)
/* 802EB268  98 03 00 00 */	stb r0, 0(r3)
/* 802EB26C  88 04 00 01 */	lbz r0, 1(r4)
/* 802EB270  98 03 00 01 */	stb r0, 1(r3)
/* 802EB274  88 04 00 02 */	lbz r0, 2(r4)
/* 802EB278  98 03 00 02 */	stb r0, 2(r3)
/* 802EB27C  4E 80 00 20 */	blr 
