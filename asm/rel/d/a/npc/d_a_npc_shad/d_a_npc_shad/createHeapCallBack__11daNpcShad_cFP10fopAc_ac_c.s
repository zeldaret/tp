lbl_80AD944C:
/* 80AD944C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD9450  7C 08 02 A6 */	mflr r0
/* 80AD9454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9458  4B FF F7 09 */	bl CreateHeap__11daNpcShad_cFv
/* 80AD945C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9460  7C 08 03 A6 */	mtlr r0
/* 80AD9464  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9468  4E 80 00 20 */	blr 
