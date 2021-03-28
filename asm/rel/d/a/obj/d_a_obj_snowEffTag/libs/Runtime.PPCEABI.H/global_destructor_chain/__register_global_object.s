lbl_80CDF038:
/* 80CDF038  3C C0 80 CE */	lis r6, __global_destructor_chain@ha
/* 80CDF03C  84 06 F7 C0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CDF040  90 05 00 00 */	stw r0, 0(r5)
/* 80CDF044  90 85 00 04 */	stw r4, 4(r5)
/* 80CDF048  90 65 00 08 */	stw r3, 8(r5)
/* 80CDF04C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CDF050  4E 80 00 20 */	blr 
