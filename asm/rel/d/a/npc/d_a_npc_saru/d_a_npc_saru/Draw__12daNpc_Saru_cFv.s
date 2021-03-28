lbl_80AC0AA8:
/* 80AC0AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0AAC  7C 08 02 A6 */	mflr r0
/* 80AC0AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0AB4  38 80 00 00 */	li r4, 0
/* 80AC0AB8  38 A0 00 00 */	li r5, 0
/* 80AC0ABC  C0 23 0D E8 */	lfs f1, 0xde8(r3)
/* 80AC0AC0  38 C0 00 00 */	li r6, 0
/* 80AC0AC4  3C E0 80 AC */	lis r7, lit_4408@ha
/* 80AC0AC8  C0 47 45 C4 */	lfs f2, lit_4408@l(r7)
/* 80AC0ACC  38 E0 00 00 */	li r7, 0
/* 80AC0AD0  39 00 00 00 */	li r8, 0
/* 80AC0AD4  39 20 00 00 */	li r9, 0
/* 80AC0AD8  4B 68 7D 94 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AC0ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0AE0  7C 08 03 A6 */	mtlr r0
/* 80AC0AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0AE8  4E 80 00 20 */	blr 
