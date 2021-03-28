lbl_80962858:
/* 80962858  3C C0 80 97 */	lis r6, __global_destructor_chain@ha
/* 8096285C  84 06 88 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80962860  90 05 00 00 */	stw r0, 0(r5)
/* 80962864  90 85 00 04 */	stw r4, 4(r5)
/* 80962868  90 65 00 08 */	stw r3, 8(r5)
/* 8096286C  90 A6 00 00 */	stw r5, 0(r6)
/* 80962870  4E 80 00 20 */	blr 
