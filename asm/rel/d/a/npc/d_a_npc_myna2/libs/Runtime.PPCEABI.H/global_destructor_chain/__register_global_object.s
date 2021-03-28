lbl_80A83E18:
/* 80A83E18  3C C0 80 A9 */	lis r6, __global_destructor_chain@ha
/* 80A83E1C  84 06 8A F0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A83E20  90 05 00 00 */	stw r0, 0(r5)
/* 80A83E24  90 85 00 04 */	stw r4, 4(r5)
/* 80A83E28  90 65 00 08 */	stw r3, 8(r5)
/* 80A83E2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A83E30  4E 80 00 20 */	blr 
