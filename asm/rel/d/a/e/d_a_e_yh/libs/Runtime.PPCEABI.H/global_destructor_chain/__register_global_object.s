lbl_807FD458:
/* 807FD458  3C C0 80 80 */	lis r6, __global_destructor_chain@ha
/* 807FD45C  84 06 47 10 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807FD460  90 05 00 00 */	stw r0, 0(r5)
/* 807FD464  90 85 00 04 */	stw r4, 4(r5)
/* 807FD468  90 65 00 08 */	stw r3, 8(r5)
/* 807FD46C  90 A6 00 00 */	stw r5, 0(r6)
/* 807FD470  4E 80 00 20 */	blr 
