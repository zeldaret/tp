lbl_806FF938:
/* 806FF938  3C C0 80 70 */	lis r6, __global_destructor_chain@ha
/* 806FF93C  84 06 5F E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 806FF940  90 05 00 00 */	stw r0, 0(r5)
/* 806FF944  90 85 00 04 */	stw r4, 4(r5)
/* 806FF948  90 65 00 08 */	stw r3, 8(r5)
/* 806FF94C  90 A6 00 00 */	stw r5, 0(r6)
/* 806FF950  4E 80 00 20 */	blr 
