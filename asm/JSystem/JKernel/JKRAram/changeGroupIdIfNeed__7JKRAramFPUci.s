lbl_802D22DC:
/* 802D22DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D22E0  7C 08 02 A6 */	mflr r0
/* 802D22E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D22E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D22EC  93 C1 00 08 */	stw r30, 8(r1)
/* 802D22F0  7C 7E 1B 78 */	mr r30, r3
/* 802D22F4  7C 9F 23 78 */	mr r31, r4
/* 802D22F8  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
/* 802D22FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D2300  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D2304  7D 89 03 A6 */	mtctr r12
/* 802D2308  4E 80 04 21 */	bctrl 
/* 802D230C  3C 03 BA A8 */	addis r0, r3, 0xbaa8
/* 802D2310  28 00 50 48 */	cmplwi r0, 0x5048
/* 802D2314  40 82 00 10 */	bne lbl_802D2324
/* 802D2318  2C 1F 00 00 */	cmpwi r31, 0
/* 802D231C  41 80 00 08 */	blt lbl_802D2324
/* 802D2320  9B FE FF F3 */	stb r31, -0xd(r30)
lbl_802D2324:
/* 802D2324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2328  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D232C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2330  7C 08 03 A6 */	mtlr r0
/* 802D2334  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2338  4E 80 00 20 */	blr 
