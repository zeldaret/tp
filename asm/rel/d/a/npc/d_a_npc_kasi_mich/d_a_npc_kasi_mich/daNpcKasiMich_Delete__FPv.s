lbl_80A29664:
/* 80A29664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29668  7C 08 02 A6 */	mflr r0
/* 80A2966C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29670  4B FF D3 B5 */	bl Delete__15daNpcKasiMich_cFv
/* 80A29674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29678  7C 08 03 A6 */	mtlr r0
/* 80A2967C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29680  4E 80 00 20 */	blr 
