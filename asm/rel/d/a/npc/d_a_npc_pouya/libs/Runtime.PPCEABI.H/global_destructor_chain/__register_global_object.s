lbl_80AADD38:
/* 80AADD38  3C C0 80 AB */	lis r6, __global_destructor_chain@ha
/* 80AADD3C  84 06 2C E8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AADD40  90 05 00 00 */	stw r0, 0(r5)
/* 80AADD44  90 85 00 04 */	stw r4, 4(r5)
/* 80AADD48  90 65 00 08 */	stw r3, 8(r5)
/* 80AADD4C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AADD50  4E 80 00 20 */	blr 
