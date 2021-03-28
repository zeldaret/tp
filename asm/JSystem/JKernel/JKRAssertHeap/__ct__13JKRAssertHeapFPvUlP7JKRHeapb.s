lbl_802D12C4:
/* 802D12C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D12C8  7C 08 02 A6 */	mflr r0
/* 802D12CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D12D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D12D4  7C 7F 1B 78 */	mr r31, r3
/* 802D12D8  4B FF CE 61 */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 802D12DC  3C 60 80 3D */	lis r3, __vt__13JKRAssertHeap@ha
/* 802D12E0  38 03 C0 90 */	addi r0, r3, __vt__13JKRAssertHeap@l
/* 802D12E4  90 1F 00 00 */	stw r0, 0(r31)
/* 802D12E8  7F E3 FB 78 */	mr r3, r31
/* 802D12EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D12F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D12F4  7C 08 03 A6 */	mtlr r0
/* 802D12F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D12FC  4E 80 00 20 */	blr 
