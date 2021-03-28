lbl_8057D058:
/* 8057D058  3C C0 80 58 */	lis r6, __global_destructor_chain@ha
/* 8057D05C  84 06 F8 D0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8057D060  90 05 00 00 */	stw r0, 0(r5)
/* 8057D064  90 85 00 04 */	stw r4, 4(r5)
/* 8057D068  90 65 00 08 */	stw r3, 8(r5)
/* 8057D06C  90 A6 00 00 */	stw r5, 0(r6)
/* 8057D070  4E 80 00 20 */	blr 
