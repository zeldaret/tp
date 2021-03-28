lbl_80A27B2C:
/* 80A27B2C  2C 04 00 00 */	cmpwi r4, 0
/* 80A27B30  4D 80 00 20 */	bltlr 
/* 80A27B34  2C 04 00 04 */	cmpwi r4, 4
/* 80A27B38  4C 80 00 20 */	bgelr 
/* 80A27B3C  A8 03 14 3C */	lha r0, 0x143c(r3)
/* 80A27B40  7C 04 00 00 */	cmpw r4, r0
/* 80A27B44  4D 82 00 20 */	beqlr 
/* 80A27B48  B0 83 14 3C */	sth r4, 0x143c(r3)
/* 80A27B4C  4E 80 00 20 */	blr 
