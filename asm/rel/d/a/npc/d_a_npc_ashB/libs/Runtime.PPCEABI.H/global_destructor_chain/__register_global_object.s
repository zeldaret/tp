lbl_8095DDD8:
/* 8095DDD8  3C C0 80 96 */	lis r6, __global_destructor_chain@ha
/* 8095DDDC  84 06 27 B8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8095DDE0  90 05 00 00 */	stw r0, 0(r5)
/* 8095DDE4  90 85 00 04 */	stw r4, 4(r5)
/* 8095DDE8  90 65 00 08 */	stw r3, 8(r5)
/* 8095DDEC  90 A6 00 00 */	stw r5, 0(r6)
/* 8095DDF0  4E 80 00 20 */	blr 
