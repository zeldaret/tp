lbl_809E4058:
/* 809E4058  3C C0 80 9F */	lis r6, __global_destructor_chain@ha
/* 809E405C  84 06 82 30 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809E4060  90 05 00 00 */	stw r0, 0(r5)
/* 809E4064  90 85 00 04 */	stw r4, 4(r5)
/* 809E4068  90 65 00 08 */	stw r3, 8(r5)
/* 809E406C  90 A6 00 00 */	stw r5, 0(r6)
/* 809E4070  4E 80 00 20 */	blr 
