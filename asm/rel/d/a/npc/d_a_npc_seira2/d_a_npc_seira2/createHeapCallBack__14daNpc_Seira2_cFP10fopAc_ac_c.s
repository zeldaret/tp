lbl_80AD16A4:
/* 80AD16A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD16A8  7C 08 02 A6 */	mflr r0
/* 80AD16AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD16B0  4B FF F9 49 */	bl CreateHeap__14daNpc_Seira2_cFv
/* 80AD16B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD16B8  7C 08 03 A6 */	mtlr r0
/* 80AD16BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD16C0  4E 80 00 20 */	blr 
