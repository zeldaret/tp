lbl_809E2480:
/* 809E2480  2C 04 00 00 */	cmpwi r4, 0
/* 809E2484  4D 80 00 20 */	bltlr 
/* 809E2488  2C 04 00 05 */	cmpwi r4, 5
/* 809E248C  4C 80 00 20 */	bgelr 
/* 809E2490  A8 03 0E 0C */	lha r0, 0xe0c(r3)
/* 809E2494  7C 04 00 00 */	cmpw r4, r0
/* 809E2498  4D 82 00 20 */	beqlr 
/* 809E249C  B0 83 0E 0C */	sth r4, 0xe0c(r3)
/* 809E24A0  4E 80 00 20 */	blr 
