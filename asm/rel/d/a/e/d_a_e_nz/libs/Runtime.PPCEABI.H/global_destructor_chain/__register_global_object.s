lbl_80729978:
/* 80729978  3C C0 80 73 */	lis r6, __global_destructor_chain@ha
/* 8072997C  84 06 C3 E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80729980  90 05 00 00 */	stw r0, 0(r5)
/* 80729984  90 85 00 04 */	stw r4, 4(r5)
/* 80729988  90 65 00 08 */	stw r3, 8(r5)
/* 8072998C  90 A6 00 00 */	stw r5, 0(r6)
/* 80729990  4E 80 00 20 */	blr 
