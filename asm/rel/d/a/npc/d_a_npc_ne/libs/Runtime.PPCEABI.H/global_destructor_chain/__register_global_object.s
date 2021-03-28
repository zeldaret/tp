lbl_80A88C58:
/* 80A88C58  3C C0 80 A9 */	lis r6, __global_destructor_chain@ha
/* 80A88C5C  84 06 2A 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A88C60  90 05 00 00 */	stw r0, 0(r5)
/* 80A88C64  90 85 00 04 */	stw r4, 4(r5)
/* 80A88C68  90 65 00 08 */	stw r3, 8(r5)
/* 80A88C6C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A88C70  4E 80 00 20 */	blr 
