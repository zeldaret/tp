lbl_807F2BB8:
/* 807F2BB8  3C C0 80 7F */	lis r6, __global_destructor_chain@ha
/* 807F2BBC  84 06 7D 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807F2BC0  90 05 00 00 */	stw r0, 0(r5)
/* 807F2BC4  90 85 00 04 */	stw r4, 4(r5)
/* 807F2BC8  90 65 00 08 */	stw r3, 8(r5)
/* 807F2BCC  90 A6 00 00 */	stw r5, 0(r6)
/* 807F2BD0  4E 80 00 20 */	blr 
