lbl_80585DD8:
/* 80585DD8  3C C0 80 58 */	lis r6, __global_destructor_chain@ha
/* 80585DDC  84 06 7F D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80585DE0  90 05 00 00 */	stw r0, 0(r5)
/* 80585DE4  90 85 00 04 */	stw r4, 4(r5)
/* 80585DE8  90 65 00 08 */	stw r3, 8(r5)
/* 80585DEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80585DF0  4E 80 00 20 */	blr 
