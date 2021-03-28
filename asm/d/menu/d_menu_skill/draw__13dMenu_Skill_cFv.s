lbl_801F9A08:
/* 801F9A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9A0C  7C 08 02 A6 */	mflr r0
/* 801F9A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F9A14  4B FF DD 9D */	bl _draw__13dMenu_Skill_cFv
/* 801F9A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F9A1C  7C 08 03 A6 */	mtlr r0
/* 801F9A20  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9A24  4E 80 00 20 */	blr 
