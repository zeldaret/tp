lbl_80AF1488:
/* 80AF1488  2C 04 00 00 */	cmpwi r4, 0
/* 80AF148C  4D 80 00 20 */	bltlr 
/* 80AF1490  2C 04 00 05 */	cmpwi r4, 5
/* 80AF1494  4C 80 00 20 */	bgelr 
/* 80AF1498  A8 03 0E 14 */	lha r0, 0xe14(r3)
/* 80AF149C  7C 04 00 00 */	cmpw r4, r0
/* 80AF14A0  4D 82 00 20 */	beqlr 
/* 80AF14A4  B0 83 0E 14 */	sth r4, 0xe14(r3)
/* 80AF14A8  4E 80 00 20 */	blr 
