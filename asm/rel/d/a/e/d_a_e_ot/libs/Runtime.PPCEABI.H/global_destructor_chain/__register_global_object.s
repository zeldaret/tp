lbl_8073A258:
/* 8073A258  3C C0 80 74 */	lis r6, __global_destructor_chain@ha
/* 8073A25C  84 06 D2 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8073A260  90 05 00 00 */	stw r0, 0(r5)
/* 8073A264  90 85 00 04 */	stw r4, 4(r5)
/* 8073A268  90 65 00 08 */	stw r3, 8(r5)
/* 8073A26C  90 A6 00 00 */	stw r5, 0(r6)
/* 8073A270  4E 80 00 20 */	blr 
