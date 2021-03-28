lbl_8029A0A0:
/* 8029A0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A0A4  7C 08 02 A6 */	mflr r0
/* 8029A0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A0AC  80 6D 8D 10 */	lwz r3, sAramHeap__16JASWaveArcLoader(r13)
/* 8029A0B0  28 03 00 00 */	cmplwi r3, 0
/* 8029A0B4  41 82 00 08 */	beq lbl_8029A0BC
/* 8029A0B8  48 00 00 08 */	b lbl_8029A0C0
lbl_8029A0BC:
/* 8029A0BC  4B FF 6A 4D */	bl getAramHeap__9JASKernelFv
lbl_8029A0C0:
/* 8029A0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A0C4  7C 08 03 A6 */	mtlr r0
/* 8029A0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A0CC  4E 80 00 20 */	blr 
