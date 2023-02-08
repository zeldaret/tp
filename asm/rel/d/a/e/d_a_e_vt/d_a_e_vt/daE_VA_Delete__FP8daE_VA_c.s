lbl_807CD028:
/* 807CD028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CD02C  7C 08 02 A6 */	mflr r0
/* 807CD030  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CD034  4B FF FF 31 */	bl _delete__8daE_VA_cFv
/* 807CD038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CD03C  7C 08 03 A6 */	mtlr r0
/* 807CD040  38 21 00 10 */	addi r1, r1, 0x10
/* 807CD044  4E 80 00 20 */	blr 
