lbl_804D1918:
/* 804D1918  3C C0 80 4D */	lis r6, __global_destructor_chain@ha
/* 804D191C  84 06 4F C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804D1920  90 05 00 00 */	stw r0, 0(r5)
/* 804D1924  90 85 00 04 */	stw r4, 4(r5)
/* 804D1928  90 65 00 08 */	stw r3, 8(r5)
/* 804D192C  90 A6 00 00 */	stw r5, 0(r6)
/* 804D1930  4E 80 00 20 */	blr 
