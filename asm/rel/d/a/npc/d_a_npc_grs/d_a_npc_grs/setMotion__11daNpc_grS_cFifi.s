lbl_809E5CB8:
/* 809E5CB8  7C 86 07 34 */	extsh r6, r4
/* 809E5CBC  2C 05 00 00 */	cmpwi r5, 0
/* 809E5CC0  40 82 00 10 */	bne lbl_809E5CD0
/* 809E5CC4  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 809E5CC8  7C 00 30 00 */	cmpw r0, r6
/* 809E5CCC  4D 82 00 20 */	beqlr 
lbl_809E5CD0:
/* 809E5CD0  2C 04 00 00 */	cmpwi r4, 0
/* 809E5CD4  4D 80 00 20 */	bltlr 
/* 809E5CD8  2C 04 00 04 */	cmpwi r4, 4
/* 809E5CDC  4C 80 00 20 */	bgelr 
/* 809E5CE0  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 809E5CE4  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 809E5CE8  38 00 FF FF */	li r0, -1
/* 809E5CEC  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 809E5CF0  38 00 00 00 */	li r0, 0
/* 809E5CF4  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 809E5CF8  4E 80 00 20 */	blr 
