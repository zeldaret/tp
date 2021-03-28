lbl_80831E74:
/* 80831E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80831E78  7C 08 02 A6 */	mflr r0
/* 80831E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831E80  4B FF FE E5 */	bl execute__8daE_ZM_cFv
/* 80831E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80831E88  7C 08 03 A6 */	mtlr r0
/* 80831E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80831E90  4E 80 00 20 */	blr 
