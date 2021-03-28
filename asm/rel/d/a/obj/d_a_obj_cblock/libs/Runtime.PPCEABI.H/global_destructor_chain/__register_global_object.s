lbl_80BC5998:
/* 80BC5998  3C C0 80 BC */	lis r6, __global_destructor_chain@ha
/* 80BC599C  84 06 6C 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BC59A0  90 05 00 00 */	stw r0, 0(r5)
/* 80BC59A4  90 85 00 04 */	stw r4, 4(r5)
/* 80BC59A8  90 65 00 08 */	stw r3, 8(r5)
/* 80BC59AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80BC59B0  4E 80 00 20 */	blr 
