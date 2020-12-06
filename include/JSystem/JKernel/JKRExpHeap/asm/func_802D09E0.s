/* state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState __ct__10JKRExpHeapFPvUlP7JKRHeapb::state_compare( const(JKRHeap::TState const &, JKRHeap::TState const &)) */
/* missing reference */
/* 802D09E0 002CD920  38 60 00 01 */	li r3, 1
/* 802D09E4 002CD924  80 C4 00 04 */	lwz r6, 4(r4)
/* 802D09E8 002CD928  80 05 00 04 */	lwz r0, 4(r5)
/* 802D09EC 002CD92C  7C 06 00 40 */	cmplw r6, r0
/* 802D09F0 002CD930  41 82 00 08 */	beq lbl_802D09F8
/* 802D09F4 002CD934  38 60 00 00 */	li r3, 0
lbl_802D09F8:
/* 802D09F8 002CD938  80 84 00 00 */	lwz r4, 0(r4)
/* 802D09FC 002CD93C  80 05 00 00 */	lwz r0, 0(r5)
/* 802D0A00 002CD940  7C 04 00 40 */	cmplw r4, r0
/* 802D0A04 002CD944  4D 82 00 20 */	beqlr
/* 802D0A08 002CD948  38 60 00 00 */	li r3, 0
/* 802D0A0C 002CD94C  4E 80 00 20 */	blr
