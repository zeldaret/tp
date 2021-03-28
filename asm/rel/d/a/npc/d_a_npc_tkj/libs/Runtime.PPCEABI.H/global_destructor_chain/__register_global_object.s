lbl_805736B8:
/* 805736B8  3C C0 80 57 */	lis r6, __global_destructor_chain@ha
/* 805736BC  84 06 69 C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805736C0  90 05 00 00 */	stw r0, 0(r5)
/* 805736C4  90 85 00 04 */	stw r4, 4(r5)
/* 805736C8  90 65 00 08 */	stw r3, 8(r5)
/* 805736CC  90 A6 00 00 */	stw r5, 0(r6)
/* 805736D0  4E 80 00 20 */	blr 
