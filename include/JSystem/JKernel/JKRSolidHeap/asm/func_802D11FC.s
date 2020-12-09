/* state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl __ct__12JKRSolidHeapFPvUlP7JKRHeapb::state_register( const(JKRHeap::TState *, unsigned long)) */
/* missing reference */
/* 802D11FC 002CE13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1200 002CE140  7C 08 02 A6 */	mflr r0
/* 802D1204 002CE144  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1208 002CE148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D120C 002CE14C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1210 002CE150  7C 7E 1B 78 */	mr r30, r3
/* 802D1214 002CE154  7C 9F 23 78 */	mr r31, r4
/* 802D1218 002CE158  90 A4 00 14 */	stw r5, 0x14(r4)
/* 802D121C 002CE15C  4B FF D5 69 */	bl getTotalFreeSize__7JKRHeapFv
/* 802D1220 002CE160  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802D1224 002CE164  7C 03 00 50 */	subf r0, r3, r0
/* 802D1228 002CE168  90 1F 00 00 */	stw r0, 0(r31)
/* 802D122C 002CE16C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802D1230 002CE170  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 802D1234 002CE174  1C 00 00 03 */	mulli r0, r0, 3
/* 802D1238 002CE178  7C 63 02 14 */	add r3, r3, r0
/* 802D123C 002CE17C  90 7F 00 04 */	stw r3, 4(r31)
/* 802D1240 002CE180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1244 002CE184  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1248 002CE188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D124C 002CE18C  7C 08 03 A6 */	mtlr r0
/* 802D1250 002CE190  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1254 002CE194  4E 80 00 20 */	blr
