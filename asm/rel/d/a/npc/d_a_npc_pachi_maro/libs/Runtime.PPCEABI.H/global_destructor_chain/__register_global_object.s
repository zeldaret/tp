lbl_80A97C18:
/* 80A97C18  3C C0 80 AA */	lis r6, __global_destructor_chain@ha
/* 80A97C1C  84 06 C1 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A97C20  90 05 00 00 */	stw r0, 0(r5)
/* 80A97C24  90 85 00 04 */	stw r4, 4(r5)
/* 80A97C28  90 65 00 08 */	stw r3, 8(r5)
/* 80A97C2C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A97C30  4E 80 00 20 */	blr 
