lbl_80AA7CB8:
/* 80AA7CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA7CBC  7C 08 02 A6 */	mflr r0
/* 80AA7CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA7CC4  48 00 00 15 */	bl create__14daNpcPasser2_cFv
/* 80AA7CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA7CCC  7C 08 03 A6 */	mtlr r0
/* 80AA7CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA7CD4  4E 80 00 20 */	blr 
