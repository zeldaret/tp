lbl_804C6D58:
/* 804C6D58  3C C0 80 4D */	lis r6, __global_destructor_chain@ha
/* 804C6D5C  84 06 C6 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804C6D60  90 05 00 00 */	stw r0, 0(r5)
/* 804C6D64  90 85 00 04 */	stw r4, 4(r5)
/* 804C6D68  90 65 00 08 */	stw r3, 8(r5)
/* 804C6D6C  90 A6 00 00 */	stw r5, 0(r6)
/* 804C6D70  4E 80 00 20 */	blr 
