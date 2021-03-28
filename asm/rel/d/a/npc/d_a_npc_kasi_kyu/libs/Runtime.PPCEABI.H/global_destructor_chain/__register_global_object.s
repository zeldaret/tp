lbl_80A21958:
/* 80A21958  3C C0 80 A2 */	lis r6, __global_destructor_chain@ha
/* 80A2195C  84 06 60 08 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A21960  90 05 00 00 */	stw r0, 0(r5)
/* 80A21964  90 85 00 04 */	stw r4, 4(r5)
/* 80A21968  90 65 00 08 */	stw r3, 8(r5)
/* 80A2196C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A21970  4E 80 00 20 */	blr 
