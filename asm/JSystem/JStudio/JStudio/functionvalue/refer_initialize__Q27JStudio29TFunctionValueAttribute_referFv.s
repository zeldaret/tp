lbl_802816E8:
/* 802816E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802816EC  7C 08 02 A6 */	mflr r0
/* 802816F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802816F4  80 83 00 04 */	lwz r4, 4(r3)
/* 802816F8  80 A3 00 08 */	lwz r5, 8(r3)
/* 802816FC  48 05 B6 C9 */	bl erase__Q27JGadget20TVector_pointer_voidFPPvPPv
/* 80281700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281704  7C 08 03 A6 */	mtlr r0
/* 80281708  38 21 00 10 */	addi r1, r1, 0x10
/* 8028170C  4E 80 00 20 */	blr 
