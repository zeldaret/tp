lbl_80361C24:
/* 80361C24  80 0D 94 08 */	lwz r0, __global_destructor_chain(r13)
/* 80361C28  90 05 00 00 */	stw r0, 0(r5)
/* 80361C2C  90 85 00 04 */	stw r4, 4(r5)
/* 80361C30  90 65 00 08 */	stw r3, 8(r5)
/* 80361C34  90 AD 94 08 */	stw r5, __global_destructor_chain(r13)
/* 80361C38  4E 80 00 20 */	blr 
