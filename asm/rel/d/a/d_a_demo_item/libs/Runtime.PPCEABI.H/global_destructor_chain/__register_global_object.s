lbl_804DFB58:
/* 804DFB58  3C C0 80 4E */	lis r6, __global_destructor_chain@ha
/* 804DFB5C  84 06 1B E0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804DFB60  90 05 00 00 */	stw r0, 0(r5)
/* 804DFB64  90 85 00 04 */	stw r4, 4(r5)
/* 804DFB68  90 65 00 08 */	stw r3, 8(r5)
/* 804DFB6C  90 A6 00 00 */	stw r5, 0(r6)
/* 804DFB70  4E 80 00 20 */	blr 
