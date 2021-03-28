lbl_80816098:
/* 80816098  3C C0 80 82 */	lis r6, __global_destructor_chain@ha
/* 8081609C  84 06 1E 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 808160A0  90 05 00 00 */	stw r0, 0(r5)
/* 808160A4  90 85 00 04 */	stw r4, 4(r5)
/* 808160A8  90 65 00 08 */	stw r3, 8(r5)
/* 808160AC  90 A6 00 00 */	stw r5, 0(r6)
/* 808160B0  4E 80 00 20 */	blr 
