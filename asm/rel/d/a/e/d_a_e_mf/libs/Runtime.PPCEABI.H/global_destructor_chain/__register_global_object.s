lbl_8070A698:
/* 8070A698  3C C0 80 71 */	lis r6, __global_destructor_chain@ha
/* 8070A69C  84 06 3F 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8070A6A0  90 05 00 00 */	stw r0, 0(r5)
/* 8070A6A4  90 85 00 04 */	stw r4, 4(r5)
/* 8070A6A8  90 65 00 08 */	stw r3, 8(r5)
/* 8070A6AC  90 A6 00 00 */	stw r5, 0(r6)
/* 8070A6B0  4E 80 00 20 */	blr 
