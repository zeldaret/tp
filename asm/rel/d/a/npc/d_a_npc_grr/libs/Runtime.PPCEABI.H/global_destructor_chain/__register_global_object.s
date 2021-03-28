lbl_809DF858:
/* 809DF858  3C C0 80 9E */	lis r6, __global_destructor_chain@ha
/* 809DF85C  84 06 3E F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809DF860  90 05 00 00 */	stw r0, 0(r5)
/* 809DF864  90 85 00 04 */	stw r4, 4(r5)
/* 809DF868  90 65 00 08 */	stw r3, 8(r5)
/* 809DF86C  90 A6 00 00 */	stw r5, 0(r6)
/* 809DF870  4E 80 00 20 */	blr 
