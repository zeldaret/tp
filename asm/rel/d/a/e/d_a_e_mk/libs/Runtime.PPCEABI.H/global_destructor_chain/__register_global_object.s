lbl_807140B8:
/* 807140B8  3C C0 80 72 */	lis r6, __global_destructor_chain@ha
/* 807140BC  84 06 CA 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807140C0  90 05 00 00 */	stw r0, 0(r5)
/* 807140C4  90 85 00 04 */	stw r4, 4(r5)
/* 807140C8  90 65 00 08 */	stw r3, 8(r5)
/* 807140CC  90 A6 00 00 */	stw r5, 0(r6)
/* 807140D0  4E 80 00 20 */	blr 
