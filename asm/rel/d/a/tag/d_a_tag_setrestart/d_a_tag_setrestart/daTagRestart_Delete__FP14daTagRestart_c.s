lbl_80D6076C:
/* 80D6076C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60770  7C 08 02 A6 */	mflr r0
/* 80D60774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60778  4B FF FF CD */	bl _delete__14daTagRestart_cFv
/* 80D6077C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60780  7C 08 03 A6 */	mtlr r0
/* 80D60784  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60788  4E 80 00 20 */	blr 
