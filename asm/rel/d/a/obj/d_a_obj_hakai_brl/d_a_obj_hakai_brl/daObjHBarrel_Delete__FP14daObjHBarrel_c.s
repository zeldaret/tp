lbl_80C1724C:
/* 80C1724C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17250  7C 08 02 A6 */	mflr r0
/* 80C17254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17258  4B FF F9 A1 */	bl Delete__14daObjHBarrel_cFv
/* 80C1725C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17260  7C 08 03 A6 */	mtlr r0
/* 80C17264  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17268  4E 80 00 20 */	blr 
