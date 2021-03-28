lbl_80D06D18:
/* 80D06D18  3C C0 80 D0 */	lis r6, __global_destructor_chain@ha
/* 80D06D1C  84 06 79 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D06D20  90 05 00 00 */	stw r0, 0(r5)
/* 80D06D24  90 85 00 04 */	stw r4, 4(r5)
/* 80D06D28  90 65 00 08 */	stw r3, 8(r5)
/* 80D06D2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D06D30  4E 80 00 20 */	blr 
