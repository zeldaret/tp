lbl_80AB3FFC:
/* 80AB3FFC  2C 04 00 00 */	cmpwi r4, 0
/* 80AB4000  4D 80 00 20 */	bltlr 
/* 80AB4004  2C 04 00 04 */	cmpwi r4, 4
/* 80AB4008  4C 80 00 20 */	bgelr 
/* 80AB400C  A8 03 0E 08 */	lha r0, 0xe08(r3)
/* 80AB4010  7C 04 00 00 */	cmpw r4, r0
/* 80AB4014  4D 82 00 20 */	beqlr 
/* 80AB4018  B0 83 0E 08 */	sth r4, 0xe08(r3)
/* 80AB401C  4E 80 00 20 */	blr 
