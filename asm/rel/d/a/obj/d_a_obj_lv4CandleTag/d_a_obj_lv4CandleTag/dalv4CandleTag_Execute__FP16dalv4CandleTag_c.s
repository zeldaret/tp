lbl_80C5D960:
/* 80C5D960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D964  7C 08 02 A6 */	mflr r0
/* 80C5D968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D96C  4B FF FC 69 */	bl Execute__16dalv4CandleTag_cFv
/* 80C5D970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D974  7C 08 03 A6 */	mtlr r0
/* 80C5D978  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D97C  4E 80 00 20 */	blr 
