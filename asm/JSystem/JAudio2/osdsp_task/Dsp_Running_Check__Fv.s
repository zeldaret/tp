lbl_8029EF80:
/* 8029EF80  88 0D 8D 88 */	lbz r0, struct_80451308+0x0(r13)
/* 8029EF84  20 00 00 01 */	subfic r0, r0, 1
/* 8029EF88  7C 00 00 34 */	cntlzw r0, r0
/* 8029EF8C  54 03 D9 7E */	srwi r3, r0, 5
/* 8029EF90  4E 80 00 20 */	blr 
