lbl_80A85BA4:
/* 80A85BA4  2C 04 00 00 */	cmpwi r4, 0
/* 80A85BA8  4D 80 00 20 */	bltlr 
/* 80A85BAC  2C 04 00 04 */	cmpwi r4, 4
/* 80A85BB0  4C 80 00 20 */	bgelr 
/* 80A85BB4  A8 03 0E 08 */	lha r0, 0xe08(r3)
/* 80A85BB8  7C 04 00 00 */	cmpw r4, r0
/* 80A85BBC  4D 82 00 20 */	beqlr 
/* 80A85BC0  B0 83 0E 08 */	sth r4, 0xe08(r3)
/* 80A85BC4  4E 80 00 20 */	blr 
