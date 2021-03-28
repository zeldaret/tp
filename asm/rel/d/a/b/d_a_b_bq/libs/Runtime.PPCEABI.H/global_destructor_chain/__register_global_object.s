lbl_805B34F8:
/* 805B34F8  3C C0 80 5C */	lis r6, __global_destructor_chain@ha
/* 805B34FC  84 06 AD 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805B3500  90 05 00 00 */	stw r0, 0(r5)
/* 805B3504  90 85 00 04 */	stw r4, 4(r5)
/* 805B3508  90 65 00 08 */	stw r3, 8(r5)
/* 805B350C  90 A6 00 00 */	stw r5, 0(r6)
/* 805B3510  4E 80 00 20 */	blr 
