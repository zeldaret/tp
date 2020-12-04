/* __ct__13JKRAssertHeapFPvUlP7JKRHeapb __ct__13JKRAssertHeapFPvUlP7JKRHeapb::__ct(void *, unsigned long, JKRHeap *, bool) */
/* JKRAssertHeap */
/* 802D12C4 002CE204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D12C8 002CE208  7C 08 02 A6 */	mflr r0
/* 802D12CC 002CE20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D12D0 002CE210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D12D4 002CE214  7C 7F 1B 78 */	mr r31, r3
/* 802D12D8 002CE218  4B FF CE 61 */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 802D12DC 002CE21C  3C 60 80 3D */	lis r3, lbl_803CC090@ha
/* 802D12E0 002CE220  38 03 C0 90 */	addi r0, r3, lbl_803CC090@l
/* 802D12E4 002CE224  90 1F 00 00 */	stw r0, 0(r31)
/* 802D12E8 002CE228  7F E3 FB 78 */	mr r3, r31
/* 802D12EC 002CE22C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D12F0 002CE230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D12F4 002CE234  7C 08 03 A6 */	mtlr r0
/* 802D12F8 002CE238  38 21 00 10 */	addi r1, r1, 0x10
/* 802D12FC 002CE23C  4E 80 00 20 */	blr
