lbl_809DC2E4:
/* 809DC2E4  7C 86 07 34 */	extsh r6, r4
/* 809DC2E8  2C 05 00 00 */	cmpwi r5, 0
/* 809DC2EC  40 82 00 10 */	bne lbl_809DC2FC
/* 809DC2F0  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 809DC2F4  7C 00 30 00 */	cmpw r0, r6
/* 809DC2F8  4D 82 00 20 */	beqlr 
lbl_809DC2FC:
/* 809DC2FC  2C 04 00 00 */	cmpwi r4, 0
/* 809DC300  4D 80 00 20 */	bltlr 
/* 809DC304  2C 04 00 09 */	cmpwi r4, 9
/* 809DC308  4C 80 00 20 */	bgelr 
/* 809DC30C  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 809DC310  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 809DC314  38 00 FF FF */	li r0, -1
/* 809DC318  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 809DC31C  38 00 00 00 */	li r0, 0
/* 809DC320  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 809DC324  4E 80 00 20 */	blr 
