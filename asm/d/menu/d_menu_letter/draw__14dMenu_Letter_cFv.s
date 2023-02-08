lbl_801E1D5C:
/* 801E1D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E1D60  7C 08 02 A6 */	mflr r0
/* 801E1D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E1D68  4B FF B7 A5 */	bl _draw__14dMenu_Letter_cFv
/* 801E1D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E1D70  7C 08 03 A6 */	mtlr r0
/* 801E1D74  38 21 00 10 */	addi r1, r1, 0x10
/* 801E1D78  4E 80 00 20 */	blr 
