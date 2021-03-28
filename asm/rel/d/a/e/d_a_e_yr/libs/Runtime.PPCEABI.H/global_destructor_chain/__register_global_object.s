lbl_80822198:
/* 80822198  3C C0 80 83 */	lis r6, __global_destructor_chain@ha
/* 8082219C  84 06 8D A8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 808221A0  90 05 00 00 */	stw r0, 0(r5)
/* 808221A4  90 85 00 04 */	stw r4, 4(r5)
/* 808221A8  90 65 00 08 */	stw r3, 8(r5)
/* 808221AC  90 A6 00 00 */	stw r5, 0(r6)
/* 808221B0  4E 80 00 20 */	blr 
