lbl_80C561A0:
/* 80C561A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C561A4  7C 08 02 A6 */	mflr r0
/* 80C561A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C561AC  4B FF FC 5D */	bl CreateHeap__12daLv1Cdl00_cFv
/* 80C561B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C561B4  7C 08 03 A6 */	mtlr r0
/* 80C561B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C561BC  4E 80 00 20 */	blr 
