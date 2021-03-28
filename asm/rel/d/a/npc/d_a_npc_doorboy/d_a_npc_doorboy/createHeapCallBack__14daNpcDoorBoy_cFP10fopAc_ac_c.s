lbl_809AB704:
/* 809AB704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AB708  7C 08 02 A6 */	mflr r0
/* 809AB70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AB710  4B FF FC 11 */	bl CreateHeap__14daNpcDoorBoy_cFv
/* 809AB714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AB718  7C 08 03 A6 */	mtlr r0
/* 809AB71C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AB720  4E 80 00 20 */	blr 
