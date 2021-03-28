lbl_80CECE98:
/* 80CECE98  3C C0 80 CF */	lis r6, __global_destructor_chain@ha
/* 80CECE9C  84 06 F1 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CECEA0  90 05 00 00 */	stw r0, 0(r5)
/* 80CECEA4  90 85 00 04 */	stw r4, 4(r5)
/* 80CECEA8  90 65 00 08 */	stw r3, 8(r5)
/* 80CECEAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80CECEB0  4E 80 00 20 */	blr 
