lbl_805A3800:
/* 805A3800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3804  7C 08 02 A6 */	mflr r0
/* 805A3808  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A380C  4B FF FF 4D */	bl create__12daTagHinit_cFv
/* 805A3810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3814  7C 08 03 A6 */	mtlr r0
/* 805A3818  38 21 00 10 */	addi r1, r1, 0x10
/* 805A381C  4E 80 00 20 */	blr 
