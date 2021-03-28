lbl_809DA4F8:
/* 809DA4F8  3C C0 80 9E */	lis r6, __global_destructor_chain@ha
/* 809DA4FC  84 06 F6 F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809DA500  90 05 00 00 */	stw r0, 0(r5)
/* 809DA504  90 85 00 04 */	stw r4, 4(r5)
/* 809DA508  90 65 00 08 */	stw r3, 8(r5)
/* 809DA50C  90 A6 00 00 */	stw r5, 0(r6)
/* 809DA510  4E 80 00 20 */	blr 
