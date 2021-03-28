lbl_80AF49E4:
/* 80AF49E4  2C 04 00 00 */	cmpwi r4, 0
/* 80AF49E8  4D 80 00 20 */	bltlr 
/* 80AF49EC  2C 04 00 06 */	cmpwi r4, 6
/* 80AF49F0  4C 80 00 20 */	bgelr 
/* 80AF49F4  A8 03 0E 14 */	lha r0, 0xe14(r3)
/* 80AF49F8  7C 04 00 00 */	cmpw r4, r0
/* 80AF49FC  4D 82 00 20 */	beqlr 
/* 80AF4A00  B0 83 0E 14 */	sth r4, 0xe14(r3)
/* 80AF4A04  4E 80 00 20 */	blr 
