lbl_809F5B60:
/* 809F5B60  2C 04 00 00 */	cmpwi r4, 0
/* 809F5B64  4D 80 00 20 */	bltlr 
/* 809F5B68  2C 04 00 05 */	cmpwi r4, 5
/* 809F5B6C  4C 80 00 20 */	bgelr 
/* 809F5B70  A8 03 0E 0C */	lha r0, 0xe0c(r3)
/* 809F5B74  7C 04 00 00 */	cmpw r4, r0
/* 809F5B78  4D 82 00 20 */	beqlr 
/* 809F5B7C  B0 83 0E 0C */	sth r4, 0xe0c(r3)
/* 809F5B80  4E 80 00 20 */	blr 
