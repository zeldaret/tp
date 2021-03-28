lbl_80A20564:
/* 80A20564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20568  7C 08 02 A6 */	mflr r0
/* 80A2056C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20570  4B FF C1 C5 */	bl Delete__15daNpcKasiHana_cFv
/* 80A20574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20578  7C 08 03 A6 */	mtlr r0
/* 80A2057C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20580  4E 80 00 20 */	blr 
