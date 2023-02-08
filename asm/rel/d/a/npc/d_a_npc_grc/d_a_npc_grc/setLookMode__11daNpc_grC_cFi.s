lbl_809CDD50:
/* 809CDD50  2C 04 00 00 */	cmpwi r4, 0
/* 809CDD54  4D 80 00 20 */	bltlr 
/* 809CDD58  2C 04 00 05 */	cmpwi r4, 5
/* 809CDD5C  4C 80 00 20 */	bgelr 
/* 809CDD60  A8 03 0E 44 */	lha r0, 0xe44(r3)
/* 809CDD64  7C 04 00 00 */	cmpw r4, r0
/* 809CDD68  4D 82 00 20 */	beqlr 
/* 809CDD6C  B0 83 0E 44 */	sth r4, 0xe44(r3)
/* 809CDD70  4E 80 00 20 */	blr 
