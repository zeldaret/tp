lbl_80A1C964:
/* 80A1C964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1C968  7C 08 02 A6 */	mflr r0
/* 80A1C96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1C970  4B FF FC 41 */	bl CreateHeap__15daNpcKasiHana_cFv
/* 80A1C974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1C978  7C 08 03 A6 */	mtlr r0
/* 80A1C97C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1C980  4E 80 00 20 */	blr 
