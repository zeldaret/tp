lbl_809E8398:
/* 809E8398  3C C0 80 9F */	lis r6, __global_destructor_chain@ha
/* 809E839C  84 06 FC 00 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809E83A0  90 05 00 00 */	stw r0, 0(r5)
/* 809E83A4  90 85 00 04 */	stw r4, 4(r5)
/* 809E83A8  90 65 00 08 */	stw r3, 8(r5)
/* 809E83AC  90 A6 00 00 */	stw r5, 0(r6)
/* 809E83B0  4E 80 00 20 */	blr 
