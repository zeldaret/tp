lbl_8029E06C:
/* 8029E06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E070  7C 08 02 A6 */	mflr r0
/* 8029E074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E078  38 A0 00 08 */	li r5, 8
/* 8029E07C  38 63 01 20 */	addi r3, r3, 0x120
/* 8029E080  4B FF F9 C9 */	bl setFilterTable__6JASDspFPsPsUl
/* 8029E084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E088  7C 08 03 A6 */	mtlr r0
/* 8029E08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E090  4E 80 00 20 */	blr 
