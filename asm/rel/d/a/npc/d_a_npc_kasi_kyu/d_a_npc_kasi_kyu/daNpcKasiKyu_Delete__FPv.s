lbl_80A24ED0:
/* 80A24ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24ED4  7C 08 02 A6 */	mflr r0
/* 80A24ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24EDC  4B FF D3 49 */	bl Delete__14daNpcKasiKyu_cFv
/* 80A24EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24EE4  7C 08 03 A6 */	mtlr r0
/* 80A24EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24EEC  4E 80 00 20 */	blr 
