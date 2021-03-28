lbl_809D7398:
/* 809D7398  3C C0 80 9E */	lis r6, __global_destructor_chain@ha
/* 809D739C  84 06 A4 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809D73A0  90 05 00 00 */	stw r0, 0(r5)
/* 809D73A4  90 85 00 04 */	stw r4, 4(r5)
/* 809D73A8  90 65 00 08 */	stw r3, 8(r5)
/* 809D73AC  90 A6 00 00 */	stw r5, 0(r6)
/* 809D73B0  4E 80 00 20 */	blr 
