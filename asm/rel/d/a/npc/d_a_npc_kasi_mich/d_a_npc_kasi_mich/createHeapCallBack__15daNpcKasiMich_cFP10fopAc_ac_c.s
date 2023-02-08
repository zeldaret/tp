lbl_80A26C5C:
/* 80A26C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26C60  7C 08 02 A6 */	mflr r0
/* 80A26C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26C68  4B FF FC 39 */	bl CreateHeap__15daNpcKasiMich_cFv
/* 80A26C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26C70  7C 08 03 A6 */	mtlr r0
/* 80A26C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26C78  4E 80 00 20 */	blr 
