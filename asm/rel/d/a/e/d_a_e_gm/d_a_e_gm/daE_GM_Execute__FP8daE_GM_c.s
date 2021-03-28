lbl_806D6958:
/* 806D6958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D695C  7C 08 02 A6 */	mflr r0
/* 806D6960  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D6964  4B FF FD A5 */	bl execute__8daE_GM_cFv
/* 806D6968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D696C  7C 08 03 A6 */	mtlr r0
/* 806D6970  38 21 00 10 */	addi r1, r1, 0x10
/* 806D6974  4E 80 00 20 */	blr 
