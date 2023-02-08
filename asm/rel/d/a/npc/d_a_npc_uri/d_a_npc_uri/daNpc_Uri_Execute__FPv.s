lbl_80B2BA48:
/* 80B2BA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BA4C  7C 08 02 A6 */	mflr r0
/* 80B2BA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BA54  4B FF B6 6D */	bl Execute__11daNpc_Uri_cFv
/* 80B2BA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BA5C  7C 08 03 A6 */	mtlr r0
/* 80B2BA60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BA64  4E 80 00 20 */	blr 
