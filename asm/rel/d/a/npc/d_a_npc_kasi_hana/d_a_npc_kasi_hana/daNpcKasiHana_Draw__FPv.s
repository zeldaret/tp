lbl_80A205A4:
/* 80A205A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A205A8  7C 08 02 A6 */	mflr r0
/* 80A205AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A205B0  4B FF C1 DD */	bl Draw__15daNpcKasiHana_cFv
/* 80A205B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A205B8  7C 08 03 A6 */	mtlr r0
/* 80A205BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A205C0  4E 80 00 20 */	blr 
