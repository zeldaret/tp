lbl_809EC164:
/* 809EC164  2C 04 00 00 */	cmpwi r4, 0
/* 809EC168  4D 80 00 20 */	bltlr 
/* 809EC16C  2C 04 00 06 */	cmpwi r4, 6
/* 809EC170  4C 80 00 20 */	bgelr 
/* 809EC174  A8 03 1A 78 */	lha r0, 0x1a78(r3)
/* 809EC178  7C 04 00 00 */	cmpw r4, r0
/* 809EC17C  4D 82 00 20 */	beqlr 
/* 809EC180  B0 83 1A 78 */	sth r4, 0x1a78(r3)
/* 809EC184  4E 80 00 20 */	blr 
