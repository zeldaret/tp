lbl_8096CF18:
/* 8096CF18  3C C0 80 97 */	lis r6, __global_destructor_chain@ha
/* 8096CF1C  84 06 34 40 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8096CF20  90 05 00 00 */	stw r0, 0(r5)
/* 8096CF24  90 85 00 04 */	stw r4, 4(r5)
/* 8096CF28  90 65 00 08 */	stw r3, 8(r5)
/* 8096CF2C  90 A6 00 00 */	stw r5, 0(r6)
/* 8096CF30  4E 80 00 20 */	blr 
