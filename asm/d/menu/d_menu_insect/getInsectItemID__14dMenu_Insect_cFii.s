lbl_801D9DCC:
/* 801D9DCC  1C A5 00 06 */	mulli r5, r5, 6
/* 801D9DD0  3C 60 80 3C */	lis r3, l_itemno_4364@ha
/* 801D9DD4  38 03 D8 94 */	addi r0, r3, l_itemno_4364@l
/* 801D9DD8  7C 64 2A 14 */	add r3, r4, r5
/* 801D9DDC  7C 63 00 AE */	lbzx r3, r3, r0
/* 801D9DE0  4E 80 00 20 */	blr 
