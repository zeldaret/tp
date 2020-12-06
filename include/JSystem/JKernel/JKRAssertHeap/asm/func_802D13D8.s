/* do_destroy__13JKRAssertHeapFv __ct__13JKRAssertHeapFPvUlP7JKRHeapb::do_destroy(void) */
/* missing reference */
/* 802D13D8 002CE318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D13DC 002CE31C  7C 08 02 A6 */	mflr r0
/* 802D13E0 002CE320  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D13E4 002CE324  38 80 FF FF */	li r4, -1
/* 802D13E8 002CE328  81 83 00 00 */	lwz r12, 0(r3)
/* 802D13EC 002CE32C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D13F0 002CE330  7D 89 03 A6 */	mtctr r12
/* 802D13F4 002CE334  4E 80 04 21 */	bctrl
/* 802D13F8 002CE338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D13FC 002CE33C  7C 08 03 A6 */	mtlr r0
/* 802D1400 002CE340  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1404 002CE344  4E 80 00 20 */	blr
