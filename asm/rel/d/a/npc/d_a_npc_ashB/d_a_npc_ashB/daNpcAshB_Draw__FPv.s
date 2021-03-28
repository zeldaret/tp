lbl_80960A08:
/* 80960A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80960A0C  7C 08 02 A6 */	mflr r0
/* 80960A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80960A14  4B FF DF 59 */	bl Draw__11daNpcAshB_cFv
/* 80960A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80960A1C  7C 08 03 A6 */	mtlr r0
/* 80960A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80960A24  4E 80 00 20 */	blr 
