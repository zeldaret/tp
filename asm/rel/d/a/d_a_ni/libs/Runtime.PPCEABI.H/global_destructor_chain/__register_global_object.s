lbl_8094BBB8:
/* 8094BBB8  3C C0 80 95 */	lis r6, __global_destructor_chain@ha
/* 8094BBBC  84 06 15 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8094BBC0  90 05 00 00 */	stw r0, 0(r5)
/* 8094BBC4  90 85 00 04 */	stw r4, 4(r5)
/* 8094BBC8  90 65 00 08 */	stw r3, 8(r5)
/* 8094BBCC  90 A6 00 00 */	stw r5, 0(r6)
/* 8094BBD0  4E 80 00 20 */	blr 
