lbl_809AFCD8:
/* 809AFCD8  3C C0 80 9B */	lis r6, __global_destructor_chain@ha
/* 809AFCDC  84 06 19 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809AFCE0  90 05 00 00 */	stw r0, 0(r5)
/* 809AFCE4  90 85 00 04 */	stw r4, 4(r5)
/* 809AFCE8  90 65 00 08 */	stw r3, 8(r5)
/* 809AFCEC  90 A6 00 00 */	stw r5, 0(r6)
/* 809AFCF0  4E 80 00 20 */	blr 
