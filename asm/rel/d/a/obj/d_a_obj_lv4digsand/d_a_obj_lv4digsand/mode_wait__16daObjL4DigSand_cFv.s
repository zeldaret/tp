lbl_80C66E80:
/* 80C66E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66E84  7C 08 02 A6 */	mflr r0
/* 80C66E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66E8C  88 03 09 41 */	lbz r0, 0x941(r3)
/* 80C66E90  28 00 00 01 */	cmplwi r0, 1
/* 80C66E94  40 82 00 08 */	bne lbl_80C66E9C
/* 80C66E98  48 00 00 15 */	bl mode_init_dig__16daObjL4DigSand_cFv
lbl_80C66E9C:
/* 80C66E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66EA0  7C 08 03 A6 */	mtlr r0
/* 80C66EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66EA8  4E 80 00 20 */	blr 
