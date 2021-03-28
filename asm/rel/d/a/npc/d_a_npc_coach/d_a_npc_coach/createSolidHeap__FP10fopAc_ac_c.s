lbl_8099E4A0:
/* 8099E4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099E4A4  7C 08 02 A6 */	mflr r0
/* 8099E4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099E4AC  48 00 00 15 */	bl createHeap__12daNpcCoach_cFv
/* 8099E4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099E4B4  7C 08 03 A6 */	mtlr r0
/* 8099E4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8099E4BC  4E 80 00 20 */	blr 
