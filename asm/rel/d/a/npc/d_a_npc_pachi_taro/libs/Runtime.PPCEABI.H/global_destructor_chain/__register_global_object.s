lbl_80A9C218:
/* 80A9C218  3C C0 80 AA */	lis r6, __global_destructor_chain@ha
/* 80A9C21C  84 06 2B 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A9C220  90 05 00 00 */	stw r0, 0(r5)
/* 80A9C224  90 85 00 04 */	stw r4, 4(r5)
/* 80A9C228  90 65 00 08 */	stw r3, 8(r5)
/* 80A9C22C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A9C230  4E 80 00 20 */	blr 
