lbl_80CBE918:
/* 80CBE918  3C C0 80 CC */	lis r6, __global_destructor_chain@ha
/* 80CBE91C  84 06 F7 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CBE920  90 05 00 00 */	stw r0, 0(r5)
/* 80CBE924  90 85 00 04 */	stw r4, 4(r5)
/* 80CBE928  90 65 00 08 */	stw r3, 8(r5)
/* 80CBE92C  90 A6 00 00 */	stw r5, 0(r6)
/* 80CBE930  4E 80 00 20 */	blr 
