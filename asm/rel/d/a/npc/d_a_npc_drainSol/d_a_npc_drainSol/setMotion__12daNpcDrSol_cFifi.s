lbl_809AEB18:
/* 809AEB18  7C 84 07 34 */	extsh r4, r4
/* 809AEB1C  2C 05 00 00 */	cmpwi r5, 0
/* 809AEB20  40 82 00 10 */	bne lbl_809AEB30
/* 809AEB24  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 809AEB28  7C 00 20 00 */	cmpw r0, r4
/* 809AEB2C  4D 82 00 20 */	beqlr 
lbl_809AEB30:
/* 809AEB30  7C 80 07 35 */	extsh. r0, r4
/* 809AEB34  4D 80 00 20 */	bltlr 
/* 809AEB38  2C 04 00 05 */	cmpwi r4, 5
/* 809AEB3C  4C 80 00 20 */	bgelr 
/* 809AEB40  7C 80 07 35 */	extsh. r0, r4
/* 809AEB44  40 82 00 18 */	bne lbl_809AEB5C
/* 809AEB48  88 03 0D 39 */	lbz r0, 0xd39(r3)
/* 809AEB4C  28 00 00 01 */	cmplwi r0, 1
/* 809AEB50  40 82 00 0C */	bne lbl_809AEB5C
/* 809AEB54  38 80 00 01 */	li r4, 1
/* 809AEB58  48 00 00 1C */	b lbl_809AEB74
lbl_809AEB5C:
/* 809AEB5C  2C 04 00 01 */	cmpwi r4, 1
/* 809AEB60  40 82 00 14 */	bne lbl_809AEB74
/* 809AEB64  88 03 0D 39 */	lbz r0, 0xd39(r3)
/* 809AEB68  28 00 00 00 */	cmplwi r0, 0
/* 809AEB6C  40 82 00 08 */	bne lbl_809AEB74
/* 809AEB70  38 80 00 00 */	li r4, 0
lbl_809AEB74:
/* 809AEB74  B0 83 09 E0 */	sth r4, 0x9e0(r3)
/* 809AEB78  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 809AEB7C  38 00 FF FF */	li r0, -1
/* 809AEB80  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 809AEB84  38 00 00 00 */	li r0, 0
/* 809AEB88  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 809AEB8C  B0 03 0D 34 */	sth r0, 0xd34(r3)
/* 809AEB90  4E 80 00 20 */	blr 
