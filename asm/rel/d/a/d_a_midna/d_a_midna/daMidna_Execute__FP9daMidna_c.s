lbl_804C59E8:
/* 804C59E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C59EC  7C 08 02 A6 */	mflr r0
/* 804C59F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C59F4  4B FF F5 E9 */	bl execute__9daMidna_cFv
/* 804C59F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C59FC  7C 08 03 A6 */	mtlr r0
/* 804C5A00  38 21 00 10 */	addi r1, r1, 0x10
/* 804C5A04  4E 80 00 20 */	blr 
