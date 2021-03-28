lbl_80A01E44:
/* 80A01E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01E48  7C 08 02 A6 */	mflr r0
/* 80A01E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01E50  4B FF FA B5 */	bl CreateHeap__11daNpc_Hoz_cFv
/* 80A01E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01E58  7C 08 03 A6 */	mtlr r0
/* 80A01E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01E60  4E 80 00 20 */	blr 
