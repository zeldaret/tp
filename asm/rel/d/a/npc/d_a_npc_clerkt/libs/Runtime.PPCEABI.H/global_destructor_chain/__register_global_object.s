lbl_8099A0D8:
/* 8099A0D8  3C C0 80 9A */	lis r6, __global_destructor_chain@ha
/* 8099A0DC  84 06 D6 48 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8099A0E0  90 05 00 00 */	stw r0, 0(r5)
/* 8099A0E4  90 85 00 04 */	stw r4, 4(r5)
/* 8099A0E8  90 65 00 08 */	stw r3, 8(r5)
/* 8099A0EC  90 A6 00 00 */	stw r5, 0(r6)
/* 8099A0F0  4E 80 00 20 */	blr 
