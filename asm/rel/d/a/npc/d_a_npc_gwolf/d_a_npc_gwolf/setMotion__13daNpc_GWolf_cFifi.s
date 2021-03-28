lbl_809F4DE8:
/* 809F4DE8  7C 86 07 34 */	extsh r6, r4
/* 809F4DEC  2C 05 00 00 */	cmpwi r5, 0
/* 809F4DF0  40 82 00 10 */	bne lbl_809F4E00
/* 809F4DF4  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 809F4DF8  7C 00 30 00 */	cmpw r0, r6
/* 809F4DFC  4D 82 00 20 */	beqlr 
lbl_809F4E00:
/* 809F4E00  2C 04 00 00 */	cmpwi r4, 0
/* 809F4E04  4D 80 00 20 */	bltlr 
/* 809F4E08  2C 04 00 09 */	cmpwi r4, 9
/* 809F4E0C  4C 80 00 20 */	bgelr 
/* 809F4E10  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 809F4E14  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 809F4E18  38 00 FF FF */	li r0, -1
/* 809F4E1C  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 809F4E20  38 00 00 00 */	li r0, 0
/* 809F4E24  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 809F4E28  4E 80 00 20 */	blr 
