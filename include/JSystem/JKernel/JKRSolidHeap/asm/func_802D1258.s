/* state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState __ct__12JKRSolidHeapFPvUlP7JKRHeapb::state_compare( const(JKRHeap::TState const &, JKRHeap::TState const &)) */
/* missing reference */
/* 802D1258 002CE198  38 60 00 01 */	li r3, 1
/* 802D125C 002CE19C  80 C4 00 04 */	lwz r6, 4(r4)
/* 802D1260 002CE1A0  80 05 00 04 */	lwz r0, 4(r5)
/* 802D1264 002CE1A4  7C 06 00 40 */	cmplw r6, r0
/* 802D1268 002CE1A8  41 82 00 08 */	beq lbl_802D1270
/* 802D126C 002CE1AC  38 60 00 00 */	li r3, 0
lbl_802D1270:
/* 802D1270 002CE1B0  80 84 00 00 */	lwz r4, 0(r4)
/* 802D1274 002CE1B4  80 05 00 00 */	lwz r0, 0(r5)
/* 802D1278 002CE1B8  7C 04 00 40 */	cmplw r4, r0
/* 802D127C 002CE1BC  4D 82 00 20 */	beqlr
/* 802D1280 002CE1C0  38 60 00 00 */	li r3, 0
/* 802D1284 002CE1C4  4E 80 00 20 */	blr
