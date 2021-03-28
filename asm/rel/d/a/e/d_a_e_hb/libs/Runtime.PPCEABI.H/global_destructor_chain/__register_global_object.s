lbl_804FBCF8:
/* 804FBCF8  3C C0 80 50 */	lis r6, __global_destructor_chain@ha
/* 804FBCFC  84 06 0E 58 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804FBD00  90 05 00 00 */	stw r0, 0(r5)
/* 804FBD04  90 85 00 04 */	stw r4, 4(r5)
/* 804FBD08  90 65 00 08 */	stw r3, 8(r5)
/* 804FBD0C  90 A6 00 00 */	stw r5, 0(r6)
/* 804FBD10  4E 80 00 20 */	blr 
