lbl_80B42ED8:
/* 80B42ED8  3C C0 80 B4 */	lis r6, __global_destructor_chain@ha
/* 80B42EDC  84 06 64 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B42EE0  90 05 00 00 */	stw r0, 0(r5)
/* 80B42EE4  90 85 00 04 */	stw r4, 4(r5)
/* 80B42EE8  90 65 00 08 */	stw r3, 8(r5)
/* 80B42EEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B42EF0  4E 80 00 20 */	blr 
