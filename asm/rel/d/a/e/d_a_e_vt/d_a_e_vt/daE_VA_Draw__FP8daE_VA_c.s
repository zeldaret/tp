lbl_807C37F8:
/* 807C37F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C37FC  7C 08 02 A6 */	mflr r0
/* 807C3800  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C3804  4B FF FA 61 */	bl draw__8daE_VA_cFv
/* 807C3808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C380C  7C 08 03 A6 */	mtlr r0
/* 807C3810  38 21 00 10 */	addi r1, r1, 0x10
/* 807C3814  4E 80 00 20 */	blr 
