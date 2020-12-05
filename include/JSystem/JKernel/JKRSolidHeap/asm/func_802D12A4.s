/* do_getTotalFreeSize__12JKRSolidHeapFv __ct__12JKRSolidHeapFPvUlP7JKRHeapb::do_getTotalFreeSize(void) */
/* missing reference */
/* 802D12A4 002CE1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D12A8 002CE1E8  7C 08 02 A6 */	mflr r0
/* 802D12AC 002CE1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D12B0 002CE1F0  4B FF D4 7D */	bl getFreeSize__7JKRHeapFv
/* 802D12B4 002CE1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D12B8 002CE1F8  7C 08 03 A6 */	mtlr r0
/* 802D12BC 002CE1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D12C0 002CE200  4E 80 00 20 */	blr
