lbl_80A24F10:
/* 80A24F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24F14  7C 08 02 A6 */	mflr r0
/* 80A24F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24F1C  4B FF D3 69 */	bl Draw__14daNpcKasiKyu_cFv
/* 80A24F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24F24  7C 08 03 A6 */	mtlr r0
/* 80A24F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24F2C  4E 80 00 20 */	blr 
