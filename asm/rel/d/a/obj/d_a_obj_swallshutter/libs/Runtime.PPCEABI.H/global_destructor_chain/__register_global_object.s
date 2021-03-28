lbl_80598178:
/* 80598178  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 8059817C  84 06 90 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80598180  90 05 00 00 */	stw r0, 0(r5)
/* 80598184  90 85 00 04 */	stw r4, 4(r5)
/* 80598188  90 65 00 08 */	stw r3, 8(r5)
/* 8059818C  90 A6 00 00 */	stw r5, 0(r6)
/* 80598190  4E 80 00 20 */	blr 
