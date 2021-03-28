lbl_80C77BB8:
/* 80C77BB8  3C C0 80 C8 */	lis r6, __global_destructor_chain@ha
/* 80C77BBC  84 06 9D 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80C77BC0  90 05 00 00 */	stw r0, 0(r5)
/* 80C77BC4  90 85 00 04 */	stw r4, 4(r5)
/* 80C77BC8  90 65 00 08 */	stw r3, 8(r5)
/* 80C77BCC  90 A6 00 00 */	stw r5, 0(r6)
/* 80C77BD0  4E 80 00 20 */	blr 
