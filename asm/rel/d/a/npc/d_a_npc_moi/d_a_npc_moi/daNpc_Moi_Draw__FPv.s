lbl_80A79930:
/* 80A79930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79934  7C 08 02 A6 */	mflr r0
/* 80A79938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7993C  4B FF B1 11 */	bl Draw__11daNpc_Moi_cFv
/* 80A79940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79944  7C 08 03 A6 */	mtlr r0
/* 80A79948  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7994C  4E 80 00 20 */	blr 
