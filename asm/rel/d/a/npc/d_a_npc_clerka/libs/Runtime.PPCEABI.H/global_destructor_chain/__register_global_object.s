lbl_809924B8:
/* 809924B8  3C C0 80 99 */	lis r6, __global_destructor_chain@ha
/* 809924BC  84 06 5E 18 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809924C0  90 05 00 00 */	stw r0, 0(r5)
/* 809924C4  90 85 00 04 */	stw r4, 4(r5)
/* 809924C8  90 65 00 08 */	stw r3, 8(r5)
/* 809924CC  90 A6 00 00 */	stw r5, 0(r6)
/* 809924D0  4E 80 00 20 */	blr 
