lbl_80BAD5F8:
/* 80BAD5F8  3C C0 80 BB */	lis r6, __global_destructor_chain@ha
/* 80BAD5FC  84 06 E2 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80BAD600  90 05 00 00 */	stw r0, 0(r5)
/* 80BAD604  90 85 00 04 */	stw r4, 4(r5)
/* 80BAD608  90 65 00 08 */	stw r3, 8(r5)
/* 80BAD60C  90 A6 00 00 */	stw r5, 0(r6)
/* 80BAD610  4E 80 00 20 */	blr 
