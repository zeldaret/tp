/* allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc __ct__10JKRExpHeapFPvUlP7JKRHeapb::CMemBlock::allocBack( (unsigned long, unsigned char, unsigned char, unsigned char, unsigned char)) */
/* JKRExpHeap_NS_CMemBlock_NS_allocBack */
/* 802D0874 002CD7B4  39 40 00 00 */	li r10, 0
/* 802D0878 002CD7B8  80 03 00 04 */	lwz r0, 4(r3)
/* 802D087C 002CD7BC  39 24 00 10 */	addi r9, r4, 0x10
/* 802D0880 002CD7C0  7C 00 48 40 */	cmplw r0, r9
/* 802D0884 002CD7C4  41 80 00 34 */	blt lbl_802D08B8
/* 802D0888 002CD7C8  7C 03 02 14 */	add r0, r3, r0
/* 802D088C 002CD7CC  7D 44 00 50 */	subf r10, r4, r0
/* 802D0890 002CD7D0  98 EA 00 03 */	stb r7, 3(r10)
/* 802D0894 002CD7D4  61 00 00 80 */	ori r0, r8, 0x80
/* 802D0898 002CD7D8  98 0A 00 02 */	stb r0, 2(r10)
/* 802D089C 002CD7DC  90 8A 00 04 */	stw r4, 4(r10)
/* 802D08A0 002CD7E0  98 A3 00 03 */	stb r5, 3(r3)
/* 802D08A4 002CD7E4  98 C3 00 02 */	stb r6, 2(r3)
/* 802D08A8 002CD7E8  80 03 00 04 */	lwz r0, 4(r3)
/* 802D08AC 002CD7EC  7C 09 00 50 */	subf r0, r9, r0
/* 802D08B0 002CD7F0  90 03 00 04 */	stw r0, 4(r3)
/* 802D08B4 002CD7F4  48 00 00 10 */	b lbl_802D08C4
lbl_802D08B8:
/* 802D08B8 002CD7F8  98 E3 00 03 */	stb r7, 3(r3)
/* 802D08BC 002CD7FC  38 00 00 80 */	li r0, 0x80
/* 802D08C0 002CD800  98 03 00 02 */	stb r0, 2(r3)
lbl_802D08C4:
/* 802D08C4 002CD804  7D 43 53 78 */	mr r3, r10
/* 802D08C8 002CD808  4E 80 00 20 */	blr
