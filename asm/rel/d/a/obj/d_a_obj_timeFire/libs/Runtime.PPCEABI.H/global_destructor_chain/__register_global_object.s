lbl_80D0E878:
/* 80D0E878  3C C0 80 D1 */	lis r6, __global_destructor_chain@ha
/* 80D0E87C  84 06 F1 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80D0E880  90 05 00 00 */	stw r0, 0(r5)
/* 80D0E884  90 85 00 04 */	stw r4, 4(r5)
/* 80D0E888  90 65 00 08 */	stw r3, 8(r5)
/* 80D0E88C  90 A6 00 00 */	stw r5, 0(r6)
/* 80D0E890  4E 80 00 20 */	blr 
