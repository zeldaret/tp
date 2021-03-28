lbl_806A7678:
/* 806A7678  3C C0 80 6B */	lis r6, __global_destructor_chain@ha
/* 806A767C  84 06 A0 C8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806A7680  90 05 00 00 */	stw r0, 0(r5)
/* 806A7684  90 85 00 04 */	stw r4, 4(r5)
/* 806A7688  90 65 00 08 */	stw r3, 8(r5)
/* 806A768C  90 A6 00 00 */	stw r5, 0(r6)
/* 806A7690  4E 80 00 20 */	blr 
