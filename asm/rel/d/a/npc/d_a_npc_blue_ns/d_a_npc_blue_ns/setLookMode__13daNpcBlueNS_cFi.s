lbl_8096A7F8:
/* 8096A7F8  2C 04 00 00 */	cmpwi r4, 0
/* 8096A7FC  4D 80 00 20 */	bltlr 
/* 8096A800  2C 04 00 04 */	cmpwi r4, 4
/* 8096A804  4C 80 00 20 */	bgelr 
/* 8096A808  A8 03 0D E8 */	lha r0, 0xde8(r3)
/* 8096A80C  7C 04 00 00 */	cmpw r4, r0
/* 8096A810  4D 82 00 20 */	beqlr 
/* 8096A814  B0 83 0D E8 */	sth r4, 0xde8(r3)
/* 8096A818  4E 80 00 20 */	blr 
