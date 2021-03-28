lbl_809AB770:
/* 809AB770  7C 86 07 34 */	extsh r6, r4
/* 809AB774  2C 05 00 00 */	cmpwi r5, 0
/* 809AB778  40 82 00 10 */	bne lbl_809AB788
/* 809AB77C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 809AB780  7C 00 30 00 */	cmpw r0, r6
/* 809AB784  4D 82 00 20 */	beqlr 
lbl_809AB788:
/* 809AB788  2C 04 00 00 */	cmpwi r4, 0
/* 809AB78C  4D 80 00 20 */	bltlr 
/* 809AB790  2C 04 00 0C */	cmpwi r4, 0xc
/* 809AB794  4C 80 00 20 */	bgelr 
/* 809AB798  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 809AB79C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 809AB7A0  38 00 FF FF */	li r0, -1
/* 809AB7A4  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 809AB7A8  38 00 00 00 */	li r0, 0
/* 809AB7AC  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 809AB7B0  B0 03 0E 02 */	sth r0, 0xe02(r3)
/* 809AB7B4  4E 80 00 20 */	blr 
