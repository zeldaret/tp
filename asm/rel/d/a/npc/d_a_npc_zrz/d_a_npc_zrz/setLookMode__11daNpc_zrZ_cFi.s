lbl_80B96E7C:
/* 80B96E7C  2C 04 00 00 */	cmpwi r4, 0
/* 80B96E80  4D 80 00 20 */	bltlr 
/* 80B96E84  2C 04 00 05 */	cmpwi r4, 5
/* 80B96E88  4C 80 00 20 */	bgelr 
/* 80B96E8C  A8 03 14 48 */	lha r0, 0x1448(r3)
/* 80B96E90  7C 04 00 00 */	cmpw r4, r0
/* 80B96E94  4D 82 00 20 */	beqlr 
/* 80B96E98  B0 83 14 48 */	sth r4, 0x1448(r3)
/* 80B96E9C  4E 80 00 20 */	blr 
