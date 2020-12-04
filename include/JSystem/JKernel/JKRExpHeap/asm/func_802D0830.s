/* allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc __ct__10JKRExpHeapFPvUlP7JKRHeapb::CMemBlock::allocFore( (unsigned long, unsigned char, unsigned char, unsigned char, unsigned char)) */
/* JKRExpHeap_NS_CMemBlock_NS_allocFore */
/* 802D0830 002CD770  39 20 00 00 */	li r9, 0
/* 802D0834 002CD774  98 A3 00 03 */	stb r5, 3(r3)
/* 802D0838 002CD778  98 C3 00 02 */	stb r6, 2(r3)
/* 802D083C 002CD77C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D0840 002CD780  38 A4 00 10 */	addi r5, r4, 0x10
/* 802D0844 002CD784  7C 00 28 40 */	cmplw r0, r5
/* 802D0848 002CD788  41 80 00 24 */	blt lbl_802D086C
/* 802D084C 002CD78C  7D 24 1A 14 */	add r9, r4, r3
/* 802D0850 002CD790  98 E9 00 13 */	stb r7, 0x13(r9)
/* 802D0854 002CD794  99 09 00 12 */	stb r8, 0x12(r9)
/* 802D0858 002CD798  80 03 00 04 */	lwz r0, 4(r3)
/* 802D085C 002CD79C  7C 05 00 50 */	subf r0, r5, r0
/* 802D0860 002CD7A0  90 09 00 14 */	stw r0, 0x14(r9)
/* 802D0864 002CD7A4  90 83 00 04 */	stw r4, 4(r3)
/* 802D0868 002CD7A8  39 29 00 10 */	addi r9, r9, 0x10
lbl_802D086C:
/* 802D086C 002CD7AC  7D 23 4B 78 */	mr r3, r9
/* 802D0870 002CD7B0  4E 80 00 20 */	blr
