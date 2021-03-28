lbl_80BB8198:
/* 80BB8198  3C C0 80 BC */	lis r6, __global_destructor_chain@ha
/* 80BB819C  84 06 99 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BB81A0  90 05 00 00 */	stw r0, 0(r5)
/* 80BB81A4  90 85 00 04 */	stw r4, 4(r5)
/* 80BB81A8  90 65 00 08 */	stw r3, 8(r5)
/* 80BB81AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BB81B0  4E 80 00 20 */	blr 
