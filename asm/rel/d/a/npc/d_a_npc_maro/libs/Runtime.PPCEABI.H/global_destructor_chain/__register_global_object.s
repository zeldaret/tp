lbl_8055B518:
/* 8055B518  3C C0 80 56 */	lis r6, __global_destructor_chain@ha
/* 8055B51C  84 06 5D 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8055B520  90 05 00 00 */	stw r0, 0(r5)
/* 8055B524  90 85 00 04 */	stw r4, 4(r5)
/* 8055B528  90 65 00 08 */	stw r3, 8(r5)
/* 8055B52C  90 A6 00 00 */	stw r5, 0(r6)
/* 8055B530  4E 80 00 20 */	blr 
