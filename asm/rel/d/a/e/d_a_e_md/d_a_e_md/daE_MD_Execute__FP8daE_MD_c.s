lbl_8070A024:
/* 8070A024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A028  7C 08 02 A6 */	mflr r0
/* 8070A02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A030  4B FF FC CD */	bl Execute__8daE_MD_cFv
/* 8070A034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A038  7C 08 03 A6 */	mtlr r0
/* 8070A03C  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A040  4E 80 00 20 */	blr 
