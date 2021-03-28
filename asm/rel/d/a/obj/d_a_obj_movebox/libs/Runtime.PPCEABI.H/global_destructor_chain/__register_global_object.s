lbl_8047DA78:
/* 8047DA78  3C C0 80 48 */	lis r6, __global_destructor_chain@ha
/* 8047DA7C  84 06 18 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8047DA80  90 05 00 00 */	stw r0, 0(r5)
/* 8047DA84  90 85 00 04 */	stw r4, 4(r5)
/* 8047DA88  90 65 00 08 */	stw r3, 8(r5)
/* 8047DA8C  90 A6 00 00 */	stw r5, 0(r6)
/* 8047DA90  4E 80 00 20 */	blr 
