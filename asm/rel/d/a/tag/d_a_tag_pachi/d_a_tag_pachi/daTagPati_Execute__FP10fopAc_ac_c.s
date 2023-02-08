lbl_80D5D87C:
/* 80D5D87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D880  7C 08 02 A6 */	mflr r0
/* 80D5D884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D888  4B FF FF 05 */	bl Execute__11daTagPati_cFv
/* 80D5D88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D890  7C 08 03 A6 */	mtlr r0
/* 80D5D894  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D898  4E 80 00 20 */	blr 
