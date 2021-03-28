lbl_8059F5F8:
/* 8059F5F8  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 8059F5FC  84 06 13 28 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8059F600  90 05 00 00 */	stw r0, 0(r5)
/* 8059F604  90 85 00 04 */	stw r4, 4(r5)
/* 8059F608  90 65 00 08 */	stw r3, 8(r5)
/* 8059F60C  90 A6 00 00 */	stw r5, 0(r6)
/* 8059F610  4E 80 00 20 */	blr 
