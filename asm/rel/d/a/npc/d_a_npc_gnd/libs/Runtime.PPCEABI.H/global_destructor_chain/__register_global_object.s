lbl_809BB598:
/* 809BB598  3C C0 80 9C */	lis r6, __global_destructor_chain@ha
/* 809BB59C  84 06 E8 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809BB5A0  90 05 00 00 */	stw r0, 0(r5)
/* 809BB5A4  90 85 00 04 */	stw r4, 4(r5)
/* 809BB5A8  90 65 00 08 */	stw r3, 8(r5)
/* 809BB5AC  90 A6 00 00 */	stw r5, 0(r6)
/* 809BB5B0  4E 80 00 20 */	blr 
