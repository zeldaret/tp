lbl_80A20584:
/* 80A20584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20588  7C 08 02 A6 */	mflr r0
/* 80A2058C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20590  4B FF C1 D9 */	bl Execute__15daNpcKasiHana_cFv
/* 80A20594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20598  7C 08 03 A6 */	mtlr r0
/* 80A2059C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A205A0  4E 80 00 20 */	blr 
