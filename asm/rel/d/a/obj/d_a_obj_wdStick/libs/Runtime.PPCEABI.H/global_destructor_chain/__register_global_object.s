lbl_80D31AD8:
/* 80D31AD8  3C C0 80 D3 */	lis r6, __global_destructor_chain@ha
/* 80D31ADC  84 06 44 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D31AE0  90 05 00 00 */	stw r0, 0(r5)
/* 80D31AE4  90 85 00 04 */	stw r4, 4(r5)
/* 80D31AE8  90 65 00 08 */	stw r3, 8(r5)
/* 80D31AEC  90 A6 00 00 */	stw r5, 0(r6)
/* 80D31AF0  4E 80 00 20 */	blr 
