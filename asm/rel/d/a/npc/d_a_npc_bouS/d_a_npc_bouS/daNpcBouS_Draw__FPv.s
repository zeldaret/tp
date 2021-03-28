lbl_80976BA8:
/* 80976BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80976BAC  7C 08 02 A6 */	mflr r0
/* 80976BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976BB4  4B FF D4 6D */	bl Draw__11daNpcBouS_cFv
/* 80976BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80976BBC  7C 08 03 A6 */	mtlr r0
/* 80976BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80976BC4  4E 80 00 20 */	blr 
