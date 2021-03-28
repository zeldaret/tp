lbl_8033F864:
/* 8033F864  7C 08 02 A6 */	mflr r0
/* 8033F868  90 01 00 04 */	stw r0, 4(r1)
/* 8033F86C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8033F870  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8033F874  7C 7F 1B 78 */	mr r31, r3
/* 8033F878  4B FF DE 7D */	bl OSDisableInterrupts
/* 8033F87C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC002000@ha */
/* 8033F880  38 63 20 00 */	addi r3, r3, 0x2000 /* 0xCC002000@l */
/* 8033F884  38 00 00 00 */	li r0, 0
/* 8033F888  B0 03 00 02 */	sth r0, 2(r3)
/* 8033F88C  4B FF BE 39 */	bl ICFlashInvalidate
/* 8033F890  57 E3 18 38 */	slwi r3, r31, 3
/* 8033F894  4B FF FE F9 */	bl Reset
/* 8033F898  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8033F89C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8033F8A0  38 21 00 18 */	addi r1, r1, 0x18
/* 8033F8A4  7C 08 03 A6 */	mtlr r0
/* 8033F8A8  4E 80 00 20 */	blr 
